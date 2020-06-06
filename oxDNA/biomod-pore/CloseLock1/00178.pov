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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.238596, 34.753242, 35.001801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323824, 35.104576, 34.830627>,  <24.374960, 35.315376, 34.727924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323824, 35.104576, 34.830627>,  <24.238596, 34.753242, 35.001801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.323824, 35.104576, 34.830627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538447, 0.259914, 0.801573,
		0.815277, -0.401209, -0.417558,
		0.213069, 0.878337, -0.427931,
		24.387745, 35.368076, 34.702248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.878679, 34.818710, 35.101555>,  <24.238596, 34.753242, 35.001801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.878679, 34.818710, 35.101555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757135, 35.196613, 35.052406>,  <24.684208, 35.423355, 35.022919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757135, 35.196613, 35.052406>,  <24.878679, 34.818710, 35.101555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757135, 35.196613, 35.052406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537222, 0.276418, 0.796860,
		0.786804, 0.176127, -0.591539,
		-0.303861, 0.944760, -0.122867,
		24.665977, 35.480042, 35.015545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494087, 35.259293, 35.123459>,  <24.878679, 34.818710, 35.101555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494087, 35.259293, 35.123459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163710, 35.442471, 35.254974>,  <24.965483, 35.552380, 35.333885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163710, 35.442471, 35.254974>,  <25.494087, 35.259293, 35.123459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163710, 35.442471, 35.254974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483645, 0.275925, 0.830634,
		0.289666, 0.845073, -0.449383,
		-0.825943, 0.457948, 0.328789,
		24.915926, 35.579857, 35.353611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682032, 35.864700, 35.294823>,  <25.494087, 35.259293, 35.123459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682032, 35.864700, 35.294823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337481, 35.814301, 35.491661>,  <25.130751, 35.784061, 35.609764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337481, 35.814301, 35.491661>,  <25.682032, 35.864700, 35.294823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337481, 35.814301, 35.491661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382006, 0.477851, 0.791031,
		-0.334819, 0.869357, -0.363475,
		-0.861376, -0.126003, 0.492093,
		25.079067, 35.776501, 35.639290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048351, 35.478851, 35.724117>,  <25.682032, 35.864700, 35.294823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048351, 35.478851, 35.724117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341167, 35.274975, 35.904934>,  <26.516857, 35.152649, 36.013424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.341167, 35.274975, 35.904934>,  <26.048351, 35.478851, 35.724117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.341167, 35.274975, 35.904934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677259, 0.616299, -0.401867,
		-0.073763, 0.600328, 0.796345,
		0.732038, -0.509688, 0.452038,
		26.560780, 35.122066, 36.040546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446272, 35.996407, 35.972313>,  <26.048351, 35.478851, 35.724117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446272, 35.996407, 35.972313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677368, 35.673794, 35.922153>,  <26.816027, 35.480228, 35.892059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677368, 35.673794, 35.922153>,  <26.446272, 35.996407, 35.972313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677368, 35.673794, 35.922153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733184, 0.580320, -0.354501,
		0.358684, 0.112872, 0.926610,
		0.577743, -0.806529, -0.125396,
		26.850691, 35.431835, 35.884533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112217, 35.989506, 36.392326>,  <26.446272, 35.996407, 35.972313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112217, 35.989506, 36.392326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167147, 35.796780, 36.046150>,  <27.200106, 35.681145, 35.838444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167147, 35.796780, 36.046150>,  <27.112217, 35.989506, 36.392326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167147, 35.796780, 36.046150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772079, 0.599407, -0.211197,
		0.620512, -0.639189, 0.454316,
		0.137326, -0.481818, -0.865444,
		27.208344, 35.652233, 35.786518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889860, 35.996368, 37.139580>,  <27.112217, 35.989506, 36.392326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889860, 35.996368, 37.139580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192139, 36.161663, 36.936344>,  <27.373507, 36.260841, 36.814404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192139, 36.161663, 36.936344>,  <26.889860, 35.996368, 37.139580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192139, 36.161663, 36.936344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047502, 0.808344, 0.586790,
		0.653195, -0.419301, 0.630494,
		0.755698, 0.413238, -0.508090,
		27.418848, 36.285633, 36.783916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397436, 36.245155, 37.687458>,  <26.889860, 35.996368, 37.139580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397436, 36.245155, 37.687458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420277, 36.461685, 37.351910>,  <27.433981, 36.591602, 37.150581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420277, 36.461685, 37.351910>,  <27.397436, 36.245155, 37.687458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420277, 36.461685, 37.351910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042065, 0.838193, 0.543749,
		0.997482, -0.066337, 0.025093,
		0.057103, 0.541324, -0.838873,
		27.437408, 36.624081, 37.100246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819889, 36.729549, 37.899807>,  <27.397436, 36.245155, 37.687458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819889, 36.729549, 37.899807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668806, 36.897869, 37.569893>,  <27.578157, 36.998859, 37.371944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668806, 36.897869, 37.569893>,  <27.819889, 36.729549, 37.899807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668806, 36.897869, 37.569893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083175, 0.902585, 0.422400,
		0.922183, 0.090941, -0.375911,
		-0.377705, 0.420796, -0.824784,
		27.555494, 37.024109, 37.322456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114273, 37.414272, 37.887527>,  <27.819889, 36.729549, 37.899807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114273, 37.414272, 37.887527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790066, 37.458473, 37.657452>,  <27.595541, 37.484993, 37.519405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790066, 37.458473, 37.657452>,  <28.114273, 37.414272, 37.887527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790066, 37.458473, 37.657452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067535, 0.957860, 0.279182,
		0.581805, 0.265128, -0.768902,
		-0.810520, 0.110501, -0.575193,
		27.546909, 37.491623, 37.484894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194977, 38.166798, 37.459274>,  <28.114273, 37.414272, 37.887527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194977, 38.166798, 37.459274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815268, 38.041107, 37.454418>,  <27.587442, 37.965694, 37.451504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815268, 38.041107, 37.454418>,  <28.194977, 38.166798, 37.459274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815268, 38.041107, 37.454418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309408, 0.926437, 0.214433,
		-0.056130, 0.207312, -0.976663,
		-0.949271, -0.314224, -0.012143,
		27.530487, 37.946838, 37.450775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958281, 38.580700, 36.953575>,  <28.194977, 38.166798, 37.459274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958281, 38.580700, 36.953575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659542, 38.456360, 37.188725>,  <27.480299, 38.381756, 37.329815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659542, 38.456360, 37.188725>,  <27.958281, 38.580700, 36.953575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659542, 38.456360, 37.188725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360796, 0.932008, 0.034448,
		-0.558609, -0.186374, -0.808221,
		-0.746849, -0.310846, 0.587871,
		27.435488, 38.363106, 37.365086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423441, 39.068115, 36.863827>,  <27.958281, 38.580700, 36.953575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423441, 39.068115, 36.863827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312716, 38.896637, 37.207825>,  <27.246281, 38.793751, 37.414223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312716, 38.896637, 37.207825>,  <27.423441, 39.068115, 36.863827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312716, 38.896637, 37.207825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476961, 0.838237, 0.264322,
		-0.834196, -0.337019, -0.436504,
		-0.276813, -0.428691, 0.859999,
		27.229671, 38.768028, 37.465824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743729, 39.179962, 36.907490>,  <27.423441, 39.068115, 36.863827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743729, 39.179962, 36.907490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853283, 39.089111, 37.281315>,  <26.919016, 39.034603, 37.505608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853283, 39.089111, 37.281315>,  <26.743729, 39.179962, 36.907490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853283, 39.089111, 37.281315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518360, 0.783641, 0.342359,
		-0.810116, -0.578206, 0.096899,
		0.273888, -0.227122, 0.934559,
		26.935450, 39.020973, 37.561684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152828, 39.263260, 37.227268>,  <26.743729, 39.179962, 36.907490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152828, 39.263260, 37.227268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436764, 39.293655, 37.507370>,  <26.607126, 39.311893, 37.675430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436764, 39.293655, 37.507370>,  <26.152828, 39.263260, 37.227268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436764, 39.293655, 37.507370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427784, 0.836321, 0.342881,
		-0.559579, -0.542947, 0.626163,
		0.709840, 0.075993, 0.700252,
		26.649715, 39.316452, 37.717445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762627, 39.417480, 37.680161>,  <26.152828, 39.263260, 37.227268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762627, 39.417480, 37.680161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126726, 39.541599, 37.789818>,  <26.345186, 39.616074, 37.855614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126726, 39.541599, 37.789818>,  <25.762627, 39.417480, 37.680161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126726, 39.541599, 37.789818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400485, 0.827931, 0.392610,
		-0.105148, -0.467165, 0.877896,
		0.910251, 0.310302, 0.274148,
		26.399801, 39.634689, 37.872063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610857, 39.956078, 38.145515>,  <25.762627, 39.417480, 37.680161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610857, 39.956078, 38.145515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006920, 39.989590, 38.100674>,  <26.244558, 40.009697, 38.073769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006920, 39.989590, 38.100674>,  <25.610857, 39.956078, 38.145515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006920, 39.989590, 38.100674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052939, 0.965718, 0.254139,
		0.129550, -0.245704, 0.960649,
		0.990159, 0.083779, -0.112102,
		26.303968, 40.014725, 38.067043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934898, 40.408710, 38.757221>,  <25.610857, 39.956078, 38.145515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934898, 40.408710, 38.757221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189861, 40.431122, 38.449825>,  <26.342838, 40.444569, 38.265388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189861, 40.431122, 38.449825>,  <25.934898, 40.408710, 38.757221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189861, 40.431122, 38.449825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077059, 0.987717, 0.135929,
		0.766663, -0.145861, 0.625261,
		0.637408, 0.056030, -0.768486,
		26.381084, 40.447929, 38.219280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542713, 40.822388, 39.087105>,  <25.934898, 40.408710, 38.757221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542713, 40.822388, 39.087105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511614, 40.839447, 38.688683>,  <26.492954, 40.849682, 38.449627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.511614, 40.839447, 38.688683>,  <26.542713, 40.822388, 39.087105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511614, 40.839447, 38.688683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136801, 0.990091, 0.031715,
		0.987543, -0.133796, -0.082813,
		-0.077749, 0.042649, -0.996060,
		26.488289, 40.852242, 38.389866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.146416, 41.260700, 38.905598>,  <26.542713, 40.822388, 39.087105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.146416, 41.260700, 38.905598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877979, 41.279114, 38.609619>,  <26.716917, 41.290161, 38.432034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877979, 41.279114, 38.609619>,  <27.146416, 41.260700, 38.905598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877979, 41.279114, 38.609619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000487, 0.998098, 0.061650,
		0.741373, 0.041012, -0.669839,
		-0.671093, 0.046032, -0.739942,
		26.676651, 41.292923, 38.387638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274836, 41.860836, 38.540600>,  <27.146416, 41.260700, 38.905598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274836, 41.860836, 38.540600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929920, 41.819851, 38.342220>,  <26.722971, 41.795261, 38.223194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929920, 41.819851, 38.342220>,  <27.274836, 41.860836, 38.540600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929920, 41.819851, 38.342220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054614, 0.954791, -0.292218,
		0.503465, -0.279061, -0.817709,
		-0.862288, -0.102463, -0.495945,
		26.671234, 41.789112, 38.193436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261307, 42.164734, 37.844372>,  <27.274836, 41.860836, 38.540600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261307, 42.164734, 37.844372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873539, 42.145985, 37.940727>,  <26.640879, 42.134735, 37.998539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.873539, 42.145985, 37.940727>,  <27.261307, 42.164734, 37.844372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873539, 42.145985, 37.940727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145998, 0.899140, -0.412591,
		-0.197252, -0.435144, -0.878488,
		-0.969421, -0.046873, 0.240887,
		26.582712, 42.131924, 38.012993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913961, 42.384960, 37.222748>,  <27.261307, 42.164734, 37.844372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913961, 42.384960, 37.222748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668884, 42.441738, 37.533733>,  <26.521837, 42.475807, 37.720325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.668884, 42.441738, 37.533733>,  <26.913961, 42.384960, 37.222748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668884, 42.441738, 37.533733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243460, 0.901999, -0.356545,
		-0.751886, -0.407736, -0.518092,
		-0.612694, 0.141947, 0.777468,
		26.485075, 42.484322, 37.766975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400986, 42.789410, 36.859627>,  <26.913961, 42.384960, 37.222748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400986, 42.789410, 36.859627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328714, 42.828480, 37.251099>,  <26.285353, 42.851921, 37.485981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.328714, 42.828480, 37.251099>,  <26.400986, 42.789410, 36.859627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328714, 42.828480, 37.251099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393274, 0.904873, -0.162912,
		-0.901494, -0.414324, -0.125077,
		-0.180677, 0.097674, 0.978681,
		26.274511, 42.857780, 37.544704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691631, 42.973064, 36.976849>,  <26.400986, 42.789410, 36.859627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691631, 42.973064, 36.976849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898609, 43.135544, 37.278114>,  <26.022797, 43.233032, 37.458874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.898609, 43.135544, 37.278114>,  <25.691631, 42.973064, 36.976849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898609, 43.135544, 37.278114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312880, 0.909021, -0.275294,
		-0.796464, -0.093200, 0.597460,
		0.517447, 0.406195, 0.753163,
		26.053843, 43.257401, 37.504063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324465, 43.342293, 37.499832>,  <25.691631, 42.973064, 36.976849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324465, 43.342293, 37.499832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689968, 43.491119, 37.434582>,  <25.909269, 43.580414, 37.395432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689968, 43.491119, 37.434582>,  <25.324465, 43.342293, 37.499832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689968, 43.491119, 37.434582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403621, 0.877096, -0.260371,
		0.046205, 0.303758, 0.951628,
		0.913759, 0.372067, -0.163129,
		25.964096, 43.602741, 37.385643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423294, 43.792309, 37.999893>,  <25.324465, 43.342293, 37.499832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423294, 43.792309, 37.999893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606535, 43.865265, 37.651901>,  <25.716480, 43.909039, 37.443104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606535, 43.865265, 37.651901>,  <25.423294, 43.792309, 37.999893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606535, 43.865265, 37.651901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500722, 0.861618, -0.083023,
		0.734451, 0.473653, 0.486039,
		0.458104, 0.182394, -0.869985,
		25.743967, 43.919983, 37.390907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714701, 44.510391, 38.102936>,  <25.423294, 43.792309, 37.999893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714701, 44.510391, 38.102936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641680, 44.399418, 37.725639>,  <25.597866, 44.332832, 37.499260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.641680, 44.399418, 37.725639>,  <25.714701, 44.510391, 38.102936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.641680, 44.399418, 37.725639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421478, 0.888823, -0.179858,
		0.888275, 0.364724, -0.279183,
		-0.182546, -0.277433, -0.943243,
		25.586914, 44.316185, 37.442669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570679, 45.137531, 38.464439>,  <25.714701, 44.510391, 38.102936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570679, 45.137531, 38.464439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683273, 45.472092, 38.276314>,  <25.750830, 45.672829, 38.163437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683273, 45.472092, 38.276314>,  <25.570679, 45.137531, 38.464439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683273, 45.472092, 38.276314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903361, -0.065707, 0.423818,
		0.323579, -0.544163, -0.774069,
		0.281488, 0.836402, -0.470314,
		25.767719, 45.723011, 38.135220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242201, 45.056541, 38.130100>,  <25.570679, 45.137531, 38.464439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242201, 45.056541, 38.130100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147106, 45.422134, 38.261627>,  <26.090050, 45.641491, 38.340542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147106, 45.422134, 38.261627>,  <26.242201, 45.056541, 38.130100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147106, 45.422134, 38.261627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903374, 0.083657, 0.420616,
		0.356927, 0.397040, -0.845554,
		-0.237738, 0.913981, 0.328816,
		26.075785, 45.696327, 38.360271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770912, 45.616924, 37.747543>,  <26.242201, 45.056541, 38.130100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770912, 45.616924, 37.747543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605103, 45.634727, 38.111122>,  <26.505617, 45.645409, 38.329269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605103, 45.634727, 38.111122>,  <26.770912, 45.616924, 37.747543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605103, 45.634727, 38.111122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875083, -0.254664, 0.411552,
		0.249796, 0.966005, 0.066614,
		-0.414526, 0.044511, 0.908948,
		26.480745, 45.648083, 38.383808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161610, 46.033260, 38.122402>,  <26.770912, 45.616924, 37.747543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161610, 46.033260, 38.122402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969532, 45.806194, 38.389889>,  <26.854286, 45.669956, 38.550381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969532, 45.806194, 38.389889>,  <27.161610, 46.033260, 38.122402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969532, 45.806194, 38.389889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867133, -0.192249, 0.459478,
		-0.132269, 0.800500, 0.584555,
		-0.480192, -0.567662, 0.668712,
		26.825474, 45.635895, 38.590504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306696, 46.201679, 38.852432>,  <27.161610, 46.033260, 38.122402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306696, 46.201679, 38.852432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228249, 45.821819, 38.754700>,  <27.181181, 45.593903, 38.696060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228249, 45.821819, 38.754700>,  <27.306696, 46.201679, 38.852432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228249, 45.821819, 38.754700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954740, -0.241751, 0.173285,
		-0.223627, -0.199285, 0.954084,
		-0.196118, -0.949654, -0.244328,
		27.169413, 45.536922, 38.681400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710255, 45.668385, 39.295120>,  <27.306696, 46.201679, 38.852432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710255, 45.668385, 39.295120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639454, 45.518131, 38.931236>,  <27.596973, 45.427979, 38.712906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639454, 45.518131, 38.931236>,  <27.710255, 45.668385, 39.295120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639454, 45.518131, 38.931236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944478, -0.324801, -0.049652,
		-0.276823, -0.867988, 0.412269,
		-0.177003, -0.375634, -0.909708,
		27.586353, 45.405441, 38.658325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435762, 45.861660, 39.586956>,  <27.710255, 45.668385, 39.295120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435762, 45.861660, 39.586956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782356, 45.865540, 39.786598>,  <28.990313, 45.867867, 39.906384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782356, 45.865540, 39.786598>,  <28.435762, 45.861660, 39.586956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782356, 45.865540, 39.786598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268887, -0.851447, -0.450264,
		0.420596, 0.524351, -0.740374,
		0.866486, 0.009698, 0.499107,
		29.042301, 45.868450, 39.936329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081875, 45.960281, 39.169373>,  <28.435762, 45.861660, 39.586956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081875, 45.960281, 39.169373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127899, 45.738979, 39.499382>,  <29.155514, 45.606197, 39.697388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127899, 45.738979, 39.499382>,  <29.081875, 45.960281, 39.169373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127899, 45.738979, 39.499382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202242, -0.800099, -0.564747,
		0.972553, 0.231835, 0.019832,
		0.115060, -0.553257, 0.825026,
		29.162416, 45.573002, 39.746891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571592, 45.512932, 38.977139>,  <29.081875, 45.960281, 39.169373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571592, 45.512932, 38.977139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420065, 45.329739, 39.298820>,  <29.329149, 45.219822, 39.491829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420065, 45.329739, 39.298820>,  <29.571592, 45.512932, 38.977139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420065, 45.329739, 39.298820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090652, -0.883156, -0.460236,
		0.921021, -0.101442, 0.376071,
		-0.378816, -0.457979, 0.804210,
		29.306419, 45.192345, 39.540085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076923, 45.025303, 39.186588>,  <29.571592, 45.512932, 38.977139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076923, 45.025303, 39.186588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722500, 44.910236, 39.331997>,  <29.509846, 44.841198, 39.419243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722500, 44.910236, 39.331997>,  <30.076923, 45.025303, 39.186588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722500, 44.910236, 39.331997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118277, -0.898508, -0.422723,
		0.448232, -0.331560, 0.830154,
		-0.886058, -0.287666, 0.363524,
		29.456682, 44.823936, 39.441055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198919, 44.396244, 39.504856>,  <30.076923, 45.025303, 39.186588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198919, 44.396244, 39.504856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806679, 44.398209, 39.426476>,  <29.571335, 44.399387, 39.379448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806679, 44.398209, 39.426476>,  <30.198919, 44.396244, 39.504856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806679, 44.398209, 39.426476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101817, -0.841480, -0.530608,
		-0.167488, -0.540266, 0.824657,
		-0.980602, 0.004907, -0.195946,
		29.512499, 44.399681, 39.367691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987236, 43.711254, 39.488178>,  <30.198919, 44.396244, 39.504856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987236, 43.711254, 39.488178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675493, 43.880241, 39.303085>,  <29.488447, 43.981636, 39.192028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675493, 43.880241, 39.303085>,  <29.987236, 43.711254, 39.488178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675493, 43.880241, 39.303085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250606, -0.887035, -0.387770,
		-0.574281, -0.186248, 0.797191,
		-0.779357, 0.422470, -0.462732,
		29.441687, 44.006981, 39.164265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401613, 43.214096, 39.519863>,  <29.987236, 43.711254, 39.488178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401613, 43.214096, 39.519863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308041, 43.465691, 39.223309>,  <29.251898, 43.616646, 39.045376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308041, 43.465691, 39.223309>,  <29.401613, 43.214096, 39.519863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308041, 43.465691, 39.223309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281433, -0.773709, -0.567600,
		-0.930630, 0.075872, 0.358011,
		-0.233931, 0.628982, -0.741389,
		29.237862, 43.654385, 39.000893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699499, 43.049271, 39.351955>,  <29.401613, 43.214096, 39.519863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699499, 43.049271, 39.351955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857628, 43.257172, 39.049015>,  <28.952505, 43.381912, 38.867249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857628, 43.257172, 39.049015>,  <28.699499, 43.049271, 39.351955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857628, 43.257172, 39.049015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204847, -0.753865, -0.624279,
		-0.895410, 0.401932, -0.191550,
		0.395320, 0.519748, -0.757353,
		28.976223, 43.413097, 38.821808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311571, 42.827522, 38.777790>,  <28.699499, 43.049271, 39.351955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311571, 42.827522, 38.777790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634964, 42.991192, 38.608585>,  <28.828999, 43.089394, 38.507065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.634964, 42.991192, 38.608585>,  <28.311571, 42.827522, 38.777790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634964, 42.991192, 38.608585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007538, -0.711502, -0.702643,
		-0.588475, 0.571262, -0.572151,
		0.808481, 0.409175, -0.423007,
		28.877508, 43.113945, 38.481682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146053, 42.772396, 38.080349>,  <28.311571, 42.827522, 38.777790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146053, 42.772396, 38.080349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543524, 42.811855, 38.101799>,  <28.782005, 42.835533, 38.114670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543524, 42.811855, 38.101799>,  <28.146053, 42.772396, 38.080349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543524, 42.811855, 38.101799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106803, -0.682998, -0.722570,
		-0.034654, 0.723728, -0.689215,
		0.993676, 0.098650, 0.053627,
		28.841627, 42.841450, 38.117886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360651, 42.878994, 37.381252>,  <28.146053, 42.772396, 38.080349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360651, 42.878994, 37.381252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646107, 42.713985, 37.607719>,  <28.817379, 42.614979, 37.743599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646107, 42.713985, 37.607719>,  <28.360651, 42.878994, 37.381252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646107, 42.713985, 37.607719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137328, -0.710149, -0.690528,
		0.686923, 0.570537, -0.450138,
		0.713637, -0.412523, 0.566168,
		28.860197, 42.590229, 37.777569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927113, 42.683819, 36.883015>,  <28.360651, 42.878994, 37.381252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927113, 42.683819, 36.883015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971901, 42.482910, 37.225986>,  <28.998774, 42.362366, 37.431770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971901, 42.482910, 37.225986>,  <28.927113, 42.683819, 36.883015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971901, 42.482910, 37.225986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219146, -0.829131, -0.514313,
		0.969246, 0.245491, 0.017230,
		0.111973, -0.502271, 0.857430,
		29.005493, 42.332230, 37.483215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592062, 42.248112, 36.846222>,  <28.927113, 42.683819, 36.883015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592062, 42.248112, 36.846222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431870, 42.059723, 37.160622>,  <29.335754, 41.946690, 37.349262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431870, 42.059723, 37.160622>,  <29.592062, 42.248112, 36.846222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431870, 42.059723, 37.160622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215038, -0.882147, -0.419017,
		0.890715, 0.001213, 0.454560,
		-0.400480, -0.470972, 0.786003,
		29.311726, 41.918430, 37.396423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056768, 41.732708, 36.955250>,  <29.592062, 42.248112, 36.846222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056768, 41.732708, 36.955250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713552, 41.630867, 37.133663>,  <29.507624, 41.569763, 37.240711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.713552, 41.630867, 37.133663>,  <30.056768, 41.732708, 36.955250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713552, 41.630867, 37.133663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132022, -0.948632, -0.287520,
		0.496327, -0.187817, 0.847576,
		-0.858039, -0.254602, 0.446035,
		29.456141, 41.554485, 37.267475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173077, 40.985317, 37.288979>,  <30.056768, 41.732708, 36.955250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173077, 40.985317, 37.288979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777889, 41.033741, 37.250484>,  <29.540777, 41.062794, 37.227386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777889, 41.033741, 37.250484>,  <30.173077, 40.985317, 37.288979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777889, 41.033741, 37.250484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094671, -0.965489, -0.242627,
		-0.122287, -0.230597, 0.965335,
		-0.987969, 0.121060, -0.096236,
		29.481499, 41.070061, 37.221615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934397, 40.447540, 37.716858>,  <30.173077, 40.985317, 37.288979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934397, 40.447540, 37.716858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640261, 40.553303, 37.467262>,  <29.463779, 40.616760, 37.317505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640261, 40.553303, 37.467262>,  <29.934397, 40.447540, 37.716858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640261, 40.553303, 37.467262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122596, -0.957457, -0.261241,
		-0.666518, -0.115602, 0.736471,
		-0.735339, 0.264410, -0.623990,
		29.419659, 40.632626, 37.280064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352079, 40.056065, 37.914608>,  <29.934397, 40.447540, 37.716858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352079, 40.056065, 37.914608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266407, 40.155334, 37.536713>,  <29.215004, 40.214897, 37.309975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266407, 40.155334, 37.536713>,  <29.352079, 40.056065, 37.914608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266407, 40.155334, 37.536713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156631, -0.963395, -0.217569,
		-0.964155, 0.101377, 0.245210,
		-0.214178, 0.248178, -0.944741,
		29.202152, 40.229790, 37.253292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945850, 39.443966, 37.698845>,  <29.352079, 40.056065, 37.914608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945850, 39.443966, 37.698845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039770, 39.630150, 37.357502>,  <29.096121, 39.741859, 37.152695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039770, 39.630150, 37.357502>,  <28.945850, 39.443966, 37.698845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039770, 39.630150, 37.357502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131165, -0.885043, -0.446648,
		-0.963154, -0.007059, -0.268857,
		0.234797, 0.465456, -0.853359,
		29.110209, 39.769787, 37.101494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441376, 39.172215, 37.217014>,  <28.945850, 39.443966, 37.698845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441376, 39.172215, 37.217014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763197, 39.297985, 37.015488>,  <28.956289, 39.373447, 36.894569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763197, 39.297985, 37.015488>,  <28.441376, 39.172215, 37.217014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763197, 39.297985, 37.015488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084715, -0.900436, -0.426659,
		-0.587808, 0.300589, -0.751084,
		0.804553, 0.314422, -0.503819,
		29.004562, 39.392311, 36.864342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353613, 39.048019, 36.500854>,  <28.441376, 39.172215, 37.217014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353613, 39.048019, 36.500854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749306, 39.097591, 36.531990>,  <28.986721, 39.127335, 36.550671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749306, 39.097591, 36.531990>,  <28.353613, 39.048019, 36.500854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749306, 39.097591, 36.531990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144462, -0.911993, -0.383926,
		0.023414, 0.391038, -0.920077,
		0.989233, 0.123927, 0.077844,
		29.046076, 39.134769, 36.555344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634954, 38.875046, 35.885189>,  <28.353613, 39.048019, 36.500854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634954, 38.875046, 35.885189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951260, 38.836849, 36.127041>,  <29.141043, 38.813931, 36.272152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951260, 38.836849, 36.127041>,  <28.634954, 38.875046, 35.885189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951260, 38.836849, 36.127041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266356, -0.835665, -0.480332,
		0.551137, 0.540875, -0.635376,
		0.790761, -0.095493, 0.604631,
		29.188488, 38.808201, 36.308430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102858, 38.607681, 35.406754>,  <28.634954, 38.875046, 35.885189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102858, 38.607681, 35.406754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274399, 38.538639, 35.761444>,  <29.377323, 38.497211, 35.974258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274399, 38.538639, 35.761444>,  <29.102858, 38.607681, 35.406754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274399, 38.538639, 35.761444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279027, -0.908271, -0.311749,
		0.859203, 0.381116, -0.341352,
		0.428853, -0.172610, 0.886730,
		29.403055, 38.486855, 36.027462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699215, 38.427162, 35.194199>,  <29.102858, 38.607681, 35.406754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699215, 38.427162, 35.194199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651943, 38.280827, 35.563457>,  <29.623579, 38.193024, 35.785011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651943, 38.280827, 35.563457>,  <29.699215, 38.427162, 35.194199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651943, 38.280827, 35.563457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430963, -0.856436, -0.284233,
		0.894597, 0.364250, 0.258878,
		-0.118180, -0.365841, 0.923144,
		29.616489, 38.171074, 35.840401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339064, 38.279671, 35.518623>,  <29.699215, 38.427162, 35.194199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339064, 38.279671, 35.518623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049032, 38.027687, 35.629913>,  <29.875013, 37.876495, 35.696686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049032, 38.027687, 35.629913>,  <30.339064, 38.279671, 35.518623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049032, 38.027687, 35.629913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510361, -0.762793, -0.397087,
		0.462379, -0.145923, 0.874592,
		-0.725077, -0.629963, 0.278226,
		29.831509, 37.838699, 35.713383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541637, 37.786030, 35.966248>,  <30.339064, 38.279671, 35.518623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541637, 37.786030, 35.966248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236107, 37.645584, 35.749622>,  <30.052788, 37.561317, 35.619648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236107, 37.645584, 35.749622>,  <30.541637, 37.786030, 35.966248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236107, 37.645584, 35.749622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557851, -0.781156, -0.280352,
		-0.324608, -0.516250, 0.792537,
		-0.763827, -0.351114, -0.541560,
		30.006958, 37.540249, 35.587154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073158, 37.176132, 36.212364>,  <30.541637, 37.786030, 35.966248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073158, 37.176132, 36.212364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126720, 37.220654, 35.818474>,  <30.158857, 37.247368, 35.582142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126720, 37.220654, 35.818474>,  <30.073158, 37.176132, 36.212364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126720, 37.220654, 35.818474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525092, -0.850685, -0.024752,
		-0.840445, -0.513756, -0.172357,
		0.133905, 0.111306, -0.984723,
		30.166893, 37.254044, 35.523056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859047, 36.630482, 35.765446>,  <30.073158, 37.176132, 36.212364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859047, 36.630482, 35.765446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181307, 36.800781, 35.600681>,  <30.374662, 36.902962, 35.501823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181307, 36.800781, 35.600681>,  <29.859047, 36.630482, 35.765446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181307, 36.800781, 35.600681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473570, -0.880610, 0.016055,
		-0.355894, -0.208001, -0.911084,
		0.805650, 0.425748, -0.411907,
		30.423002, 36.928505, 35.477108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489670, 36.242580, 36.159164>,  <29.859047, 36.630482, 35.765446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489670, 36.242580, 36.159164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845449, 36.109200, 36.284187>,  <31.058916, 36.029171, 36.359200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.845449, 36.109200, 36.284187>,  <30.489670, 36.242580, 36.159164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845449, 36.109200, 36.284187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174128, 0.385055, 0.906318,
		-0.422567, -0.860547, 0.284423,
		0.889447, -0.333454, 0.312557,
		31.112284, 36.009163, 36.377953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531796, 36.539188, 36.804832>,  <30.489670, 36.242580, 36.159164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531796, 36.539188, 36.804832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883856, 36.349434, 36.798008>,  <31.095093, 36.235580, 36.793915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883856, 36.349434, 36.798008>,  <30.531796, 36.539188, 36.804832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883856, 36.349434, 36.798008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142977, 0.230666, 0.962471,
		-0.452650, -0.849559, 0.270848,
		0.880151, -0.474387, -0.017057,
		31.147902, 36.207119, 36.792892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651384, 36.063431, 37.303593>,  <30.531796, 36.539188, 36.804832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651384, 36.063431, 37.303593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031622, 36.169701, 37.239357>,  <31.259764, 36.233463, 37.200817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.031622, 36.169701, 37.239357>,  <30.651384, 36.063431, 37.303593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031622, 36.169701, 37.239357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145647, 0.075143, 0.986479,
		0.274152, -0.961129, 0.032735,
		0.950594, 0.265677, -0.160586,
		31.316799, 36.249405, 37.191181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054682, 35.611145, 37.694180>,  <30.651384, 36.063431, 37.303593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054682, 35.611145, 37.694180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301615, 35.913292, 37.606243>,  <31.449774, 36.094578, 37.553482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301615, 35.913292, 37.606243>,  <31.054682, 35.611145, 37.694180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301615, 35.913292, 37.606243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283229, 0.047305, 0.957885,
		0.733951, -0.653596, -0.184738,
		0.617330, 0.755364, -0.219836,
		31.486814, 36.139900, 37.540291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651484, 35.509262, 38.139977>,  <31.054682, 35.611145, 37.694180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651484, 35.509262, 38.139977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659533, 35.889980, 38.017551>,  <31.664362, 36.118412, 37.944096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659533, 35.889980, 38.017551>,  <31.651484, 35.509262, 38.139977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659533, 35.889980, 38.017551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222228, 0.294212, 0.929545,
		0.974787, -0.086720, -0.205596,
		0.020122, 0.951798, -0.306065,
		31.665569, 36.175518, 37.925732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247509, 35.786354, 38.504311>,  <31.651484, 35.509262, 38.139977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247509, 35.786354, 38.504311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014675, 36.096630, 38.406761>,  <31.874975, 36.282799, 38.348232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014675, 36.096630, 38.406761>,  <32.247509, 35.786354, 38.504311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014675, 36.096630, 38.406761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124747, 0.381564, 0.915886,
		0.803503, 0.502699, -0.318867,
		-0.582083, 0.775695, -0.243878,
		31.840050, 36.329338, 38.333599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527390, 36.316547, 38.730595>,  <32.247509, 35.786354, 38.504311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527390, 36.316547, 38.730595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167828, 36.484768, 38.681419>,  <31.952091, 36.585701, 38.651913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167828, 36.484768, 38.681419>,  <32.527390, 36.316547, 38.730595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167828, 36.484768, 38.681419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081315, 0.435830, 0.896348,
		0.430542, 0.795731, -0.425965,
		-0.898900, 0.420552, -0.122938,
		31.898157, 36.610935, 38.644539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639553, 36.912048, 39.091934>,  <32.527390, 36.316547, 38.730595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639553, 36.912048, 39.091934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242188, 36.904900, 39.046650>,  <32.003769, 36.900612, 39.019478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242188, 36.904900, 39.046650>,  <32.639553, 36.912048, 39.091934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242188, 36.904900, 39.046650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109543, 0.438578, 0.891992,
		0.033710, 0.898515, -0.437646,
		-0.993410, -0.017872, -0.113210,
		31.944164, 36.899536, 39.012688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379532, 37.545265, 39.190922>,  <32.639553, 36.912048, 39.091934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379532, 37.545265, 39.190922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082405, 37.290043, 39.272011>,  <31.904129, 37.136909, 39.320663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082405, 37.290043, 39.272011>,  <32.379532, 37.545265, 39.190922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082405, 37.290043, 39.272011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105818, 0.410896, 0.905520,
		-0.661075, 0.651187, -0.372740,
		-0.742820, -0.638060, 0.202726,
		31.859558, 37.098625, 39.332829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926722, 37.987339, 39.621979>,  <32.379532, 37.545265, 39.190922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926722, 37.987339, 39.621979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774824, 37.621826, 39.679657>,  <31.683685, 37.402519, 39.714264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774824, 37.621826, 39.679657>,  <31.926722, 37.987339, 39.621979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774824, 37.621826, 39.679657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236658, 0.246647, 0.939765,
		-0.894308, 0.322745, -0.309917,
		-0.379745, -0.913784, 0.144199,
		31.660900, 37.347691, 39.722916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185617, 38.036785, 39.909122>,  <31.926722, 37.987339, 39.621979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185617, 38.036785, 39.909122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340889, 37.691433, 40.038048>,  <31.434052, 37.484222, 40.115402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340889, 37.691433, 40.038048>,  <31.185617, 38.036785, 39.909122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340889, 37.691433, 40.038048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295886, 0.214468, 0.930836,
		-0.872793, -0.456702, -0.172210,
		0.388181, -0.863381, 0.322317,
		31.457344, 37.432419, 40.134743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712341, 37.632103, 40.303761>,  <31.185617, 38.036785, 39.909122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712341, 37.632103, 40.303761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051447, 37.463692, 40.432774>,  <31.254911, 37.362644, 40.510181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051447, 37.463692, 40.432774>,  <30.712341, 37.632103, 40.303761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051447, 37.463692, 40.432774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369964, -0.033701, 0.928435,
		-0.380028, -0.906421, -0.184336,
		0.847765, -0.421028, 0.322536,
		31.305777, 37.337383, 40.529533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394632, 37.117790, 40.622501>,  <30.712341, 37.632103, 40.303761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394632, 37.117790, 40.622501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774616, 37.163330, 40.738857>,  <31.002605, 37.190655, 40.808670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774616, 37.163330, 40.738857>,  <30.394632, 37.117790, 40.622501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774616, 37.163330, 40.738857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299070, 0.062600, 0.952175,
		0.090210, -0.991522, 0.093521,
		0.949957, 0.113865, 0.290887,
		31.059605, 37.197487, 40.826122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394053, 36.612030, 41.118382>,  <30.394632, 37.117790, 40.622501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394053, 36.612030, 41.118382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708065, 36.842518, 41.209332>,  <30.896473, 36.980808, 41.263901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708065, 36.842518, 41.209332>,  <30.394053, 36.612030, 41.118382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708065, 36.842518, 41.209332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272255, -0.008762, 0.962185,
		0.556419, -0.817250, 0.149999,
		0.785032, 0.576217, 0.227376,
		30.943575, 37.015385, 41.277546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624844, 36.293209, 41.770832>,  <30.394053, 36.612030, 41.118382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624844, 36.293209, 41.770832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814013, 36.645599, 41.776932>,  <30.927513, 36.857033, 41.780594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814013, 36.645599, 41.776932>,  <30.624844, 36.293209, 41.770832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814013, 36.645599, 41.776932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157947, 0.067733, 0.985122,
		0.866832, -0.468295, 0.171179,
		0.472922, 0.880972, 0.015252,
		30.955889, 36.909889, 41.781506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167862, 36.212608, 42.218525>,  <30.624844, 36.293209, 41.770832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167862, 36.212608, 42.218525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076889, 36.601879, 42.204712>,  <31.022305, 36.835442, 42.196423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.076889, 36.601879, 42.204712>,  <31.167862, 36.212608, 42.218525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076889, 36.601879, 42.204712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232072, -0.019723, 0.972498,
		0.945736, 0.229194, 0.230334,
		-0.227434, 0.973181, -0.034537,
		31.008659, 36.893833, 42.194351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640482, 36.549530, 42.673035>,  <31.167862, 36.212608, 42.218525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640482, 36.549530, 42.673035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324505, 36.787716, 42.614506>,  <31.134918, 36.930630, 42.579388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324505, 36.787716, 42.614506>,  <31.640482, 36.549530, 42.673035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324505, 36.787716, 42.614506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116631, 0.088357, 0.989237,
		0.601986, 0.798506, -0.000347,
		-0.789943, 0.595467, -0.146321,
		31.087523, 36.966354, 42.570610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701153, 37.054436, 43.198341>,  <31.640482, 36.549530, 42.673035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701153, 37.054436, 43.198341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317871, 37.060280, 43.084057>,  <31.087902, 37.063786, 43.015488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317871, 37.060280, 43.084057>,  <31.701153, 37.054436, 43.198341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317871, 37.060280, 43.084057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285321, 0.024140, 0.958128,
		0.020897, 0.999602, -0.018963,
		-0.958204, 0.014611, -0.285712,
		31.030411, 37.064663, 42.998344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398600, 37.567837, 43.683380>,  <31.701153, 37.054436, 43.198341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398600, 37.567837, 43.683380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096687, 37.350815, 43.535900>,  <30.915541, 37.220600, 43.447414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.096687, 37.350815, 43.535900>,  <31.398600, 37.567837, 43.683380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096687, 37.350815, 43.535900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413999, -0.041990, 0.909308,
		-0.508833, 0.838969, -0.192926,
		-0.754780, -0.542557, -0.368698,
		30.870253, 37.188049, 43.425289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848438, 37.869873, 43.914303>,  <31.398600, 37.567837, 43.683380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848438, 37.869873, 43.914303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711510, 37.509838, 43.806477>,  <30.629353, 37.293819, 43.741779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711510, 37.509838, 43.806477>,  <30.848438, 37.869873, 43.914303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711510, 37.509838, 43.806477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505060, -0.065651, 0.860583,
		-0.792295, 0.430742, -0.432123,
		-0.342321, -0.900084, -0.269565,
		30.608814, 37.239815, 43.725609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100662, 37.875931, 44.019463>,  <30.848438, 37.869873, 43.914303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100662, 37.875931, 44.019463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236126, 37.500851, 44.050518>,  <30.317404, 37.275803, 44.069153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236126, 37.500851, 44.050518>,  <30.100662, 37.875931, 44.019463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236126, 37.500851, 44.050518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404767, -0.070699, 0.911683,
		-0.849395, -0.340179, -0.403493,
		0.338661, -0.937699, 0.077642,
		30.337725, 37.219540, 44.073811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456766, 37.525925, 44.241962>,  <30.100662, 37.875931, 44.019463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456766, 37.525925, 44.241962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766096, 37.281937, 44.311146>,  <29.951694, 37.135544, 44.352654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766096, 37.281937, 44.311146>,  <29.456766, 37.525925, 44.241962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766096, 37.281937, 44.311146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406865, -0.268230, 0.873220,
		-0.486243, -0.745650, -0.455602,
		0.773322, -0.609966, 0.172954,
		29.998093, 37.098946, 44.363033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098886, 36.899639, 44.446419>,  <29.456766, 37.525925, 44.241962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098886, 36.899639, 44.446419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471951, 36.878338, 44.589138>,  <29.695789, 36.865559, 44.674770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471951, 36.878338, 44.589138>,  <29.098886, 36.899639, 44.446419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471951, 36.878338, 44.589138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354699, -0.315797, 0.880035,
		0.065815, -0.947331, -0.313419,
		0.932661, -0.053250, 0.356802,
		29.751749, 36.862362, 44.696178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059166, 36.302158, 44.742702>,  <29.098886, 36.899639, 44.446419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059166, 36.302158, 44.742702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389059, 36.450668, 44.913334>,  <29.586996, 36.539776, 45.015713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389059, 36.450668, 44.913334>,  <29.059166, 36.302158, 44.742702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389059, 36.450668, 44.913334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295164, -0.360804, 0.884703,
		0.482381, -0.855554, -0.187979,
		0.824734, 0.371279, 0.426574,
		29.636478, 36.562054, 45.041306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198875, 35.852173, 45.197521>,  <29.059166, 36.302158, 44.742702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198875, 35.852173, 45.197521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401096, 36.168488, 45.335552>,  <29.522429, 36.358276, 45.418369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401096, 36.168488, 45.335552>,  <29.198875, 35.852173, 45.197521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401096, 36.168488, 45.335552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181791, -0.293340, 0.938565,
		0.843428, -0.537222, -0.004540,
		0.505550, 0.790787, 0.345074,
		29.552761, 36.405724, 45.439075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670105, 35.698757, 45.768879>,  <29.198875, 35.852173, 45.197521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670105, 35.698757, 45.768879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612444, 36.092896, 45.805336>,  <29.577848, 36.329380, 45.827209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612444, 36.092896, 45.805336>,  <29.670105, 35.698757, 45.768879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612444, 36.092896, 45.805336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013865, -0.094107, 0.995466,
		0.989458, 0.142235, 0.027228,
		-0.144152, 0.985349, 0.091143,
		29.569199, 36.388500, 45.832680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980267, 35.813835, 46.405701>,  <29.670105, 35.698757, 45.768879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980267, 35.813835, 46.405701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761131, 36.144360, 46.353416>,  <29.629650, 36.342674, 46.322044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761131, 36.144360, 46.353416>,  <29.980267, 35.813835, 46.405701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761131, 36.144360, 46.353416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127583, 0.071898, 0.989219,
		0.826799, 0.558608, 0.066035,
		-0.547838, 0.826310, -0.130714,
		29.596781, 36.392254, 46.314201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200457, 36.403530, 46.955925>,  <29.980267, 35.813835, 46.405701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200457, 36.403530, 46.955925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827637, 36.438839, 46.815361>,  <29.603945, 36.460026, 46.731022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827637, 36.438839, 46.815361>,  <30.200457, 36.403530, 46.955925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827637, 36.438839, 46.815361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354676, -0.023977, 0.934682,
		0.074081, 0.995808, 0.053656,
		-0.932050, 0.088273, -0.351413,
		29.548021, 36.465321, 46.709938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914974, 36.834885, 47.490810>,  <30.200457, 36.403530, 46.955925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914974, 36.834885, 47.490810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625589, 36.667091, 47.271488>,  <29.451960, 36.566414, 47.139896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625589, 36.667091, 47.271488>,  <29.914974, 36.834885, 47.490810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625589, 36.667091, 47.271488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617007, 0.036608, 0.786105,
		-0.309687, 0.907024, -0.285309,
		-0.723461, -0.419484, -0.548304,
		29.408550, 36.541245, 47.106998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324451, 37.301208, 47.516197>,  <29.914974, 36.834885, 47.490810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324451, 37.301208, 47.516197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217834, 36.921638, 47.448673>,  <29.153864, 36.693897, 47.408157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217834, 36.921638, 47.448673>,  <29.324451, 37.301208, 47.516197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217834, 36.921638, 47.448673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515460, -0.007652, 0.856879,
		-0.814406, 0.315409, -0.487094,
		-0.266541, -0.948925, -0.168813,
		29.137873, 36.636963, 47.398029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685883, 37.297562, 47.841442>,  <29.324451, 37.301208, 47.516197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685883, 37.297562, 47.841442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728363, 36.907700, 47.762676>,  <28.753851, 36.673782, 47.715416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.728363, 36.907700, 47.762676>,  <28.685883, 37.297562, 47.841442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728363, 36.907700, 47.762676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522079, -0.223196, 0.823175,
		-0.846259, 0.015380, -0.532549,
		0.106203, -0.974652, -0.196911,
		28.760223, 36.615303, 47.703602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999931, 36.963978, 48.030807>,  <28.685883, 37.297562, 47.841442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999931, 36.963978, 48.030807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303907, 36.704678, 48.049835>,  <28.486294, 36.549099, 48.061253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303907, 36.704678, 48.049835>,  <27.999931, 36.963978, 48.030807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303907, 36.704678, 48.049835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339310, -0.333226, 0.879675,
		-0.554401, -0.684640, -0.473190,
		0.759940, -0.648251, 0.047565,
		28.531889, 36.510204, 48.064106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782572, 36.430199, 48.339996>,  <27.999931, 36.963978, 48.030807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782572, 36.430199, 48.339996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173927, 36.370026, 48.396740>,  <28.408741, 36.333923, 48.430786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.173927, 36.370026, 48.396740>,  <27.782572, 36.430199, 48.339996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173927, 36.370026, 48.396740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181696, -0.297995, 0.937116,
		-0.098694, -0.942640, -0.318888,
		0.978390, -0.150428, 0.141863,
		28.467443, 36.324898, 48.439301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850763, 35.753342, 48.608391>,  <27.782572, 36.430199, 48.339996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850763, 35.753342, 48.608391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185141, 35.953362, 48.698856>,  <28.385767, 36.073376, 48.753136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185141, 35.953362, 48.698856>,  <27.850763, 35.753342, 48.608391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185141, 35.953362, 48.698856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005213, -0.404837, 0.914374,
		0.548795, -0.765542, -0.335813,
		0.835941, 0.500053, 0.226163,
		28.435923, 36.103378, 48.766705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222464, 35.198597, 49.011288>,  <27.850763, 35.753342, 48.608391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222464, 35.198597, 49.011288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359690, 35.569202, 49.073097>,  <28.442024, 35.791565, 49.110184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359690, 35.569202, 49.073097>,  <28.222464, 35.198597, 49.011288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359690, 35.569202, 49.073097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182148, -0.095768, 0.978596,
		0.921482, -0.363867, 0.135909,
		0.343064, 0.926515, 0.154526,
		28.462608, 35.847157, 49.119453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647570, 35.199539, 49.660286>,  <28.222464, 35.198597, 49.011288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647570, 35.199539, 49.660286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537550, 35.580009, 49.604271>,  <28.471539, 35.808292, 49.570660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.537550, 35.580009, 49.604271>,  <28.647570, 35.199539, 49.660286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537550, 35.580009, 49.604271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292986, 0.055805, 0.954487,
		0.915700, 0.303562, 0.263332,
		-0.275051, 0.951176, -0.140040,
		28.455034, 35.865364, 49.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986216, 35.799370, 50.078278>,  <28.647570, 35.199539, 49.660286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986216, 35.799370, 50.078278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608374, 35.887234, 49.980728>,  <28.381668, 35.939953, 49.922199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608374, 35.887234, 49.980728>,  <28.986216, 35.799370, 50.078278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608374, 35.887234, 49.980728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237476, 0.055481, 0.969808,
		0.226561, 0.973997, -0.000243,
		-0.944603, 0.219663, -0.243870,
		28.324993, 35.953133, 49.907566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782919, 36.310631, 50.367962>,  <28.986216, 35.799370, 50.078278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782919, 36.310631, 50.367962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491570, 36.043362, 50.307270>,  <28.316759, 35.882999, 50.270855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.491570, 36.043362, 50.307270>,  <28.782919, 36.310631, 50.367962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.491570, 36.043362, 50.307270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197167, -0.007686, 0.980340,
		-0.656198, 0.743970, -0.126143,
		-0.728374, -0.668168, -0.151730,
		28.273058, 35.842911, 50.261749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223408, 36.483372, 50.780022>,  <28.782919, 36.310631, 50.367962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223408, 36.483372, 50.780022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137407, 36.102211, 50.694458>,  <28.085808, 35.873516, 50.643120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137407, 36.102211, 50.694458>,  <28.223408, 36.483372, 50.780022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137407, 36.102211, 50.694458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423489, -0.106405, 0.899631,
		-0.880019, 0.284009, -0.380665,
		-0.214999, -0.952899, -0.213913,
		28.072908, 35.816341, 50.630283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556101, 36.468056, 51.048325>,  <28.223408, 36.483372, 50.780022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556101, 36.468056, 51.048325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682953, 36.091415, 51.003048>,  <27.759064, 35.865429, 50.975883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682953, 36.091415, 51.003048>,  <27.556101, 36.468056, 51.048325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682953, 36.091415, 51.003048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482745, -0.263004, 0.835336,
		-0.816324, -0.210267, -0.537961,
		0.317130, -0.941603, -0.113191,
		27.778091, 35.808933, 50.969090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982965, 35.917034, 51.065559>,  <27.556101, 36.468056, 51.048325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982965, 35.917034, 51.065559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309103, 35.715771, 51.180134>,  <27.504786, 35.595013, 51.248878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309103, 35.715771, 51.180134>,  <26.982965, 35.917034, 51.065559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309103, 35.715771, 51.180134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464944, -0.274191, 0.841811,
		-0.345025, -0.819544, -0.457500,
		0.815343, -0.503158, 0.286439,
		27.553707, 35.564823, 51.266068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696510, 35.312637, 51.457874>,  <26.982965, 35.917034, 51.065559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696510, 35.312637, 51.457874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084148, 35.286610, 51.553055>,  <27.316730, 35.270992, 51.610165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084148, 35.286610, 51.553055>,  <26.696510, 35.312637, 51.457874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084148, 35.286610, 51.553055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245678, -0.341858, 0.907070,
		0.022329, -0.937496, -0.347278,
		0.969094, -0.065065, 0.237956,
		27.374876, 35.267090, 51.624443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888424, 34.615196, 51.755760>,  <26.696510, 35.312637, 51.457874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888424, 34.615196, 51.755760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126776, 34.911747, 51.879238>,  <27.269787, 35.089676, 51.953323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126776, 34.911747, 51.879238>,  <26.888424, 34.615196, 51.755760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126776, 34.911747, 51.879238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178786, -0.252278, 0.950995,
		0.782919, -0.621870, -0.017780,
		0.595881, 0.741373, 0.308695,
		27.305540, 35.134159, 51.971848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364990, 33.930992, 51.783535>,  <26.888424, 34.615196, 51.755760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364990, 33.930992, 51.783535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578970, 33.731342, 52.056210>,  <27.707357, 33.611553, 52.219814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578970, 33.731342, 52.056210>,  <27.364990, 33.930992, 51.783535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578970, 33.731342, 52.056210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574894, 0.376216, 0.726607,
		-0.619132, -0.780598, -0.085688,
		0.534951, -0.499127, 0.681689,
		27.739456, 33.581604, 52.260715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936270, 33.485035, 52.147232>,  <27.364990, 33.930992, 51.783535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936270, 33.485035, 52.147232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226698, 33.605469, 52.394512>,  <27.400955, 33.677727, 52.542881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226698, 33.605469, 52.394512>,  <26.936270, 33.485035, 52.147232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226698, 33.605469, 52.394512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679407, 0.175562, 0.712450,
		0.105968, -0.937300, 0.332023,
		0.726070, 0.301075, 0.618204,
		27.444519, 33.695793, 52.579971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866476, 33.189678, 52.880829>,  <26.936270, 33.485035, 52.147232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866476, 33.189678, 52.880829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050169, 33.544300, 52.903198>,  <27.160385, 33.757072, 52.916618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.050169, 33.544300, 52.903198>,  <26.866476, 33.189678, 52.880829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050169, 33.544300, 52.903198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589760, 0.257206, 0.765525,
		0.664294, -0.384538, 0.640971,
		0.459235, 0.886553, 0.055925,
		27.187939, 33.810265, 52.919975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636293, 33.418953, 53.416233>,  <26.866476, 33.189678, 52.880829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636293, 33.418953, 53.416233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781298, 33.783203, 53.336887>,  <26.868299, 34.001755, 53.289280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781298, 33.783203, 53.336887>,  <26.636293, 33.418953, 53.416233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781298, 33.783203, 53.336887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719750, 0.408759, 0.561138,
		0.592070, -0.060644, 0.803602,
		0.362509, 0.910626, -0.198365,
		26.890051, 34.056389, 53.277378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451965, 34.197708, 53.619781>,  <26.636293, 33.418953, 53.416233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451965, 34.197708, 53.619781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702023, 34.272598, 53.922871>,  <26.852057, 34.317532, 54.104725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702023, 34.272598, 53.922871>,  <26.451965, 34.197708, 53.619781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702023, 34.272598, 53.922871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768984, -0.313964, -0.556857,
		0.133643, 0.930792, -0.340243,
		0.625143, 0.187221, 0.757724,
		26.889565, 34.328766, 54.150188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968996, 34.734676, 53.499889>,  <26.451965, 34.197708, 53.619781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968996, 34.734676, 53.499889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115330, 34.466949, 53.758556>,  <27.203131, 34.306313, 53.913757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115330, 34.466949, 53.758556>,  <26.968996, 34.734676, 53.499889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115330, 34.466949, 53.758556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731498, -0.222788, -0.644419,
		0.575391, 0.708786, 0.408102,
		0.365835, -0.669319, 0.646666,
		27.225080, 34.266155, 53.952557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748158, 34.643547, 53.642670>,  <26.968996, 34.734676, 53.499889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748158, 34.643547, 53.642670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569010, 34.285999, 53.650845>,  <27.461521, 34.071472, 53.655750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569010, 34.285999, 53.650845>,  <27.748158, 34.643547, 53.642670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569010, 34.285999, 53.650845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569950, -0.303032, -0.763760,
		0.688891, -0.330417, 0.645177,
		-0.447869, -0.893866, 0.020435,
		27.434649, 34.017841, 53.656975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269501, 34.254810, 53.240253>,  <27.748158, 34.643547, 53.642670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269501, 34.254810, 53.240253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948126, 34.016850, 53.249928>,  <27.755301, 33.874073, 53.255730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948126, 34.016850, 53.249928>,  <28.269501, 34.254810, 53.240253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948126, 34.016850, 53.249928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377603, -0.540531, -0.751826,
		0.460332, -0.594913, 0.658918,
		-0.803437, -0.594899, 0.024182,
		27.707094, 33.838379, 53.257183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535398, 33.612202, 53.270439>,  <28.269501, 34.254810, 53.240253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535398, 33.612202, 53.270439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170462, 33.575790, 53.110767>,  <27.951500, 33.553944, 53.014965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170462, 33.575790, 53.110767>,  <28.535398, 33.612202, 53.270439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170462, 33.575790, 53.110767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386654, -0.512197, -0.766911,
		-0.134653, -0.854031, 0.502494,
		-0.912341, -0.091024, -0.399184,
		27.896759, 33.548485, 52.991013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409069, 32.937584, 53.192154>,  <28.535398, 33.612202, 53.270439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409069, 32.937584, 53.192154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210707, 33.121979, 52.897789>,  <28.091688, 33.232616, 52.721169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210707, 33.121979, 52.897789>,  <28.409069, 32.937584, 53.192154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210707, 33.121979, 52.897789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422748, -0.612092, -0.668302,
		-0.758525, -0.642521, 0.108659,
		-0.495908, 0.460988, -0.735911,
		28.061934, 33.260277, 52.677017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132605, 32.434765, 52.696693>,  <28.409069, 32.937584, 53.192154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132605, 32.434765, 52.696693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167425, 32.782482, 52.502068>,  <28.188316, 32.991112, 52.385292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167425, 32.782482, 52.502068>,  <28.132605, 32.434765, 52.696693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167425, 32.782482, 52.502068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553844, -0.448214, -0.701684,
		-0.828058, -0.208402, -0.520470,
		0.087050, 0.869294, -0.486569,
		28.193541, 33.043270, 52.356098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979561, 32.239830, 52.080990>,  <28.132605, 32.434765, 52.696693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979561, 32.239830, 52.080990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182377, 32.582100, 52.039570>,  <28.304068, 32.787464, 52.014717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.182377, 32.582100, 52.039570>,  <27.979561, 32.239830, 52.080990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182377, 32.582100, 52.039570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382432, -0.331012, -0.862657,
		-0.772435, 0.397800, -0.495075,
		0.507041, 0.855679, -0.103553,
		28.334490, 32.838802, 52.008503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994390, 32.350197, 51.357677>,  <27.979561, 32.239830, 52.080990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994390, 32.350197, 51.357677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274469, 32.592930, 51.508133>,  <28.442516, 32.738567, 51.598408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274469, 32.592930, 51.508133>,  <27.994390, 32.350197, 51.357677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274469, 32.592930, 51.508133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628858, -0.274765, -0.727353,
		-0.338029, 0.745830, -0.573999,
		0.700196, 0.606830, 0.376142,
		28.484528, 32.774979, 51.620975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235878, 32.836758, 50.868107>,  <27.994390, 32.350197, 51.357677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235878, 32.836758, 50.868107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548958, 32.800785, 51.114452>,  <28.736807, 32.779202, 51.262260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548958, 32.800785, 51.114452>,  <28.235878, 32.836758, 50.868107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548958, 32.800785, 51.114452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612145, -0.067627, -0.787848,
		0.112500, 0.993650, 0.002118,
		0.782702, -0.089929, 0.615866,
		28.783768, 32.773808, 51.299213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706787, 33.152344, 50.418438>,  <28.235878, 32.836758, 50.868107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706787, 33.152344, 50.418438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906132, 32.957592, 50.705376>,  <29.025740, 32.840740, 50.877537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906132, 32.957592, 50.705376>,  <28.706787, 33.152344, 50.418438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906132, 32.957592, 50.705376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758292, -0.156301, -0.632901,
		0.420270, 0.859369, 0.291305,
		0.498364, -0.486883, 0.717341,
		29.055641, 32.811527, 50.920578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391291, 33.497921, 50.544643>,  <28.706787, 33.152344, 50.418438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391291, 33.497921, 50.544643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440411, 33.122208, 50.672810>,  <29.469883, 32.896778, 50.749710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.440411, 33.122208, 50.672810>,  <29.391291, 33.497921, 50.544643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440411, 33.122208, 50.672810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853238, -0.064971, -0.517458,
		0.506858, 0.336935, 0.793454,
		0.122799, -0.939284, 0.320417,
		29.477251, 32.840424, 50.768936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163086, 33.323761, 50.735180>,  <29.391291, 33.497921, 50.544643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163086, 33.323761, 50.735180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979673, 32.982319, 50.636299>,  <29.869625, 32.777454, 50.576969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979673, 32.982319, 50.636299>,  <30.163086, 33.323761, 50.735180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979673, 32.982319, 50.636299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768463, -0.241147, -0.592716,
		0.446332, -0.461746, 0.766536,
		-0.458532, -0.853603, -0.247203,
		29.842113, 32.726238, 50.562138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695648, 32.962605, 50.489738>,  <30.163086, 33.323761, 50.735180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695648, 32.962605, 50.489738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368608, 32.759254, 50.381599>,  <30.172384, 32.637245, 50.316715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368608, 32.759254, 50.381599>,  <30.695648, 32.962605, 50.489738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368608, 32.759254, 50.381599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459382, -0.292868, -0.838568,
		0.347134, -0.809803, 0.472988,
		-0.817598, -0.508378, -0.270344,
		30.123329, 32.606743, 50.300495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935410, 32.349415, 50.112045>,  <30.695648, 32.962605, 50.489738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935410, 32.349415, 50.112045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557001, 32.399242, 49.992359>,  <30.329956, 32.429138, 49.920547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557001, 32.399242, 49.992359>,  <30.935410, 32.349415, 50.112045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557001, 32.399242, 49.992359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294404, -0.055814, -0.954050,
		-0.135545, -0.990640, 0.016128,
		-0.946020, 0.124569, -0.299214,
		30.273195, 32.436611, 49.902596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864285, 31.980980, 49.446522>,  <30.935410, 32.349415, 50.112045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864285, 31.980980, 49.446522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533415, 32.205448, 49.434719>,  <30.334894, 32.340130, 49.427635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.533415, 32.205448, 49.434719>,  <30.864285, 31.980980, 49.446522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533415, 32.205448, 49.434719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135492, 0.148204, -0.979631,
		-0.545369, -0.814322, -0.198624,
		-0.827173, 0.561173, -0.029509,
		30.285263, 32.373798, 49.425865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614168, 31.739576, 48.798386>,  <30.864285, 31.980980, 49.446522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614168, 31.739576, 48.798386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421421, 32.081585, 48.875057>,  <30.305773, 32.286789, 48.921062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.421421, 32.081585, 48.875057>,  <30.614168, 31.739576, 48.798386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421421, 32.081585, 48.875057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216888, 0.328329, -0.919326,
		-0.848978, -0.401420, -0.343655,
		-0.481867, 0.855022, 0.191681,
		30.276861, 32.338093, 48.932560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303040, 31.865267, 48.101871>,  <30.614168, 31.739576, 48.798386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303040, 31.865267, 48.101871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277390, 32.208523, 48.305630>,  <30.261999, 32.414474, 48.427887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277390, 32.208523, 48.305630>,  <30.303040, 31.865267, 48.101871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277390, 32.208523, 48.305630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240455, 0.508696, -0.826686,
		-0.968540, 0.069477, -0.238964,
		-0.064124, 0.858138, 0.509399,
		30.258152, 32.465965, 48.458450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797699, 32.348442, 47.731026>,  <30.303040, 31.865267, 48.101871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797699, 32.348442, 47.731026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033100, 32.588825, 47.947365>,  <30.174341, 32.733055, 48.077168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033100, 32.588825, 47.947365>,  <29.797699, 32.348442, 47.731026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033100, 32.588825, 47.947365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263976, 0.489467, -0.831107,
		-0.764186, 0.631879, 0.129415,
		0.588504, 0.600958, 0.540845,
		30.209652, 32.769112, 48.109619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654299, 32.995327, 47.526680>,  <29.797699, 32.348442, 47.731026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654299, 32.995327, 47.526680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018366, 33.031704, 47.688332>,  <30.236807, 33.053528, 47.785324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018366, 33.031704, 47.688332>,  <29.654299, 32.995327, 47.526680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018366, 33.031704, 47.688332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323870, 0.452036, -0.831126,
		-0.258265, 0.887352, 0.381977,
		0.910169, 0.090940, 0.404132,
		30.291416, 33.058987, 47.809570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761963, 33.695518, 47.445702>,  <29.654299, 32.995327, 47.526680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761963, 33.695518, 47.445702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112431, 33.513725, 47.509911>,  <30.322712, 33.404648, 47.548435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112431, 33.513725, 47.509911>,  <29.761963, 33.695518, 47.445702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112431, 33.513725, 47.509911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347633, 0.365151, -0.863607,
		0.333879, 0.812472, 0.477928,
		0.876171, -0.454483, 0.160526,
		30.375282, 33.377380, 47.558067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257250, 34.202744, 47.375633>,  <29.761963, 33.695518, 47.445702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257250, 34.202744, 47.375633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418253, 33.844597, 47.299416>,  <30.514854, 33.629707, 47.253685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418253, 33.844597, 47.299416>,  <30.257250, 34.202744, 47.375633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418253, 33.844597, 47.299416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331635, 0.336639, -0.881301,
		0.853233, 0.291538, 0.432434,
		0.402507, -0.895366, -0.190547,
		30.539005, 33.575989, 47.242252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952061, 34.297100, 47.275158>,  <30.257250, 34.202744, 47.375633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952061, 34.297100, 47.275158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861172, 33.960365, 47.079327>,  <30.806639, 33.758324, 46.961830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861172, 33.960365, 47.079327>,  <30.952061, 34.297100, 47.275158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861172, 33.960365, 47.079327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349750, 0.398641, -0.847797,
		0.908871, -0.363865, 0.203853,
		-0.227220, -0.841836, -0.489575,
		30.793005, 33.707813, 46.932453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380804, 34.341545, 46.674644>,  <30.952061, 34.297100, 47.275158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380804, 34.341545, 46.674644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161842, 34.021160, 46.577641>,  <31.030466, 33.828930, 46.519440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161842, 34.021160, 46.577641>,  <31.380804, 34.341545, 46.674644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161842, 34.021160, 46.577641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255153, 0.116245, -0.959888,
		0.797024, -0.587321, 0.140735,
		-0.547403, -0.800963, -0.242507,
		30.997622, 33.780872, 46.504887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832718, 33.844330, 46.305943>,  <31.380804, 34.341545, 46.674644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832718, 33.844330, 46.305943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448557, 33.798016, 46.204575>,  <31.218060, 33.770229, 46.143753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448557, 33.798016, 46.204575>,  <31.832718, 33.844330, 46.305943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448557, 33.798016, 46.204575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252800, 0.020254, -0.967307,
		0.117130, -0.993068, 0.009818,
		-0.960403, -0.115783, -0.253420,
		31.160437, 33.763279, 46.128548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834328, 33.296429, 45.796288>,  <31.832718, 33.844330, 46.305943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834328, 33.296429, 45.796288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493279, 33.504349, 45.774956>,  <31.288649, 33.629101, 45.762157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493279, 33.504349, 45.774956>,  <31.834328, 33.296429, 45.796288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493279, 33.504349, 45.774956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100793, 0.063470, -0.992881,
		-0.512713, -0.851928, -0.106508,
		-0.852623, 0.519798, -0.053327,
		31.237492, 33.660290, 45.758957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461176, 32.845394, 45.373367>,  <31.834328, 33.296429, 45.796288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461176, 32.845394, 45.373367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271816, 33.197346, 45.356804>,  <31.158201, 33.408516, 45.346867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271816, 33.197346, 45.356804>,  <31.461176, 32.845394, 45.373367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271816, 33.197346, 45.356804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084063, -0.001662, -0.996459,
		-0.876829, -0.475201, -0.073178,
		-0.473397, 0.879876, -0.041404,
		31.129797, 33.461308, 45.344383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230507, 32.854771, 44.686340>,  <31.461176, 32.845394, 45.373367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230507, 32.854771, 44.686340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166824, 33.236912, 44.785900>,  <31.128614, 33.466198, 44.845634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166824, 33.236912, 44.785900>,  <31.230507, 32.854771, 44.686340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166824, 33.236912, 44.785900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193076, 0.277375, -0.941162,
		-0.968181, -0.101784, -0.228617,
		-0.159208, 0.955355, 0.248897,
		31.119062, 33.523518, 44.860569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736284, 33.060638, 44.278790>,  <31.230507, 32.854771, 44.686340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736284, 33.060638, 44.278790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924091, 33.396809, 44.387035>,  <31.036776, 33.598511, 44.451981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924091, 33.396809, 44.387035>,  <30.736284, 33.060638, 44.278790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924091, 33.396809, 44.387035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125620, 0.239790, -0.962663,
		-0.873940, 0.485984, 0.007011,
		0.469520, 0.840429, 0.270611,
		31.064947, 33.648937, 44.468220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486788, 33.621655, 43.787804>,  <30.736284, 33.060638, 44.278790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486788, 33.621655, 43.787804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818430, 33.771687, 43.953648>,  <31.017414, 33.861706, 44.053154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818430, 33.771687, 43.953648>,  <30.486788, 33.621655, 43.787804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818430, 33.771687, 43.953648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407387, 0.102600, -0.907474,
		-0.382914, 0.921297, -0.067737,
		0.829104, 0.375080, 0.414611,
		31.067162, 33.884209, 44.078030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555450, 34.258869, 43.438606>,  <30.486788, 33.621655, 43.787804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555450, 34.258869, 43.438606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910259, 34.138016, 43.578266>,  <31.123144, 34.065502, 43.662064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910259, 34.138016, 43.578266>,  <30.555450, 34.258869, 43.438606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910259, 34.138016, 43.578266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412367, 0.178204, -0.893419,
		0.207714, 0.936460, 0.282662,
		0.887022, -0.302136, 0.349150,
		31.176367, 34.047375, 43.683010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965399, 34.881252, 43.266861>,  <30.555450, 34.258869, 43.438606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965399, 34.881252, 43.266861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195257, 34.557037, 43.312138>,  <31.333172, 34.362507, 43.339302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195257, 34.557037, 43.312138>,  <30.965399, 34.881252, 43.266861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195257, 34.557037, 43.312138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298019, 0.078437, -0.951332,
		0.762213, 0.580409, 0.286629,
		0.574644, -0.810539, 0.113187,
		31.367651, 34.313877, 43.346092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506493, 35.078232, 42.941502>,  <30.965399, 34.881252, 43.266861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506493, 35.078232, 42.941502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629761, 34.699200, 42.975266>,  <31.703722, 34.471779, 42.995525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629761, 34.699200, 42.975266>,  <31.506493, 35.078232, 42.941502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629761, 34.699200, 42.975266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494916, 0.083908, -0.864880,
		0.812459, 0.308307, 0.494830,
		0.308169, -0.947579, 0.084414,
		31.722212, 34.414925, 43.000591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249107, 35.185135, 42.864803>,  <31.506493, 35.078232, 42.941502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249107, 35.185135, 42.864803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123066, 34.822601, 42.752182>,  <32.047443, 34.605080, 42.684608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123066, 34.822601, 42.752182>,  <32.249107, 35.185135, 42.864803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123066, 34.822601, 42.752182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665622, 0.000420, -0.746289,
		0.676505, -0.422562, 0.603143,
		-0.315100, -0.906334, -0.281551,
		32.028538, 34.550701, 42.667717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882633, 34.919285, 42.636486>,  <32.249107, 35.185135, 42.864803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882633, 34.919285, 42.636486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589180, 34.688023, 42.493649>,  <32.413109, 34.549267, 42.407948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589180, 34.688023, 42.493649>,  <32.882633, 34.919285, 42.636486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589180, 34.688023, 42.493649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463376, -0.041259, -0.885201,
		0.497051, -0.814882, 0.298173,
		-0.733637, -0.578156, -0.357089,
		32.369087, 34.514576, 42.386520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242870, 34.355343, 42.333637>,  <32.882633, 34.919285, 42.636486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242870, 34.355343, 42.333637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872944, 34.388340, 42.185097>,  <32.650986, 34.408138, 42.095970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872944, 34.388340, 42.185097>,  <33.242870, 34.355343, 42.333637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872944, 34.388340, 42.185097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363313, -0.097801, -0.926520,
		-0.112753, -0.991781, 0.060476,
		-0.924819, 0.082496, -0.371355,
		32.595497, 34.413086, 42.073692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202686, 33.727543, 41.908329>,  <33.242870, 34.355343, 42.333637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202686, 33.727543, 41.908329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941147, 33.999687, 41.775906>,  <32.784225, 34.162971, 41.696453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941147, 33.999687, 41.775906>,  <33.202686, 33.727543, 41.908329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941147, 33.999687, 41.775906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161635, -0.301844, -0.939555,
		-0.739163, -0.667834, 0.087389,
		-0.653845, 0.680359, -0.331057,
		32.744995, 34.203796, 41.676590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051266, 33.501564, 41.166401>,  <33.202686, 33.727543, 41.908329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051266, 33.501564, 41.166401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893929, 33.868340, 41.193253>,  <32.799526, 34.088406, 41.209362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893929, 33.868340, 41.193253>,  <33.051266, 33.501564, 41.166401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893929, 33.868340, 41.193253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201977, 0.157410, -0.966658,
		-0.896932, -0.366671, -0.247116,
		-0.393344, 0.916938, 0.067127,
		32.775925, 34.143421, 41.213390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562504, 33.553864, 40.601444>,  <33.051266, 33.501564, 41.166401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562504, 33.553864, 40.601444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640850, 33.934593, 40.695816>,  <32.687859, 34.163033, 40.752441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640850, 33.934593, 40.695816>,  <32.562504, 33.553864, 40.601444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640850, 33.934593, 40.695816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075796, 0.225178, -0.971365,
		-0.977696, 0.208143, -0.028039,
		0.195869, 0.951825, 0.235932,
		32.699612, 34.220142, 40.766594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224819, 33.949017, 40.105804>,  <32.562504, 33.553864, 40.601444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224819, 33.949017, 40.105804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521633, 34.171440, 40.255569>,  <32.699722, 34.304893, 40.345428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521633, 34.171440, 40.255569>,  <32.224819, 33.949017, 40.105804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521633, 34.171440, 40.255569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163113, 0.391965, -0.905405,
		-0.650214, 0.732913, 0.200151,
		0.742035, 0.556060, 0.374409,
		32.744244, 34.338257, 40.367893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091984, 34.610924, 39.671722>,  <32.224819, 33.949017, 40.105804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091984, 34.610924, 39.671722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459293, 34.627918, 39.829182>,  <32.679680, 34.638115, 39.923656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459293, 34.627918, 39.829182>,  <32.091984, 34.610924, 39.671722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459293, 34.627918, 39.829182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309625, 0.542617, -0.780832,
		-0.246780, 0.838905, 0.485117,
		0.918277, 0.042489, 0.393653,
		32.734776, 34.640663, 39.947277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274601, 35.276691, 39.597301>,  <32.091984, 34.610924, 39.671722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274601, 35.276691, 39.597301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611954, 35.061810, 39.601524>,  <32.814365, 34.932880, 39.604057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611954, 35.061810, 39.601524>,  <32.274601, 35.276691, 39.597301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611954, 35.061810, 39.601524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266706, 0.401504, -0.876164,
		0.466441, 0.741759, 0.481898,
		0.843386, -0.537204, 0.010554,
		32.864971, 34.900650, 39.604691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773861, 35.703480, 39.425392>,  <32.274601, 35.276691, 39.597301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773861, 35.703480, 39.425392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943836, 35.345627, 39.370174>,  <33.045822, 35.130913, 39.337044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943836, 35.345627, 39.370174>,  <32.773861, 35.703480, 39.425392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943836, 35.345627, 39.370174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449213, 0.340800, -0.825871,
		0.785900, 0.288929, 0.546700,
		0.424934, -0.894637, -0.138044,
		33.071316, 35.077236, 39.328762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474339, 35.832218, 39.127644>,  <32.773861, 35.703480, 39.425392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474339, 35.832218, 39.127644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384609, 35.451702, 39.043053>,  <33.330772, 35.223392, 38.992298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384609, 35.451702, 39.043053>,  <33.474339, 35.832218, 39.127644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384609, 35.451702, 39.043053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414011, 0.103420, -0.904378,
		0.882198, -0.290426, 0.370646,
		-0.224323, -0.951292, -0.211477,
		33.317314, 35.166313, 38.979610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063412, 35.546398, 38.889709>,  <33.474339, 35.832218, 39.127644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063412, 35.546398, 38.889709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788883, 35.294746, 38.743748>,  <33.624165, 35.143757, 38.656170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788883, 35.294746, 38.743748>,  <34.063412, 35.546398, 38.889709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788883, 35.294746, 38.743748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546216, -0.114589, -0.829770,
		0.480216, -0.768810, 0.422284,
		-0.686324, -0.629127, -0.364908,
		33.582985, 35.106007, 38.634274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433586, 34.961391, 38.630257>,  <34.063412, 35.546398, 38.889709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433586, 34.961391, 38.630257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085171, 34.995075, 38.436676>,  <33.876122, 35.015285, 38.320530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085171, 34.995075, 38.436676>,  <34.433586, 34.961391, 38.630257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085171, 34.995075, 38.436676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487222, 0.022672, -0.872984,
		-0.062540, -0.996190, -0.060776,
		-0.871036, 0.084208, -0.483948,
		33.823860, 35.020336, 38.291492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132698, 34.618740, 38.370201>,  <34.433586, 34.961391, 38.630257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132698, 34.618740, 38.370201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403728, 34.866768, 38.528393>,  <35.566345, 35.015583, 38.623310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403728, 34.866768, 38.528393>,  <35.132698, 34.618740, 38.370201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403728, 34.866768, 38.528393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002349, -0.539561, 0.841943,
		0.735448, -0.569552, -0.367051,
		0.677577, 0.620068, 0.395481,
		35.607002, 35.052788, 38.647038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608608, 34.200253, 38.591679>,  <35.132698, 34.618740, 38.370201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608608, 34.200253, 38.591679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678131, 34.525021, 38.814594>,  <35.719845, 34.719883, 38.948345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678131, 34.525021, 38.814594>,  <35.608608, 34.200253, 38.591679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678131, 34.525021, 38.814594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163003, -0.581815, 0.796820,
		0.971196, -0.047650, -0.233468,
		0.173803, 0.811924, 0.557289,
		35.730270, 34.768597, 38.981781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144642, 34.011669, 39.090172>,  <35.608608, 34.200253, 38.591679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144642, 34.011669, 39.090172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950405, 34.328556, 39.238003>,  <35.833862, 34.518688, 39.326702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950405, 34.328556, 39.238003>,  <36.144642, 34.011669, 39.090172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950405, 34.328556, 39.238003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035222, -0.404695, 0.913773,
		0.873477, 0.456737, 0.168612,
		-0.485590, 0.792221, 0.369579,
		35.804729, 34.566223, 39.348877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357922, 33.768265, 39.769573>,  <36.144642, 34.011669, 39.090172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357922, 33.768265, 39.769573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116531, 34.084938, 39.807632>,  <35.971699, 34.274940, 39.830467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116531, 34.084938, 39.807632>,  <36.357922, 33.768265, 39.769573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116531, 34.084938, 39.807632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109265, -0.200306, 0.973621,
		0.789859, 0.577161, 0.207383,
		-0.603476, 0.791684, 0.095150,
		35.935490, 34.322445, 39.836178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596355, 34.248066, 40.321381>,  <36.357922, 33.768265, 39.769573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596355, 34.248066, 40.321381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202335, 34.300922, 40.277184>,  <35.965923, 34.332638, 40.250668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202335, 34.300922, 40.277184>,  <36.596355, 34.248066, 40.321381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202335, 34.300922, 40.277184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132400, -0.170550, 0.976413,
		0.110183, 0.976448, 0.185497,
		-0.985053, 0.132144, -0.110490,
		35.906818, 34.340565, 40.244038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387047, 34.632088, 40.898846>,  <36.596355, 34.248066, 40.321381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387047, 34.632088, 40.898846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057816, 34.450985, 40.761700>,  <35.860275, 34.342323, 40.679413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057816, 34.450985, 40.761700>,  <36.387047, 34.632088, 40.898846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057816, 34.450985, 40.761700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325566, -0.118514, 0.938062,
		-0.465344, 0.883725, -0.049854,
		-0.823080, -0.452753, -0.342861,
		35.810890, 34.315159, 40.658840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807880, 35.009640, 41.275169>,  <36.387047, 34.632088, 40.898846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807880, 35.009640, 41.275169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627281, 34.678341, 41.142410>,  <35.518921, 34.479561, 41.062756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627281, 34.678341, 41.142410>,  <35.807880, 35.009640, 41.275169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627281, 34.678341, 41.142410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509785, -0.065835, 0.857779,
		-0.732303, 0.556482, -0.392504,
		-0.451499, -0.828247, -0.331897,
		35.491833, 34.429867, 41.042843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132664, 35.047295, 41.462952>,  <35.807880, 35.009640, 41.275169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132664, 35.047295, 41.462952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220852, 34.659107, 41.423794>,  <35.273766, 34.426193, 41.400299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220852, 34.659107, 41.423794>,  <35.132664, 35.047295, 41.462952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220852, 34.659107, 41.423794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386588, -0.179085, 0.904698,
		-0.895514, -0.161609, -0.414654,
		0.220466, -0.970469, -0.097897,
		35.286991, 34.367966, 41.394424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524597, 34.780376, 41.700981>,  <35.132664, 35.047295, 41.462952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524597, 34.780376, 41.700981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768497, 34.463673, 41.715557>,  <34.914837, 34.273651, 41.724304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768497, 34.463673, 41.715557>,  <34.524597, 34.780376, 41.700981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768497, 34.463673, 41.715557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438529, -0.298711, 0.847623,
		-0.660226, -0.532817, -0.529347,
		0.609750, -0.791756, 0.036439,
		34.951424, 34.226147, 41.726490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127453, 34.396095, 42.013172>,  <34.524597, 34.780376, 41.700981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127453, 34.396095, 42.013172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479862, 34.208313, 42.036507>,  <34.691307, 34.095642, 42.050507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479862, 34.208313, 42.036507>,  <34.127453, 34.396095, 42.013172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479862, 34.208313, 42.036507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251766, -0.360908, 0.897975,
		-0.400511, -0.805824, -0.436163,
		0.881025, -0.469460, 0.058332,
		34.744171, 34.067478, 42.054008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060894, 33.714794, 42.126648>,  <34.127453, 34.396095, 42.013172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060894, 33.714794, 42.126648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428650, 33.767544, 42.274883>,  <34.649303, 33.799194, 42.363823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428650, 33.767544, 42.274883>,  <34.060894, 33.714794, 42.126648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428650, 33.767544, 42.274883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287657, -0.417170, 0.862103,
		0.268285, -0.899210, -0.345607,
		0.919389, 0.131873, 0.370585,
		34.704468, 33.807106, 42.386059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171825, 33.210560, 42.638229>,  <34.060894, 33.714794, 42.126648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171825, 33.210560, 42.638229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454376, 33.476936, 42.734192>,  <34.623905, 33.636761, 42.791771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454376, 33.476936, 42.734192>,  <34.171825, 33.210560, 42.638229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454376, 33.476936, 42.734192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145089, -0.195517, 0.969908,
		0.692805, -0.719930, -0.041489,
		0.706378, 0.665938, 0.239909,
		34.666290, 33.676716, 42.806164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688248, 32.782742, 43.124279>,  <34.171825, 33.210560, 42.638229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688248, 32.782742, 43.124279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718971, 33.175434, 43.193916>,  <34.737404, 33.411049, 43.235699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718971, 33.175434, 43.193916>,  <34.688248, 32.782742, 43.124279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718971, 33.175434, 43.193916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116042, -0.182229, 0.976385,
		0.990270, -0.054793, -0.127919,
		0.076810, 0.981728, 0.174097,
		34.742016, 33.469952, 43.246147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240307, 32.872643, 43.520172>,  <34.688248, 32.782742, 43.124279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240307, 32.872643, 43.520172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012642, 33.196186, 43.579239>,  <34.876041, 33.390312, 43.614677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012642, 33.196186, 43.579239>,  <35.240307, 32.872643, 43.520172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012642, 33.196186, 43.579239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198086, -0.039411, 0.979392,
		0.798007, 0.586685, -0.137792,
		-0.569164, 0.808856, 0.147664,
		34.841892, 33.438843, 43.623539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601494, 33.404305, 44.045769>,  <35.240307, 32.872643, 43.520172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601494, 33.404305, 44.045769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214188, 33.502998, 44.029858>,  <34.981804, 33.562214, 44.020309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214188, 33.502998, 44.029858>,  <35.601494, 33.404305, 44.045769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214188, 33.502998, 44.029858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005524, 0.138006, 0.990416,
		0.249862, 0.959205, -0.132264,
		-0.968266, 0.246736, -0.039781,
		34.923706, 33.577019, 44.017925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464363, 33.964371, 44.615448>,  <35.601494, 33.404305, 44.045769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464363, 33.964371, 44.615448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104706, 33.816696, 44.521431>,  <34.888912, 33.728092, 44.465019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104706, 33.816696, 44.521431>,  <35.464363, 33.964371, 44.615448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104706, 33.816696, 44.521431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255015, 0.005480, 0.966922,
		-0.355686, 0.929339, -0.099075,
		-0.899141, -0.369186, -0.235046,
		34.834965, 33.705940, 44.450916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034332, 34.418823, 44.984329>,  <35.464363, 33.964371, 44.615448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034332, 34.418823, 44.984329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826347, 34.091251, 44.887177>,  <34.701557, 33.894707, 44.828884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826347, 34.091251, 44.887177>,  <35.034332, 34.418823, 44.984329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826347, 34.091251, 44.887177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391430, -0.024297, 0.919887,
		-0.759225, 0.573379, -0.307920,
		-0.519962, -0.818930, -0.242885,
		34.670361, 33.845573, 44.814312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411083, 34.604244, 45.205997>,  <35.034332, 34.418823, 44.984329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411083, 34.604244, 45.205997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383163, 34.206753, 45.171043>,  <34.366413, 33.968258, 45.150070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383163, 34.206753, 45.171043>,  <34.411083, 34.604244, 45.205997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383163, 34.206753, 45.171043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609038, -0.026928, 0.792684,
		-0.790064, 0.108545, -0.603338,
		-0.069795, -0.993727, -0.087383,
		34.362225, 33.908634, 45.144829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746658, 34.528755, 45.344913>,  <34.411083, 34.604244, 45.205997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746658, 34.528755, 45.344913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927494, 34.177822, 45.409290>,  <34.035995, 33.967262, 45.447918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927494, 34.177822, 45.409290>,  <33.746658, 34.528755, 45.344913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927494, 34.177822, 45.409290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635080, -0.189900, 0.748740,
		-0.626331, -0.440708, -0.643028,
		0.452087, -0.877333, 0.160944,
		34.063122, 33.914623, 45.457573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178486, 34.185417, 45.632950>,  <33.746658, 34.528755, 45.344913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178486, 34.185417, 45.632950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501808, 33.961842, 45.706947>,  <33.695801, 33.827698, 45.751347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501808, 33.961842, 45.706947>,  <33.178486, 34.185417, 45.632950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501808, 33.961842, 45.706947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452447, -0.388665, 0.802640,
		-0.376709, -0.732493, -0.567048,
		0.808320, -0.558922, 0.185001,
		33.744301, 33.794159, 45.762444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997372, 33.494118, 45.799046>,  <33.178486, 34.185417, 45.632950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997372, 33.494118, 45.799046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357567, 33.551727, 45.963181>,  <33.573685, 33.586292, 46.061661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357567, 33.551727, 45.963181>,  <32.997372, 33.494118, 45.799046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357567, 33.551727, 45.963181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390751, -0.146164, 0.908818,
		0.190871, -0.978720, -0.075340,
		0.900490, 0.144027, 0.410334,
		33.627712, 33.594936, 46.086281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150078, 32.889301, 46.264439>,  <32.997372, 33.494118, 45.799046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150078, 32.889301, 46.264439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355148, 33.209129, 46.389565>,  <33.478191, 33.401028, 46.464642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355148, 33.209129, 46.389565>,  <33.150078, 32.889301, 46.264439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355148, 33.209129, 46.389565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456813, -0.054467, 0.887894,
		0.726972, -0.598097, 0.337330,
		0.512673, 0.799571, 0.312814,
		33.508949, 33.449001, 46.483410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221661, 32.700390, 46.846207>,  <33.150078, 32.889301, 46.264439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221661, 32.700390, 46.846207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304333, 33.091122, 46.868465>,  <33.353935, 33.325562, 46.881821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304333, 33.091122, 46.868465>,  <33.221661, 32.700390, 46.846207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304333, 33.091122, 46.868465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310449, 0.011535, 0.950520,
		0.927850, -0.213728, 0.305638,
		0.206678, 0.976825, 0.055648,
		33.366337, 33.384171, 46.885159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627998, 32.834084, 47.337624>,  <33.221661, 32.700390, 46.846207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627998, 32.834084, 47.337624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475300, 33.202843, 47.311165>,  <33.383682, 33.424099, 47.295288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475300, 33.202843, 47.311165>,  <33.627998, 32.834084, 47.337624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475300, 33.202843, 47.311165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340849, -0.073892, 0.937210,
		0.859122, 0.380325, 0.342436,
		-0.381747, 0.921896, -0.066151,
		33.360775, 33.479412, 47.291321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921200, 33.225719, 47.897556>,  <33.627998, 32.834084, 47.337624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921200, 33.225719, 47.897556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588760, 33.409401, 47.772083>,  <33.389297, 33.519611, 47.696800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588760, 33.409401, 47.772083>,  <33.921200, 33.225719, 47.897556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588760, 33.409401, 47.772083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347559, 0.011437, 0.937588,
		0.434132, 0.888257, 0.150095,
		-0.831103, 0.459204, -0.313687,
		33.339428, 33.547161, 47.677979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821922, 33.821957, 48.327084>,  <33.921200, 33.225719, 47.897556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821922, 33.821957, 48.327084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462528, 33.743679, 48.169891>,  <33.246891, 33.696712, 48.075577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462528, 33.743679, 48.169891>,  <33.821922, 33.821957, 48.327084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462528, 33.743679, 48.169891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433915, 0.259857, 0.862666,
		-0.066696, 0.945611, -0.318390,
		-0.898482, -0.195691, -0.392983,
		33.192986, 33.684971, 48.051998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405506, 34.292271, 48.590206>,  <33.821922, 33.821957, 48.327084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405506, 34.292271, 48.590206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127365, 34.025867, 48.482201>,  <32.960480, 33.866024, 48.417397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127365, 34.025867, 48.482201>,  <33.405506, 34.292271, 48.590206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127365, 34.025867, 48.482201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480996, 0.152138, 0.863422,
		-0.533969, 0.730262, -0.426139,
		-0.695356, -0.666011, -0.270016,
		32.918758, 33.826065, 48.401196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880363, 34.585236, 48.791695>,  <33.405506, 34.292271, 48.590206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880363, 34.585236, 48.791695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698963, 34.236176, 48.719227>,  <32.590122, 34.026741, 48.675747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698963, 34.236176, 48.719227>,  <32.880363, 34.585236, 48.791695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698963, 34.236176, 48.719227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639362, 0.176921, 0.748275,
		-0.620927, 0.455178, -0.638171,
		-0.453504, -0.872647, -0.181169,
		32.562912, 33.974380, 48.664875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186604, 34.614437, 48.503223>,  <32.880363, 34.585236, 48.791695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186604, 34.614437, 48.503223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248043, 34.282253, 48.717415>,  <32.284904, 34.082943, 48.845932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248043, 34.282253, 48.717415>,  <32.186604, 34.614437, 48.503223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248043, 34.282253, 48.717415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440974, 0.427350, 0.789249,
		-0.884280, -0.357358, -0.300574,
		0.153594, -0.830462, 0.535483,
		32.294121, 34.033115, 48.878059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546709, 34.484489, 48.890266>,  <32.186604, 34.614437, 48.503223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546709, 34.484489, 48.890266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800156, 34.246342, 49.087879>,  <31.952225, 34.103455, 49.206448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800156, 34.246342, 49.087879>,  <31.546709, 34.484489, 48.890266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800156, 34.246342, 49.087879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452154, 0.233185, 0.860919,
		-0.627762, -0.768873, -0.121447,
		0.633617, -0.595365, 0.494034,
		31.990240, 34.067734, 49.236088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156157, 33.997593, 49.345516>,  <31.546709, 34.484489, 48.890266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156157, 33.997593, 49.345516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511112, 33.977638, 49.528843>,  <31.724085, 33.965668, 49.638840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511112, 33.977638, 49.528843>,  <31.156157, 33.997593, 49.345516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511112, 33.977638, 49.528843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444618, 0.170212, 0.879399,
		-0.121880, -0.984144, 0.128864,
		0.887390, -0.049886, 0.458313,
		31.777328, 33.962673, 49.666336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983606, 33.674870, 49.991238>,  <31.156157, 33.997593, 49.345516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983606, 33.674870, 49.991238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345135, 33.842907, 50.023811>,  <31.562052, 33.943729, 50.043354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345135, 33.842907, 50.023811>,  <30.983606, 33.674870, 49.991238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345135, 33.842907, 50.023811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266015, 0.402534, 0.875901,
		0.335179, -0.813320, 0.475569,
		0.903820, 0.420092, 0.081434,
		31.616282, 33.968933, 50.048241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266705, 33.493469, 50.694115>,  <30.983606, 33.674870, 49.991238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266705, 33.493469, 50.694115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461626, 33.816044, 50.560131>,  <31.578579, 34.009586, 50.479740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461626, 33.816044, 50.560131>,  <31.266705, 33.493469, 50.694115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461626, 33.816044, 50.560131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128251, 0.445525, 0.886035,
		0.863764, -0.388808, 0.320532,
		0.487303, 0.806434, -0.334964,
		31.607817, 34.057976, 50.459641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622055, 33.738632, 51.288105>,  <31.266705, 33.493469, 50.694115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622055, 33.738632, 51.288105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612751, 34.050011, 51.037193>,  <31.607168, 34.236839, 50.886646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612751, 34.050011, 51.037193>,  <31.622055, 33.738632, 51.288105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612751, 34.050011, 51.037193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032230, 0.626538, 0.778724,
		0.999210, 0.038330, 0.010517,
		-0.023259, 0.778448, -0.627279,
		31.605774, 34.283546, 50.849010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020031, 34.344627, 51.676003>,  <31.622055, 33.738632, 51.288105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020031, 34.344627, 51.676003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784061, 34.526062, 51.408794>,  <31.642481, 34.634922, 51.248470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784061, 34.526062, 51.408794>,  <32.020031, 34.344627, 51.676003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784061, 34.526062, 51.408794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304886, 0.640943, 0.704441,
		0.747688, 0.619235, -0.239814,
		-0.589922, 0.453585, -0.668021,
		31.607084, 34.662136, 51.208389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052567, 34.964329, 51.814819>,  <32.020031, 34.344627, 51.676003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052567, 34.964329, 51.814819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709967, 34.957905, 51.608459>,  <31.504408, 34.954048, 51.484642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709967, 34.957905, 51.608459>,  <32.052567, 34.964329, 51.814819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709967, 34.957905, 51.608459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441797, 0.539626, 0.716672,
		0.266881, 0.841751, -0.469286,
		-0.856498, -0.016063, -0.515899,
		31.453016, 34.953087, 51.453690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774307, 35.568523, 52.086956>,  <32.052567, 34.964329, 51.814819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774307, 35.568523, 52.086956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480312, 35.368420, 51.903854>,  <31.303915, 35.248360, 51.793995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480312, 35.368420, 51.903854>,  <31.774307, 35.568523, 52.086956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480312, 35.368420, 51.903854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672852, 0.454395, 0.583776,
		-0.084037, 0.737068, -0.670573,
		-0.734988, -0.500256, -0.457752,
		31.259815, 35.218342, 51.766529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188047, 36.065498, 51.841427>,  <31.774307, 35.568523, 52.086956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188047, 36.065498, 51.841427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027552, 35.701057, 51.879166>,  <30.931255, 35.482391, 51.901810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027552, 35.701057, 51.879166>,  <31.188047, 36.065498, 51.841427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027552, 35.701057, 51.879166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620839, 0.346245, 0.703330,
		-0.673474, 0.223626, -0.704574,
		-0.401238, -0.911101, 0.094351,
		30.907181, 35.427727, 51.907471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492279, 36.568413, 52.369808>,  <31.188047, 36.065498, 51.841427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492279, 36.568413, 52.369808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528801, 36.961933, 52.431526>,  <31.550714, 37.198044, 52.468555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528801, 36.961933, 52.431526>,  <31.492279, 36.568413, 52.369808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528801, 36.961933, 52.431526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247632, 0.127641, -0.960409,
		-0.964542, 0.125899, -0.231965,
		0.091306, 0.983797, 0.154292,
		31.556192, 37.257072, 52.477814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035767, 37.017746, 51.939705>,  <31.492279, 36.568413, 52.369808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035767, 37.017746, 51.939705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348053, 37.252438, 52.025707>,  <31.535425, 37.393253, 52.077309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.348053, 37.252438, 52.025707>,  <31.035767, 37.017746, 51.939705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348053, 37.252438, 52.025707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127115, 0.187758, -0.973955,
		-0.611817, 0.787715, 0.072004,
		0.780718, 0.586730, 0.215004,
		31.582268, 37.428455, 52.090210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911058, 37.584129, 51.469193>,  <31.035767, 37.017746, 51.939705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911058, 37.584129, 51.469193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294876, 37.572899, 51.581257>,  <31.525166, 37.566162, 51.648495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294876, 37.572899, 51.581257>,  <30.911058, 37.584129, 51.469193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294876, 37.572899, 51.581257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281162, 0.148557, -0.948092,
		-0.015002, 0.988505, 0.150441,
		0.959543, -0.028075, 0.280159,
		31.582739, 37.564476, 51.665306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210440, 37.806213, 50.904770>,  <30.911058, 37.584129, 51.469193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210440, 37.806213, 50.904770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559525, 37.741348, 51.088978>,  <31.768974, 37.702431, 51.199501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559525, 37.741348, 51.088978>,  <31.210440, 37.806213, 50.904770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559525, 37.741348, 51.088978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483893, 0.161750, -0.860049,
		0.064979, 0.973417, 0.219631,
		0.872711, -0.162163, 0.460520,
		31.821339, 37.692699, 51.227135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604279, 38.222698, 50.515087>,  <31.210440, 37.806213, 50.904770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604279, 38.222698, 50.515087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813934, 37.927334, 50.684803>,  <31.939728, 37.750114, 50.786633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813934, 37.927334, 50.684803>,  <31.604279, 38.222698, 50.515087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813934, 37.927334, 50.684803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622482, -0.007831, -0.782595,
		0.581202, 0.674301, 0.455545,
		0.524137, -0.738415, 0.424292,
		31.971176, 37.705811, 50.812092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327412, 38.360302, 50.386806>,  <31.604279, 38.222698, 50.515087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327412, 38.360302, 50.386806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314442, 37.968143, 50.464539>,  <32.306660, 37.732849, 50.511177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314442, 37.968143, 50.464539>,  <32.327412, 38.360302, 50.386806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314442, 37.968143, 50.464539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803543, -0.141191, -0.578260,
		0.594364, 0.137405, 0.792371,
		-0.032420, -0.980400, 0.194330,
		32.304714, 37.674023, 50.522839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963097, 38.154392, 50.598011>,  <32.327412, 38.360302, 50.386806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963097, 38.154392, 50.598011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791443, 37.823551, 50.452827>,  <32.688450, 37.625046, 50.365715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791443, 37.823551, 50.452827>,  <32.963097, 38.154392, 50.598011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791443, 37.823551, 50.452827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882485, -0.298283, -0.363657,
		0.192518, -0.476365, 0.857912,
		-0.429134, -0.827105, -0.362960,
		32.662701, 37.575420, 50.343941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417297, 37.629169, 50.769394>,  <32.963097, 38.154392, 50.598011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417297, 37.629169, 50.769394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190533, 37.500492, 50.466045>,  <33.054474, 37.423286, 50.284039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190533, 37.500492, 50.466045>,  <33.417297, 37.629169, 50.769394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190533, 37.500492, 50.466045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819969, -0.308774, -0.481985,
		-0.079115, -0.895084, 0.438824,
		-0.566914, -0.321690, -0.758369,
		33.020458, 37.403984, 50.238533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846287, 37.136326, 50.476070>,  <33.417297, 37.629169, 50.769394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846287, 37.136326, 50.476070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583996, 37.176735, 50.176788>,  <33.426620, 37.200981, 49.997219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583996, 37.176735, 50.176788>,  <33.846287, 37.136326, 50.476070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583996, 37.176735, 50.176788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694648, -0.307506, -0.650311,
		-0.295766, -0.946170, 0.131474,
		-0.655734, 0.101012, -0.748205,
		33.387276, 37.207043, 49.952328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934589, 36.533165, 49.930027>,  <33.846287, 37.136326, 50.476070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934589, 36.533165, 49.930027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738533, 36.815666, 49.725689>,  <33.620899, 36.985168, 49.603085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738533, 36.815666, 49.725689>,  <33.934589, 36.533165, 49.930027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738533, 36.815666, 49.725689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515890, -0.237348, -0.823118,
		-0.702581, -0.666983, -0.248018,
		-0.490139, 0.706257, -0.510846,
		33.591492, 37.027542, 49.572433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757053, 36.281406, 49.303211>,  <33.934589, 36.533165, 49.930027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757053, 36.281406, 49.303211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749741, 36.668060, 49.201015>,  <33.745354, 36.900055, 49.139698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749741, 36.668060, 49.201015>,  <33.757053, 36.281406, 49.303211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749741, 36.668060, 49.201015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466039, -0.217839, -0.857528,
		-0.884576, -0.134744, -0.446509,
		-0.018280, 0.966639, -0.255491,
		33.744255, 36.958054, 49.124367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562840, 36.345009, 48.566700>,  <33.757053, 36.281406, 49.303211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562840, 36.345009, 48.566700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737732, 36.693985, 48.654045>,  <33.842667, 36.903370, 48.706451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737732, 36.693985, 48.654045>,  <33.562840, 36.345009, 48.566700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737732, 36.693985, 48.654045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549393, -0.066876, -0.832883,
		-0.712035, 0.484131, -0.508551,
		0.437234, 0.872436, 0.218360,
		33.868900, 36.955715, 48.719555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448280, 37.022476, 48.176720>,  <33.562840, 36.345009, 48.566700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448280, 37.022476, 48.176720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832787, 37.010258, 48.286293>,  <34.063488, 37.002926, 48.352039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832787, 37.010258, 48.286293>,  <33.448280, 37.022476, 48.176720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832787, 37.010258, 48.286293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271545, -0.065608, -0.960187,
		0.047306, 0.997378, -0.054771,
		0.961263, -0.030550, 0.273936,
		34.121166, 37.001091, 48.368473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739971, 37.452953, 47.692871>,  <33.448280, 37.022476, 48.176720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739971, 37.452953, 47.692871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008171, 37.206402, 47.858044>,  <34.169090, 37.058472, 47.957146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008171, 37.206402, 47.858044>,  <33.739971, 37.452953, 47.692871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008171, 37.206402, 47.858044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313801, -0.268724, -0.910668,
		0.672280, 0.740179, 0.013241,
		0.670499, -0.616378, 0.412927,
		34.209320, 37.021488, 47.981922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337429, 37.592613, 47.343178>,  <33.739971, 37.452953, 47.692871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337429, 37.592613, 47.343178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404236, 37.221001, 47.475243>,  <34.444321, 36.998035, 47.554482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404236, 37.221001, 47.475243>,  <34.337429, 37.592613, 47.343178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404236, 37.221001, 47.475243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297422, -0.271796, -0.915242,
		0.940024, 0.251061, 0.230919,
		0.167019, -0.929029, 0.330165,
		34.454342, 36.942291, 47.574291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893375, 37.464008, 47.084805>,  <34.337429, 37.592613, 47.343178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893375, 37.464008, 47.084805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776573, 37.091949, 47.173851>,  <34.706493, 36.868713, 47.227280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776573, 37.091949, 47.173851>,  <34.893375, 37.464008, 47.084805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776573, 37.091949, 47.173851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399096, -0.330030, -0.855455,
		0.869169, -0.160952, 0.467588,
		-0.292006, -0.930147, 0.222617,
		34.688972, 36.812904, 47.240635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463688, 36.946472, 47.153755>,  <34.893375, 37.464008, 47.084805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463688, 36.946472, 47.153755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125900, 36.754692, 47.058266>,  <34.923225, 36.639626, 47.000973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125900, 36.754692, 47.058266>,  <35.463688, 36.946472, 47.153755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125900, 36.754692, 47.058266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429157, -0.339039, -0.837184,
		0.320452, -0.809431, 0.492070,
		-0.844473, -0.479452, -0.238727,
		34.872559, 36.610855, 46.986649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724045, 36.282261, 46.761730>,  <35.463688, 36.946472, 47.153755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724045, 36.282261, 46.761730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330452, 36.297684, 46.692112>,  <35.094296, 36.306938, 46.650341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330452, 36.297684, 46.692112>,  <35.724045, 36.282261, 46.761730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330452, 36.297684, 46.692112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139141, -0.444206, -0.885054,
		-0.111439, -0.895095, 0.431725,
		-0.983982, 0.038559, -0.174046,
		35.035255, 36.309250, 46.639896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532036, 35.583916, 46.462967>,  <35.724045, 36.282261, 46.761730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532036, 35.583916, 46.462967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239365, 35.836655, 46.360653>,  <35.063763, 35.988297, 46.299263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239365, 35.836655, 46.360653>,  <35.532036, 35.583916, 46.462967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239365, 35.836655, 46.360653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024977, -0.350145, -0.936363,
		-0.681198, -0.691500, 0.240410,
		-0.731673, 0.631844, -0.255790,
		35.019863, 36.026207, 46.283916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071716, 35.205605, 45.990265>,  <35.532036, 35.583916, 46.462967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071716, 35.205605, 45.990265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020294, 35.593891, 45.909096>,  <34.989441, 35.826862, 45.860394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020294, 35.593891, 45.909096>,  <35.071716, 35.205605, 45.990265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020294, 35.593891, 45.909096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029024, -0.200849, -0.979192,
		-0.991277, -0.131770, -0.002353,
		-0.128556, 0.970719, -0.202922,
		34.981728, 35.885105, 45.848221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658569, 35.277939, 45.415646>,  <35.071716, 35.205605, 45.990265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658569, 35.277939, 45.415646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836155, 35.636211, 45.425770>,  <34.942707, 35.851177, 45.431843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836155, 35.636211, 45.425770>,  <34.658569, 35.277939, 45.415646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836155, 35.636211, 45.425770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336468, -0.140465, -0.931160,
		-0.830471, 0.421922, -0.363732,
		0.443968, 0.895685, 0.025311,
		34.969345, 35.904919, 45.433365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490639, 35.623348, 44.786201>,  <34.658569, 35.277939, 45.415646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490639, 35.623348, 44.786201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798302, 35.851685, 44.901119>,  <34.982899, 35.988686, 44.970070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798302, 35.851685, 44.901119>,  <34.490639, 35.623348, 44.786201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798302, 35.851685, 44.901119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365964, -0.024903, -0.930296,
		-0.523892, 0.820686, -0.228060,
		0.769160, 0.570836, 0.287295,
		35.029049, 36.022934, 44.987309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521057, 36.147896, 44.281868>,  <34.490639, 35.623348, 44.786201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521057, 36.147896, 44.281868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873920, 36.118706, 44.467976>,  <35.085640, 36.101192, 44.579639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873920, 36.118706, 44.467976>,  <34.521057, 36.147896, 44.281868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873920, 36.118706, 44.467976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451725, -0.148306, -0.879744,
		0.133202, 0.986245, -0.097865,
		0.882158, -0.072976, 0.465266,
		35.138569, 36.096813, 44.607555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976841, 36.633610, 43.905643>,  <34.521057, 36.147896, 44.281868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976841, 36.633610, 43.905643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216061, 36.372040, 44.091000>,  <35.359592, 36.215099, 44.202213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216061, 36.372040, 44.091000>,  <34.976841, 36.633610, 43.905643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216061, 36.372040, 44.091000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651513, 0.059929, -0.756266,
		0.466769, 0.754185, 0.461879,
		0.598045, -0.653922, 0.463388,
		35.395473, 36.175861, 44.230015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728539, 36.833088, 43.744503>,  <34.976841, 36.633610, 43.905643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728539, 36.833088, 43.744503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732399, 36.456707, 43.879864>,  <35.734715, 36.230881, 43.961082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732399, 36.456707, 43.879864>,  <35.728539, 36.833088, 43.744503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732399, 36.456707, 43.879864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824869, -0.183808, -0.534608,
		0.565241, 0.284300, 0.774387,
		0.009651, -0.940951, 0.338406,
		35.735294, 36.174423, 43.981384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493748, 36.682060, 43.962364>,  <35.728539, 36.833088, 43.744503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493748, 36.682060, 43.962364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289017, 36.348042, 43.881641>,  <36.166180, 36.147629, 43.833210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289017, 36.348042, 43.881641>,  <36.493748, 36.682060, 43.962364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289017, 36.348042, 43.881641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733450, -0.302436, -0.608755,
		0.447309, -0.459590, 0.767262,
		-0.511826, -0.835050, -0.201804,
		36.135468, 36.097527, 43.821098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054409, 36.266655, 43.812389>,  <36.493748, 36.682060, 43.962364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054409, 36.266655, 43.812389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726212, 36.070248, 43.695290>,  <36.529293, 35.952404, 43.625031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726212, 36.070248, 43.695290>,  <37.054409, 36.266655, 43.812389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726212, 36.070248, 43.695290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527217, -0.451978, -0.719554,
		0.220996, -0.744728, 0.629715,
		-0.820490, -0.491014, -0.292748,
		36.480064, 35.922943, 43.607464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192741, 35.541046, 43.870014>,  <37.054409, 36.266655, 43.812389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192741, 35.541046, 43.870014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895359, 35.573200, 43.604443>,  <36.716930, 35.592491, 43.445099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895359, 35.573200, 43.604443>,  <37.192741, 35.541046, 43.870014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895359, 35.573200, 43.604443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579216, -0.418894, -0.699312,
		-0.334328, -0.904471, 0.264873,
		-0.743461, 0.080381, -0.663932,
		36.672321, 35.597317, 43.405262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183277, 34.899120, 43.554401>,  <37.192741, 35.541046, 43.870014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183277, 34.899120, 43.554401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984711, 35.155975, 43.320744>,  <36.865570, 35.310089, 43.180550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984711, 35.155975, 43.320744>,  <37.183277, 34.899120, 43.554401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984711, 35.155975, 43.320744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345405, -0.471242, -0.811558,
		-0.796408, -0.604638, 0.012134,
		-0.496416, 0.642140, -0.584146,
		36.835785, 35.348618, 43.145500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202488, 34.575558, 42.850830>,  <37.183277, 34.899120, 43.554401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202488, 34.575558, 42.850830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116306, 34.949654, 42.738472>,  <37.064598, 35.174110, 42.671059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116306, 34.949654, 42.738472>,  <37.202488, 34.575558, 42.850830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116306, 34.949654, 42.738472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592604, -0.103402, -0.798829,
		-0.776144, -0.338569, -0.531950,
		-0.215454, 0.935243, -0.280892,
		37.051670, 35.230225, 42.654205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118389, 34.558479, 42.174171>,  <37.202488, 34.575558, 42.850830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118389, 34.558479, 42.174171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167625, 34.952160, 42.225079>,  <37.197166, 35.188370, 42.255623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167625, 34.952160, 42.225079>,  <37.118389, 34.558479, 42.174171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167625, 34.952160, 42.225079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577167, 0.033325, -0.815946,
		-0.807296, 0.173888, -0.563947,
		0.123090, 0.984201, 0.127266,
		37.204552, 35.247421, 42.263260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001186, 34.956482, 41.503044>,  <37.118389, 34.558479, 42.174171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001186, 34.956482, 41.503044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221981, 35.217194, 41.711079>,  <37.354458, 35.373623, 41.835899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221981, 35.217194, 41.711079>,  <37.001186, 34.956482, 41.503044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221981, 35.217194, 41.711079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424076, 0.317594, -0.848112,
		-0.717960, 0.688703, -0.101097,
		0.551990, 0.651783, 0.520082,
		37.387577, 35.412727, 41.867104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036316, 35.610802, 41.041904>,  <37.001186, 34.956482, 41.503044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036316, 35.610802, 41.041904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331581, 35.637486, 41.310429>,  <37.508739, 35.653496, 41.471542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331581, 35.637486, 41.310429>,  <37.036316, 35.610802, 41.041904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331581, 35.637486, 41.310429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626040, 0.303046, -0.718497,
		-0.251373, 0.950638, 0.181932,
		0.738164, 0.066713, 0.671314,
		37.553032, 35.657501, 41.511822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337585, 36.305908, 41.001366>,  <37.036316, 35.610802, 41.041904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337585, 36.305908, 41.001366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619034, 36.080616, 41.174656>,  <37.787903, 35.945442, 41.278629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619034, 36.080616, 41.174656>,  <37.337585, 36.305908, 41.001366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619034, 36.080616, 41.174656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635353, 0.225672, -0.738511,
		0.318183, 0.794887, 0.516637,
		0.703624, -0.563229, 0.433229,
		37.830120, 35.911648, 41.304623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915363, 36.718876, 40.967587>,  <37.337585, 36.305908, 41.001366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915363, 36.718876, 40.967587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043476, 36.342693, 41.013115>,  <38.120346, 36.116982, 41.040432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043476, 36.342693, 41.013115>,  <37.915363, 36.718876, 40.967587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043476, 36.342693, 41.013115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738729, 0.172738, -0.651491,
		0.593040, 0.292744, 0.750070,
		0.320286, -0.940459, 0.113818,
		38.139561, 36.060555, 41.047260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697140, 36.711174, 41.168583>,  <37.915363, 36.718876, 40.967587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697140, 36.711174, 41.168583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610626, 36.356682, 41.004723>,  <38.558716, 36.143986, 40.906406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610626, 36.356682, 41.004723>,  <38.697140, 36.711174, 41.168583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610626, 36.356682, 41.004723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732261, 0.130271, -0.668449,
		0.645767, -0.444545, 0.620778,
		-0.216286, -0.886233, -0.409648,
		38.545742, 36.090813, 40.881828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329094, 36.428585, 41.001083>,  <38.697140, 36.711174, 41.168583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329094, 36.428585, 41.001083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088993, 36.218330, 40.759953>,  <38.944931, 36.092178, 40.615273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088993, 36.218330, 40.759953>,  <39.329094, 36.428585, 41.001083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088993, 36.218330, 40.759953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575852, 0.239047, -0.781825,
		0.555058, -0.816435, 0.159198,
		-0.600254, -0.525633, -0.602831,
		38.908916, 36.060642, 40.579102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770317, 35.928638, 40.787048>,  <39.329094, 36.428585, 41.001083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770317, 35.928638, 40.787048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471756, 35.956295, 40.522289>,  <39.292622, 35.972889, 40.363434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471756, 35.956295, 40.522289>,  <39.770317, 35.928638, 40.787048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471756, 35.956295, 40.522289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658264, -0.069524, -0.749570,
		-0.097851, -0.995180, 0.006374,
		-0.746400, 0.069151, -0.661895,
		39.247837, 35.977039, 40.323719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014004, 35.606178, 40.214031>,  <39.770317, 35.928638, 40.787048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014004, 35.606178, 40.214031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719318, 35.813572, 40.040398>,  <39.542507, 35.938007, 39.936218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719318, 35.813572, 40.040398>,  <40.014004, 35.606178, 40.214031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719318, 35.813572, 40.040398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603621, 0.214901, -0.767763,
		-0.304787, -0.827643, -0.471287,
		-0.736714, 0.518483, -0.434084,
		39.498302, 35.969116, 39.910172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872375, 35.305923, 39.489819>,  <40.014004, 35.606178, 40.214031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872375, 35.305923, 39.489819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791542, 35.697403, 39.504272>,  <39.743042, 35.932293, 39.512943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791542, 35.697403, 39.504272>,  <39.872375, 35.305923, 39.489819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791542, 35.697403, 39.504272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702438, 0.170554, -0.691008,
		-0.682453, -0.114261, -0.721943,
		-0.202086, 0.978701, 0.036133,
		39.730915, 35.991013, 39.515114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785618, 35.629601, 38.884563>,  <39.872375, 35.305923, 39.489819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785618, 35.629601, 38.884563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952599, 35.890697, 39.137436>,  <40.052788, 36.047356, 39.289162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952599, 35.890697, 39.137436>,  <39.785618, 35.629601, 38.884563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952599, 35.890697, 39.137436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795278, 0.074141, -0.601695,
		-0.439625, 0.753940, -0.488164,
		0.417449, 0.652746, 0.632186,
		40.077835, 36.086521, 39.327091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946747, 36.260586, 38.384457>,  <39.785618, 35.629601, 38.884563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946747, 36.260586, 38.384457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180157, 36.152782, 38.690884>,  <40.320202, 36.088100, 38.874741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180157, 36.152782, 38.690884>,  <39.946747, 36.260586, 38.384457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180157, 36.152782, 38.690884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796006, 0.002968, -0.605282,
		0.160853, 0.962994, 0.216259,
		0.583525, -0.269505, 0.766072,
		40.355213, 36.071930, 38.920704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504730, 36.754494, 38.419044>,  <39.946747, 36.260586, 38.384457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504730, 36.754494, 38.419044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591038, 36.387241, 38.552002>,  <40.642822, 36.166889, 38.631779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591038, 36.387241, 38.552002>,  <40.504730, 36.754494, 38.419044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591038, 36.387241, 38.552002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804085, -0.026059, -0.593942,
		0.553976, 0.395430, 0.732629,
		0.215771, -0.918127, 0.332395,
		40.655769, 36.111805, 38.651722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225521, 36.634178, 38.816559>,  <40.504730, 36.754494, 38.419044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225521, 36.634178, 38.816559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128384, 36.311035, 38.601749>,  <41.070099, 36.117149, 38.472866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128384, 36.311035, 38.601749>,  <41.225521, 36.634178, 38.816559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128384, 36.311035, 38.601749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625636, 0.292641, -0.723146,
		0.741354, -0.511593, 0.434359,
		-0.242845, -0.807858, -0.537021,
		41.055531, 36.068676, 38.440643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808392, 36.173027, 38.734848>,  <41.225521, 36.634178, 38.816559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808392, 36.173027, 38.734848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530209, 36.200523, 38.448742>,  <41.363297, 36.217022, 38.277077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530209, 36.200523, 38.448742>,  <41.808392, 36.173027, 38.734848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530209, 36.200523, 38.448742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704377, 0.262035, -0.659690,
		0.142079, -0.962608, -0.230653,
		-0.695461, 0.068738, -0.715268,
		41.321571, 36.221146, 38.234161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803745, 35.627399, 38.246494>,  <41.808392, 36.173027, 38.734848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803745, 35.627399, 38.246494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726482, 35.988533, 38.092831>,  <41.680122, 36.205215, 38.000633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726482, 35.988533, 38.092831>,  <41.803745, 35.627399, 38.246494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726482, 35.988533, 38.092831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726235, -0.131712, -0.674711,
		-0.659751, -0.409314, -0.630231,
		-0.193160, 0.902837, -0.384155,
		41.668533, 36.259384, 37.977585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653614, 35.588524, 37.448891>,  <41.803745, 35.627399, 38.246494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653614, 35.588524, 37.448891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827076, 35.935974, 37.544754>,  <41.931152, 36.144444, 37.602272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827076, 35.935974, 37.544754>,  <41.653614, 35.588524, 37.448891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827076, 35.935974, 37.544754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669591, -0.132666, -0.730786,
		-0.602982, 0.477384, -0.639153,
		0.433659, 0.868622, 0.239657,
		41.957172, 36.196560, 37.616650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527115, 36.123566, 36.872398>,  <41.653614, 35.588524, 37.448891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527115, 36.123566, 36.872398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865112, 36.164608, 37.082333>,  <42.067913, 36.189236, 37.208294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865112, 36.164608, 37.082333>,  <41.527115, 36.123566, 36.872398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865112, 36.164608, 37.082333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515982, 0.101422, -0.850574,
		-0.140505, 0.989538, 0.032758,
		0.844998, 0.102607, 0.524834,
		42.118610, 36.195389, 37.239784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779156, 36.640224, 36.551411>,  <41.527115, 36.123566, 36.872398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779156, 36.640224, 36.551411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083366, 36.462948, 36.741222>,  <42.265892, 36.356583, 36.855110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083366, 36.462948, 36.741222>,  <41.779156, 36.640224, 36.551411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083366, 36.462948, 36.741222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536838, 0.018096, -0.843491,
		0.365244, 0.896243, 0.251686,
		0.760527, -0.443195, 0.474528,
		42.311523, 36.329990, 36.883579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376152, 36.996239, 36.305061>,  <41.779156, 36.640224, 36.551411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376152, 36.996239, 36.305061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550209, 36.673035, 36.463943>,  <42.654644, 36.479115, 36.559273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550209, 36.673035, 36.463943>,  <42.376152, 36.996239, 36.305061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550209, 36.673035, 36.463943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499847, -0.150139, -0.853001,
		0.748867, 0.569723, 0.338547,
		0.435145, -0.808007, 0.397208,
		42.680752, 36.430634, 36.583107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093941, 37.186264, 36.285446>,  <42.376152, 36.996239, 36.305061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093941, 37.186264, 36.285446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021248, 36.792938, 36.282360>,  <42.977631, 36.556942, 36.280510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021248, 36.792938, 36.282360>,  <43.093941, 37.186264, 36.285446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021248, 36.792938, 36.282360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390871, -0.065036, -0.918145,
		0.902326, -0.169875, 0.396170,
		-0.181735, -0.983317, -0.007715,
		42.966728, 36.497944, 36.280045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749802, 36.828388, 36.137779>,  <43.093941, 37.186264, 36.285446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749802, 36.828388, 36.137779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451267, 36.581234, 36.038822>,  <43.272148, 36.432941, 35.979450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.451267, 36.581234, 36.038822>,  <43.749802, 36.828388, 36.137779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451267, 36.581234, 36.038822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519189, -0.307907, -0.797268,
		0.416449, -0.723469, 0.550601,
		-0.746333, -0.617888, -0.247390,
		43.227367, 36.395866, 35.964603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081951, 36.193211, 35.940025>,  <43.749802, 36.828388, 36.137779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.081951, 36.193211, 35.940025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709854, 36.179478, 35.793896>,  <43.486595, 36.171238, 35.706219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709854, 36.179478, 35.793896>,  <44.081951, 36.193211, 35.940025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709854, 36.179478, 35.793896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349333, -0.387527, -0.853105,
		-0.112282, -0.921219, 0.372490,
		-0.930246, -0.034335, -0.365325,
		43.430779, 36.169178, 35.684299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090157, 35.603573, 35.495705>,  <44.081951, 36.193211, 35.940025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090157, 35.603573, 35.495705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772041, 35.811840, 35.371498>,  <43.581173, 35.936798, 35.296974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772041, 35.811840, 35.371498>,  <44.090157, 35.603573, 35.495705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772041, 35.811840, 35.371498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350428, -0.023141, -0.936304,
		-0.494685, -0.853448, -0.164051,
		-0.795291, 0.520664, -0.310520,
		43.533455, 35.968040, 35.278343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791164, 35.280823, 35.058823>,  <44.090157, 35.603573, 35.495705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791164, 35.280823, 35.058823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657009, 35.647427, 34.971619>,  <43.576515, 35.867390, 34.919296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657009, 35.647427, 34.971619>,  <43.791164, 35.280823, 35.058823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657009, 35.647427, 34.971619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400790, -0.070618, -0.913444,
		-0.852572, -0.393739, -0.343642,
		-0.335392, 0.916505, -0.218014,
		43.556393, 35.922379, 34.906216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623138, 35.244762, 34.318909>,  <43.791164, 35.280823, 35.058823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623138, 35.244762, 34.318909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642376, 35.632778, 34.414173>,  <43.653919, 35.865585, 34.471333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642376, 35.632778, 34.414173>,  <43.623138, 35.244762, 34.318909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642376, 35.632778, 34.414173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420286, 0.196648, -0.885827,
		-0.906117, 0.142695, -0.398235,
		0.048091, 0.970035, 0.238158,
		43.656803, 35.923790, 34.485622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299538, 35.661015, 33.771038>,  <43.623138, 35.244762, 34.318909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299538, 35.661015, 33.771038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539772, 35.914711, 33.965782>,  <43.683910, 36.066929, 34.082630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539772, 35.914711, 33.965782>,  <43.299538, 35.661015, 33.771038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539772, 35.914711, 33.965782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436637, 0.249939, -0.864221,
		-0.669812, 0.731620, -0.126824,
		0.600583, 0.634242, 0.486865,
		43.719948, 36.104984, 34.111843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237274, 36.304752, 33.458157>,  <43.299538, 35.661015, 33.771038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237274, 36.304752, 33.458157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590763, 36.350002, 33.639812>,  <43.802856, 36.377151, 33.748806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590763, 36.350002, 33.639812>,  <43.237274, 36.304752, 33.458157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590763, 36.350002, 33.639812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353810, 0.473698, -0.806491,
		-0.306356, 0.873392, 0.378593,
		0.883722, 0.113123, 0.454135,
		43.855881, 36.383938, 33.776054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533722, 37.013298, 33.219009>,  <43.237274, 36.304752, 33.458157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533722, 37.013298, 33.219009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860012, 36.816898, 33.341331>,  <44.055786, 36.699059, 33.414722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860012, 36.816898, 33.341331>,  <43.533722, 37.013298, 33.219009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860012, 36.816898, 33.341331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490428, 0.306725, -0.815721,
		0.306725, 0.815374, 0.491004,
		0.815721, -0.491004, 0.305802,
		44.104729, 36.669598, 33.433071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057098, 37.580799, 33.233616>,  <43.533722, 37.013298, 33.219009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057098, 37.580799, 33.233616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230877, 37.222012, 33.200882>,  <44.335144, 37.006737, 33.181244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230877, 37.222012, 33.200882>,  <44.057098, 37.580799, 33.233616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230877, 37.222012, 33.200882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562682, 0.341231, -0.752960,
		0.703307, 0.281079, 0.652958,
		0.434451, -0.896970, -0.081832,
		44.361214, 36.952919, 33.176331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760963, 37.740086, 33.073185>,  <44.057098, 37.580799, 33.233616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760963, 37.740086, 33.073185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701344, 37.360596, 32.961685>,  <44.665569, 37.132900, 32.894783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701344, 37.360596, 32.961685>,  <44.760963, 37.740086, 33.073185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701344, 37.360596, 32.961685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459949, 0.183029, -0.868877,
		0.875346, -0.257719, 0.409085,
		-0.149052, -0.948726, -0.278752,
		44.656628, 37.075977, 32.878059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414600, 37.628975, 32.728764>,  <44.760963, 37.740086, 33.073185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414600, 37.628975, 32.728764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158554, 37.355637, 32.588318>,  <45.004925, 37.191631, 32.504051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.158554, 37.355637, 32.588318>,  <45.414600, 37.628975, 32.728764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158554, 37.355637, 32.588318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295879, 0.202488, -0.933517,
		0.709016, -0.701448, 0.072573,
		-0.640119, -0.683351, -0.351111,
		44.966518, 37.150631, 32.482983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786819, 37.170261, 32.223656>,  <45.414600, 37.628975, 32.728764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786819, 37.170261, 32.223656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397602, 37.146973, 32.134388>,  <45.164074, 37.132999, 32.080826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.397602, 37.146973, 32.134388>,  <45.786819, 37.170261, 32.223656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397602, 37.146973, 32.134388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217711, 0.087528, -0.972081,
		0.076109, -0.994460, -0.072498,
		-0.973041, -0.058201, -0.223167,
		45.105690, 37.129505, 32.067436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656788, 36.612972, 31.717216>,  <45.786819, 37.170261, 32.223656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656788, 36.612972, 31.717216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386559, 36.904732, 31.674177>,  <45.224419, 37.079788, 31.648354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.386559, 36.904732, 31.674177>,  <45.656788, 36.612972, 31.717216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.386559, 36.904732, 31.674177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280401, 0.119210, -0.952452,
		-0.681887, -0.673625, -0.285059,
		-0.675577, 0.729396, -0.107597,
		45.183884, 37.123550, 31.641897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753353, 36.594242, 31.031494>,  <45.656788, 36.612972, 31.717216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753353, 36.594242, 31.031494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493233, 36.883774, 31.123737>,  <45.337162, 37.057491, 31.179083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493233, 36.883774, 31.123737>,  <45.753353, 36.594242, 31.031494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493233, 36.883774, 31.123737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032308, 0.329638, -0.943554,
		-0.758990, -0.606143, -0.237749,
		-0.650301, 0.723829, 0.230609,
		45.298141, 37.100922, 31.192921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402988, 36.646801, 30.444937>,  <45.753353, 36.594242, 31.031494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402988, 36.646801, 30.444937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327816, 36.984169, 30.646261>,  <45.282711, 37.186588, 30.767056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327816, 36.984169, 30.646261>,  <45.402988, 36.646801, 30.444937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327816, 36.984169, 30.646261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078357, 0.497934, -0.863667,
		-0.979051, -0.201748, -0.027489,
		-0.187931, 0.843421, 0.503312,
		45.271435, 37.237194, 30.797255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883144, 36.924492, 30.106659>,  <45.402988, 36.646801, 30.444937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883144, 36.924492, 30.106659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063072, 37.217464, 30.311092>,  <45.171028, 37.393250, 30.433752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.063072, 37.217464, 30.311092>,  <44.883144, 36.924492, 30.106659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.063072, 37.217464, 30.311092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159525, 0.497156, -0.852870,
		-0.878759, 0.465165, 0.106787,
		0.449816, 0.732432, 0.511086,
		45.198017, 37.437195, 30.464418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476151, 37.598202, 29.962114>,  <44.883144, 36.924492, 30.106659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476151, 37.598202, 29.962114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848621, 37.693314, 30.072649>,  <45.072105, 37.750381, 30.138969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848621, 37.693314, 30.072649>,  <44.476151, 37.598202, 29.962114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848621, 37.693314, 30.072649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153295, 0.432341, -0.888584,
		-0.330764, 0.869793, 0.366136,
		0.931180, 0.237784, 0.276338,
		45.127975, 37.764648, 30.155550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635303, 38.296886, 29.719477>,  <44.476151, 37.598202, 29.962114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635303, 38.296886, 29.719477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967781, 38.080170, 29.769411>,  <45.167267, 37.950142, 29.799372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967781, 38.080170, 29.769411>,  <44.635303, 38.296886, 29.719477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967781, 38.080170, 29.769411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291608, 0.233647, -0.927563,
		0.473376, 0.807387, 0.352196,
		0.831192, -0.541789, 0.124837,
		45.217140, 37.917633, 29.806862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087231, 38.675690, 29.302856>,  <44.635303, 38.296886, 29.719477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087231, 38.675690, 29.302856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243107, 38.311832, 29.360397>,  <45.336632, 38.093517, 29.394922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243107, 38.311832, 29.360397>,  <45.087231, 38.675690, 29.302856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243107, 38.311832, 29.360397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538523, 0.098363, -0.836850,
		0.747082, 0.403583, 0.528194,
		0.389693, -0.909640, 0.143854,
		45.360016, 38.038940, 29.403553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768852, 39.316658, 29.664398>,  <45.087231, 38.675690, 29.302856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768852, 39.316658, 29.664398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051743, 39.176376, 29.909946>,  <45.221478, 39.092205, 30.057276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.051743, 39.176376, 29.909946>,  <44.768852, 39.316658, 29.664398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051743, 39.176376, 29.909946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541523, 0.826932, -0.151448,
		-0.454516, 0.439533, 0.774743,
		0.707225, -0.350706, 0.613871,
		45.263908, 39.071163, 30.094109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253677, 39.795982, 29.556530>,  <44.768852, 39.316658, 29.664398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253677, 39.795982, 29.556530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416561, 39.553043, 29.829386>,  <45.514290, 39.407280, 29.993099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416561, 39.553043, 29.829386>,  <45.253677, 39.795982, 29.556530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416561, 39.553043, 29.829386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833428, 0.552601, -0.005505,
		-0.373607, 0.570755, 0.731202,
		0.407205, -0.607347, 0.682139,
		45.538723, 39.370838, 30.034027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010948, 39.767807, 29.235632>,  <45.253677, 39.795982, 29.556530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010948, 39.767807, 29.235632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.279873, 39.492649, 29.126238>,  <46.441227, 39.327553, 29.060602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.279873, 39.492649, 29.126238>,  <46.010948, 39.767807, 29.235632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.279873, 39.492649, 29.126238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418711, 0.048708, 0.906813,
		-0.610473, -0.724172, 0.320777,
		0.672313, -0.687897, -0.273483,
		46.481567, 39.286282, 29.044193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218765, 39.299240, 29.874054>,  <46.010948, 39.767807, 29.235632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218765, 39.299240, 29.874054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501286, 39.265594, 29.592894>,  <46.670795, 39.245407, 29.424198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.501286, 39.265594, 29.592894>,  <46.218765, 39.299240, 29.874054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501286, 39.265594, 29.592894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702805, -0.035778, 0.710482,
		-0.084913, -0.995813, 0.033849,
		0.706296, -0.084118, -0.702901,
		46.713173, 39.240360, 29.382023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861137, 39.741096, 29.960270>,  <46.218765, 39.299240, 29.874054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861137, 39.741096, 29.960270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964424, 39.416367, 30.169754>,  <47.026398, 39.221531, 30.295444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964424, 39.416367, 30.169754>,  <46.861137, 39.741096, 29.960270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964424, 39.416367, 30.169754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554290, -0.319497, -0.768560,
		0.791256, 0.488742, 0.367484,
		0.258218, -0.811821, 0.523709,
		47.041889, 39.172821, 30.326866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802193, 40.207161, 30.606363>,  <46.861137, 39.741096, 29.960270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802193, 40.207161, 30.606363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.156719, 40.358021, 30.713840>,  <47.369434, 40.448536, 30.778326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.156719, 40.358021, 30.713840>,  <46.802193, 40.207161, 30.606363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.156719, 40.358021, 30.713840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167300, -0.280250, 0.945236,
		0.431800, -0.882732, -0.185293,
		0.886318, 0.377153, 0.268692,
		47.422615, 40.471169, 30.794449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.114483, 39.685295, 30.910444>,  <46.802193, 40.207161, 30.606363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.114483, 39.685295, 30.910444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325359, 39.988659, 31.063744>,  <47.451885, 40.170677, 31.155724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.325359, 39.988659, 31.063744>,  <47.114483, 39.685295, 30.910444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.325359, 39.988659, 31.063744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075566, -0.407387, 0.910124,
		0.846377, -0.508774, -0.157462,
		0.527195, 0.758410, 0.383249,
		47.483517, 40.216183, 31.178719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.741077, 39.419697, 31.229458>,  <47.114483, 39.685295, 30.910444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.741077, 39.419697, 31.229458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592117, 39.754211, 31.390427>,  <47.502739, 39.954918, 31.487007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.592117, 39.754211, 31.390427>,  <47.741077, 39.419697, 31.229458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.592117, 39.754211, 31.390427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102069, -0.394075, 0.913393,
		0.922441, 0.381225, 0.061396,
		-0.372403, 0.836285, 0.402423,
		47.480396, 40.005096, 31.511154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.131714, 39.696144, 31.759655>,  <47.741077, 39.419697, 31.229458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.131714, 39.696144, 31.759655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.746078, 39.793266, 31.802679>,  <47.514694, 39.851540, 31.828493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.746078, 39.793266, 31.802679>,  <48.131714, 39.696144, 31.759655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.746078, 39.793266, 31.802679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035227, -0.518368, 0.854432,
		0.263217, 0.819963, 0.508308,
		-0.964093, 0.242807, 0.107559,
		47.456852, 39.866108, 31.834948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.067158, 40.154015, 32.300549>,  <48.131714, 39.696144, 31.759655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.067158, 40.154015, 32.300549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726192, 39.945530, 32.283924>,  <47.521614, 39.820438, 32.273949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726192, 39.945530, 32.283924>,  <48.067158, 40.154015, 32.300549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726192, 39.945530, 32.283924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091605, -0.227128, 0.969547,
		-0.514780, 0.822648, 0.241353,
		-0.852414, -0.521213, -0.041563,
		47.470467, 39.789165, 32.271454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.765041, 40.242889, 32.965736>,  <48.067158, 40.154015, 32.300549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.765041, 40.242889, 32.965736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546551, 39.934448, 32.834873>,  <47.415455, 39.749382, 32.756355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.546551, 39.934448, 32.834873>,  <47.765041, 40.242889, 32.965736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.546551, 39.934448, 32.834873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225764, -0.240594, 0.944005,
		-0.806637, 0.589505, -0.042668,
		-0.546229, -0.771102, -0.327162,
		47.382683, 39.703117, 32.736725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.093758, 40.216579, 33.341423>,  <47.765041, 40.242889, 32.965736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.093758, 40.216579, 33.341423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.147923, 39.852932, 33.183861>,  <47.180420, 39.634743, 33.089325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.147923, 39.852932, 33.183861>,  <47.093758, 40.216579, 33.341423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.147923, 39.852932, 33.183861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354217, -0.415714, 0.837683,
		-0.925307, 0.026095, -0.378320,
		0.135413, -0.909121, -0.393906,
		47.188545, 39.580196, 33.065689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.551857, 39.887470, 33.558567>,  <47.093758, 40.216579, 33.341423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.551857, 39.887470, 33.558567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805210, 39.590759, 33.470387>,  <46.957222, 39.412735, 33.417477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.805210, 39.590759, 33.470387>,  <46.551857, 39.887470, 33.558567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.805210, 39.590759, 33.470387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197851, -0.430643, 0.880569,
		-0.748119, -0.514119, -0.419522,
		0.633381, -0.741773, -0.220453,
		46.995224, 39.368229, 33.404251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274662, 39.357121, 33.726997>,  <46.551857, 39.887470, 33.558567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274662, 39.357121, 33.726997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623943, 39.168224, 33.678818>,  <46.833511, 39.054886, 33.649910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623943, 39.168224, 33.678818>,  <46.274662, 39.357121, 33.726997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623943, 39.168224, 33.678818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275766, -0.682542, 0.676823,
		-0.401832, -0.557788, -0.726225,
		0.873204, -0.472237, -0.120448,
		46.885906, 39.026554, 33.642685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085285, 38.714615, 33.630127>,  <46.274662, 39.357121, 33.726997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085285, 38.714615, 33.630127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459782, 38.689320, 33.768375>,  <46.684479, 38.674141, 33.851326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.459782, 38.689320, 33.768375>,  <46.085285, 38.714615, 33.630127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.459782, 38.689320, 33.768375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283269, -0.717828, 0.635988,
		0.207878, -0.693342, -0.689974,
		0.936240, -0.063240, 0.345623,
		46.740654, 38.670349, 33.872063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.188442, 37.994434, 33.785187>,  <46.085285, 38.714615, 33.630127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.188442, 37.994434, 33.785187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465343, 38.193291, 33.994431>,  <46.631485, 38.312603, 34.119976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.465343, 38.193291, 33.994431>,  <46.188442, 37.994434, 33.785187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.465343, 38.193291, 33.994431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312969, -0.446343, 0.838349,
		0.650262, -0.744063, -0.153392,
		0.692250, 0.497139, 0.523108,
		46.673019, 38.342434, 34.151363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.589939, 37.410324, 34.179691>,  <46.188442, 37.994434, 33.785187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.589939, 37.410324, 34.179691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621635, 37.765293, 34.361328>,  <46.640652, 37.978275, 34.470310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621635, 37.765293, 34.361328>,  <46.589939, 37.410324, 34.179691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.621635, 37.765293, 34.361328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099606, -0.446201, 0.889372,
		0.991867, -0.115703, 0.053037,
		0.079238, 0.887422, 0.454097,
		46.645409, 38.031521, 34.497559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.969048, 37.209732, 34.776176>,  <46.589939, 37.410324, 34.179691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.969048, 37.209732, 34.776176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835335, 37.574989, 34.869488>,  <46.755108, 37.794144, 34.925476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.835335, 37.574989, 34.869488>,  <46.969048, 37.209732, 34.776176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.835335, 37.574989, 34.869488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187491, -0.307003, 0.933058,
		0.923635, 0.268168, 0.273833,
		-0.334283, 0.913146, 0.233280,
		46.735050, 37.848934, 34.939472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.216961, 37.392136, 35.464348>,  <46.969048, 37.209732, 34.776176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.216961, 37.392136, 35.464348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.900085, 37.634277, 35.433411>,  <46.709961, 37.779564, 35.414848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.900085, 37.634277, 35.433411>,  <47.216961, 37.392136, 35.464348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.900085, 37.634277, 35.433411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266656, -0.229348, 0.936106,
		0.548940, 0.762196, 0.343108,
		-0.792187, 0.605357, -0.077346,
		46.662430, 37.815884, 35.410206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.137970, 37.709877, 36.183811>,  <47.216961, 37.392136, 35.464348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.137970, 37.709877, 36.183811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791489, 37.727131, 35.984680>,  <46.583599, 37.737484, 35.865200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.791489, 37.727131, 35.984680>,  <47.137970, 37.709877, 36.183811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.791489, 37.727131, 35.984680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495983, -0.195448, 0.846050,
		-0.060803, 0.979765, 0.190693,
		-0.866201, 0.043138, -0.497830,
		46.531628, 37.740070, 35.835331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652264, 38.083645, 36.659088>,  <47.137970, 37.709877, 36.183811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652264, 38.083645, 36.659088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417603, 37.888054, 36.400867>,  <46.276806, 37.770699, 36.245934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.417603, 37.888054, 36.400867>,  <46.652264, 38.083645, 36.659088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417603, 37.888054, 36.400867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627814, -0.228933, 0.743936,
		-0.511557, 0.841718, -0.172684,
		-0.586651, -0.488979, -0.645554,
		46.241608, 37.741360, 36.207203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990341, 38.263187, 36.915379>,  <46.652264, 38.083645, 36.659088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990341, 38.263187, 36.915379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937992, 37.950115, 36.671974>,  <45.906582, 37.762272, 36.525932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.937992, 37.950115, 36.671974>,  <45.990341, 38.263187, 36.915379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.937992, 37.950115, 36.671974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676292, -0.378327, 0.632059,
		-0.724915, 0.494251, -0.479806,
		-0.130872, -0.782678, -0.608513,
		45.898731, 37.715313, 36.489422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.303600, 38.121967, 36.913826>,  <45.990341, 38.263187, 36.915379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.303600, 38.121967, 36.913826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471325, 37.770676, 36.821827>,  <45.571960, 37.559902, 36.766628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471325, 37.770676, 36.821827>,  <45.303600, 38.121967, 36.913826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471325, 37.770676, 36.821827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626956, -0.463357, 0.626280,
		-0.656585, -0.118410, -0.744900,
		0.419313, -0.878225, -0.229996,
		45.597118, 37.507210, 36.752827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781521, 37.772335, 36.947647>,  <45.303600, 38.121967, 36.913826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781521, 37.772335, 36.947647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074478, 37.501087, 36.972187>,  <45.250252, 37.338341, 36.986912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074478, 37.501087, 36.972187>,  <44.781521, 37.772335, 36.947647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074478, 37.501087, 36.972187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576429, -0.569553, 0.585951,
		-0.362402, -0.464507, -0.808021,
		0.732389, -0.678117, 0.061348,
		45.294193, 37.297653, 36.990593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579899, 37.053928, 36.723568>,  <44.781521, 37.772335, 36.947647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579899, 37.053928, 36.723568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908607, 36.976418, 36.937908>,  <45.105835, 36.929913, 37.066513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908607, 36.976418, 36.937908>,  <44.579899, 37.053928, 36.723568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908607, 36.976418, 36.937908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461704, -0.777562, 0.426880,
		0.333941, -0.598204, -0.728447,
		0.821774, -0.193774, 0.535853,
		45.155140, 36.918285, 37.098663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722702, 36.295475, 36.689350>,  <44.579899, 37.053928, 36.723568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722702, 36.295475, 36.689350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890602, 36.443352, 37.020924>,  <44.991344, 36.532078, 37.219868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.890602, 36.443352, 37.020924>,  <44.722702, 36.295475, 36.689350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890602, 36.443352, 37.020924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267020, -0.822573, 0.502069,
		0.867472, -0.432088, -0.246563,
		0.419754, 0.369694, 0.828935,
		45.016529, 36.554260, 37.269604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173637, 35.840374, 36.911366>,  <44.722702, 36.295475, 36.689350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173637, 35.840374, 36.911366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124565, 36.045456, 37.251266>,  <45.095123, 36.168507, 37.455208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.124565, 36.045456, 37.251266>,  <45.173637, 35.840374, 36.911366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.124565, 36.045456, 37.251266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138168, -0.856705, 0.496957,
		0.982782, -0.056442, 0.175939,
		-0.122679, 0.512709, 0.849753,
		45.087761, 36.199268, 37.506191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594734, 35.422741, 37.378223>,  <45.173637, 35.840374, 36.911366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594734, 35.422741, 37.378223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326263, 35.654842, 37.562756>,  <45.165180, 35.794102, 37.673473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326263, 35.654842, 37.562756>,  <45.594734, 35.422741, 37.378223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326263, 35.654842, 37.562756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253487, -0.764465, 0.592737,
		0.696608, 0.280893, 0.660180,
		-0.671180, 0.580252, 0.461330,
		45.124908, 35.828918, 37.701153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.639450, 34.887508, 36.870159>,  <45.594734, 35.422741, 37.378223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.639450, 34.887508, 36.870159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476448, 34.896729, 36.504993>,  <45.378647, 34.902260, 36.285896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476448, 34.896729, 36.504993>,  <45.639450, 34.887508, 36.870159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476448, 34.896729, 36.504993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791189, 0.508123, -0.340339,
		0.456026, -0.860976, -0.225301,
		-0.407504, 0.023052, -0.912912,
		45.354198, 34.903645, 36.231121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.184944, 34.702988, 36.441982>,  <45.639450, 34.887508, 36.870159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.184944, 34.702988, 36.441982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938366, 34.941555, 36.236351>,  <45.790421, 35.084698, 36.112972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.938366, 34.941555, 36.236351>,  <46.184944, 34.702988, 36.441982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.938366, 34.941555, 36.236351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786001, 0.427241, -0.446842,
		-0.046870, -0.679520, -0.732158,
		-0.616446, 0.596421, -0.514079,
		45.753433, 35.120480, 36.082127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.316898, 34.537556, 35.737862>,  <46.184944, 34.702988, 36.441982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.316898, 34.537556, 35.737862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190388, 34.912041, 35.799152>,  <46.114483, 35.136730, 35.835926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190388, 34.912041, 35.799152>,  <46.316898, 34.537556, 35.737862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.190388, 34.912041, 35.799152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904284, 0.346345, -0.249631,
		-0.286776, 0.059607, -0.956141,
		-0.316275, 0.936212, 0.153225,
		46.095505, 35.192905, 35.845119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.616455, 35.040508, 35.109589>,  <46.316898, 34.537556, 35.737862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.616455, 35.040508, 35.109589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.581421, 35.229042, 35.460629>,  <46.560398, 35.342163, 35.671253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.581421, 35.229042, 35.460629>,  <46.616455, 35.040508, 35.109589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.581421, 35.229042, 35.460629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989155, 0.145420, 0.020622,
		-0.117900, 0.869885, -0.478957,
		-0.087588, 0.471332, 0.877596,
		46.555145, 35.370441, 35.723907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351559, 35.183811, 34.915600>,  <46.616455, 35.040508, 35.109589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351559, 35.183811, 34.915600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.706730, 35.000881, 34.935360>,  <47.919834, 34.891125, 34.947216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.706730, 35.000881, 34.935360>,  <47.351559, 35.183811, 34.915600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.706730, 35.000881, 34.935360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192334, -0.271564, 0.943006,
		-0.417842, -0.846823, -0.329088,
		0.887928, -0.457323, 0.049402,
		47.973110, 34.863686, 34.950180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.202658, 39.525043, 46.146992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.816917, 39.470371, 46.056351>,  <30.585474, 39.437569, 46.001968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.816917, 39.470371, 46.056351>,  <31.202658, 39.525043, 46.146992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816917, 39.470371, 46.056351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233387, -0.035666, -0.971730,
		0.124735, -0.989973, 0.066294,
		-0.964351, -0.136681, -0.226598,
		30.527613, 39.429367, 45.988373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163351, 38.906849, 45.814148>,  <31.202658, 39.525043, 46.146992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163351, 38.906849, 45.814148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.826361, 39.096794, 45.712376>,  <30.624166, 39.210762, 45.651310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.826361, 39.096794, 45.712376>,  <31.163351, 38.906849, 45.814148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826361, 39.096794, 45.712376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248238, -0.076985, -0.965635,
		-0.478133, -0.876686, -0.053022,
		-0.842477, 0.474864, -0.254435,
		30.573618, 39.239254, 45.636044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168755, 38.666534, 45.144325>,  <31.163351, 38.906849, 45.814148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168755, 38.666534, 45.144325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.881252, 38.943783, 45.122498>,  <30.708752, 39.110130, 45.109402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.881252, 38.943783, 45.122498>,  <31.168755, 38.666534, 45.144325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881252, 38.943783, 45.122498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069032, -0.006957, -0.997590,
		-0.691827, -0.720791, -0.042847,
		-0.718756, 0.693118, -0.054571,
		30.665627, 39.151718, 45.106125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735245, 38.526257, 44.555325>,  <31.168755, 38.666534, 45.144325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735245, 38.526257, 44.555325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.715492, 38.922565, 44.605812>,  <30.703640, 39.160351, 44.636105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.715492, 38.922565, 44.605812>,  <30.735245, 38.526257, 44.555325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715492, 38.922565, 44.605812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115635, 0.131197, -0.984589,
		-0.992064, -0.034026, -0.121047,
		-0.049382, 0.990772, 0.126221,
		30.700678, 39.219795, 44.643677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217358, 38.799435, 44.112968>,  <30.735245, 38.526257, 44.555325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217358, 38.799435, 44.112968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.432707, 39.123474, 44.205826>,  <30.561916, 39.317898, 44.261539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.432707, 39.123474, 44.205826>,  <30.217358, 38.799435, 44.112968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.432707, 39.123474, 44.205826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051820, 0.243129, -0.968609,
		-0.841112, 0.533502, 0.088914,
		0.538373, 0.810101, 0.232144,
		30.594219, 39.366505, 44.275471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974731, 39.276485, 43.657616>,  <30.217358, 38.799435, 44.112968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974731, 39.276485, 43.657616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.316076, 39.445236, 43.780121>,  <30.520884, 39.546486, 43.853622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.316076, 39.445236, 43.780121>,  <29.974731, 39.276485, 43.657616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316076, 39.445236, 43.780121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292231, 0.099379, -0.951170,
		-0.431713, 0.901190, -0.038480,
		0.853361, 0.421878, 0.306259,
		30.572084, 39.571800, 43.871998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116117, 39.800285, 43.230850>,  <29.974731, 39.276485, 43.657616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116117, 39.800285, 43.230850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.490688, 39.777367, 43.369312>,  <30.715431, 39.763615, 43.452389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.490688, 39.777367, 43.369312>,  <30.116117, 39.800285, 43.230850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490688, 39.777367, 43.369312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340969, -0.084087, -0.936306,
		0.082752, 0.994810, -0.059206,
		0.936425, -0.057293, 0.346158,
		30.771616, 39.760178, 43.473160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454615, 40.248238, 42.743248>,  <30.116117, 39.800285, 43.230850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454615, 40.248238, 42.743248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.725161, 40.021275, 42.931110>,  <30.887487, 39.885098, 43.043827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.725161, 40.021275, 42.931110>,  <30.454615, 40.248238, 42.743248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725161, 40.021275, 42.931110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509014, -0.100815, -0.854834,
		0.532387, 0.817243, 0.220631,
		0.676364, -0.567407, 0.469661,
		30.928070, 39.851051, 43.072010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129314, 40.466484, 42.529854>,  <30.454615, 40.248238, 42.743248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129314, 40.466484, 42.529854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.202374, 40.094524, 42.657562>,  <31.246208, 39.871349, 42.734188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.202374, 40.094524, 42.657562>,  <31.129314, 40.466484, 42.529854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202374, 40.094524, 42.657562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541699, -0.175817, -0.821980,
		0.820489, 0.323080, 0.471611,
		0.182648, -0.929897, 0.319268,
		31.257168, 39.815556, 42.753342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730782, 40.417667, 42.367657>,  <31.129314, 40.466484, 42.529854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730782, 40.417667, 42.367657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.647575, 40.030434, 42.423584>,  <31.597652, 39.798096, 42.457142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.647575, 40.030434, 42.423584>,  <31.730782, 40.417667, 42.367657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647575, 40.030434, 42.423584> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568541, -0.235989, -0.788080,
		0.795921, -0.084439, 0.599482,
		-0.208016, -0.968080, 0.139821,
		31.585171, 39.740009, 42.465530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342537, 39.904972, 42.641399>,  <31.730782, 40.417667, 42.367657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342537, 39.904972, 42.641399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.081631, 39.688240, 42.429371>,  <31.925087, 39.558201, 42.302155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.081631, 39.688240, 42.429371>,  <32.342537, 39.904972, 42.641399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081631, 39.688240, 42.429371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752171, -0.376191, -0.541035,
		0.093739, -0.751602, 0.652922,
		-0.652266, -0.541826, -0.530069,
		31.885950, 39.525692, 42.270351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536781, 39.150810, 42.615860>,  <32.342537, 39.904972, 42.641399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536781, 39.150810, 42.615860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.306538, 39.202927, 42.292950>,  <32.168392, 39.234196, 42.099201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.306538, 39.202927, 42.292950>,  <32.536781, 39.150810, 42.615860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306538, 39.202927, 42.292950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731513, -0.359172, -0.579556,
		-0.365476, -0.924129, 0.111414,
		-0.575601, 0.130313, -0.807281,
		32.133854, 39.242016, 42.050766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857094, 38.721748, 42.198444>,  <32.536781, 39.150810, 42.615860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857094, 38.721748, 42.198444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.608471, 38.893238, 41.936188>,  <32.459297, 38.996132, 41.778835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.608471, 38.893238, 41.936188>,  <32.857094, 38.721748, 42.198444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608471, 38.893238, 41.936188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584885, -0.302801, -0.752477,
		-0.521131, -0.851182, -0.062544,
		-0.621556, 0.428720, -0.655643,
		32.422005, 39.021854, 41.739494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557079, 38.223446, 41.757233>,  <32.857094, 38.721748, 42.198444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557079, 38.223446, 41.757233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.576305, 38.578838, 41.574677>,  <32.587841, 38.792072, 41.465141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.576305, 38.578838, 41.574677>,  <32.557079, 38.223446, 41.757233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576305, 38.578838, 41.574677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665063, -0.369376, -0.649039,
		-0.745238, -0.272330, -0.608651,
		0.048068, 0.888480, -0.456391,
		32.590725, 38.845383, 41.437759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557728, 38.014977, 41.140091>,  <32.557079, 38.223446, 41.757233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557728, 38.014977, 41.140091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.688538, 38.389343, 41.087769>,  <32.767025, 38.613964, 41.056374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.688538, 38.389343, 41.087769>,  <32.557728, 38.014977, 41.140091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688538, 38.389343, 41.087769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567670, -0.305213, -0.764588,
		-0.755516, 0.175787, -0.631106,
		0.327027, 0.935919, -0.130805,
		32.786644, 38.670120, 41.048527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772194, 38.020409, 40.490604>,  <32.557728, 38.014977, 41.140091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772194, 38.020409, 40.490604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.945843, 38.362190, 40.604755>,  <33.050034, 38.567261, 40.673248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.945843, 38.362190, 40.604755>,  <32.772194, 38.020409, 40.490604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945843, 38.362190, 40.604755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675662, -0.099306, -0.730493,
		-0.595833, 0.509945, -0.620434,
		0.434124, 0.854455, 0.285381,
		33.076080, 38.618526, 40.690369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874790, 38.433685, 39.824623>,  <32.772194, 38.020409, 40.490604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874790, 38.433685, 39.824623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.149326, 38.547356, 40.092411>,  <33.314049, 38.615559, 40.253082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.149326, 38.547356, 40.092411>,  <32.874790, 38.433685, 39.824623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149326, 38.547356, 40.092411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707957, -0.050250, -0.704466,
		-0.166550, 0.957455, -0.235671,
		0.686337, 0.284173, 0.669468,
		33.355228, 38.632607, 40.293251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200897, 38.827248, 39.506607>,  <32.874790, 38.433685, 39.824623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200897, 38.827248, 39.506607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458504, 38.748310, 39.802258>,  <33.613068, 38.700947, 39.979649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458504, 38.748310, 39.802258>,  <33.200897, 38.827248, 39.506607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458504, 38.748310, 39.802258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751165, -0.019892, -0.659815,
		0.144914, 0.980132, 0.135428,
		0.644012, -0.197345, 0.739123,
		33.651707, 38.689106, 40.023994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820385, 39.202278, 39.374313>,  <33.200897, 38.827248, 39.506607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820385, 39.202278, 39.374313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.910164, 38.888561, 39.605659>,  <33.964031, 38.700329, 39.744469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.910164, 38.888561, 39.605659>,  <33.820385, 39.202278, 39.374313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910164, 38.888561, 39.605659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708453, -0.276200, -0.649468,
		0.669119, 0.555513, 0.493645,
		0.224443, -0.784295, 0.578365,
		33.977497, 38.653275, 39.779167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480164, 39.231319, 39.457836>,  <33.820385, 39.202278, 39.374313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480164, 39.231319, 39.457836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391815, 38.846069, 39.519283>,  <34.338806, 38.614918, 39.556152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391815, 38.846069, 39.519283>,  <34.480164, 39.231319, 39.457836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391815, 38.846069, 39.519283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699074, -0.266167, -0.663665,
		0.680082, -0.039196, 0.732087,
		-0.220871, -0.963129, 0.153615,
		34.325554, 38.557129, 39.565369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136013, 38.867077, 39.480145>,  <34.480164, 39.231319, 39.457836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136013, 38.867077, 39.480145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866062, 38.574768, 39.439144>,  <34.704090, 38.399384, 39.414543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866062, 38.574768, 39.439144>,  <35.136013, 38.867077, 39.480145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866062, 38.574768, 39.439144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608465, -0.472496, -0.637588,
		0.417506, -0.492660, 0.763529,
		-0.674878, -0.730777, -0.102496,
		34.663597, 38.355534, 39.408394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551777, 38.170219, 39.486164>,  <35.136013, 38.867077, 39.480145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551777, 38.170219, 39.486164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201340, 38.115147, 39.301338>,  <34.991077, 38.082104, 39.190445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201340, 38.115147, 39.301338>,  <35.551777, 38.170219, 39.486164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201340, 38.115147, 39.301338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468521, -0.469287, -0.748504,
		-0.113782, -0.872246, 0.475647,
		-0.876095, -0.137684, -0.462062,
		34.938511, 38.073841, 39.162720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273682, 38.010937, 39.206261>,  <35.551777, 38.170219, 39.486164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273682, 38.010937, 39.206261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639416, 38.105865, 39.337509>,  <36.858856, 38.162823, 39.416260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.639416, 38.105865, 39.337509>,  <36.273682, 38.010937, 39.206261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639416, 38.105865, 39.337509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290951, -0.178577, 0.939924,
		0.281661, -0.954876, -0.094230,
		0.914338, 0.237324, 0.328120,
		36.913719, 38.177063, 39.435944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235435, 37.626331, 39.910614>,  <36.273682, 38.010937, 39.206261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235435, 37.626331, 39.910614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546959, 37.875084, 39.877827>,  <36.733875, 38.024334, 39.858154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546959, 37.875084, 39.877827>,  <36.235435, 37.626331, 39.910614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546959, 37.875084, 39.877827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165809, -0.078078, 0.983062,
		0.604947, -0.779211, -0.163921,
		0.778811, 0.621880, -0.081967,
		36.780602, 38.061649, 39.853237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741451, 37.351105, 40.327831>,  <36.235435, 37.626331, 39.910614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741451, 37.351105, 40.327831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.774067, 37.748699, 40.298611>,  <36.793636, 37.987255, 40.281078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.774067, 37.748699, 40.298611>,  <36.741451, 37.351105, 40.327831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774067, 37.748699, 40.298611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051328, 0.077389, 0.995679,
		0.995348, -0.077439, 0.057330,
		0.081541, 0.993989, -0.073054,
		36.798531, 38.046894, 40.276695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150555, 37.556831, 40.932217>,  <36.741451, 37.351105, 40.327831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150555, 37.556831, 40.932217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967827, 37.889587, 40.806190>,  <36.858192, 38.089241, 40.730576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967827, 37.889587, 40.806190>,  <37.150555, 37.556831, 40.932217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967827, 37.889587, 40.806190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255961, 0.216283, 0.942181,
		0.851940, 0.511051, 0.114130,
		-0.456818, 0.831895, -0.315070,
		36.830780, 38.139156, 40.711670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359581, 38.170723, 41.499023>,  <37.150555, 37.556831, 40.932217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359581, 38.170723, 41.499023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.049164, 38.311981, 41.290009>,  <36.862915, 38.396736, 41.164600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.049164, 38.311981, 41.290009>,  <37.359581, 38.170723, 41.499023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049164, 38.311981, 41.290009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349170, 0.449386, 0.822273,
		0.525208, 0.820572, -0.225431,
		-0.776039, 0.353150, -0.522540,
		36.816353, 38.417927, 41.133247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266068, 38.661900, 41.826786>,  <37.359581, 38.170723, 41.499023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266068, 38.661900, 41.826786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908638, 38.602024, 41.657494>,  <36.694180, 38.566097, 41.555920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.908638, 38.602024, 41.657494>,  <37.266068, 38.661900, 41.826786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908638, 38.602024, 41.657494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447739, 0.365587, 0.816012,
		0.032582, 0.918662, -0.393699,
		-0.893571, -0.149687, -0.423232,
		36.640568, 38.557117, 41.530525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939190, 39.155018, 42.121922>,  <37.266068, 38.661900, 41.826786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939190, 39.155018, 42.121922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658314, 38.909218, 41.978077>,  <36.489788, 38.761738, 41.891769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658314, 38.909218, 41.978077>,  <36.939190, 39.155018, 42.121922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658314, 38.909218, 41.978077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569517, 0.181654, 0.801656,
		-0.427290, 0.767721, -0.477522,
		-0.702192, -0.614496, -0.359612,
		36.447655, 38.724869, 41.870193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244743, 39.510441, 42.348938>,  <36.939190, 39.155018, 42.121922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244743, 39.510441, 42.348938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131126, 39.134384, 42.273613>,  <36.062958, 38.908752, 42.228416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.131126, 39.134384, 42.273613>,  <36.244743, 39.510441, 42.348938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131126, 39.134384, 42.273613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643477, 0.041309, 0.764350,
		-0.710815, 0.338282, -0.616691,
		-0.284041, -0.940138, -0.188313,
		36.045914, 38.852345, 42.217117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457718, 39.420372, 42.209240>,  <36.244743, 39.510441, 42.348938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457718, 39.420372, 42.209240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603359, 39.072468, 42.342480>,  <35.690742, 38.863728, 42.422424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603359, 39.072468, 42.342480>,  <35.457718, 39.420372, 42.209240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603359, 39.072468, 42.342480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743209, -0.055780, 0.666730,
		-0.561313, -0.490317, -0.666721,
		0.364099, -0.869757, 0.333098,
		35.712589, 38.811543, 42.442410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773628, 39.040268, 42.380455>,  <35.457718, 39.420372, 42.209240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773628, 39.040268, 42.380455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069138, 38.819836, 42.535648>,  <35.246445, 38.687576, 42.628765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069138, 38.819836, 42.535648>,  <34.773628, 39.040268, 42.380455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069138, 38.819836, 42.535648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602958, -0.283253, 0.745794,
		-0.301104, -0.784900, -0.541542,
		0.738768, -0.551089, 0.387973,
		35.290768, 38.654510, 42.652042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541904, 38.380825, 42.527885>,  <34.773628, 39.040268, 42.380455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541904, 38.380825, 42.527885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.850735, 38.457924, 42.770126>,  <35.036034, 38.504181, 42.915470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.850735, 38.457924, 42.770126>,  <34.541904, 38.380825, 42.527885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850735, 38.457924, 42.770126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556894, -0.253964, 0.790804,
		0.306225, -0.947814, -0.088740,
		0.772072, 0.192745, 0.605602,
		35.082355, 38.515747, 42.951805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536514, 37.833042, 42.960304>,  <34.541904, 38.380825, 42.527885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536514, 37.833042, 42.960304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.763889, 38.106174, 43.143879>,  <34.900314, 38.270054, 43.254025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.763889, 38.106174, 43.143879>,  <34.536514, 37.833042, 42.960304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763889, 38.106174, 43.143879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473693, -0.184454, 0.861157,
		0.672679, -0.706905, 0.218604,
		0.568434, 0.682833, 0.458934,
		34.934418, 38.311024, 43.281559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782795, 37.513687, 43.516045>,  <34.536514, 37.833042, 42.960304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782795, 37.513687, 43.516045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739655, 37.908970, 43.559532>,  <34.713768, 38.146137, 43.585625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739655, 37.908970, 43.559532>,  <34.782795, 37.513687, 43.516045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739655, 37.908970, 43.559532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601405, -0.151934, 0.784365,
		0.791631, 0.019211, 0.610697,
		-0.107854, 0.988204, 0.108722,
		34.707298, 38.205433, 43.592148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030193, 37.705311, 44.181675>,  <34.782795, 37.513687, 43.516045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030193, 37.705311, 44.181675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.790363, 38.009048, 44.080559>,  <34.646465, 38.191292, 44.019890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.790363, 38.009048, 44.080559>,  <35.030193, 37.705311, 44.181675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790363, 38.009048, 44.080559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313571, 0.067720, 0.947147,
		0.736332, 0.647152, 0.197506,
		-0.599573, 0.759347, -0.252792,
		34.610493, 38.236851, 44.004723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079514, 38.215107, 44.741074>,  <35.030193, 37.705311, 44.181675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079514, 38.215107, 44.741074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732849, 38.310104, 44.565575>,  <34.524853, 38.367104, 44.460274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732849, 38.310104, 44.565575>,  <35.079514, 38.215107, 44.741074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732849, 38.310104, 44.565575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432506, 0.080700, 0.898012,
		0.248681, 0.968031, 0.032779,
		-0.866658, 0.237495, -0.438747,
		34.472851, 38.381351, 44.433949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778015, 38.695679, 45.165756>,  <35.079514, 38.215107, 44.741074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778015, 38.695679, 45.165756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453697, 38.595253, 44.954254>,  <34.259106, 38.534996, 44.827354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.453697, 38.595253, 44.954254>,  <34.778015, 38.695679, 45.165756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453697, 38.595253, 44.954254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580288, 0.226426, 0.782303,
		-0.076683, 0.941115, -0.329273,
		-0.810793, -0.251063, -0.528754,
		34.210461, 38.519936, 44.795628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421909, 39.365597, 45.075306>,  <34.778015, 38.695679, 45.165756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421909, 39.365597, 45.075306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.152012, 39.075310, 45.021564>,  <33.990074, 38.901138, 44.989319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.152012, 39.075310, 45.021564>,  <34.421909, 39.365597, 45.075306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152012, 39.075310, 45.021564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589218, 0.420051, 0.690202,
		-0.444459, 0.544872, -0.711035,
		-0.674743, -0.725721, -0.134353,
		33.949589, 38.857594, 44.981258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749874, 39.637119, 45.030174>,  <34.421909, 39.365597, 45.075306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749874, 39.637119, 45.030174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669621, 39.258053, 45.129513>,  <33.621468, 39.030613, 45.189117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.669621, 39.258053, 45.129513>,  <33.749874, 39.637119, 45.030174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669621, 39.258053, 45.129513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738583, 0.312867, 0.597167,
		-0.643615, -0.063615, -0.762701,
		-0.200635, -0.947664, 0.248351,
		33.609428, 38.973755, 45.204018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.771114, 39.459629, 44.930367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.925449, 39.184677, 45.176502>,  <33.018051, 39.019707, 45.324184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.925449, 39.184677, 45.176502>,  <32.771114, 39.459629, 44.930367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925449, 39.184677, 45.176502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536296, 0.375607, 0.755847,
		-0.750679, -0.621637, -0.223716,
		0.385833, -0.687377, 0.615342,
		33.041199, 38.978462, 45.361103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176254, 39.115025, 45.265232>,  <32.771114, 39.459629, 44.930367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176254, 39.115025, 45.265232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.482750, 39.056778, 45.515568>,  <32.666649, 39.021832, 45.665768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.482750, 39.056778, 45.515568>,  <32.176254, 39.115025, 45.265232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482750, 39.056778, 45.515568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571104, 0.292033, 0.767174,
		-0.294479, -0.945258, 0.140605,
		0.766239, -0.145617, 0.625838,
		32.712620, 39.013092, 45.703320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877083, 38.731705, 45.812317>,  <32.176254, 39.115025, 45.265232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877083, 38.731705, 45.812317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.212891, 38.885792, 45.965584>,  <32.414375, 38.978245, 46.057545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.212891, 38.885792, 45.965584>,  <31.877083, 38.731705, 45.812317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212891, 38.885792, 45.965584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438567, 0.064149, 0.896406,
		0.320733, -0.920593, 0.222798,
		0.839517, 0.385219, 0.383167,
		32.464745, 39.001358, 46.080532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951130, 38.361423, 46.376041>,  <31.877083, 38.731705, 45.812317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951130, 38.361423, 46.376041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.197392, 38.671993, 46.429913>,  <32.345150, 38.858334, 46.462234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.197392, 38.671993, 46.429913>,  <31.951130, 38.361423, 46.376041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197392, 38.671993, 46.429913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369409, 0.133396, 0.919643,
		0.696064, -0.615935, 0.368943,
		0.615656, 0.776421, 0.134680,
		32.382088, 38.904919, 46.470318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158215, 38.294044, 47.111858>,  <31.951130, 38.361423, 46.376041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158215, 38.294044, 47.111858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.229527, 38.681324, 47.041656>,  <32.272312, 38.913692, 46.999535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.229527, 38.681324, 47.041656>,  <32.158215, 38.294044, 47.111858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229527, 38.681324, 47.041656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160887, 0.204641, 0.965524,
		0.970738, -0.143897, 0.192254,
		0.178280, 0.968202, -0.175502,
		32.283009, 38.971786, 46.989006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522537, 38.617840, 47.627930>,  <32.158215, 38.294044, 47.111858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522537, 38.617840, 47.627930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367691, 38.939465, 47.447430>,  <32.274784, 39.132439, 47.339130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367691, 38.939465, 47.447430>,  <32.522537, 38.617840, 47.627930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367691, 38.939465, 47.447430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340111, 0.330365, 0.880445,
		0.857010, 0.494306, 0.145582,
		-0.387114, 0.804065, -0.451246,
		32.251556, 39.180683, 47.312057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837013, 39.219933, 47.978592>,  <32.522537, 38.617840, 47.627930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837013, 39.219933, 47.978592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.508217, 39.358944, 47.798122>,  <32.310940, 39.442352, 47.689838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.508217, 39.358944, 47.798122>,  <32.837013, 39.219933, 47.978592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508217, 39.358944, 47.798122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424776, 0.153567, 0.892178,
		0.379344, 0.925008, 0.021393,
		-0.821987, 0.347530, -0.451176,
		32.261620, 39.463203, 47.662769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654297, 39.855469, 48.335724>,  <32.837013, 39.219933, 47.978592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654297, 39.855469, 48.335724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319679, 39.735126, 48.152561>,  <32.118908, 39.662922, 48.042664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.319679, 39.735126, 48.152561>,  <32.654297, 39.855469, 48.335724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319679, 39.735126, 48.152561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533764, 0.258899, 0.805027,
		-0.123649, 0.917853, -0.377168,
		-0.836545, -0.300859, -0.457904,
		32.068714, 39.644867, 48.015190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207947, 40.311096, 48.577915>,  <32.654297, 39.855469, 48.335724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207947, 40.311096, 48.577915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.960722, 40.039932, 48.418701>,  <31.812387, 39.877232, 48.323174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.960722, 40.039932, 48.418701>,  <32.207947, 40.311096, 48.577915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960722, 40.039932, 48.418701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612451, 0.097805, 0.784435,
		-0.492849, 0.728606, -0.475639,
		-0.618064, -0.677914, -0.398032,
		31.775303, 39.836559, 48.299290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571424, 40.624424, 48.523434>,  <32.207947, 40.311096, 48.577915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571424, 40.624424, 48.523434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.533882, 40.226719, 48.543930>,  <31.511356, 39.988094, 48.556229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.533882, 40.226719, 48.543930>,  <31.571424, 40.624424, 48.523434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533882, 40.226719, 48.543930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542953, 0.094259, 0.834456,
		-0.834502, 0.050500, -0.548687,
		-0.093858, -0.994266, 0.051240,
		31.505724, 39.928440, 48.559303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866482, 40.438641, 48.587460>,  <31.571424, 40.624424, 48.523434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866482, 40.438641, 48.587460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057854, 40.129086, 48.753452>,  <31.172676, 39.943352, 48.853046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057854, 40.129086, 48.753452>,  <30.866482, 40.438641, 48.587460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057854, 40.129086, 48.753452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491542, 0.155587, 0.856843,
		-0.727663, -0.613919, -0.305959,
		0.478428, -0.773884, 0.414982,
		31.201382, 39.896919, 48.877945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353241, 40.136421, 48.971588>,  <30.866482, 40.438641, 48.587460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353241, 40.136421, 48.971588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.692947, 39.995403, 49.128792>,  <30.896770, 39.910793, 49.223114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.692947, 39.995403, 49.128792>,  <30.353241, 40.136421, 48.971588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692947, 39.995403, 49.128792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487161, -0.236322, 0.840729,
		-0.203515, -0.905465, -0.372446,
		0.849268, -0.352542, 0.393012,
		30.947727, 39.889641, 49.246696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224268, 39.517708, 49.437866>,  <30.353241, 40.136421, 48.971588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224268, 39.517708, 49.437866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.586346, 39.642006, 49.553841>,  <30.803593, 39.716587, 49.623425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.586346, 39.642006, 49.553841>,  <30.224268, 39.517708, 49.437866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586346, 39.642006, 49.553841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275262, -0.091107, 0.957043,
		0.323815, -0.946115, 0.003068,
		0.905193, 0.310750, 0.289931,
		30.857904, 39.735229, 49.640820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410852, 39.069519, 49.937477>,  <30.224268, 39.517708, 49.437866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410852, 39.069519, 49.937477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.674633, 39.361992, 50.007328>,  <30.832901, 39.537476, 50.049240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.674633, 39.361992, 50.007328>,  <30.410852, 39.069519, 49.937477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674633, 39.361992, 50.007328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073040, -0.168880, 0.982926,
		0.748191, -0.660947, -0.057963,
		0.659451, 0.731183, 0.174630,
		30.872469, 39.581348, 50.059715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962519, 38.855064, 50.349442>,  <30.410852, 39.069519, 49.937477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962519, 38.855064, 50.349442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951900, 39.247719, 50.425011>,  <30.945530, 39.483311, 50.470352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.951900, 39.247719, 50.425011>,  <30.962519, 38.855064, 50.349442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951900, 39.247719, 50.425011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045573, -0.189985, 0.980729,
		0.998608, 0.017423, 0.049779,
		-0.026545, 0.981632, 0.188927,
		30.943937, 39.542210, 50.481689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349966, 38.863922, 50.970612>,  <30.962519, 38.855064, 50.349442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349966, 38.863922, 50.970612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.154026, 39.212196, 50.952911>,  <31.036463, 39.421162, 50.942291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.154026, 39.212196, 50.952911>,  <31.349966, 38.863922, 50.970612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154026, 39.212196, 50.952911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232319, -0.081450, 0.969223,
		0.840283, 0.485053, 0.242175,
		-0.489850, 0.870683, -0.044246,
		31.007071, 39.473400, 50.939636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506273, 39.261742, 51.588669>,  <31.349966, 38.863922, 50.970612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506273, 39.261742, 51.588669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.192484, 39.470188, 51.454185>,  <31.004210, 39.595257, 51.373493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.192484, 39.470188, 51.454185>,  <31.506273, 39.261742, 51.588669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192484, 39.470188, 51.454185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373728, 0.035388, 0.926863,
		0.494903, 0.852750, 0.166995,
		-0.784473, 0.521118, -0.336210,
		30.957142, 39.626522, 51.353321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392654, 39.865311, 51.927994>,  <31.506273, 39.261742, 51.588669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392654, 39.865311, 51.927994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.032997, 39.747746, 51.798283>,  <30.817202, 39.677208, 51.720455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.032997, 39.747746, 51.798283>,  <31.392654, 39.865311, 51.927994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032997, 39.747746, 51.798283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346422, 0.025174, 0.937741,
		-0.267448, 0.955501, -0.124453,
		-0.899146, -0.293911, -0.324274,
		30.763254, 39.659573, 51.701000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987947, 40.136116, 52.403996>,  <31.392654, 39.865311, 51.927994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987947, 40.136116, 52.403996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742634, 39.861637, 52.247528>,  <30.595446, 39.696949, 52.153648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.742634, 39.861637, 52.247528>,  <30.987947, 40.136116, 52.403996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742634, 39.861637, 52.247528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535659, -0.002632, 0.844430,
		-0.580475, 0.727411, -0.365954,
		-0.613284, -0.686198, -0.391171,
		30.558649, 39.655777, 52.130177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367781, 40.329205, 52.594170>,  <30.987947, 40.136116, 52.403996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367781, 40.329205, 52.594170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.284563, 39.945774, 52.516346>,  <30.234632, 39.715717, 52.469654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.284563, 39.945774, 52.516346>,  <30.367781, 40.329205, 52.594170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284563, 39.945774, 52.516346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622573, -0.023640, 0.782205,
		-0.754401, 0.283858, -0.591864,
		-0.208044, -0.958575, -0.194556,
		30.222151, 39.658203, 52.457977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690718, 40.262447, 52.598526>,  <30.367781, 40.329205, 52.594170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690718, 40.262447, 52.598526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.821836, 39.889668, 52.660519>,  <29.900509, 39.666000, 52.697716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.821836, 39.889668, 52.660519>,  <29.690718, 40.262447, 52.598526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821836, 39.889668, 52.660519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678770, -0.118217, 0.724773,
		-0.657130, -0.342777, -0.671330,
		0.327798, -0.931949, 0.154983,
		29.920176, 39.610085, 52.707012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120306, 39.738495, 52.449265>,  <29.690718, 40.262447, 52.598526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120306, 39.738495, 52.449265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.400570, 39.613220, 52.705700>,  <29.568727, 39.538055, 52.859562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.400570, 39.613220, 52.705700>,  <29.120306, 39.738495, 52.449265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400570, 39.613220, 52.705700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689180, -0.064483, 0.721715,
		-0.184691, -0.947501, -0.261021,
		0.700657, -0.313184, 0.641089,
		29.610767, 39.519264, 52.898026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749018, 39.528053, 53.033512>,  <29.120306, 39.738495, 52.449265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749018, 39.528053, 53.033512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.111927, 39.493839, 53.198212>,  <29.329674, 39.473312, 53.297031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.111927, 39.493839, 53.198212>,  <28.749018, 39.528053, 53.033512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111927, 39.493839, 53.198212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417704, -0.069827, 0.905896,
		-0.048720, -0.993887, -0.099074,
		0.907276, -0.085519, 0.411748,
		29.384109, 39.468178, 53.321735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116974, 39.222786, 53.109642>,  <28.749018, 39.528053, 53.033512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116974, 39.222786, 53.109642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.366095, 38.915993, 53.171421>,  <28.515568, 38.731918, 53.208488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.366095, 38.915993, 53.171421>,  <28.116974, 39.222786, 53.109642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366095, 38.915993, 53.171421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455316, 0.194781, -0.868762,
		0.636242, 0.611390, 0.470530,
		0.622803, -0.766983, 0.154448,
		28.552935, 38.685898, 53.217754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124016, 38.540840, 53.066319>,  <28.116974, 39.222786, 53.109642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124016, 38.540840, 53.066319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.732912, 38.458061, 53.052708>,  <27.498249, 38.408394, 53.044540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.732912, 38.458061, 53.052708>,  <28.124016, 38.540840, 53.066319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732912, 38.458061, 53.052708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092042, -0.277625, -0.956270,
		0.188453, -0.938134, 0.290498,
		-0.977760, -0.206950, -0.034028,
		27.439585, 38.395977, 53.042500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022465, 37.827370, 52.968769>,  <28.124016, 38.540840, 53.066319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022465, 37.827370, 52.968769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.714342, 38.041054, 52.829487>,  <27.529469, 38.169266, 52.745918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.714342, 38.041054, 52.829487>,  <28.022465, 37.827370, 52.968769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714342, 38.041054, 52.829487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225266, -0.282879, -0.932328,
		-0.596561, -0.796615, 0.097563,
		-0.770305, 0.534213, -0.348205,
		27.483250, 38.201317, 52.725025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581484, 37.429462, 52.521744>,  <28.022465, 37.827370, 52.968769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581484, 37.429462, 52.521744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.498480, 37.801281, 52.399834>,  <27.448677, 38.024372, 52.326687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.498480, 37.801281, 52.399834>,  <27.581484, 37.429462, 52.521744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498480, 37.801281, 52.399834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213127, -0.261116, -0.941486,
		-0.954733, -0.260325, -0.143926,
		-0.207511, 0.929542, -0.304779,
		27.436226, 38.080143, 52.308399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282278, 37.383663, 51.977436>,  <27.581484, 37.429462, 52.521744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282278, 37.383663, 51.977436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.359774, 37.773407, 51.931683>,  <27.406271, 38.007256, 51.904232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.359774, 37.773407, 51.931683>,  <27.282278, 37.383663, 51.977436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359774, 37.773407, 51.931683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232923, -0.158939, -0.959419,
		-0.953001, 0.159237, -0.257745,
		0.193741, 0.974362, -0.114379,
		27.417896, 38.065716, 51.897369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986387, 37.503353, 51.381420>,  <27.282278, 37.383663, 51.977436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986387, 37.503353, 51.381420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.232634, 37.814266, 51.433338>,  <27.380383, 38.000813, 51.464489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.232634, 37.814266, 51.433338>,  <26.986387, 37.503353, 51.381420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232634, 37.814266, 51.433338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241616, -0.029394, -0.969926,
		-0.750091, 0.628465, -0.205900,
		0.615617, 0.777282, 0.129799,
		27.417318, 38.047451, 51.472279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916439, 37.964397, 50.758759>,  <26.986387, 37.503353, 51.381420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916439, 37.964397, 50.758759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.273554, 38.041042, 50.921837>,  <27.487822, 38.087029, 51.019684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.273554, 38.041042, 50.921837>,  <26.916439, 37.964397, 50.758759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273554, 38.041042, 50.921837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403134, 0.064067, -0.912896,
		-0.201041, 0.979378, -0.020046,
		0.892785, 0.191611, 0.407700,
		27.541389, 38.098526, 51.044147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239243, 38.504517, 50.300556>,  <26.916439, 37.964397, 50.758759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239243, 38.504517, 50.300556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.514277, 38.295685, 50.502415>,  <27.679296, 38.170387, 50.623528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.514277, 38.295685, 50.502415>,  <27.239243, 38.504517, 50.300556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514277, 38.295685, 50.502415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543486, -0.090842, -0.834488,
		0.481509, 0.848048, 0.221279,
		0.687584, -0.522076, 0.504643,
		27.720552, 38.139061, 50.653809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771631, 38.942715, 50.248966>,  <27.239243, 38.504517, 50.300556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771631, 38.942715, 50.248966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892103, 38.566032, 50.308933>,  <27.964386, 38.340023, 50.344913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.892103, 38.566032, 50.308933>,  <27.771631, 38.942715, 50.248966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892103, 38.566032, 50.308933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526469, 0.033135, -0.849549,
		0.795060, 0.334794, 0.505760,
		0.301182, -0.941709, 0.149914,
		27.982458, 38.283520, 50.353909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540073, 39.015018, 50.234932>,  <27.771631, 38.942715, 50.248966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540073, 39.015018, 50.234932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.475536, 38.624405, 50.177872>,  <28.436813, 38.390038, 50.143635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.475536, 38.624405, 50.177872>,  <28.540073, 39.015018, 50.234932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475536, 38.624405, 50.177872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626984, 0.010200, -0.778965,
		0.762141, -0.215122, 0.610625,
		-0.161344, -0.976534, -0.142652,
		28.427134, 38.331444, 50.135075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166536, 38.642933, 50.288563>,  <28.540073, 39.015018, 50.234932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166536, 38.642933, 50.288563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.924870, 38.435413, 50.046627>,  <28.779869, 38.310902, 49.901466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.924870, 38.435413, 50.046627>,  <29.166536, 38.642933, 50.288563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924870, 38.435413, 50.046627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681203, 0.057566, -0.729828,
		0.413452, -0.852956, 0.318628,
		-0.604169, -0.518799, -0.604837,
		28.743618, 38.279774, 49.865177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608461, 38.242844, 49.920036>,  <29.166536, 38.642933, 50.288563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608461, 38.242844, 49.920036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.274372, 38.264427, 49.701134>,  <29.073919, 38.277378, 49.569794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.274372, 38.264427, 49.701134>,  <29.608461, 38.242844, 49.920036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274372, 38.264427, 49.701134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549409, 0.124386, -0.826243,
		0.023489, -0.990766, -0.133535,
		-0.835223, 0.053958, -0.547258,
		29.023806, 38.280617, 49.536957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864960, 38.126793, 49.309708>,  <29.608461, 38.242844, 49.920036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864960, 38.126793, 49.309708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.508785, 38.271084, 49.198715>,  <29.295080, 38.357658, 49.132118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.508785, 38.271084, 49.198715>,  <29.864960, 38.126793, 49.309708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508785, 38.271084, 49.198715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368715, 0.214399, -0.904479,
		-0.266778, -0.907694, -0.323915,
		-0.890437, 0.360727, -0.277484,
		29.241653, 38.379303, 49.115471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587500, 37.679367, 48.810654>,  <29.864960, 38.126793, 49.309708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587500, 37.679367, 48.810654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.402172, 38.029831, 48.757481>,  <29.290976, 38.240108, 48.725578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.402172, 38.029831, 48.757481>,  <29.587500, 37.679367, 48.810654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402172, 38.029831, 48.757481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277156, 0.000786, -0.960825,
		-0.841735, -0.482013, -0.243198,
		-0.463321, 0.876164, -0.132931,
		29.263176, 38.292679, 48.717602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246456, 37.602283, 48.161983>,  <29.587500, 37.679367, 48.810654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246456, 37.602283, 48.161983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259884, 37.995529, 48.233932>,  <29.267941, 38.231476, 48.277103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.259884, 37.995529, 48.233932>,  <29.246456, 37.602283, 48.161983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259884, 37.995529, 48.233932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316861, 0.160225, -0.934841,
		-0.947878, 0.088377, -0.306133,
		0.033568, 0.983116, 0.179877,
		29.269955, 38.290462, 48.287895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859835, 37.994698, 47.608341>,  <29.246456, 37.602283, 48.161983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859835, 37.994698, 47.608341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.131069, 38.243729, 47.764599>,  <29.293810, 38.393147, 47.858353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.131069, 38.243729, 47.764599>,  <28.859835, 37.994698, 47.608341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131069, 38.243729, 47.764599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170861, 0.383410, -0.907636,
		-0.714847, 0.682200, 0.153611,
		0.678085, 0.622575, 0.390641,
		29.334496, 38.430500, 47.881790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756989, 38.636726, 47.272072>,  <28.859835, 37.994698, 47.608341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756989, 38.636726, 47.272072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.114359, 38.709721, 47.436260>,  <29.328781, 38.753517, 47.534775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.114359, 38.709721, 47.436260>,  <28.756989, 38.636726, 47.272072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114359, 38.709721, 47.436260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328432, 0.358050, -0.874032,
		-0.306468, 0.915696, 0.259958,
		0.893426, 0.182485, 0.410475,
		29.382387, 38.764465, 47.559402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981291, 39.227612, 46.997398>,  <28.756989, 38.636726, 47.272072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981291, 39.227612, 46.997398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.320166, 39.064171, 47.133236>,  <29.523491, 38.966106, 47.214737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.320166, 39.064171, 47.133236>,  <28.981291, 39.227612, 46.997398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320166, 39.064171, 47.133236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469641, 0.277059, -0.838258,
		0.248425, 0.869646, 0.426615,
		0.847185, -0.408600, 0.339593,
		29.574322, 38.941589, 47.235115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349585, 39.780529, 46.960892>,  <28.981291, 39.227612, 46.997398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349585, 39.780529, 46.960892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587679, 39.459469, 46.976139>,  <29.730536, 39.266834, 46.985287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.587679, 39.459469, 46.976139>,  <29.349585, 39.780529, 46.960892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587679, 39.459469, 46.976139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372605, 0.233667, -0.898090,
		0.711940, 0.548780, 0.438157,
		0.595236, -0.802646, 0.038122,
		29.766251, 39.218674, 46.987576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913343, 40.075768, 46.750763>,  <29.349585, 39.780529, 46.960892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913343, 40.075768, 46.750763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.963833, 39.681595, 46.705177>,  <29.994127, 39.445091, 46.677826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.963833, 39.681595, 46.705177>,  <29.913343, 40.075768, 46.750763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963833, 39.681595, 46.705177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394616, 0.155282, -0.905630,
		0.910135, 0.069339, 0.408468,
		0.126224, -0.985434, -0.113965,
		30.001699, 39.385963, 46.670986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562660, 40.051281, 46.589527>,  <29.913343, 40.075768, 46.750763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562660, 40.051281, 46.589527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346699, 39.753963, 46.431530>,  <30.217123, 39.575573, 46.336731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346699, 39.753963, 46.431530>,  <30.562660, 40.051281, 46.589527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346699, 39.753963, 46.431530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509766, 0.084682, -0.856135,
		0.669810, -0.663583, 0.333186,
		-0.539902, -0.743295, -0.394992,
		30.184729, 39.530975, 46.313034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.275799, 38.288525, 30.568327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.920616, 38.139984, 30.459785>,  <45.707508, 38.050861, 30.394661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.920616, 38.139984, 30.459785>,  <46.275799, 38.288525, 30.568327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920616, 38.139984, 30.459785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216942, -0.182057, 0.959058,
		-0.405546, 0.910470, 0.081098,
		-0.887957, -0.371349, -0.271352,
		45.654228, 38.028580, 30.378380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859165, 38.392540, 31.113438>,  <46.275799, 38.288525, 30.568327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859165, 38.392540, 31.113438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.670052, 38.105331, 30.909119>,  <45.556583, 37.933006, 30.786528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.670052, 38.105331, 30.909119>,  <45.859165, 38.392540, 31.113438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670052, 38.105331, 30.909119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446100, -0.304869, 0.841458,
		-0.759913, 0.625696, -0.176173,
		-0.472787, -0.718025, -0.510796,
		45.528217, 37.889923, 30.755880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186687, 38.371719, 31.429180>,  <45.859165, 38.392540, 31.113438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186687, 38.371719, 31.429180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192242, 38.026894, 31.226534>,  <45.195572, 37.820000, 31.104946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192242, 38.026894, 31.226534>,  <45.186687, 38.371719, 31.429180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192242, 38.026894, 31.226534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494534, -0.446277, 0.745837,
		-0.869048, 0.240184, -0.432513,
		0.013882, -0.862060, -0.506615,
		45.196407, 37.768276, 31.074549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505207, 38.142071, 31.606255>,  <45.186687, 38.371719, 31.429180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505207, 38.142071, 31.606255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.747520, 37.843430, 31.496258>,  <44.892906, 37.664246, 31.430260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.747520, 37.843430, 31.496258>,  <44.505207, 38.142071, 31.606255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747520, 37.843430, 31.496258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333273, -0.551955, 0.764379,
		-0.722469, -0.371397, -0.583184,
		0.605779, -0.746599, -0.274994,
		44.929253, 37.619450, 31.413759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063148, 37.561001, 31.485233>,  <44.505207, 38.142071, 31.606255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063148, 37.561001, 31.485233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.430313, 37.441631, 31.589836>,  <44.650612, 37.370010, 31.652597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.430313, 37.441631, 31.589836>,  <44.063148, 37.561001, 31.485233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430313, 37.441631, 31.589836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391892, -0.578606, 0.715287,
		-0.062146, -0.759052, -0.648057,
		0.917910, -0.298420, 0.261508,
		44.705685, 37.352104, 31.668289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847401, 36.958260, 31.782120>,  <44.063148, 37.561001, 31.485233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847401, 36.958260, 31.782120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231617, 37.029037, 31.867954>,  <44.462147, 37.071503, 31.919455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231617, 37.029037, 31.867954>,  <43.847401, 36.958260, 31.782120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231617, 37.029037, 31.867954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101317, -0.495911, 0.862442,
		0.259022, -0.850154, -0.458416,
		0.960543, 0.176946, 0.214587,
		44.519779, 37.082123, 31.932331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203415, 36.262951, 31.968370>,  <43.847401, 36.958260, 31.782120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203415, 36.262951, 31.968370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.433247, 36.540314, 32.142288>,  <44.571144, 36.706730, 32.246639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.433247, 36.540314, 32.142288>,  <44.203415, 36.262951, 31.968370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433247, 36.540314, 32.142288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320249, -0.298410, 0.899106,
		0.753193, -0.655851, 0.050603,
		0.574579, 0.693406, 0.434796,
		44.605621, 36.748337, 32.272728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501698, 35.859291, 32.476746>,  <44.203415, 36.262951, 31.968370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501698, 35.859291, 32.476746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543972, 36.239590, 32.593300>,  <44.569336, 36.467770, 32.663231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543972, 36.239590, 32.593300>,  <44.501698, 35.859291, 32.476746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543972, 36.239590, 32.593300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405974, -0.226238, 0.885438,
		0.907753, -0.211874, 0.362069,
		0.105688, 0.950750, 0.291384,
		44.575680, 36.524815, 32.680714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960339, 35.827271, 33.101032>,  <44.501698, 35.859291, 32.476746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960339, 35.827271, 33.101032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760441, 36.173321, 33.118027>,  <44.640503, 36.380951, 33.128223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.760441, 36.173321, 33.118027>,  <44.960339, 35.827271, 33.101032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.760441, 36.173321, 33.118027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335222, -0.238404, 0.911476,
		0.798675, 0.441264, 0.409152,
		-0.499745, 0.865130, 0.042486,
		44.610516, 36.432861, 33.130772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202854, 36.090603, 33.779316>,  <44.960339, 35.827271, 33.101032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202854, 36.090603, 33.779316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.851219, 36.259300, 33.690464>,  <44.640240, 36.360519, 33.637154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.851219, 36.259300, 33.690464>,  <45.202854, 36.090603, 33.779316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851219, 36.259300, 33.690464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204673, 0.086893, 0.974966,
		0.430488, 0.902542, 0.009934,
		-0.879084, 0.421744, -0.222132,
		44.587494, 36.385822, 33.623825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955193, 36.509361, 34.394695>,  <45.202854, 36.090603, 33.779316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955193, 36.509361, 34.394695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.615505, 36.464016, 34.188404>,  <44.411694, 36.436810, 34.064629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.615505, 36.464016, 34.188404>,  <44.955193, 36.509361, 34.394695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615505, 36.464016, 34.188404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505922, -0.105053, 0.856158,
		-0.151234, 0.987985, 0.031861,
		-0.849218, -0.113361, -0.515731,
		44.360741, 36.430008, 34.033684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425125, 36.929527, 34.764992>,  <44.955193, 36.509361, 34.394695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425125, 36.929527, 34.764992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.205471, 36.668350, 34.556332>,  <44.073677, 36.511646, 34.431137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.205471, 36.668350, 34.556332>,  <44.425125, 36.929527, 34.764992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205471, 36.668350, 34.556332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513157, -0.229229, 0.827118,
		-0.659636, 0.721888, -0.209184,
		-0.549136, -0.652941, -0.521650,
		44.040730, 36.472469, 34.399837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778851, 37.227013, 34.719082>,  <44.425125, 36.929527, 34.764992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778851, 37.227013, 34.719082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737415, 36.832207, 34.669971>,  <43.712555, 36.595325, 34.640503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.737415, 36.832207, 34.669971>,  <43.778851, 37.227013, 34.719082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737415, 36.832207, 34.669971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632636, -0.029866, 0.773873,
		-0.767489, 0.157841, -0.621326,
		-0.103592, -0.987013, -0.122778,
		43.706337, 36.536102, 34.633137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072144, 37.100807, 34.560600>,  <43.778851, 37.227013, 34.719082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072144, 37.100807, 34.560600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209568, 36.747936, 34.689430>,  <43.292023, 36.536213, 34.766727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.209568, 36.747936, 34.689430>,  <43.072144, 37.100807, 34.560600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209568, 36.747936, 34.689430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731152, -0.036021, 0.681262,
		-0.589391, -0.469544, -0.657379,
		0.343562, -0.882174, 0.322078,
		43.312637, 36.483284, 34.786053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561924, 36.715946, 34.954845>,  <43.072144, 37.100807, 34.560600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561924, 36.715946, 34.954845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.857159, 36.468712, 35.063061>,  <43.034298, 36.320370, 35.127991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.857159, 36.468712, 35.063061>,  <42.561924, 36.715946, 34.954845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857159, 36.468712, 35.063061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520133, -0.265845, 0.811657,
		-0.429756, -0.739790, -0.517707,
		0.738086, -0.618091, 0.270541,
		43.078583, 36.283283, 35.144222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240299, 36.044167, 35.156292>,  <42.561924, 36.715946, 34.954845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240299, 36.044167, 35.156292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597710, 36.102654, 35.326107>,  <42.812157, 36.137745, 35.427994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597710, 36.102654, 35.326107>,  <42.240299, 36.044167, 35.156292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597710, 36.102654, 35.326107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402141, -0.159975, 0.901493,
		0.199727, -0.976232, -0.084142,
		0.893528, 0.146215, 0.424534,
		42.865768, 36.146519, 35.453468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350834, 35.513638, 35.611752>,  <42.240299, 36.044167, 35.156292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350834, 35.513638, 35.611752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606102, 35.797863, 35.730293>,  <42.759262, 35.968399, 35.801418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606102, 35.797863, 35.730293>,  <42.350834, 35.513638, 35.611752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606102, 35.797863, 35.730293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283973, -0.140543, 0.948476,
		0.715608, -0.689449, 0.112091,
		0.638172, 0.710568, 0.296359,
		42.797554, 36.011032, 35.819202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.677425, 35.187500, 36.162613>,  <42.350834, 35.513638, 35.611752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.677425, 35.187500, 36.162613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.754799, 35.577663, 36.204884>,  <42.801224, 35.811760, 36.230244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.754799, 35.577663, 36.204884>,  <42.677425, 35.187500, 36.162613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.754799, 35.577663, 36.204884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044443, -0.098885, 0.994106,
		0.980107, -0.196987, 0.024223,
		0.193431, 0.975407, 0.105673,
		42.812828, 35.870285, 36.236584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209412, 35.291553, 36.820015>,  <42.677425, 35.187500, 36.162613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209412, 35.291553, 36.820015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.042187, 35.649807, 36.759266>,  <42.941853, 35.864758, 36.722816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.042187, 35.649807, 36.759266>,  <43.209412, 35.291553, 36.820015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042187, 35.649807, 36.759266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152791, 0.095479, 0.983636,
		0.895479, 0.434422, 0.096930,
		-0.418058, 0.895635, -0.151875,
		42.916771, 35.918499, 36.713703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310493, 35.739281, 37.418140>,  <43.209412, 35.291553, 36.820015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310493, 35.739281, 37.418140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001038, 35.940125, 37.263546>,  <42.815365, 36.060631, 37.170792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001038, 35.940125, 37.263546>,  <43.310493, 35.739281, 37.418140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001038, 35.940125, 37.263546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416834, 0.056083, 0.907251,
		0.477216, 0.862983, 0.165909,
		-0.773637, 0.502111, -0.386484,
		42.768948, 36.090759, 37.147602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260757, 36.420090, 37.754631>,  <43.310493, 35.739281, 37.418140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260757, 36.420090, 37.754631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.907951, 36.309570, 37.601944>,  <42.696266, 36.243259, 37.510330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.907951, 36.309570, 37.601944>,  <43.260757, 36.420090, 37.754631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907951, 36.309570, 37.601944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392806, -0.016359, 0.919476,
		-0.260294, 0.960933, -0.094102,
		-0.882015, -0.276298, -0.381718,
		42.643349, 36.226681, 37.487427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020741, 36.193619, 37.803570>,  <43.260757, 36.420090, 37.754631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020741, 36.193619, 37.803570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335350, 36.007843, 37.966385>,  <44.524117, 35.896378, 38.064075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335350, 36.007843, 37.966385>,  <44.020741, 36.193619, 37.803570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335350, 36.007843, 37.966385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578145, 0.785453, -0.220935,
		-0.217102, 0.409099, 0.886287,
		0.786521, -0.464437, 0.407042,
		44.571308, 35.868511, 38.088497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.285835, 36.674522, 38.354858>,  <44.020741, 36.193619, 37.803570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.285835, 36.674522, 38.354858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.521511, 36.415562, 38.161480>,  <44.662918, 36.260185, 38.045452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.521511, 36.415562, 38.161480>,  <44.285835, 36.674522, 38.354858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521511, 36.415562, 38.161480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534983, 0.760969, -0.367042,
		0.605512, -0.042377, 0.794707,
		0.589193, -0.647403, -0.483447,
		44.698269, 36.221340, 38.016445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917027, 36.946823, 38.521740>,  <44.285835, 36.674522, 38.354858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917027, 36.946823, 38.521740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.963718, 36.700771, 38.209843>,  <44.991734, 36.553143, 38.022705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.963718, 36.700771, 38.209843>,  <44.917027, 36.946823, 38.521740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963718, 36.700771, 38.209843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565204, 0.686714, -0.457130,
		0.816651, -0.387352, 0.427831,
		0.116727, -0.615128, -0.779739,
		44.998737, 36.516232, 37.975922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657639, 36.871986, 38.362675>,  <44.917027, 36.946823, 38.521740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657639, 36.871986, 38.362675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.423813, 36.794537, 38.047512>,  <45.283520, 36.748066, 37.858414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.423813, 36.794537, 38.047512>,  <45.657639, 36.871986, 38.362675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423813, 36.794537, 38.047512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538407, 0.633903, -0.555234,
		0.606962, -0.748784, -0.266308,
		-0.584564, -0.193624, -0.787905,
		45.248444, 36.736446, 37.811138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.272472, 36.735233, 37.776913>,  <45.657639, 36.871986, 38.362675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.272472, 36.735233, 37.776913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.929089, 36.766083, 37.574089>,  <45.723061, 36.784592, 37.452396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.929089, 36.766083, 37.574089>,  <46.272472, 36.735233, 37.776913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.929089, 36.766083, 37.574089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482206, 0.458177, -0.746694,
		0.174736, -0.885509, -0.430512,
		-0.858455, 0.077121, -0.507058,
		45.671551, 36.789219, 37.421970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.326851, 36.522652, 37.106922>,  <46.272472, 36.735233, 37.776913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.326851, 36.522652, 37.106922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998974, 36.748878, 37.070637>,  <45.802246, 36.884617, 37.048866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.998974, 36.748878, 37.070637>,  <46.326851, 36.522652, 37.106922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998974, 36.748878, 37.070637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391149, 0.436985, -0.809967,
		-0.418450, -0.699411, -0.579416,
		-0.819696, 0.565569, -0.090718,
		45.753063, 36.918549, 37.043423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194366, 36.465984, 36.378288>,  <46.326851, 36.522652, 37.106922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194366, 36.465984, 36.378288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.993134, 36.785103, 36.511208>,  <45.872395, 36.976574, 36.590958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.993134, 36.785103, 36.511208>,  <46.194366, 36.465984, 36.378288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993134, 36.785103, 36.511208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107103, 0.439086, -0.892038,
		-0.857574, -0.413182, -0.306345,
		-0.503086, 0.797799, 0.332296,
		45.842209, 37.024445, 36.610897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619850, 36.616985, 35.832729>,  <46.194366, 36.465984, 36.378288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619850, 36.616985, 35.832729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.735382, 36.938820, 36.040276>,  <45.804703, 37.131920, 36.164803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.735382, 36.938820, 36.040276>,  <45.619850, 36.616985, 35.832729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.735382, 36.938820, 36.040276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284841, 0.445203, -0.848917,
		-0.914025, 0.392988, -0.100590,
		0.288832, 0.804584, 0.518866,
		45.822033, 37.180195, 36.195934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490768, 37.142700, 35.344601>,  <45.619850, 36.616985, 35.832729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490768, 37.142700, 35.344601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.710106, 37.324833, 35.625172>,  <45.841705, 37.434113, 35.793514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.710106, 37.324833, 35.625172>,  <45.490768, 37.142700, 35.344601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710106, 37.324833, 35.625172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598056, 0.372749, -0.709498,
		-0.584511, 0.808538, -0.067920,
		0.548339, 0.455329, 0.701427,
		45.874607, 37.461433, 35.835598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389423, 37.778286, 35.247540>,  <45.490768, 37.142700, 35.344601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389423, 37.778286, 35.247540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.750622, 37.758495, 35.418251>,  <45.967342, 37.746620, 35.520679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.750622, 37.758495, 35.418251>,  <45.389423, 37.778286, 35.247540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750622, 37.758495, 35.418251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360091, 0.629000, -0.688980,
		-0.234360, 0.775830, 0.585802,
		0.903001, -0.049473, 0.426781,
		46.021523, 37.743652, 35.546284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619011, 38.495464, 35.170223>,  <45.389423, 37.778286, 35.247540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619011, 38.495464, 35.170223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.946873, 38.281326, 35.251789>,  <46.143589, 38.152843, 35.300728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.946873, 38.281326, 35.251789>,  <45.619011, 38.495464, 35.170223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.946873, 38.281326, 35.251789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515441, 0.533849, -0.670318,
		0.249990, 0.654532, 0.713507,
		0.819650, -0.535343, 0.203916,
		46.192768, 38.120724, 35.312965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218483, 38.984089, 35.227634>,  <45.619011, 38.495464, 35.170223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218483, 38.984089, 35.227634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.345955, 38.619377, 35.124016>,  <46.422440, 38.400551, 35.061844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.345955, 38.619377, 35.124016>,  <46.218483, 38.984089, 35.227634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345955, 38.619377, 35.124016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477090, 0.390446, -0.787361,
		0.819041, 0.127329, 0.559427,
		0.318680, -0.911778, -0.259044,
		46.441559, 38.345844, 35.046303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915745, 39.148430, 34.987549>,  <46.218483, 38.984089, 35.227634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915745, 39.148430, 34.987549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.840847, 38.783844, 34.841026>,  <46.795910, 38.565094, 34.753113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.840847, 38.783844, 34.841026>,  <46.915745, 39.148430, 34.987549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.840847, 38.783844, 34.841026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461510, 0.247556, -0.851895,
		0.867150, -0.328562, 0.374296,
		-0.187241, -0.911462, -0.366303,
		46.784676, 38.510406, 34.731136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.581165, 38.910419, 34.953320>,  <46.915745, 39.148430, 34.987549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.581165, 38.910419, 34.953320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.312134, 38.761784, 34.697330>,  <47.150715, 38.672604, 34.543736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.312134, 38.761784, 34.697330>,  <47.581165, 38.910419, 34.953320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.312134, 38.761784, 34.697330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533718, 0.355487, -0.767316,
		0.512626, -0.857644, -0.040770,
		-0.672578, -0.371586, -0.639971,
		47.110359, 38.650307, 34.505341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.999512, 38.806423, 34.324032>,  <47.581165, 38.910419, 34.953320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.999512, 38.806423, 34.324032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.629265, 38.756809, 34.181007>,  <47.407116, 38.727039, 34.095192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.629265, 38.756809, 34.181007>,  <47.999512, 38.806423, 34.324032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.629265, 38.756809, 34.181007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286377, 0.388138, -0.875978,
		0.247439, -0.913216, -0.323745,
		-0.925614, -0.124038, -0.357564,
		47.351582, 38.719597, 34.073738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.058842, 38.492489, 33.717602>,  <47.999512, 38.806423, 34.324032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.058842, 38.492489, 33.717602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.705338, 38.678898, 33.700665>,  <47.493237, 38.790741, 33.690502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.705338, 38.678898, 33.700665>,  <48.058842, 38.492489, 33.717602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.705338, 38.678898, 33.700665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195994, 0.286474, -0.937827,
		-0.424916, -0.837113, -0.344511,
		-0.883761, 0.466020, -0.042342,
		47.440208, 38.818703, 33.687962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.862270, 38.419403, 33.066849>,  <48.058842, 38.492489, 33.717602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.862270, 38.419403, 33.066849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.612633, 38.709785, 33.182438>,  <47.462852, 38.884014, 33.251793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.612633, 38.709785, 33.182438>,  <47.862270, 38.419403, 33.066849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.612633, 38.709785, 33.182438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161689, 0.481822, -0.861223,
		-0.764440, -0.490757, -0.418079,
		-0.624090, 0.725952, 0.288974,
		47.425407, 38.927570, 33.269131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.439816, 38.470993, 32.505833>,  <47.862270, 38.419403, 33.066849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.439816, 38.470993, 32.505833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.379234, 38.817196, 32.696812>,  <47.342884, 39.024918, 32.811398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.379234, 38.817196, 32.696812>,  <47.439816, 38.470993, 32.505833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.379234, 38.817196, 32.696812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054701, 0.474939, -0.878317,
		-0.986949, -0.159144, -0.024588,
		-0.151456, 0.865510, 0.477446,
		47.333797, 39.076847, 32.840046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764423, 38.698235, 32.261173>,  <47.439816, 38.470993, 32.505833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764423, 38.698235, 32.261173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.950096, 39.018723, 32.412220>,  <47.061501, 39.211014, 32.502846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.950096, 39.018723, 32.412220>,  <46.764423, 38.698235, 32.261173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.950096, 39.018723, 32.412220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268754, 0.533628, -0.801880,
		-0.843985, 0.270730, 0.463029,
		0.464178, 0.801216, 0.377614,
		47.089348, 39.259087, 32.525505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337734, 39.188015, 32.040852>,  <46.764423, 38.698235, 32.261173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337734, 39.188015, 32.040852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.700848, 39.339169, 32.113667>,  <46.918716, 39.429859, 32.157356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.700848, 39.339169, 32.113667>,  <46.337734, 39.188015, 32.040852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700848, 39.339169, 32.113667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043818, 0.517048, -0.854834,
		-0.417149, 0.768026, 0.485924,
		0.907781, 0.377885, 0.182033,
		46.973183, 39.452534, 32.168278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231209, 39.769695, 31.769537>,  <46.337734, 39.188015, 32.040852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.231209, 39.769695, 31.769537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.624874, 39.699791, 31.781397>,  <46.861073, 39.657848, 31.788513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.624874, 39.699791, 31.781397>,  <46.231209, 39.769695, 31.769537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.624874, 39.699791, 31.781397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101274, 0.417102, -0.903200,
		0.145474, 0.891900, 0.428195,
		0.984165, -0.174757, 0.029649,
		46.920124, 39.647366, 31.790291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.663734, 39.239986, 43.880501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447533, 38.955318, 43.700996>,  <35.317814, 38.784519, 43.593292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447533, 38.955318, 43.700996>,  <35.663734, 39.239986, 43.880501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447533, 38.955318, 43.700996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670884, -0.042687, -0.740332,
		0.507714, -0.701219, 0.500519,
		-0.540500, -0.711667, -0.448764,
		35.285381, 38.741817, 43.566368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110596, 38.730362, 43.706978>,  <35.663734, 39.239986, 43.880501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110596, 38.730362, 43.706978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792007, 38.655529, 43.476974>,  <35.600853, 38.610630, 43.338974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792007, 38.655529, 43.476974>,  <36.110596, 38.730362, 43.706978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792007, 38.655529, 43.476974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604623, -0.259230, -0.753147,
		-0.008160, -0.947523, 0.319582,
		-0.796470, -0.187081, -0.575010,
		35.553066, 38.599403, 43.304470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223896, 38.065510, 43.332096>,  <36.110596, 38.730362, 43.706978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223896, 38.065510, 43.332096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936649, 38.229912, 43.107460>,  <35.764301, 38.328552, 42.972679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936649, 38.229912, 43.107460>,  <36.223896, 38.065510, 43.332096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936649, 38.229912, 43.107460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520879, -0.217725, -0.825397,
		-0.461516, -0.885251, -0.057733,
		-0.718114, 0.411006, -0.561593,
		35.721214, 38.353214, 42.938984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199661, 37.653179, 42.643822>,  <36.223896, 38.065510, 43.332096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199661, 37.653179, 42.643822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012592, 38.003876, 42.598896>,  <35.900352, 38.214294, 42.571941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012592, 38.003876, 42.598896>,  <36.199661, 37.653179, 42.643822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012592, 38.003876, 42.598896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341735, 0.062154, -0.937739,
		-0.815170, -0.476934, -0.328680,
		-0.467669, 0.876738, -0.112319,
		35.872292, 38.266899, 42.565201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881924, 37.603077, 41.984089>,  <36.199661, 37.653179, 42.643822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881924, 37.603077, 41.984089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926056, 37.993500, 42.059067>,  <35.952534, 38.227753, 42.104053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926056, 37.993500, 42.059067>,  <35.881924, 37.603077, 41.984089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926056, 37.993500, 42.059067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462290, 0.116558, -0.879035,
		-0.879838, 0.183640, -0.438362,
		0.110331, 0.976059, 0.187447,
		35.959156, 38.286316, 42.115299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445801, 38.032085, 41.572769>,  <35.881924, 37.603077, 41.984089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445801, 38.032085, 41.572769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765438, 38.253712, 41.666111>,  <35.957222, 38.386688, 41.722118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765438, 38.253712, 41.666111>,  <35.445801, 38.032085, 41.572769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765438, 38.253712, 41.666111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187798, 0.138685, -0.972368,
		-0.571118, 0.820840, 0.006771,
		0.799097, 0.554065, 0.233357,
		36.005169, 38.419930, 41.736118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518726, 38.401237, 40.980293>,  <35.445801, 38.032085, 41.572769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518726, 38.401237, 40.980293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863426, 38.489628, 41.162968>,  <36.070248, 38.542664, 41.272572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863426, 38.489628, 41.162968>,  <35.518726, 38.401237, 40.980293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863426, 38.489628, 41.162968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457014, 0.052749, -0.887894,
		-0.220291, 0.973852, -0.055532,
		0.861748, 0.220974, 0.456684,
		36.121952, 38.555920, 41.299973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768131, 38.844707, 40.480465>,  <35.518726, 38.401237, 40.980293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768131, 38.844707, 40.480465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086128, 38.729034, 40.693768>,  <36.276924, 38.659630, 40.821751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086128, 38.729034, 40.693768>,  <35.768131, 38.844707, 40.480465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086128, 38.729034, 40.693768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537868, -0.070464, -0.840079,
		0.280514, 0.954676, 0.099526,
		0.794990, -0.289186, 0.533256,
		36.324627, 38.642277, 40.853745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232254, 39.161606, 40.205814>,  <35.768131, 38.844707, 40.480465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232254, 39.161606, 40.205814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410275, 38.852203, 40.386307>,  <36.517086, 38.666561, 40.494602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410275, 38.852203, 40.386307>,  <36.232254, 39.161606, 40.205814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410275, 38.852203, 40.386307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553043, -0.158901, -0.817860,
		0.704323, 0.613543, 0.357063,
		0.445054, -0.773508, 0.451233,
		36.543789, 38.620152, 40.521675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952164, 39.309780, 40.180923>,  <36.232254, 39.161606, 40.205814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952164, 39.309780, 40.180923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941849, 38.912918, 40.229855>,  <36.935658, 38.674801, 40.259212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941849, 38.912918, 40.229855>,  <36.952164, 39.309780, 40.180923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941849, 38.912918, 40.229855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385688, -0.122771, -0.914425,
		0.922269, 0.023599, 0.385828,
		-0.025789, -0.992155, 0.122330,
		36.934113, 38.615273, 40.266552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527020, 39.062782, 39.865128>,  <36.952164, 39.309780, 40.180923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527020, 39.062782, 39.865128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319813, 38.722591, 39.901646>,  <37.195488, 38.518475, 39.923557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319813, 38.722591, 39.901646>,  <37.527020, 39.062782, 39.865128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319813, 38.722591, 39.901646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198011, -0.223069, -0.954480,
		0.832133, -0.476363, 0.283959,
		-0.518021, -0.850482, 0.091298,
		37.164406, 38.467445, 39.929035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086349, 38.493118, 39.806114>,  <37.527020, 39.062782, 39.865128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086349, 38.493118, 39.806114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718269, 38.400993, 39.679504>,  <37.497421, 38.345718, 39.603539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718269, 38.400993, 39.679504>,  <38.086349, 38.493118, 39.806114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718269, 38.400993, 39.679504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350799, -0.126391, -0.927882,
		0.173699, -0.964873, 0.197099,
		-0.920200, -0.230315, -0.316523,
		37.442211, 38.331898, 39.584549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311565, 37.756649, 39.972576>,  <38.086349, 38.493118, 39.806114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311565, 37.756649, 39.972576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389610, 37.673553, 39.589165>,  <38.436440, 37.623695, 39.359119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389610, 37.673553, 39.589165>,  <38.311565, 37.756649, 39.972576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389610, 37.673553, 39.589165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888163, 0.452001, 0.082831,
		0.416048, -0.867491, 0.272698,
		0.195115, -0.207739, -0.958527,
		38.448143, 37.611233, 39.301605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074944, 37.374405, 39.775665>,  <38.311565, 37.756649, 39.972576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074944, 37.374405, 39.775665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913929, 37.592525, 39.481560>,  <38.817322, 37.723400, 39.305096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913929, 37.592525, 39.481560>,  <39.074944, 37.374405, 39.775665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913929, 37.592525, 39.481560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855850, 0.509168, -0.090929,
		0.324787, -0.665875, -0.671658,
		-0.402534, 0.545305, -0.735260,
		38.793167, 37.756119, 39.260983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393700, 37.083832, 39.609882>,  <39.074944, 37.374405, 39.775665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393700, 37.083832, 39.609882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093319, 36.844948, 39.722599>,  <37.913090, 36.701618, 39.790230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093319, 36.844948, 39.722599>,  <38.393700, 37.083832, 39.609882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093319, 36.844948, 39.722599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015026, 0.442067, 0.896856,
		-0.660182, 0.669265, -0.340946,
		-0.750955, -0.597212, 0.281788,
		37.868031, 36.665783, 39.807137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593319, 36.523350, 39.215786>,  <38.393700, 37.083832, 39.609882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593319, 36.523350, 39.215786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869377, 36.318958, 39.420761>,  <39.035011, 36.196323, 39.543747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869377, 36.318958, 39.420761>,  <38.593319, 36.523350, 39.215786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869377, 36.318958, 39.420761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679046, -0.212452, 0.702682,
		-0.250194, -0.832920, -0.493607,
		0.690145, -0.510989, 0.512436,
		39.076424, 36.165665, 39.574493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176739, 35.859539, 39.435745>,  <38.593319, 36.523350, 39.215786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176739, 35.859539, 39.435745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484966, 35.914936, 39.684597>,  <38.669903, 35.948174, 39.833908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484966, 35.914936, 39.684597>,  <38.176739, 35.859539, 39.435745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484966, 35.914936, 39.684597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590023, -0.214146, 0.778469,
		0.241041, -0.966934, -0.083298,
		0.770566, 0.138495, 0.622131,
		38.716137, 35.956486, 39.871235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066216, 35.353691, 39.921360>,  <38.176739, 35.859539, 39.435745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066216, 35.353691, 39.921360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321033, 35.591942, 40.117073>,  <38.473927, 35.734894, 40.234501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321033, 35.591942, 40.117073>,  <38.066216, 35.353691, 39.921360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321033, 35.591942, 40.117073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395598, -0.292150, 0.870719,
		0.661568, -0.748249, 0.049515,
		0.637048, 0.595628, 0.489282,
		38.512150, 35.770630, 40.263859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349182, 34.876633, 40.393742>,  <38.066216, 35.353691, 39.921360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349182, 34.876633, 40.393742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387760, 35.245571, 40.543396>,  <38.410908, 35.466934, 40.633186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387760, 35.245571, 40.543396>,  <38.349182, 34.876633, 40.393742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387760, 35.245571, 40.543396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402899, -0.307535, 0.862029,
		0.910149, -0.233876, 0.341953,
		0.096445, 0.922347, 0.374131,
		38.416695, 35.522274, 40.655636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583710, 34.790966, 41.175411>,  <38.349182, 34.876633, 40.393742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583710, 34.790966, 41.175411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462910, 35.170330, 41.136814>,  <38.390430, 35.397949, 41.113655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462910, 35.170330, 41.136814>,  <38.583710, 34.790966, 41.175411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462910, 35.170330, 41.136814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424535, -0.043170, 0.904382,
		0.853561, 0.314087, 0.415672,
		-0.301999, 0.948412, -0.096493,
		38.372311, 35.454853, 41.107864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780064, 35.170113, 41.874691>,  <38.583710, 34.790966, 41.175411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780064, 35.170113, 41.874691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480141, 35.354633, 41.684959>,  <38.300186, 35.465347, 41.571121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480141, 35.354633, 41.684959>,  <38.780064, 35.170113, 41.874691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480141, 35.354633, 41.684959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567969, -0.081003, 0.819054,
		0.339411, 0.883537, 0.322743,
		-0.749807, 0.461304, -0.474328,
		38.255199, 35.493023, 41.542660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503342, 35.646240, 42.435589>,  <38.780064, 35.170113, 41.874691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503342, 35.646240, 42.435589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218197, 35.648022, 42.155071>,  <38.047112, 35.649090, 41.986759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218197, 35.648022, 42.155071>,  <38.503342, 35.646240, 42.435589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218197, 35.648022, 42.155071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694177, -0.146710, 0.704694,
		-0.099747, 0.989169, 0.107677,
		-0.712859, 0.004456, -0.701293,
		38.004337, 35.649357, 41.944683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065960, 36.136330, 42.672203>,  <38.503342, 35.646240, 42.435589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065960, 36.136330, 42.672203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845253, 35.931583, 42.408825>,  <37.712830, 35.808735, 42.250797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845253, 35.931583, 42.408825>,  <38.065960, 36.136330, 42.672203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845253, 35.931583, 42.408825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727317, -0.091022, 0.680239,
		-0.408125, 0.854229, -0.322067,
		-0.551764, -0.511867, -0.658444,
		37.679722, 35.778023, 42.211292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532295, 36.496452, 42.581566>,  <38.065960, 36.136330, 42.672203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532295, 36.496452, 42.581566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436184, 36.115837, 42.504799>,  <37.378517, 35.887466, 42.458736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436184, 36.115837, 42.504799>,  <37.532295, 36.496452, 42.581566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436184, 36.115837, 42.504799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809478, 0.087301, 0.580624,
		-0.535732, 0.294869, -0.791229,
		-0.240283, -0.951541, -0.191920,
		37.364098, 35.830376, 42.447224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872845, 36.487282, 42.371956>,  <37.532295, 36.496452, 42.581566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872845, 36.487282, 42.371956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907593, 36.096111, 42.447964>,  <36.928440, 35.861408, 42.493568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907593, 36.096111, 42.447964>,  <36.872845, 36.487282, 42.371956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907593, 36.096111, 42.447964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823611, 0.036811, 0.565959,
		-0.560462, -0.205669, -0.802236,
		0.086869, -0.977929, 0.190022,
		36.933655, 35.802734, 42.504971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240055, 36.163666, 42.294697>,  <36.872845, 36.487282, 42.371956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240055, 36.163666, 42.294697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422840, 35.910248, 42.544434>,  <36.532513, 35.758198, 42.694275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422840, 35.910248, 42.544434>,  <36.240055, 36.163666, 42.294697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422840, 35.910248, 42.544434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733667, 0.128397, 0.667268,
		-0.502910, -0.762975, -0.406141,
		0.456961, -0.633548, 0.624342,
		36.559929, 35.720184, 42.731735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643623, 35.675625, 42.603886>,  <36.240055, 36.163666, 42.294697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643623, 35.675625, 42.603886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961884, 35.650909, 42.844925>,  <36.152840, 35.636082, 42.989548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961884, 35.650909, 42.844925>,  <35.643623, 35.675625, 42.603886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961884, 35.650909, 42.844925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552471, 0.333964, 0.763704,
		-0.248436, -0.940558, 0.231580,
		0.795647, -0.061790, 0.602600,
		36.200577, 35.632374, 43.025703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400833, 35.307510, 43.164204>,  <35.643623, 35.675625, 42.603886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400833, 35.307510, 43.164204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734146, 35.485043, 43.296051>,  <35.934135, 35.591560, 43.375160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734146, 35.485043, 43.296051>,  <35.400833, 35.307510, 43.164204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734146, 35.485043, 43.296051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460750, 0.228041, 0.857733,
		0.305524, -0.866608, 0.394520,
		0.833285, 0.443833, 0.329618,
		35.984131, 35.618191, 43.394936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545719, 34.596085, 43.035290>,  <35.400833, 35.307510, 43.164204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545719, 34.596085, 43.035290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285320, 34.298573, 42.974640>,  <35.129082, 34.120064, 42.938251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285320, 34.298573, 42.974640>,  <35.545719, 34.596085, 43.035290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285320, 34.298573, 42.974640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245140, -0.016954, -0.969339,
		0.718409, -0.668205, 0.193368,
		-0.650995, -0.743784, -0.151623,
		35.090023, 34.075436, 42.929153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847572, 33.996601, 42.852573>,  <35.545719, 34.596085, 43.035290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847572, 33.996601, 42.852573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483509, 33.966080, 42.689705>,  <35.265072, 33.947769, 42.591984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483509, 33.966080, 42.689705>,  <35.847572, 33.996601, 42.852573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483509, 33.966080, 42.689705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411754, -0.058692, -0.909403,
		0.045493, -0.995356, 0.084838,
		-0.910159, -0.076304, -0.407172,
		35.210461, 33.943188, 42.567554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874268, 33.531368, 42.393681>,  <35.847572, 33.996601, 42.852573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874268, 33.531368, 42.393681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542610, 33.712399, 42.262409>,  <35.343616, 33.821018, 42.183647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542610, 33.712399, 42.262409>,  <35.874268, 33.531368, 42.393681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542610, 33.712399, 42.262409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383044, 0.032349, -0.923163,
		-0.407184, -0.891140, -0.200179,
		-0.829143, 0.452575, -0.328174,
		35.293869, 33.848171, 42.163956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852634, 33.231461, 41.757835>,  <35.874268, 33.531368, 42.393681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852634, 33.231461, 41.757835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571430, 33.515709, 41.746506>,  <35.402706, 33.686256, 41.739708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571430, 33.515709, 41.746506>,  <35.852634, 33.231461, 41.757835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571430, 33.515709, 41.746506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195166, 0.154467, -0.968530,
		-0.683877, -0.686414, -0.247280,
		-0.703009, 0.710617, -0.028328,
		35.360527, 33.728893, 41.738007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429749, 33.116917, 41.191383>,  <35.852634, 33.231461, 41.757835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429749, 33.116917, 41.191383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373505, 33.508186, 41.252563>,  <35.339756, 33.742950, 41.289272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373505, 33.508186, 41.252563>,  <35.429749, 33.116917, 41.191383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373505, 33.508186, 41.252563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242556, 0.183815, -0.952564,
		-0.959893, -0.096842, -0.263110,
		-0.140611, 0.978179, 0.152953,
		35.331322, 33.801640, 41.298450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110653, 33.320885, 40.537937>,  <35.429749, 33.116917, 41.191383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110653, 33.320885, 40.537937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217701, 33.670128, 40.700939>,  <35.281929, 33.879673, 40.798740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217701, 33.670128, 40.700939>,  <35.110653, 33.320885, 40.537937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217701, 33.670128, 40.700939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135670, 0.384571, -0.913071,
		-0.953925, 0.299642, -0.015536,
		0.267620, 0.873109, 0.407505,
		35.297985, 33.932060, 40.823189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742798, 33.799843, 40.175415>,  <35.110653, 33.320885, 40.537937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742798, 33.799843, 40.175415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056259, 33.983154, 40.343163>,  <35.244335, 34.093140, 40.443810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056259, 33.983154, 40.343163>,  <34.742798, 33.799843, 40.175415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056259, 33.983154, 40.343163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167322, 0.494420, -0.852967,
		-0.598237, 0.738601, 0.310775,
		0.783656, 0.458276, 0.419364,
		35.291355, 34.120636, 40.468971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631058, 34.429676, 40.037449>,  <34.742798, 33.799843, 40.175415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631058, 34.429676, 40.037449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022110, 34.400524, 40.116371>,  <35.256741, 34.383034, 40.163723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022110, 34.400524, 40.116371>,  <34.631058, 34.429676, 40.037449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022110, 34.400524, 40.116371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204914, 0.541645, -0.815249,
		-0.047451, 0.837442, 0.544463,
		0.977629, -0.072884, 0.197305,
		35.315399, 34.378658, 40.175564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894962, 35.088726, 39.873444>,  <34.631058, 34.429676, 40.037449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894962, 35.088726, 39.873444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250412, 34.905548, 39.883560>,  <35.463680, 34.795643, 39.889629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250412, 34.905548, 39.883560>,  <34.894962, 35.088726, 39.873444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250412, 34.905548, 39.883560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327465, 0.594893, -0.734077,
		0.321118, 0.660599, 0.678595,
		0.888622, -0.457941, 0.025292,
		35.516998, 34.768166, 39.891148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375149, 35.612873, 39.865677>,  <34.894962, 35.088726, 39.873444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375149, 35.612873, 39.865677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571472, 35.289642, 39.735374>,  <35.689266, 35.095703, 39.657192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571472, 35.289642, 39.735374>,  <35.375149, 35.612873, 39.865677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571472, 35.289642, 39.735374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214545, 0.474474, -0.853724,
		0.844437, 0.349127, 0.406246,
		0.490811, -0.808074, -0.325760,
		35.718716, 35.047218, 39.637646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002785, 35.806271, 39.701668>,  <35.375149, 35.612873, 39.865677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002785, 35.806271, 39.701668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936813, 35.481987, 39.476974>,  <35.897232, 35.287415, 39.342159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936813, 35.481987, 39.476974>,  <36.002785, 35.806271, 39.701668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936813, 35.481987, 39.476974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133759, 0.545887, -0.827113,
		0.977194, -0.211548, 0.018411,
		-0.164924, -0.810713, -0.561734,
		35.887337, 35.238773, 39.308453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544704, 35.797775, 39.217438>,  <36.002785, 35.806271, 39.701668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544704, 35.797775, 39.217438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251122, 35.598045, 39.033268>,  <36.074974, 35.478207, 38.922768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251122, 35.598045, 39.033268>,  <36.544704, 35.797775, 39.217438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251122, 35.598045, 39.033268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237306, 0.446644, -0.862667,
		0.636394, -0.742419, -0.209324,
		-0.733954, -0.499322, -0.460423,
		36.030933, 35.448250, 38.895142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.834747, 33.826996, 46.507183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.465397, 33.736267, 46.383289>,  <34.243786, 33.681831, 46.308952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.465397, 33.736267, 46.383289>,  <34.834747, 33.826996, 46.507183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465397, 33.736267, 46.383289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323499, -0.025286, -0.945890,
		0.206715, -0.973608, 0.096725,
		-0.923372, -0.226820, -0.309735,
		34.188385, 33.668221, 46.290367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903370, 33.254929, 46.064369>,  <34.834747, 33.826996, 46.507183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903370, 33.254929, 46.064369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533913, 33.387589, 45.987537>,  <34.312237, 33.467186, 45.941437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.533913, 33.387589, 45.987537>,  <34.903370, 33.254929, 46.064369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533913, 33.387589, 45.987537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167087, -0.102583, -0.980591,
		-0.344918, -0.937808, 0.039335,
		-0.923641, 0.331651, -0.192078,
		34.256821, 33.487083, 45.929913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609005, 32.783550, 45.664700>,  <34.903370, 33.254929, 46.064369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609005, 32.783550, 45.664700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.405785, 33.117321, 45.579269>,  <34.283852, 33.317585, 45.528011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.405785, 33.117321, 45.579269>,  <34.609005, 32.783550, 45.664700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405785, 33.117321, 45.579269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227395, -0.109223, -0.967658,
		-0.830767, -0.540187, -0.134253,
		-0.508053, 0.834427, -0.213575,
		34.253368, 33.367649, 45.515198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124062, 32.664032, 45.119320>,  <34.609005, 32.783550, 45.664700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124062, 32.664032, 45.119320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.210300, 33.054592, 45.114349>,  <34.262043, 33.288929, 45.111366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.210300, 33.054592, 45.114349>,  <34.124062, 32.664032, 45.119320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210300, 33.054592, 45.114349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373759, -0.094273, -0.922723,
		-0.902121, 0.194291, -0.385264,
		0.215597, 0.976403, -0.012427,
		34.274979, 33.347511, 45.110622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901150, 32.851444, 44.519993>,  <34.124062, 32.664032, 45.119320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901150, 32.851444, 44.519993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136715, 33.163742, 44.603527>,  <34.278053, 33.351120, 44.653648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.136715, 33.163742, 44.603527>,  <33.901150, 32.851444, 44.519993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136715, 33.163742, 44.603527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115185, 0.174676, -0.977865,
		-0.799945, 0.599934, 0.012938,
		0.588915, 0.780748, 0.208835,
		34.313389, 33.397968, 44.666176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650555, 33.388336, 44.079288>,  <33.901150, 32.851444, 44.519993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650555, 33.388336, 44.079288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.024021, 33.467941, 44.198395>,  <34.248100, 33.515705, 44.269859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.024021, 33.467941, 44.198395>,  <33.650555, 33.388336, 44.079288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024021, 33.467941, 44.198395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236090, 0.283198, -0.929549,
		-0.269314, 0.938187, 0.217428,
		0.933666, 0.199008, 0.297765,
		34.304119, 33.527645, 44.287724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724239, 34.104839, 43.870235>,  <33.650555, 33.388336, 44.079288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724239, 34.104839, 43.870235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.090576, 33.958256, 43.935879>,  <34.310379, 33.870304, 43.975266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.090576, 33.958256, 43.935879>,  <33.724239, 34.104839, 43.870235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090576, 33.958256, 43.935879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265024, 0.244670, -0.932684,
		0.301641, 0.897687, 0.321201,
		0.915846, -0.366462, 0.164106,
		34.365330, 33.848316, 43.985111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192966, 34.584076, 43.587051>,  <33.724239, 34.104839, 43.870235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192966, 34.584076, 43.587051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.411201, 34.250027, 43.615047>,  <34.542141, 34.049595, 43.631847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.411201, 34.250027, 43.615047>,  <34.192966, 34.584076, 43.587051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411201, 34.250027, 43.615047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373936, 0.167845, -0.912140,
		0.750005, 0.523824, 0.403858,
		0.545587, -0.835126, 0.069992,
		34.574879, 33.999489, 43.636044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871319, 34.777245, 43.395065>,  <34.192966, 34.584076, 43.587051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871319, 34.777245, 43.395065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823471, 34.383507, 43.343281>,  <34.794762, 34.147263, 43.312210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823471, 34.383507, 43.343281>,  <34.871319, 34.777245, 43.395065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823471, 34.383507, 43.343281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171939, 0.107886, -0.979182,
		0.977818, -0.139389, 0.156342,
		-0.119620, -0.984343, -0.129459,
		34.787586, 34.088203, 43.304443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586437, 34.873371, 43.801636>,  <34.871319, 34.777245, 43.395065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586437, 34.873371, 43.801636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.746712, 35.239689, 43.790558>,  <35.842876, 35.459480, 43.783913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.746712, 35.239689, 43.790558>,  <35.586437, 34.873371, 43.801636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746712, 35.239689, 43.790558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476997, 0.234315, 0.847096,
		0.782255, -0.326214, 0.530719,
		0.400689, 0.915795, -0.027691,
		35.866920, 35.514427, 43.782249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918926, 34.975121, 44.462074>,  <35.586437, 34.873371, 43.801636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918926, 34.975121, 44.462074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.834732, 35.342846, 44.329071>,  <35.784214, 35.563480, 44.249271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.834732, 35.342846, 44.329071>,  <35.918926, 34.975121, 44.462074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834732, 35.342846, 44.329071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450436, 0.210667, 0.867598,
		0.867642, 0.332388, 0.369750,
		-0.210485, 0.919314, -0.332503,
		35.771587, 35.618641, 44.229321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336620, 35.418522, 44.885246>,  <35.918926, 34.975121, 44.462074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336620, 35.418522, 44.885246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049667, 35.628811, 44.702393>,  <35.877495, 35.754986, 44.592682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049667, 35.628811, 44.702393>,  <36.336620, 35.418522, 44.885246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049667, 35.628811, 44.702393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182999, 0.490924, 0.851766,
		0.672213, 0.694699, -0.255974,
		-0.717385, 0.525725, -0.457134,
		35.834454, 35.786530, 44.565250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298801, 36.066162, 45.197056>,  <36.336620, 35.418522, 44.885246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298801, 36.066162, 45.197056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944145, 36.083786, 45.012917>,  <35.731350, 36.094360, 44.902431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944145, 36.083786, 45.012917>,  <36.298801, 36.066162, 45.197056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944145, 36.083786, 45.012917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382609, 0.489252, 0.783736,
		0.259759, 0.871029, -0.416934,
		-0.886643, 0.044060, -0.460352,
		35.678154, 36.097004, 44.874809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056816, 36.699429, 45.387672>,  <36.298801, 36.066162, 45.197056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056816, 36.699429, 45.387672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739029, 36.493034, 45.259560>,  <35.548359, 36.369198, 45.182693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.739029, 36.493034, 45.259560>,  <36.056816, 36.699429, 45.387672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739029, 36.493034, 45.259560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526478, 0.322277, 0.786739,
		-0.302729, 0.793659, -0.527694,
		-0.794466, -0.515988, -0.320281,
		35.500690, 36.338238, 45.163475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429829, 37.102055, 45.347961>,  <36.056816, 36.699429, 45.387672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429829, 37.102055, 45.347961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.306271, 36.726242, 45.407116>,  <35.232136, 36.500755, 45.442608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.306271, 36.726242, 45.407116>,  <35.429829, 37.102055, 45.347961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306271, 36.726242, 45.407116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403124, 0.270168, 0.874357,
		-0.861437, 0.210471, -0.462200,
		-0.308899, -0.939527, 0.147887,
		35.213600, 36.444386, 45.451481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790180, 37.186443, 45.689938>,  <35.429829, 37.102055, 45.347961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790180, 37.186443, 45.689938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.871334, 36.797947, 45.739788>,  <34.920025, 36.564850, 45.769699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.871334, 36.797947, 45.739788>,  <34.790180, 37.186443, 45.689938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871334, 36.797947, 45.739788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552557, -0.008475, 0.833432,
		-0.808406, -0.237952, -0.538385,
		0.202880, -0.971240, 0.124631,
		34.932198, 36.506577, 45.777176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170750, 36.857777, 45.754681>,  <34.790180, 37.186443, 45.689938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170750, 36.857777, 45.754681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.455055, 36.623154, 45.910000>,  <34.625637, 36.482380, 46.003193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.455055, 36.623154, 45.910000>,  <34.170750, 36.857777, 45.754681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455055, 36.623154, 45.910000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393551, 0.125949, 0.910634,
		-0.583041, -0.800058, -0.141319,
		0.710761, -0.586554, 0.388297,
		34.668282, 36.447189, 46.026489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743053, 36.510235, 46.339336>,  <34.170750, 36.857777, 45.754681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743053, 36.510235, 46.339336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.128696, 36.446899, 46.424587>,  <34.360081, 36.408897, 46.475739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.128696, 36.446899, 46.424587>,  <33.743053, 36.510235, 46.339336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128696, 36.446899, 46.424587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196416, 0.114781, 0.973779,
		-0.178652, -0.980690, 0.079560,
		0.964108, -0.158341, 0.213129,
		34.417931, 36.399399, 46.488525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796871, 35.960472, 46.822433>,  <33.743053, 36.510235, 46.339336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796871, 35.960472, 46.822433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.118038, 36.197269, 46.850334>,  <34.310738, 36.339348, 46.867073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.118038, 36.197269, 46.850334>,  <33.796871, 35.960472, 46.822433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118038, 36.197269, 46.850334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029775, -0.077040, 0.996583,
		0.595347, -0.802250, -0.044230,
		0.802917, 0.591996, 0.069752,
		34.358913, 36.374866, 46.871262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056084, 35.716240, 47.398346>,  <33.796871, 35.960472, 46.822433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056084, 35.716240, 47.398346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.234390, 36.070107, 47.343723>,  <34.341373, 36.282429, 47.310947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.234390, 36.070107, 47.343723>,  <34.056084, 35.716240, 47.398346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234390, 36.070107, 47.343723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056149, 0.124623, 0.990614,
		0.893386, -0.449251, 0.005879,
		0.445767, 0.884671, -0.136561,
		34.368122, 36.335506, 47.302753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545376, 35.769173, 48.058460>,  <34.056084, 35.716240, 47.398346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545376, 35.769173, 48.058460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.525490, 36.135914, 47.900013>,  <34.513557, 36.355957, 47.804947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.525490, 36.135914, 47.900013>,  <34.545376, 35.769173, 48.058460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525490, 36.135914, 47.900013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106364, 0.399210, 0.910669,
		0.993084, 0.003141, -0.117367,
		-0.049715, 0.916854, -0.396115,
		34.510574, 36.410969, 47.781178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037579, 36.127068, 48.487232>,  <34.545376, 35.769173, 48.058460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037579, 36.127068, 48.487232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798565, 36.402229, 48.322433>,  <34.655155, 36.567326, 48.223553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.798565, 36.402229, 48.322433>,  <35.037579, 36.127068, 48.487232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798565, 36.402229, 48.322433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011103, 0.506666, 0.862071,
		0.801766, 0.519692, -0.295113,
		-0.597535, 0.687903, -0.411998,
		34.619305, 36.608601, 48.198833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385212, 36.854210, 48.607277>,  <35.037579, 36.127068, 48.487232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385212, 36.854210, 48.607277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989265, 36.877476, 48.555466>,  <34.751698, 36.891434, 48.524380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.989265, 36.877476, 48.555466>,  <35.385212, 36.854210, 48.607277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989265, 36.877476, 48.555466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099719, 0.364622, 0.925801,
		0.101076, 0.929337, -0.355128,
		-0.989869, 0.058164, -0.129527,
		34.692307, 36.894924, 48.516609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.364916, 35.929909, 46.466877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.644041, 36.146755, 46.654140>,  <28.811516, 36.276863, 46.766499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.644041, 36.146755, 46.654140>,  <28.364916, 35.929909, 46.466877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644041, 36.146755, 46.654140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194432, 0.485695, -0.852230,
		-0.689386, 0.685722, 0.233521,
		0.697813, 0.542112, 0.468158,
		28.853384, 36.309387, 46.794586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342098, 36.645313, 46.224247>,  <28.364916, 35.929909, 46.466877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342098, 36.645313, 46.224247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.708155, 36.586479, 46.374386>,  <28.927788, 36.551178, 46.464470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.708155, 36.586479, 46.374386>,  <28.342098, 36.645313, 46.224247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708155, 36.586479, 46.374386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401961, 0.404020, -0.821703,
		-0.030793, 0.902849, 0.428855,
		0.915139, -0.147080, 0.375351,
		28.982697, 36.542355, 46.486992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695097, 37.278080, 46.053135>,  <28.342098, 36.645313, 46.224247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695097, 37.278080, 46.053135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.958231, 36.983501, 46.116253>,  <29.116112, 36.806755, 46.154125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.958231, 36.983501, 46.116253>,  <28.695097, 37.278080, 46.053135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958231, 36.983501, 46.116253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563452, 0.342189, -0.751950,
		0.499774, 0.583569, 0.640057,
		0.657835, -0.736446, 0.157796,
		29.155582, 36.762569, 46.163593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290009, 37.618607, 45.887619>,  <28.695097, 37.278080, 46.053135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290009, 37.618607, 45.887619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.355007, 37.224129, 45.874832>,  <29.394007, 36.987442, 45.867161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.355007, 37.224129, 45.874832>,  <29.290009, 37.618607, 45.887619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355007, 37.224129, 45.874832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597704, 0.124159, -0.792044,
		0.785076, 0.109595, 0.609626,
		0.162495, -0.986191, -0.031969,
		29.403755, 36.928272, 45.865242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031597, 37.527618, 45.830006>,  <29.290009, 37.618607, 45.887619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031597, 37.527618, 45.830006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.873478, 37.183475, 45.701309>,  <29.778606, 36.976990, 45.624092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.873478, 37.183475, 45.701309>,  <30.031597, 37.527618, 45.830006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873478, 37.183475, 45.701309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413897, 0.145862, -0.898562,
		0.820017, -0.488368, 0.298442,
		-0.395298, -0.860361, -0.321743,
		29.754889, 36.925365, 45.604786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681318, 37.214748, 45.534405>,  <30.031597, 37.527618, 45.830006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681318, 37.214748, 45.534405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.375141, 37.008133, 45.380890>,  <30.191435, 36.884163, 45.288780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.375141, 37.008133, 45.380890>,  <30.681318, 37.214748, 45.534405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375141, 37.008133, 45.380890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380481, 0.117702, -0.917268,
		0.518973, -0.848138, 0.106438,
		-0.765442, -0.516535, -0.383785,
		30.145508, 36.853172, 45.265755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967930, 36.709431, 45.139484>,  <30.681318, 37.214748, 45.534405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967930, 36.709431, 45.139484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.594090, 36.741982, 45.000977>,  <30.369785, 36.761513, 44.917873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.594090, 36.741982, 45.000977>,  <30.967930, 36.709431, 45.139484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594090, 36.741982, 45.000977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338115, -0.099083, -0.935875,
		-0.110466, -0.991746, 0.065088,
		-0.934599, 0.081375, -0.346269,
		30.313709, 36.766392, 44.897095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089731, 36.322716, 44.542030>,  <30.967930, 36.709431, 45.139484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089731, 36.322716, 44.542030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745853, 36.524101, 44.507507>,  <30.539526, 36.644932, 44.486794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.745853, 36.524101, 44.507507>,  <31.089731, 36.322716, 44.542030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745853, 36.524101, 44.507507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198083, 0.172844, -0.964825,
		-0.470839, -0.846551, -0.248321,
		-0.859694, 0.503465, -0.086306,
		30.487946, 36.675140, 44.481617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761885, 35.986946, 44.028503>,  <31.089731, 36.322716, 44.542030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761885, 35.986946, 44.028503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.605200, 36.354504, 44.047207>,  <30.511189, 36.575039, 44.058430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.605200, 36.354504, 44.047207>,  <30.761885, 35.986946, 44.028503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605200, 36.354504, 44.047207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124196, 0.103166, -0.986880,
		-0.911666, -0.380767, -0.154535,
		-0.391714, 0.918898, 0.046763,
		30.487686, 36.630173, 44.061237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296143, 36.034382, 43.420574>,  <30.761885, 35.986946, 44.028503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296143, 36.034382, 43.420574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374233, 36.414890, 43.516048>,  <30.421087, 36.643196, 43.573334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374233, 36.414890, 43.516048>,  <30.296143, 36.034382, 43.420574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374233, 36.414890, 43.516048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043195, 0.234789, -0.971086,
		-0.979806, 0.199893, 0.004747,
		0.195228, 0.951271, 0.238682,
		30.432802, 36.700272, 43.587654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959301, 36.426369, 42.979317>,  <30.296143, 36.034382, 43.420574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959301, 36.426369, 42.979317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.251095, 36.655224, 43.129257>,  <30.426170, 36.792538, 43.219223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.251095, 36.655224, 43.129257>,  <29.959301, 36.426369, 42.979317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251095, 36.655224, 43.129257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249366, 0.287861, -0.924637,
		-0.636922, 0.767984, 0.067320,
		0.729484, 0.572134, 0.374854,
		30.469940, 36.826862, 43.241714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833145, 37.105438, 42.588299>,  <29.959301, 36.426369, 42.979317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833145, 37.105438, 42.588299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.206604, 37.093967, 42.731113>,  <30.430679, 37.087086, 42.816803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.206604, 37.093967, 42.731113>,  <29.833145, 37.105438, 42.588299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206604, 37.093967, 42.731113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345613, 0.333955, -0.876941,
		-0.094085, 0.942153, 0.321709,
		0.933649, -0.028679, 0.357040,
		30.486698, 37.085365, 42.838226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102440, 37.836571, 42.423679>,  <29.833145, 37.105438, 42.588299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102440, 37.836571, 42.423679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.395456, 37.567410, 42.464828>,  <30.571266, 37.405914, 42.489517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.395456, 37.567410, 42.464828>,  <30.102440, 37.836571, 42.423679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395456, 37.567410, 42.464828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428073, 0.337870, -0.838211,
		0.529277, 0.658063, 0.535555,
		0.732543, -0.672902, 0.102872,
		30.615219, 37.365540, 42.495689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654886, 38.179203, 42.106506>,  <30.102440, 37.836571, 42.423679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654886, 38.179203, 42.106506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.761225, 37.794323, 42.130184>,  <30.825027, 37.563396, 42.144390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.761225, 37.794323, 42.130184>,  <30.654886, 38.179203, 42.106506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761225, 37.794323, 42.130184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332651, 0.033925, -0.942440,
		0.904803, 0.270237, 0.329094,
		0.265847, -0.962196, 0.059199,
		30.840979, 37.505665, 42.147945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004574, 38.586948, 42.500381>,  <30.654886, 38.179203, 42.106506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004574, 38.586948, 42.500381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.160814, 38.954304, 42.475105>,  <31.254559, 39.174717, 42.459938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.160814, 38.954304, 42.475105>,  <31.004574, 38.586948, 42.500381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160814, 38.954304, 42.475105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135260, 0.125157, 0.982874,
		0.910568, -0.375366, 0.173107,
		0.390603, 0.918388, -0.063192,
		31.277996, 39.229820, 42.456146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363054, 38.609535, 43.156731>,  <31.004574, 38.586948, 42.500381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363054, 38.609535, 43.156731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.319935, 38.985260, 43.026451>,  <31.294064, 39.210693, 42.948284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.319935, 38.985260, 43.026451>,  <31.363054, 38.609535, 43.156731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319935, 38.985260, 43.026451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247846, 0.291877, 0.923786,
		0.962784, 0.180305, 0.201340,
		-0.107797, 0.939307, -0.325702,
		31.287596, 39.267052, 42.928741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771503, 38.975742, 43.560452>,  <31.363054, 38.609535, 43.156731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771503, 38.975742, 43.560452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.502659, 39.241257, 43.429207>,  <31.341352, 39.400566, 43.350460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.502659, 39.241257, 43.429207>,  <31.771503, 38.975742, 43.560452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502659, 39.241257, 43.429207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091323, 0.365433, 0.926347,
		0.734798, 0.652572, -0.184992,
		-0.672110, 0.663783, -0.328115,
		31.301025, 39.440392, 43.330772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987267, 39.616993, 43.866077>,  <31.771503, 38.975742, 43.560452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987267, 39.616993, 43.866077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.607590, 39.649376, 43.744434>,  <31.379784, 39.668804, 43.671448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.607590, 39.649376, 43.744434>,  <31.987267, 39.616993, 43.866077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607590, 39.649376, 43.744434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276466, 0.247115, 0.928709,
		0.150331, 0.965599, -0.212179,
		-0.949193, 0.080954, -0.304104,
		31.322832, 39.673660, 43.653202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746206, 40.250546, 44.211628>,  <31.987267, 39.616993, 43.866077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746206, 40.250546, 44.211628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.423456, 40.034912, 44.115013>,  <31.229805, 39.905533, 44.057045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.423456, 40.034912, 44.115013>,  <31.746206, 40.250546, 44.211628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423456, 40.034912, 44.115013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330749, 0.073500, 0.940852,
		-0.489444, 0.839040, -0.237606,
		-0.806876, -0.539083, -0.241538,
		31.181393, 39.873188, 44.042553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301380, 40.392319, 44.708157>,  <31.746206, 40.250546, 44.211628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301380, 40.392319, 44.708157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.085060, 40.094841, 44.550953>,  <30.955269, 39.916355, 44.456631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.085060, 40.094841, 44.550953>,  <31.301380, 40.392319, 44.708157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085060, 40.094841, 44.550953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493533, -0.097806, 0.864210,
		-0.681148, 0.661324, -0.314146,
		-0.540798, -0.743696, -0.393006,
		30.922821, 39.871731, 44.433052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711926, 40.414761, 45.094833>,  <31.301380, 40.392319, 44.708157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711926, 40.414761, 45.094833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.656618, 40.047813, 44.945526>,  <30.623434, 39.827644, 44.855942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.656618, 40.047813, 44.945526>,  <30.711926, 40.414761, 45.094833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656618, 40.047813, 44.945526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457975, -0.274946, 0.845378,
		-0.878146, 0.287836, -0.382113,
		-0.138270, -0.917363, -0.373264,
		30.615137, 39.772606, 44.833546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000483, 40.275135, 45.175045>,  <30.711926, 40.414761, 45.094833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000483, 40.275135, 45.175045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.177750, 39.917957, 45.143425>,  <30.284109, 39.703651, 45.124454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.177750, 39.917957, 45.143425>,  <30.000483, 40.275135, 45.175045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177750, 39.917957, 45.143425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413644, -0.281924, 0.865689,
		-0.795300, -0.350947, -0.494302,
		0.443166, -0.892947, -0.079047,
		30.310699, 39.650074, 45.119709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531584, 39.861481, 45.300068>,  <30.000483, 40.275135, 45.175045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531584, 39.861481, 45.300068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.869581, 39.680222, 45.413662>,  <30.072380, 39.571465, 45.481819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.869581, 39.680222, 45.413662>,  <29.531584, 39.861481, 45.300068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869581, 39.680222, 45.413662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418592, -0.229965, 0.878577,
		-0.332821, -0.861262, -0.384003,
		0.844992, -0.453149, 0.283980,
		30.123079, 39.544277, 45.498856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347679, 39.104378, 45.630295>,  <29.531584, 39.861481, 45.300068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347679, 39.104378, 45.630295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.711050, 39.220940, 45.750191>,  <29.929073, 39.290878, 45.822128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.711050, 39.220940, 45.750191>,  <29.347679, 39.104378, 45.630295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711050, 39.220940, 45.750191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181150, -0.371788, 0.910471,
		0.376754, -0.881395, -0.284955,
		0.908427, 0.291404, 0.299738,
		29.983578, 39.308361, 45.840111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528000, 38.440758, 45.937603>,  <29.347679, 39.104378, 45.630295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528000, 38.440758, 45.937603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.746529, 38.758724, 46.043159>,  <29.877645, 38.949505, 46.106495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.746529, 38.758724, 46.043159>,  <29.528000, 38.440758, 45.937603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746529, 38.758724, 46.043159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160823, -0.209646, 0.964461,
		0.821990, -0.569346, 0.013307,
		0.546322, 0.794918, 0.263891,
		29.910425, 38.997200, 46.122326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039040, 38.173683, 46.319744>,  <29.528000, 38.440758, 45.937603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039040, 38.173683, 46.319744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054531, 38.548790, 46.457787>,  <30.063826, 38.773853, 46.540611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.054531, 38.548790, 46.457787>,  <30.039040, 38.173683, 46.319744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054531, 38.548790, 46.457787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135812, -0.337225, 0.931576,
		0.989977, -0.082951, 0.114299,
		0.038731, 0.937763, 0.345111,
		30.066151, 38.830120, 46.561321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461184, 38.128181, 46.908901>,  <30.039040, 38.173683, 46.319744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461184, 38.128181, 46.908901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.273987, 38.479382, 46.949093>,  <30.161669, 38.690102, 46.973209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.273987, 38.479382, 46.949093>,  <30.461184, 38.128181, 46.908901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273987, 38.479382, 46.949093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113526, -0.172485, 0.978448,
		0.876411, 0.446497, 0.180398,
		-0.467990, 0.878003, 0.100479,
		30.133589, 38.742783, 46.979237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744261, 38.612316, 47.435898>,  <30.461184, 38.128181, 46.908901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744261, 38.612316, 47.435898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.360735, 38.715733, 47.388847>,  <30.130619, 38.777782, 47.360619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.360735, 38.715733, 47.388847>,  <30.744261, 38.612316, 47.435898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360735, 38.715733, 47.388847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121267, 0.001876, 0.992618,
		0.256849, 0.966000, 0.029553,
		-0.958813, 0.258537, -0.117626,
		30.073092, 38.793293, 47.353561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950865, 39.401546, 47.368069>,  <30.744261, 38.612316, 47.435898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950865, 39.401546, 47.368069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.285400, 39.476028, 47.574318>,  <31.486122, 39.520718, 47.698067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.285400, 39.476028, 47.574318>,  <30.950865, 39.401546, 47.368069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285400, 39.476028, 47.574318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503101, 0.112935, -0.856817,
		-0.217778, 0.975998, 0.000770,
		0.836338, 0.186209, 0.515621,
		31.536303, 39.531891, 47.729004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194571, 39.994583, 47.129494>,  <30.950865, 39.401546, 47.368069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194571, 39.994583, 47.129494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.519829, 39.832722, 47.296848>,  <31.714983, 39.735603, 47.397263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.519829, 39.832722, 47.296848>,  <31.194571, 39.994583, 47.129494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519829, 39.832722, 47.296848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521416, 0.186949, -0.832572,
		0.258690, 0.895155, 0.363011,
		0.813145, -0.404658, 0.418386,
		31.763773, 39.711323, 47.422363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765720, 40.299858, 46.789288>,  <31.194571, 39.994583, 47.129494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765720, 40.299858, 46.789288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.895149, 39.956432, 46.948372>,  <31.972807, 39.750378, 47.043823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.895149, 39.956432, 46.948372>,  <31.765720, 40.299858, 46.789288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895149, 39.956432, 46.948372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589675, -0.145745, -0.794381,
		0.739990, 0.491558, 0.459114,
		0.323571, -0.858562, 0.397709,
		31.992220, 39.698864, 47.067684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435455, 40.180157, 46.421352>,  <31.765720, 40.299858, 46.789288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435455, 40.180157, 46.421352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.419308, 39.838287, 46.628391>,  <32.409618, 39.633167, 46.752613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.419308, 39.838287, 46.628391>,  <32.435455, 40.180157, 46.421352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419308, 39.838287, 46.628391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672001, -0.406585, -0.618954,
		0.739449, 0.322833, 0.590757,
		-0.040373, -0.854674, 0.517593,
		32.407196, 39.581886, 46.783669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097252, 40.009232, 46.544952>,  <32.435455, 40.180157, 46.421352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097252, 40.009232, 46.544952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887306, 39.669075, 46.530228>,  <32.761337, 39.464981, 46.521393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887306, 39.669075, 46.530228>,  <33.097252, 40.009232, 46.544952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887306, 39.669075, 46.530228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690294, -0.399956, -0.602934,
		0.498004, -0.341873, 0.796941,
		-0.524869, -0.850387, -0.036813,
		32.729847, 39.413960, 46.519184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604740, 39.428005, 46.588017>,  <33.097252, 40.009232, 46.544952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604740, 39.428005, 46.588017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271633, 39.255653, 46.448971>,  <33.071770, 39.152241, 46.365543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271633, 39.255653, 46.448971>,  <33.604740, 39.428005, 46.588017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271633, 39.255653, 46.448971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536309, -0.472083, -0.699650,
		0.137364, -0.769076, 0.624222,
		-0.832769, -0.430883, -0.347615,
		33.021801, 39.126389, 46.344685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676819, 38.726326, 46.506680>,  <33.604740, 39.428005, 46.588017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676819, 38.726326, 46.506680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.374031, 38.803410, 46.256924>,  <33.192360, 38.849659, 46.107071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.374031, 38.803410, 46.256924>,  <33.676819, 38.726326, 46.506680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374031, 38.803410, 46.256924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451308, -0.536848, -0.712822,
		-0.472570, -0.821375, 0.319405,
		-0.756966, 0.192709, -0.624392,
		33.146942, 38.861221, 46.069607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480942, 38.145443, 46.212856>,  <33.676819, 38.726326, 46.506680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480942, 38.145443, 46.212856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.378761, 38.409801, 45.930588>,  <33.317455, 38.568417, 45.761227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.378761, 38.409801, 45.930588>,  <33.480942, 38.145443, 46.212856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378761, 38.409801, 45.930588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443064, -0.568710, -0.693010,
		-0.859326, -0.489685, -0.147541,
		-0.255449, 0.660892, -0.705669,
		33.302128, 38.608070, 45.718887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424702, 37.775768, 45.582069>,  <33.480942, 38.145443, 46.212856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424702, 37.775768, 45.582069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.439445, 38.151081, 45.444515>,  <33.448292, 38.376270, 45.361980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.439445, 38.151081, 45.444515>,  <33.424702, 37.775768, 45.582069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439445, 38.151081, 45.444515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493487, -0.316328, -0.810189,
		-0.868971, -0.139838, -0.474694,
		0.036864, 0.938287, -0.343888,
		33.450504, 38.432568, 45.341351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187214, 37.836288, 44.806549>,  <33.424702, 37.775768, 45.582069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187214, 37.836288, 44.806549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.404839, 38.166039, 44.869022>,  <33.535416, 38.363888, 44.906506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.404839, 38.166039, 44.869022>,  <33.187214, 37.836288, 44.806549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404839, 38.166039, 44.869022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373001, -0.070906, -0.925118,
		-0.751573, 0.561580, -0.346071,
		0.544066, 0.824378, 0.156179,
		33.568058, 38.413353, 44.915874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093468, 38.229759, 44.269268>,  <33.187214, 37.836288, 44.806549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093468, 38.229759, 44.269268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455387, 38.312683, 44.418056>,  <33.672539, 38.362438, 44.507328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.455387, 38.312683, 44.418056>,  <33.093468, 38.229759, 44.269268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455387, 38.312683, 44.418056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388011, -0.041430, -0.920723,
		-0.175463, 0.977398, -0.117923,
		0.904798, 0.207309, 0.371972,
		33.726826, 38.374874, 44.529648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375702, 38.779896, 43.850716>,  <33.093468, 38.229759, 44.269268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375702, 38.779896, 43.850716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703575, 38.637756, 44.030426>,  <33.900299, 38.552475, 44.138252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703575, 38.637756, 44.030426>,  <33.375702, 38.779896, 43.850716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703575, 38.637756, 44.030426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542682, 0.230677, -0.807641,
		0.183353, 0.905824, 0.381921,
		0.819682, -0.355345, 0.449280,
		33.949478, 38.531155, 44.165211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805790, 39.249817, 43.712193>,  <33.375702, 38.779896, 43.850716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805790, 39.249817, 43.712193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035179, 38.926319, 43.764435>,  <34.172813, 38.732220, 43.795780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035179, 38.926319, 43.764435>,  <33.805790, 39.249817, 43.712193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035179, 38.926319, 43.764435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590187, 0.297285, -0.750534,
		0.568165, 0.507492, 0.647796,
		0.573470, -0.808748, 0.130608,
		34.207222, 38.683693, 43.803616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502979, 39.481133, 43.544292>,  <33.805790, 39.249817, 43.712193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502979, 39.481133, 43.544292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.537788, 39.082787, 43.554665>,  <34.558674, 38.843777, 43.560890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.537788, 39.082787, 43.554665>,  <34.502979, 39.481133, 43.544292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537788, 39.082787, 43.554665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551870, 0.026520, -0.833509,
		0.829377, 0.086846, 0.551898,
		0.087023, -0.995869, 0.025932,
		34.563896, 38.784027, 43.562443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.094753, 43.270695, 38.736988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.108664, 43.101288, 38.374901>,  <26.117010, 42.999641, 38.157650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.108664, 43.101288, 38.374901>,  <26.094753, 43.270695, 38.736988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108664, 43.101288, 38.374901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310735, -0.856290, 0.412567,
		-0.949860, -0.295631, 0.101824,
		0.034777, -0.423521, -0.905219,
		26.119097, 42.974232, 38.103336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615421, 42.666641, 38.706181>,  <26.094753, 43.270695, 38.736988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615421, 42.666641, 38.706181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.871078, 42.605625, 38.404655>,  <26.024473, 42.569016, 38.223740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.871078, 42.605625, 38.404655>,  <25.615421, 42.666641, 38.706181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871078, 42.605625, 38.404655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062544, -0.966578, 0.248625,
		-0.766540, -0.206053, -0.608241,
		0.639143, -0.152540, -0.753809,
		26.062820, 42.559864, 38.178513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355658, 42.069794, 38.359306>,  <25.615421, 42.666641, 38.706181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355658, 42.069794, 38.359306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.736586, 42.083992, 38.238094>,  <25.965143, 42.092510, 38.165367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.736586, 42.083992, 38.238094>,  <25.355658, 42.069794, 38.359306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736586, 42.083992, 38.238094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064715, -0.994111, 0.086917,
		-0.298158, -0.102383, -0.949010,
		0.952320, 0.035500, -0.303028,
		26.022282, 42.094643, 38.147186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.402510, 41.524445, 37.852390>,  <25.355658, 42.069794, 38.359306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.402510, 41.524445, 37.852390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778973, 41.611164, 37.956100>,  <26.004850, 41.663197, 38.018326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.778973, 41.611164, 37.956100>,  <25.402510, 41.524445, 37.852390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778973, 41.611164, 37.956100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255423, -0.958639, -0.125585,
		0.221321, 0.184419, -0.957605,
		0.941157, 0.216799, 0.259271,
		26.061319, 41.676205, 38.033882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813280, 41.272018, 37.385223>,  <25.402510, 41.524445, 37.852390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813280, 41.272018, 37.385223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.079124, 41.289452, 37.683590>,  <26.238632, 41.299911, 37.862610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.079124, 41.289452, 37.683590>,  <25.813280, 41.272018, 37.385223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079124, 41.289452, 37.683590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358227, -0.894672, -0.266901,
		0.655716, 0.444593, -0.610225,
		0.664613, 0.043588, 0.745915,
		26.278509, 41.302528, 37.907364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412674, 40.984768, 37.107410>,  <25.813280, 41.272018, 37.385223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412674, 40.984768, 37.107410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.441246, 40.944836, 37.504387>,  <26.458389, 40.920876, 37.742573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.441246, 40.944836, 37.504387>,  <26.412674, 40.984768, 37.107410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441246, 40.944836, 37.504387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352658, -0.928186, -0.118752,
		0.933022, 0.358474, -0.031092,
		0.071429, -0.099833, 0.992437,
		26.462675, 40.914886, 37.802116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106094, 40.691647, 37.195560>,  <26.412674, 40.984768, 37.107410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106094, 40.691647, 37.195560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.909254, 40.617672, 37.535828>,  <26.791151, 40.573288, 37.739990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.909254, 40.617672, 37.535828>,  <27.106094, 40.691647, 37.195560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909254, 40.617672, 37.535828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343289, -0.939213, -0.005595,
		0.799995, 0.289272, 0.525671,
		-0.492098, -0.184933, 0.850670,
		26.761625, 40.562191, 37.791027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547895, 40.377674, 37.747368>,  <27.106094, 40.691647, 37.195560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547895, 40.377674, 37.747368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.166878, 40.263546, 37.789787>,  <26.938267, 40.195068, 37.815239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.166878, 40.263546, 37.789787>,  <27.547895, 40.377674, 37.747368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166878, 40.263546, 37.789787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282984, -0.958418, -0.036805,
		0.112139, -0.005049, 0.993680,
		-0.952547, -0.285323, 0.106047,
		26.881113, 40.177948, 37.821602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562511, 39.910210, 38.292778>,  <27.547895, 40.377674, 37.747368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562511, 39.910210, 38.292778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186388, 39.819347, 38.191410>,  <26.960714, 39.764832, 38.130589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.186388, 39.819347, 38.191410>,  <27.562511, 39.910210, 38.292778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186388, 39.819347, 38.191410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268805, -0.952415, -0.143700,
		-0.208718, -0.203242, 0.956624,
		-0.940309, -0.227152, -0.253419,
		26.904295, 39.751202, 38.115383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482897, 39.361553, 38.720634>,  <27.562511, 39.910210, 38.292778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482897, 39.361553, 38.720634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.202833, 39.316807, 38.438568>,  <27.034796, 39.289959, 38.269329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.202833, 39.316807, 38.438568>,  <27.482897, 39.361553, 38.720634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202833, 39.316807, 38.438568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204888, -0.977590, -0.048353,
		-0.683958, -0.178335, 0.707388,
		-0.700159, -0.111864, -0.705170,
		26.992786, 39.283249, 38.227016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207514, 38.655895, 38.791004>,  <27.482897, 39.361553, 38.720634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207514, 38.655895, 38.791004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.142832, 38.782993, 38.417290>,  <27.104023, 38.859253, 38.193062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.142832, 38.782993, 38.417290>,  <27.207514, 38.655895, 38.791004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142832, 38.782993, 38.417290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114119, -0.934373, -0.337526,
		-0.980219, -0.161199, 0.114831,
		-0.161703, 0.317745, -0.934286,
		27.094320, 38.878315, 38.137005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867327, 38.208580, 38.581673>,  <27.207514, 38.655895, 38.791004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867327, 38.208580, 38.581673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980608, 38.368965, 38.233185>,  <27.048576, 38.465195, 38.024094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.980608, 38.368965, 38.233185>,  <26.867327, 38.208580, 38.581673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980608, 38.368965, 38.233185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092668, -0.915600, -0.391267,
		-0.954572, 0.030074, -0.296458,
		0.283204, 0.400964, -0.871219,
		27.065569, 38.489254, 37.971821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501560, 37.852280, 38.062515>,  <26.867327, 38.208580, 38.581673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501560, 37.852280, 38.062515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799240, 38.033283, 37.865982>,  <26.977848, 38.141884, 37.748062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.799240, 38.033283, 37.865982>,  <26.501560, 37.852280, 38.062515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799240, 38.033283, 37.865982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132764, -0.821105, -0.555122,
		-0.654632, 0.347889, -0.671141,
		0.744198, 0.452504, -0.491334,
		27.022499, 38.169033, 37.718582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259014, 37.690155, 37.429897>,  <26.501560, 37.852280, 38.062515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259014, 37.690155, 37.429897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.650818, 37.769379, 37.444523>,  <26.885900, 37.816914, 37.453297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.650818, 37.769379, 37.444523>,  <26.259014, 37.690155, 37.429897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650818, 37.769379, 37.444523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175040, -0.747327, -0.640986,
		-0.099629, 0.634251, -0.766681,
		0.979508, 0.198061, 0.036564,
		26.944670, 37.828796, 37.455490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534351, 37.839123, 36.678135>,  <26.259014, 37.690155, 37.429897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534351, 37.839123, 36.678135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.832582, 37.705585, 36.908844>,  <27.011520, 37.625462, 37.047268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.832582, 37.705585, 36.908844>,  <26.534351, 37.839123, 36.678135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832582, 37.705585, 36.908844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152802, -0.756780, -0.635560,
		0.648667, 0.561990, -0.513225,
		0.745576, -0.333845, 0.576771,
		27.056255, 37.605431, 37.081875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967220, 37.496616, 36.212624>,  <26.534351, 37.839123, 36.678135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967220, 37.496616, 36.212624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.143400, 37.369034, 36.548306>,  <27.249109, 37.292484, 36.749714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.143400, 37.369034, 36.548306>,  <26.967220, 37.496616, 36.212624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143400, 37.369034, 36.548306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267073, -0.845895, -0.461665,
		0.857131, 0.427471, -0.287392,
		0.440452, -0.318953, 0.839209,
		27.275536, 37.273350, 36.800068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768400, 37.419575, 36.124432>,  <26.967220, 37.496616, 36.212624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768400, 37.419575, 36.124432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.649776, 37.181892, 36.423489>,  <27.578602, 37.039284, 36.602924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.649776, 37.181892, 36.423489>,  <27.768400, 37.419575, 36.124432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649776, 37.181892, 36.423489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414118, -0.785442, -0.459985,
		0.860557, 0.173198, 0.479004,
		-0.296561, -0.594208, 0.747642,
		27.560808, 37.003632, 36.647781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364223, 36.998890, 36.291882>,  <27.768400, 37.419575, 36.124432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364223, 36.998890, 36.291882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043907, 36.786427, 36.402596>,  <27.851717, 36.658951, 36.469025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.043907, 36.786427, 36.402596>,  <28.364223, 36.998890, 36.291882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043907, 36.786427, 36.402596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361456, -0.797049, -0.483800,
		0.477581, -0.287378, 0.830259,
		-0.800791, -0.531155, 0.276781,
		27.803669, 36.627079, 36.485630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946152, 37.428730, 36.513584>,  <28.364223, 36.998890, 36.291882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946152, 37.428730, 36.513584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.290398, 37.520226, 36.331585>,  <29.496944, 37.575123, 36.222385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.290398, 37.520226, 36.331585>,  <28.946152, 37.428730, 36.513584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290398, 37.520226, 36.331585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037176, 0.919286, 0.391830,
		0.507901, -0.320299, 0.799653,
		0.860613, 0.228739, -0.454998,
		29.548582, 37.588848, 36.195084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504208, 37.642994, 36.948132>,  <28.946152, 37.428730, 36.513584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504208, 37.642994, 36.948132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568504, 37.824551, 36.597557>,  <29.607082, 37.933487, 36.387211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568504, 37.824551, 36.597557>,  <29.504208, 37.642994, 36.948132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568504, 37.824551, 36.597557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214087, 0.882877, 0.417965,
		0.963498, 0.120449, 0.239089,
		0.160743, 0.453895, -0.876437,
		29.616728, 37.960720, 36.334625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788990, 38.207222, 37.267769>,  <29.504208, 37.642994, 36.948132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788990, 38.207222, 37.267769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695162, 38.298603, 36.889820>,  <29.638865, 38.353432, 36.663052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.695162, 38.298603, 36.889820>,  <29.788990, 38.207222, 37.267769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695162, 38.298603, 36.889820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001882, 0.972098, 0.234568,
		0.972098, 0.053244, -0.228453,
		-0.234568, 0.228453, -0.944874,
		29.624792, 38.367138, 36.606358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238518, 38.722218, 36.978336>,  <29.788990, 38.207222, 37.267769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238518, 38.722218, 36.978336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.914795, 38.748634, 36.744873>,  <29.720560, 38.764484, 36.604794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.914795, 38.748634, 36.744873>,  <30.238518, 38.722218, 36.978336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914795, 38.748634, 36.744873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032090, 0.997146, 0.068341,
		0.586505, 0.036579, -0.809119,
		-0.809309, 0.066047, -0.583658,
		29.672003, 38.768448, 36.569775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310785, 39.352402, 36.693413>,  <30.238518, 38.722218, 36.978336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310785, 39.352402, 36.693413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.920794, 39.283451, 36.637272>,  <29.686798, 39.242081, 36.603588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.920794, 39.283451, 36.637272>,  <30.310785, 39.352402, 36.693413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920794, 39.283451, 36.637272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165042, 0.984310, -0.062410,
		0.148910, -0.037685, -0.988133,
		-0.974981, -0.172377, -0.140354,
		29.628300, 39.231739, 36.595165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019554, 39.797638, 36.097523>,  <30.310785, 39.352402, 36.693413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019554, 39.797638, 36.097523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730049, 39.697674, 36.354805>,  <29.556345, 39.637695, 36.509174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.730049, 39.697674, 36.354805>,  <30.019554, 39.797638, 36.097523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730049, 39.697674, 36.354805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312135, 0.949871, 0.017827,
		-0.615416, -0.187864, -0.765487,
		-0.723764, -0.249906, 0.643205,
		29.512920, 39.622704, 36.547768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571112, 40.347549, 36.000008>,  <30.019554, 39.797638, 36.097523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571112, 40.347549, 36.000008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.417933, 40.164520, 36.320999>,  <29.326025, 40.054703, 36.513596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.417933, 40.164520, 36.320999>,  <29.571112, 40.347549, 36.000008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417933, 40.164520, 36.320999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351931, 0.875456, 0.331242,
		-0.854106, -0.155570, -0.496287,
		-0.382946, -0.457575, 0.802482,
		29.303049, 40.027248, 36.561745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853273, 40.526871, 35.998291>,  <29.571112, 40.347549, 36.000008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853273, 40.526871, 35.998291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975758, 40.458286, 36.372849>,  <29.049248, 40.417137, 36.597584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975758, 40.458286, 36.372849>,  <28.853273, 40.526871, 35.998291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975758, 40.458286, 36.372849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142090, 0.964396, 0.223050,
		-0.941300, -0.201353, 0.270946,
		0.306211, -0.171458, 0.936396,
		29.067621, 40.406849, 36.653767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496143, 41.028126, 36.424850>,  <28.853273, 40.526871, 35.998291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496143, 41.028126, 36.424850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766083, 40.898083, 36.689842>,  <28.928047, 40.820057, 36.848839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.766083, 40.898083, 36.689842>,  <28.496143, 41.028126, 36.424850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766083, 40.898083, 36.689842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182640, 0.796214, 0.576789,
		-0.714997, -0.510241, 0.477946,
		0.674850, -0.325111, 0.662481,
		28.968538, 40.800549, 36.888588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186726, 41.149681, 37.063831>,  <28.496143, 41.028126, 36.424850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186726, 41.149681, 37.063831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582727, 41.141773, 37.119686>,  <28.820330, 41.137028, 37.153198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582727, 41.141773, 37.119686>,  <28.186726, 41.149681, 37.063831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582727, 41.141773, 37.119686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077653, 0.750075, 0.656779,
		-0.117721, -0.661058, 0.741043,
		0.990006, -0.019773, 0.139633,
		28.879728, 41.135841, 37.161575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296644, 41.192558, 37.733910>,  <28.186726, 41.149681, 37.063831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296644, 41.192558, 37.733910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.649586, 41.318996, 37.594460>,  <28.861351, 41.394859, 37.510788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.649586, 41.318996, 37.594460>,  <28.296644, 41.192558, 37.733910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649586, 41.318996, 37.594460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011180, 0.754693, 0.655983,
		0.470457, -0.574910, 0.669439,
		0.882352, 0.316096, -0.348623,
		28.914291, 41.413826, 37.489872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617628, 41.382881, 38.383705>,  <28.296644, 41.192558, 37.733910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617628, 41.382881, 38.383705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820063, 41.544594, 38.078960>,  <28.941523, 41.641621, 37.896114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.820063, 41.544594, 38.078960>,  <28.617628, 41.382881, 38.383705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820063, 41.544594, 38.078960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069877, 0.861213, 0.503417,
		0.859627, -0.308026, 0.407630,
		0.506122, 0.404267, -0.761846,
		28.971888, 41.665878, 37.850403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205582, 41.745625, 38.652485>,  <28.617628, 41.382881, 38.383705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205582, 41.745625, 38.652485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140579, 41.908428, 38.292946>,  <29.101578, 42.006111, 38.077221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.140579, 41.908428, 38.292946>,  <29.205582, 41.745625, 38.652485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140579, 41.908428, 38.292946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123038, 0.912209, 0.390814,
		0.979007, -0.047084, -0.198316,
		-0.162504, 0.407010, -0.898852,
		29.091827, 42.030533, 38.023289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842155, 42.191544, 38.610088>,  <29.205582, 41.745625, 38.652485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842155, 42.191544, 38.610088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.561056, 42.302361, 38.347977>,  <29.392397, 42.368851, 38.190708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.561056, 42.302361, 38.347977>,  <29.842155, 42.191544, 38.610088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561056, 42.302361, 38.347977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060582, 0.941021, 0.332881,
		0.708854, 0.194234, -0.678084,
		-0.702748, 0.277044, -0.655280,
		29.350231, 42.385475, 38.151394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098366, 42.874649, 38.231361>,  <29.842155, 42.191544, 38.610088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098366, 42.874649, 38.231361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.702822, 42.842587, 38.181198>,  <29.465494, 42.823349, 38.151100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.702822, 42.842587, 38.181198>,  <30.098366, 42.874649, 38.231361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702822, 42.842587, 38.181198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125473, 0.902161, 0.412748,
		0.080056, 0.423887, -0.902170,
		-0.988862, -0.080155, -0.125410,
		29.406162, 42.818539, 38.143574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957689, 43.513962, 37.864632>,  <30.098366, 42.874649, 38.231361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957689, 43.513962, 37.864632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.624542, 43.386272, 38.045486>,  <29.424654, 43.309658, 38.153999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.624542, 43.386272, 38.045486>,  <29.957689, 43.513962, 37.864632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624542, 43.386272, 38.045486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114339, 0.898529, 0.423759,
		-0.541533, 0.301238, -0.784855,
		-0.832867, -0.319219, 0.452141,
		29.374681, 43.290508, 38.181129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487007, 44.092052, 37.879520>,  <29.957689, 43.513962, 37.864632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487007, 44.092052, 37.879520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318933, 43.863708, 38.161674>,  <29.218088, 43.726704, 38.330967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.318933, 43.863708, 38.161674>,  <29.487007, 44.092052, 37.879520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318933, 43.863708, 38.161674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139206, 0.808683, 0.571536,
		-0.896697, 0.141959, -0.419264,
		-0.420186, -0.570859, 0.705382,
		29.192877, 43.692451, 38.373287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916319, 44.438175, 38.067162>,  <29.487007, 44.092052, 37.879520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916319, 44.438175, 38.067162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.005806, 44.191757, 38.369270>,  <29.059498, 44.043907, 38.550537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.005806, 44.191757, 38.369270>,  <28.916319, 44.438175, 38.067162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005806, 44.191757, 38.369270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059879, 0.782138, 0.620221,
		-0.972812, -0.093530, 0.211868,
		0.223719, -0.616045, 0.755273,
		29.072922, 44.006943, 38.595852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460989, 44.583981, 38.549629>,  <28.916319, 44.438175, 38.067162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460989, 44.583981, 38.549629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774504, 44.423477, 38.739227>,  <28.962612, 44.327175, 38.852985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.774504, 44.423477, 38.739227>,  <28.460989, 44.583981, 38.549629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774504, 44.423477, 38.739227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026712, 0.784312, 0.619791,
		-0.620454, -0.473123, 0.625453,
		0.783788, -0.401259, 0.473992,
		29.009640, 44.303101, 38.881424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229918, 44.477867, 39.163513>,  <28.460989, 44.583981, 38.549629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229918, 44.477867, 39.163513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.622757, 44.445610, 39.231609>,  <28.858459, 44.426258, 39.272469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.622757, 44.445610, 39.231609>,  <28.229918, 44.477867, 39.163513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622757, 44.445610, 39.231609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065403, 0.701551, 0.709612,
		-0.176656, -0.708042, 0.683717,
		0.982097, -0.080640, 0.170241,
		28.917387, 44.421417, 39.282681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313715, 44.454872, 39.908215>,  <28.229918, 44.477867, 39.163513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313715, 44.454872, 39.908215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665232, 44.587154, 39.770603>,  <28.876143, 44.666523, 39.688034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665232, 44.587154, 39.770603>,  <28.313715, 44.454872, 39.908215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665232, 44.587154, 39.770603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004704, 0.726895, 0.686733,
		0.477183, -0.601876, 0.640345,
		0.878791, 0.330709, -0.344030,
		28.928869, 44.686367, 39.667393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696722, 44.669788, 40.559452>,  <28.313715, 44.454872, 39.908215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696722, 44.669788, 40.559452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884302, 44.830956, 40.245064>,  <28.996851, 44.927654, 40.056431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.884302, 44.830956, 40.245064>,  <28.696722, 44.669788, 40.559452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884302, 44.830956, 40.245064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097517, 0.860822, 0.499475,
		0.877823, -0.310876, 0.364395,
		0.468954, 0.402916, -0.785965,
		29.024988, 44.951832, 40.009274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225588, 44.898285, 40.858448>,  <28.696722, 44.669788, 40.559452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225588, 44.898285, 40.858448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.174406, 45.113544, 40.525215>,  <29.143698, 45.242702, 40.325275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.174406, 45.113544, 40.525215>,  <29.225588, 44.898285, 40.858448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174406, 45.113544, 40.525215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075581, 0.842831, 0.532844,
		0.988896, 0.005214, -0.148517,
		-0.127953, 0.538153, -0.833078,
		29.136021, 45.274990, 40.275291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764198, 44.470493, 40.587692>,  <29.225588, 44.898285, 40.858448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764198, 44.470493, 40.587692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770849, 44.101204, 40.434135>,  <29.774839, 43.879631, 40.341999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770849, 44.101204, 40.434135>,  <29.764198, 44.470493, 40.587692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770849, 44.101204, 40.434135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899541, -0.153813, 0.408861,
		-0.436520, -0.352126, 0.827924,
		0.016625, -0.923228, -0.383894,
		29.775837, 43.824234, 40.318966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.261074, 38.141518, 49.062294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140854, 37.785145, 48.926113>,  <34.068722, 37.571320, 48.844402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140854, 37.785145, 48.926113>,  <34.261074, 38.141518, 49.062294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140854, 37.785145, 48.926113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762362, 0.009911, 0.647075,
		-0.573126, 0.454029, -0.682191,
		-0.300552, -0.890932, -0.340454,
		34.050690, 37.517864, 48.823978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577744, 38.223053, 49.036140>,  <34.261074, 38.141518, 49.062294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577744, 38.223053, 49.036140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645695, 37.829494, 49.058350>,  <33.686466, 37.593357, 49.071674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.645695, 37.829494, 49.058350>,  <33.577744, 38.223053, 49.036140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645695, 37.829494, 49.058350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803268, -0.105615, 0.586179,
		-0.570877, -0.144177, -0.808277,
		0.169879, -0.983900, 0.055520,
		33.696659, 37.534325, 49.075005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028484, 37.877865, 48.821770>,  <33.577744, 38.223053, 49.036140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028484, 37.877865, 48.821770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216923, 37.626125, 49.068993>,  <33.329987, 37.475082, 49.217327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216923, 37.626125, 49.068993>,  <33.028484, 37.877865, 48.821770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216923, 37.626125, 49.068993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804483, -0.019180, 0.593666,
		-0.361767, -0.776889, -0.515333,
		0.471097, -0.629346, 0.618055,
		33.358253, 37.437321, 49.254410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558060, 37.350311, 48.940350>,  <33.028484, 37.877865, 48.821770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558060, 37.350311, 48.940350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806637, 37.331078, 49.253143>,  <32.955784, 37.319538, 49.440819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.806637, 37.331078, 49.253143>,  <32.558060, 37.350311, 48.940350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806637, 37.331078, 49.253143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776878, -0.166925, 0.607122,
		0.101339, -0.984796, -0.141091,
		0.621442, -0.048085, 0.781982,
		32.993069, 37.316650, 49.487740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342915, 36.773975, 49.260345>,  <32.558060, 37.350311, 48.940350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342915, 36.773975, 49.260345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529438, 36.993446, 49.537907>,  <32.641354, 37.125130, 49.704445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529438, 36.993446, 49.537907>,  <32.342915, 36.773975, 49.260345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529438, 36.993446, 49.537907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743303, -0.182285, 0.643640,
		0.479641, -0.815919, 0.322833,
		0.466311, 0.548678, 0.693906,
		32.669331, 37.158051, 49.746078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154850, 36.449837, 49.880455>,  <32.342915, 36.773975, 49.260345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154850, 36.449837, 49.880455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308750, 36.790180, 50.023563>,  <32.401093, 36.994389, 50.109428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.308750, 36.790180, 50.023563>,  <32.154850, 36.449837, 49.880455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308750, 36.790180, 50.023563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594638, -0.067964, 0.801116,
		0.705954, -0.520977, 0.479804,
		0.384753, 0.850861, 0.357772,
		32.424175, 37.045437, 50.130894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254566, 36.371109, 50.644463>,  <32.154850, 36.449837, 49.880455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254566, 36.371109, 50.644463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301441, 36.768055, 50.629116>,  <32.329567, 37.006222, 50.619907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.301441, 36.768055, 50.629116>,  <32.254566, 36.371109, 50.644463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301441, 36.768055, 50.629116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338408, 0.076223, 0.937907,
		0.933674, -0.096931, 0.344758,
		0.117191, 0.992368, -0.038365,
		32.336597, 37.065765, 50.617607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624619, 36.633057, 51.228924>,  <32.254566, 36.371109, 50.644463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624619, 36.633057, 51.228924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388596, 36.929455, 51.100697>,  <32.246983, 37.107292, 51.023762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388596, 36.929455, 51.100697>,  <32.624619, 36.633057, 51.228924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388596, 36.929455, 51.100697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304079, 0.163847, 0.938451,
		0.747912, 0.651213, 0.128643,
		-0.590054, 0.740996, -0.320564,
		32.211578, 37.151752, 51.004528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587456, 36.979008, 51.715916>,  <32.624619, 36.633057, 51.228924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587456, 36.979008, 51.715916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.266933, 37.140903, 51.539688>,  <32.074619, 37.238041, 51.433952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.266933, 37.140903, 51.539688>,  <32.587456, 36.979008, 51.715916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266933, 37.140903, 51.539688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431272, 0.119583, 0.894262,
		0.414628, 0.906579, 0.078731,
		-0.801304, 0.404740, -0.440565,
		32.026543, 37.262325, 51.407520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789730, 37.639992, 52.110798>,  <32.587456, 36.979008, 51.715916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789730, 37.639992, 52.110798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415665, 37.634407, 51.969219>,  <32.191227, 37.631054, 51.884274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415665, 37.634407, 51.969219>,  <32.789730, 37.639992, 52.110798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415665, 37.634407, 51.969219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353098, 0.116240, 0.928337,
		0.028177, 0.993123, -0.113635,
		-0.935162, -0.013967, -0.353945,
		32.135117, 37.630219, 51.863037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521862, 38.244385, 52.477242>,  <32.789730, 37.639992, 52.110798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521862, 38.244385, 52.477242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.231323, 38.001740, 52.347977>,  <32.056999, 37.856152, 52.270416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.231323, 38.001740, 52.347977>,  <32.521862, 38.244385, 52.477242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231323, 38.001740, 52.347977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424109, 0.025559, 0.905250,
		-0.540879, 0.794585, -0.275836,
		-0.726348, -0.606615, -0.323166,
		32.013420, 37.819756, 52.251026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791595, 38.510536, 52.615898>,  <32.521862, 38.244385, 52.477242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791595, 38.510536, 52.615898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726143, 38.119278, 52.564583>,  <31.686871, 37.884521, 52.533794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726143, 38.119278, 52.564583>,  <31.791595, 38.510536, 52.615898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726143, 38.119278, 52.564583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381101, -0.057272, 0.922758,
		-0.909937, 0.199886, -0.363400,
		-0.163633, -0.978144, -0.128291,
		31.677053, 37.825836, 52.526096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179358, 38.502350, 52.962097>,  <31.791595, 38.510536, 52.615898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179358, 38.502350, 52.962097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306578, 38.130169, 52.889324>,  <31.382910, 37.906860, 52.845661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306578, 38.130169, 52.889324>,  <31.179358, 38.502350, 52.962097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306578, 38.130169, 52.889324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054271, -0.173712, 0.983300,
		-0.946519, -0.322612, -0.004752,
		0.318050, -0.930454, -0.181930,
		31.401993, 37.851032, 52.834743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807459, 38.085640, 53.405140>,  <31.179358, 38.502350, 52.962097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807459, 38.085640, 53.405140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128101, 37.872204, 53.297279>,  <31.320486, 37.744141, 53.232563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128101, 37.872204, 53.297279>,  <30.807459, 38.085640, 53.405140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128101, 37.872204, 53.297279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164602, -0.236624, 0.957557,
		-0.574749, -0.811967, -0.101849,
		0.801605, -0.533590, -0.269651,
		31.368584, 37.712128, 53.216385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391836, 38.614399, 53.372684>,  <30.807459, 38.085640, 53.405140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391836, 38.614399, 53.372684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.138008, 38.897667, 53.248871>,  <29.985712, 39.067627, 53.174583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.138008, 38.897667, 53.248871>,  <30.391836, 38.614399, 53.372684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138008, 38.897667, 53.248871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440978, 0.002848, -0.897514,
		-0.634713, -0.706034, -0.314096,
		-0.634570, 0.708172, -0.309538,
		29.947638, 39.110119, 53.156010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265369, 38.351372, 52.728535>,  <30.391836, 38.614399, 53.372684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265369, 38.351372, 52.728535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.167179, 38.739128, 52.730423>,  <30.108265, 38.971783, 52.731556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.167179, 38.739128, 52.730423>,  <30.265369, 38.351372, 52.728535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167179, 38.739128, 52.730423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342940, 0.091391, -0.934901,
		-0.906716, -0.227876, -0.354878,
		-0.245474, 0.969392, 0.004718,
		30.093536, 39.029945, 52.731838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010979, 38.444759, 52.067604>,  <30.265369, 38.351372, 52.728535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010979, 38.444759, 52.067604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.054701, 38.825653, 52.181664>,  <30.080935, 39.054188, 52.250099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.054701, 38.825653, 52.181664>,  <30.010979, 38.444759, 52.067604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054701, 38.825653, 52.181664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321949, 0.237486, -0.916488,
		-0.940426, 0.191980, -0.280611,
		0.109306, 0.952231, 0.285146,
		30.087492, 39.111324, 52.267208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823801, 38.809479, 51.524067>,  <30.010979, 38.444759, 52.067604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823801, 38.809479, 51.524067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.041063, 39.084610, 51.716682>,  <30.171421, 39.249687, 51.832253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.041063, 39.084610, 51.716682>,  <29.823801, 38.809479, 51.524067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041063, 39.084610, 51.716682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350382, 0.335507, -0.874453,
		-0.763030, 0.643686, -0.058768,
		0.543156, 0.687825, 0.481538,
		30.204010, 39.290958, 51.861145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676434, 39.354862, 51.127697>,  <29.823801, 38.809479, 51.524067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676434, 39.354862, 51.127697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.991583, 39.481056, 51.339252>,  <30.180672, 39.556770, 51.466187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.991583, 39.481056, 51.339252>,  <29.676434, 39.354862, 51.127697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991583, 39.481056, 51.339252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370213, 0.443676, -0.816146,
		-0.492136, 0.838822, 0.232766,
		0.787874, 0.315481, 0.528892,
		30.227945, 39.575699, 51.497921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831409, 40.098511, 50.868862>,  <29.676434, 39.354862, 51.127697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831409, 40.098511, 50.868862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.177454, 39.963829, 51.017570>,  <30.385080, 39.883018, 51.106796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.177454, 39.963829, 51.017570>,  <29.831409, 40.098511, 50.868862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177454, 39.963829, 51.017570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486428, 0.382368, -0.785610,
		0.122367, 0.860479, 0.494574,
		0.865110, -0.336707, 0.371771,
		30.436987, 39.862816, 51.129101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405813, 40.622246, 50.806381>,  <29.831409, 40.098511, 50.868862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405813, 40.622246, 50.806381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.582880, 40.266758, 50.854092>,  <30.689119, 40.053467, 50.882717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.582880, 40.266758, 50.854092>,  <30.405813, 40.622246, 50.806381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582880, 40.266758, 50.854092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552141, 0.165341, -0.817192,
		0.706532, 0.427601, 0.563889,
		0.442666, -0.888718, 0.119277,
		30.715679, 40.000141, 50.889874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015770, 40.814228, 50.554073>,  <30.405813, 40.622246, 50.806381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015770, 40.814228, 50.554073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008913, 40.414291, 50.552505>,  <31.004799, 40.174328, 50.551563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008913, 40.414291, 50.552505>,  <31.015770, 40.814228, 50.554073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008913, 40.414291, 50.552505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444327, -0.004108, -0.895855,
		0.895701, -0.017099, 0.444329,
		-0.017143, -0.999845, -0.003918,
		31.003771, 40.114338, 50.551331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681822, 40.565006, 50.460159>,  <31.015770, 40.814228, 50.554073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681822, 40.565006, 50.460159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.431284, 40.288040, 50.316914>,  <31.280960, 40.121861, 50.230965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.431284, 40.288040, 50.316914>,  <31.681822, 40.565006, 50.460159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431284, 40.288040, 50.316914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539298, -0.053164, -0.840435,
		0.562893, -0.719535, 0.406719,
		-0.626346, -0.692418, -0.358119,
		31.243380, 40.080315, 50.209476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071945, 40.083092, 50.016197>,  <31.681822, 40.565006, 50.460159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071945, 40.083092, 50.016197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.696625, 39.991909, 49.912182>,  <31.471432, 39.937199, 49.849773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.696625, 39.991909, 49.912182>,  <32.071945, 40.083092, 50.016197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696625, 39.991909, 49.912182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323696, -0.314373, -0.892407,
		0.121679, -0.921524, 0.368766,
		-0.938304, -0.227955, -0.260041,
		31.415133, 39.923523, 49.834171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157959, 39.455082, 49.686527>,  <32.071945, 40.083092, 50.016197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157959, 39.455082, 49.686527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806532, 39.589779, 49.551044>,  <31.595675, 39.670597, 49.469753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806532, 39.589779, 49.551044>,  <32.157959, 39.455082, 49.686527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806532, 39.589779, 49.551044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288945, -0.189928, -0.938317,
		-0.380300, -0.922243, 0.069565,
		-0.878568, 0.336742, -0.338707,
		31.542961, 39.690800, 49.449432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788736, 38.898064, 49.383545>,  <32.157959, 39.455082, 49.686527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788736, 38.898064, 49.383545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.614941, 39.227020, 49.236637>,  <31.510664, 39.424397, 49.148491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.614941, 39.227020, 49.236637>,  <31.788736, 38.898064, 49.383545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614941, 39.227020, 49.236637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355356, -0.218167, -0.908914,
		-0.827611, -0.525426, -0.197451,
		-0.434490, 0.822393, -0.367271,
		31.484594, 39.473740, 49.126457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520367, 38.659996, 48.710060>,  <31.788736, 38.898064, 49.383545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520367, 38.659996, 48.710060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501249, 39.058552, 48.681984>,  <31.489779, 39.297684, 48.665138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.501249, 39.058552, 48.681984>,  <31.520367, 38.659996, 48.710060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501249, 39.058552, 48.681984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019758, -0.069313, -0.997399,
		-0.998662, -0.049054, -0.016374,
		-0.047791, 0.996388, -0.070189,
		31.486912, 39.357468, 48.660927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144737, 38.730125, 48.169281>,  <31.520367, 38.659996, 48.710060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144737, 38.730125, 48.169281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361679, 39.065052, 48.196846>,  <31.491844, 39.266006, 48.213387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.361679, 39.065052, 48.196846>,  <31.144737, 38.730125, 48.169281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361679, 39.065052, 48.196846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205498, -0.052676, -0.977239,
		-0.814629, 0.544173, -0.200636,
		0.542356, 0.837318, 0.068915,
		31.524385, 39.316246, 48.217522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489597, 39.072670, 48.144913>,  <31.144737, 38.730125, 48.169281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489597, 39.072670, 48.144913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.149912, 38.971596, 47.959446>,  <29.946100, 38.910950, 47.848167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.149912, 38.971596, 47.959446>,  <30.489597, 39.072670, 48.144913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149912, 38.971596, 47.959446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484879, 0.025421, 0.874211,
		-0.209115, 0.967214, -0.144111,
		-0.849213, -0.252688, -0.463666,
		29.895147, 38.895790, 47.820347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967918, 39.453045, 48.403893>,  <30.489597, 39.072670, 48.144913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967918, 39.453045, 48.403893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.783173, 39.137653, 48.241425>,  <29.672325, 38.948418, 48.143944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.783173, 39.137653, 48.241425>,  <29.967918, 39.453045, 48.403893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783173, 39.137653, 48.241425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551778, -0.103107, 0.827593,
		-0.694422, 0.606353, -0.387446,
		-0.461865, -0.788483, -0.406172,
		29.644613, 38.901108, 48.119572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356995, 39.544712, 48.599731>,  <29.967918, 39.453045, 48.403893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356995, 39.544712, 48.599731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.352684, 39.159084, 48.493561>,  <29.350098, 38.927708, 48.429859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.352684, 39.159084, 48.493561>,  <29.356995, 39.544712, 48.599731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352684, 39.159084, 48.493561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685931, -0.186013, 0.703490,
		-0.727587, 0.189642, -0.659282,
		-0.010776, -0.964072, -0.265422,
		29.349451, 38.869862, 48.413933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594353, 39.436073, 48.608856>,  <29.356995, 39.544712, 48.599731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594353, 39.436073, 48.608856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.801626, 39.094624, 48.630039>,  <28.925991, 38.889751, 48.642750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.801626, 39.094624, 48.630039>,  <28.594353, 39.436073, 48.608856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801626, 39.094624, 48.630039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632118, -0.340537, 0.696033,
		-0.576120, -0.394147, -0.716054,
		0.518183, -0.853629, 0.052957,
		28.957081, 38.838535, 48.645927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100513, 38.845711, 48.671707>,  <28.594353, 39.436073, 48.608856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100513, 38.845711, 48.671707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.440857, 38.685833, 48.808109>,  <28.645063, 38.589909, 48.889950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.440857, 38.685833, 48.808109>,  <28.100513, 38.845711, 48.671707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440857, 38.685833, 48.808109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497753, -0.405480, 0.766699,
		-0.168169, -0.822092, -0.543953,
		0.850859, -0.399689, 0.341010,
		28.696115, 38.565926, 48.910412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930832, 38.259140, 48.833363>,  <28.100513, 38.845711, 48.671707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930832, 38.259140, 48.833363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.267975, 38.253891, 49.048553>,  <28.470261, 38.250740, 49.177670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.267975, 38.253891, 49.048553>,  <27.930832, 38.259140, 48.833363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267975, 38.253891, 49.048553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498103, -0.397400, 0.770692,
		0.203678, -0.917552, -0.341488,
		0.842857, -0.013123, 0.537977,
		28.520832, 38.249954, 49.209946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905371, 37.652119, 49.130493>,  <27.930832, 38.259140, 48.833363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905371, 37.652119, 49.130493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.161417, 37.860229, 49.356613>,  <28.315044, 37.985096, 49.492287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.161417, 37.860229, 49.356613>,  <27.905371, 37.652119, 49.130493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161417, 37.860229, 49.356613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517108, -0.252410, 0.817856,
		0.568198, -0.815844, 0.107467,
		0.640117, 0.520276, 0.565299,
		28.353453, 38.016312, 49.526203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353683, 37.077717, 49.246902>,  <27.905371, 37.652119, 49.130493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353683, 37.077717, 49.246902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.395853, 36.696125, 49.359196>,  <28.421154, 36.467171, 49.426571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.395853, 36.696125, 49.359196>,  <28.353683, 37.077717, 49.246902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395853, 36.696125, 49.359196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623791, -0.156418, -0.765779,
		0.774448, 0.255850, 0.578593,
		0.105422, -0.953978, 0.280735,
		28.427479, 36.409931, 49.443417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063223, 36.972645, 49.537605>,  <28.353683, 37.077717, 49.246902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063223, 36.972645, 49.537605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.887674, 36.639637, 49.402370>,  <28.782345, 36.439831, 49.321232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.887674, 36.639637, 49.402370>,  <29.063223, 36.972645, 49.537605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887674, 36.639637, 49.402370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555391, 0.044442, -0.830401,
		0.706351, -0.552208, 0.442871,
		-0.438871, -0.832521, -0.338083,
		28.756012, 36.389881, 49.300945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548868, 36.756603, 49.040768>,  <29.063223, 36.972645, 49.537605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548868, 36.756603, 49.040768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.218521, 36.541206, 48.973873>,  <29.020313, 36.411968, 48.933735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.218521, 36.541206, 48.973873>,  <29.548868, 36.756603, 49.040768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218521, 36.541206, 48.973873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198367, 0.000162, -0.980128,
		0.527818, -0.842631, 0.106686,
		-0.825869, -0.538492, -0.167235,
		28.970760, 36.379658, 48.923702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725515, 36.279690, 48.683517>,  <29.548868, 36.756603, 49.040768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725515, 36.279690, 48.683517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.333841, 36.293514, 48.603516>,  <29.098837, 36.301807, 48.555515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.333841, 36.293514, 48.603516>,  <29.725515, 36.279690, 48.683517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333841, 36.293514, 48.603516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195581, -0.102689, -0.975296,
		-0.054236, -0.994113, 0.093794,
		-0.979187, 0.034552, -0.199999,
		29.040085, 36.303883, 48.543514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626741, 35.801083, 48.168365>,  <29.725515, 36.279690, 48.683517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626741, 35.801083, 48.168365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.292862, 36.019611, 48.140633>,  <29.092533, 36.150730, 48.123993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.292862, 36.019611, 48.140633>,  <29.626741, 35.801083, 48.168365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292862, 36.019611, 48.140633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014201, -0.104501, -0.994423,
		-0.550522, -0.831030, 0.079468,
		-0.834700, 0.546323, -0.069331,
		29.042452, 36.183510, 48.119835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160397, 35.403595, 47.684437>,  <29.626741, 35.801083, 48.168365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160397, 35.403595, 47.684437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.063591, 35.791389, 47.700054>,  <29.005508, 36.024067, 47.709423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.063591, 35.791389, 47.700054>,  <29.160397, 35.403595, 47.684437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063591, 35.791389, 47.700054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038316, 0.030658, -0.998795,
		-0.969516, -0.243216, 0.029727,
		-0.242012, 0.969487, 0.039043,
		28.990988, 36.082237, 47.711765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680698, 35.437271, 47.106503>,  <29.160397, 35.403595, 47.684437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680698, 35.437271, 47.106503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.816351, 35.799149, 47.209675>,  <28.897743, 36.016273, 47.271576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.816351, 35.799149, 47.209675>,  <28.680698, 35.437271, 47.106503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816351, 35.799149, 47.209675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188927, 0.203091, -0.960760,
		-0.921572, 0.374555, -0.102045,
		0.339134, 0.904689, 0.257927,
		28.918091, 36.070557, 47.287052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.287327, 34.220287, 51.943466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.469944, 34.576134, 51.948509>,  <30.579514, 34.789642, 51.951534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.469944, 34.576134, 51.948509>,  <30.287327, 34.220287, 51.943466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469944, 34.576134, 51.948509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563459, -0.278135, -0.777917,
		-0.688537, 0.362258, -0.628240,
		0.456542, 0.889612, 0.012611,
		30.606907, 34.843018, 51.952293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218819, 34.584103, 51.310417>,  <30.287327, 34.220287, 51.943466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218819, 34.584103, 51.310417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.522169, 34.804863, 51.449135>,  <30.704180, 34.937321, 51.532364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.522169, 34.804863, 51.449135>,  <30.218819, 34.584103, 51.310417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522169, 34.804863, 51.449135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465372, -0.085929, -0.880934,
		-0.456392, 0.829468, -0.322007,
		0.758377, 0.551905, 0.346794,
		30.749681, 34.970436, 51.553173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334299, 34.969891, 50.805561>,  <30.218819, 34.584103, 51.310417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334299, 34.969891, 50.805561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.675200, 34.984657, 51.014290>,  <30.879740, 34.993519, 51.139526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.675200, 34.984657, 51.014290>,  <30.334299, 34.969891, 50.805561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675200, 34.984657, 51.014290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500127, -0.350037, -0.792052,
		0.153417, 0.936008, -0.316784,
		0.852253, 0.036918, 0.521825,
		30.930876, 34.995731, 51.170837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862377, 35.156574, 50.270493>,  <30.334299, 34.969891, 50.805561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862377, 35.156574, 50.270493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.100183, 35.012104, 50.557854>,  <31.242867, 34.925423, 50.730270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.100183, 35.012104, 50.557854>,  <30.862377, 35.156574, 50.270493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100183, 35.012104, 50.557854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536427, -0.487419, -0.688962,
		0.598999, 0.794970, -0.096035,
		0.594514, -0.361172, 0.718407,
		31.278538, 34.903751, 50.773376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484980, 35.313541, 50.099197>,  <30.862377, 35.156574, 50.270493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484980, 35.313541, 50.099197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.522898, 34.993076, 50.335552>,  <31.545649, 34.800797, 50.477367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.522898, 34.993076, 50.335552>,  <31.484980, 35.313541, 50.099197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522898, 34.993076, 50.335552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532893, -0.460518, -0.709893,
		0.840856, 0.382177, 0.383279,
		0.094797, -0.801164, 0.590889,
		31.551336, 34.752728, 50.512817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173561, 35.111607, 50.046066>,  <31.484980, 35.313541, 50.099197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173561, 35.111607, 50.046066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.994661, 34.786591, 50.195595>,  <31.887321, 34.591579, 50.285313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.994661, 34.786591, 50.195595>,  <32.173561, 35.111607, 50.046066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994661, 34.786591, 50.195595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422675, -0.560351, -0.712287,
		0.788234, -0.160566, 0.594059,
		-0.447251, -0.812542, 0.373821,
		31.860487, 34.542828, 50.307739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748684, 34.636883, 50.224735>,  <32.173561, 35.111607, 50.046066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748684, 34.636883, 50.224735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.421051, 34.415211, 50.165424>,  <32.224472, 34.282207, 50.129837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.421051, 34.415211, 50.165424>,  <32.748684, 34.636883, 50.224735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421051, 34.415211, 50.165424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515014, -0.596478, -0.615610,
		0.252713, -0.580602, 0.773975,
		-0.819083, -0.554181, -0.148280,
		32.175327, 34.248955, 50.120941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919312, 33.986515, 50.194145>,  <32.748684, 34.636883, 50.224735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919312, 33.986515, 50.194145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.562737, 33.986752, 50.012890>,  <32.348789, 33.986893, 49.904137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.562737, 33.986752, 50.012890>,  <32.919312, 33.986515, 50.194145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562737, 33.986752, 50.012890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410915, -0.420448, -0.808933,
		-0.190998, -0.907316, 0.374562,
		-0.891442, 0.000591, -0.453134,
		32.295303, 33.986931, 49.876949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926640, 33.361469, 49.836555>,  <32.919312, 33.986515, 50.194145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926640, 33.361469, 49.836555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.642326, 33.588921, 49.670933>,  <32.471737, 33.725391, 49.571560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.642326, 33.588921, 49.670933>,  <32.926640, 33.361469, 49.836555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642326, 33.588921, 49.670933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234749, -0.363140, -0.901678,
		-0.663082, -0.738099, 0.124629,
		-0.710785, 0.568629, -0.414059,
		32.429092, 33.759510, 49.546715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577854, 32.876301, 49.444386>,  <32.926640, 33.361469, 49.836555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577854, 32.876301, 49.444386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.483154, 33.236710, 49.298996>,  <32.426334, 33.452953, 49.211761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.483154, 33.236710, 49.298996>,  <32.577854, 32.876301, 49.444386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483154, 33.236710, 49.298996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268403, -0.298893, -0.915763,
		-0.933762, -0.314360, -0.171076,
		-0.236746, 0.901022, -0.363470,
		32.412132, 33.507015, 49.189957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179195, 32.781021, 48.755108>,  <32.577854, 32.876301, 49.444386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179195, 32.781021, 48.755108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.316635, 33.156624, 48.749275>,  <32.399097, 33.381985, 48.745773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.316635, 33.156624, 48.749275>,  <32.179195, 32.781021, 48.755108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316635, 33.156624, 48.749275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317022, -0.130593, -0.939384,
		-0.883989, 0.318148, -0.342556,
		0.343599, 0.939003, -0.014583,
		32.419716, 33.438324, 48.744900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190845, 32.821053, 48.134899>,  <32.179195, 32.781021, 48.755108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190845, 32.821053, 48.134899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.388504, 33.158016, 48.220837>,  <32.507099, 33.360195, 48.272400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.388504, 33.158016, 48.220837>,  <32.190845, 32.821053, 48.134899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388504, 33.158016, 48.220837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304838, 0.063540, -0.950283,
		-0.814182, 0.535073, -0.225401,
		0.494148, 0.842413, 0.214843,
		32.536747, 33.410740, 48.285290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529329, 33.065762, 48.273987>,  <32.190845, 32.821053, 48.134899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529329, 33.065762, 48.273987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.150414, 33.081142, 48.146763>,  <30.923063, 33.090370, 48.070431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.150414, 33.081142, 48.146763>,  <31.529329, 33.065762, 48.273987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150414, 33.081142, 48.146763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320187, -0.079881, 0.943980,
		0.010894, 0.996063, 0.087984,
		-0.947292, 0.038455, -0.318056,
		30.866226, 33.092678, 48.051346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089478, 33.464333, 48.755398>,  <31.529329, 33.065762, 48.273987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089478, 33.464333, 48.755398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.819530, 33.245464, 48.557343>,  <30.657562, 33.114143, 48.438511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.819530, 33.245464, 48.557343>,  <31.089478, 33.464333, 48.755398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819530, 33.245464, 48.557343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498267, -0.157041, 0.852683,
		-0.544322, 0.822155, -0.166657,
		-0.674865, -0.547174, -0.495134,
		30.617071, 33.081314, 48.408802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494823, 33.532726, 49.095840>,  <31.089478, 33.464333, 48.755398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494823, 33.532726, 49.095840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.394785, 33.205154, 48.889229>,  <30.334763, 33.008610, 48.765263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.394785, 33.205154, 48.889229>,  <30.494823, 33.532726, 49.095840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394785, 33.205154, 48.889229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509681, -0.342230, 0.789369,
		-0.823212, 0.460683, -0.331804,
		-0.250095, -0.818932, -0.516529,
		30.319756, 32.959476, 48.734272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773468, 33.534794, 49.111992>,  <30.494823, 33.532726, 49.095840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773468, 33.534794, 49.111992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.911407, 33.160870, 49.078037>,  <29.994171, 32.936516, 49.057663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.911407, 33.160870, 49.078037>,  <29.773468, 33.534794, 49.111992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911407, 33.160870, 49.078037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442005, -0.241503, 0.863891,
		-0.828077, -0.260390, -0.496473,
		0.344848, -0.934812, -0.084889,
		30.014862, 32.880424, 49.052570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291023, 33.142147, 49.320126>,  <29.773468, 33.534794, 49.111992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291023, 33.142147, 49.320126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.607256, 32.899101, 49.350552>,  <29.796995, 32.753273, 49.368809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.607256, 32.899101, 49.350552>,  <29.291023, 33.142147, 49.320126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607256, 32.899101, 49.350552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204631, -0.145066, 0.968030,
		-0.577155, -0.780872, -0.239023,
		0.790581, -0.607615, 0.076065,
		29.844431, 32.716816, 49.373371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014738, 32.632828, 49.654770>,  <29.291023, 33.142147, 49.320126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014738, 32.632828, 49.654770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.404772, 32.577736, 49.724331>,  <29.638792, 32.544682, 49.766068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.404772, 32.577736, 49.724331>,  <29.014738, 32.632828, 49.654770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404772, 32.577736, 49.724331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188839, -0.103981, 0.976488,
		-0.116417, -0.984996, -0.127401,
		0.975083, -0.137738, 0.173901,
		29.697296, 32.536419, 49.776501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052298, 31.973564, 49.958706>,  <29.014738, 32.632828, 49.654770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052298, 31.973564, 49.958706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.362537, 32.211033, 50.044495>,  <29.548681, 32.353516, 50.095966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.362537, 32.211033, 50.044495>,  <29.052298, 31.973564, 49.958706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362537, 32.211033, 50.044495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220078, -0.064124, 0.973372,
		0.591616, -0.802148, 0.080919,
		0.775601, 0.593672, 0.214472,
		29.595217, 32.389133, 50.108837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284000, 31.615126, 50.561779>,  <29.052298, 31.973564, 49.958706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284000, 31.615126, 50.561779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448023, 31.979282, 50.539707>,  <29.546436, 32.197777, 50.526463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448023, 31.979282, 50.539707>,  <29.284000, 31.615126, 50.561779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448023, 31.979282, 50.539707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200231, 0.148883, 0.968371,
		0.889811, -0.386036, 0.243338,
		0.410054, 0.910390, -0.055181,
		29.571039, 32.252399, 50.523151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624823, 31.616095, 51.220898>,  <29.284000, 31.615126, 50.561779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624823, 31.616095, 51.220898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.561024, 31.985228, 51.080643>,  <29.522745, 32.206707, 50.996490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.561024, 31.985228, 51.080643>,  <29.624823, 31.616095, 51.220898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561024, 31.985228, 51.080643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351146, 0.278920, 0.893812,
		0.922636, 0.265684, 0.279562,
		-0.159496, 0.922830, -0.350635,
		29.513174, 32.262077, 50.975452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688068, 32.077663, 51.807785>,  <29.624823, 31.616095, 51.220898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688068, 32.077663, 51.807785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.519138, 32.321774, 51.539692>,  <29.417780, 32.468239, 51.378838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.519138, 32.321774, 51.539692>,  <29.688068, 32.077663, 51.807785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519138, 32.321774, 51.539692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311434, 0.596704, 0.739563,
		0.851263, 0.521070, -0.061945,
		-0.422327, 0.610271, -0.670231,
		29.392441, 32.504856, 51.338623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795563, 32.727634, 52.068542>,  <29.688068, 32.077663, 51.807785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795563, 32.727634, 52.068542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.480459, 32.752399, 51.823395>,  <29.291397, 32.767258, 51.676308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.480459, 32.752399, 51.823395>,  <29.795563, 32.727634, 52.068542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480459, 32.752399, 51.823395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469687, 0.583343, 0.662650,
		0.398539, 0.809863, -0.430452,
		-0.787757, 0.061915, -0.612867,
		29.244133, 32.770973, 51.639534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527021, 33.426590, 52.073410>,  <29.795563, 32.727634, 52.068542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527021, 33.426590, 52.073410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.212795, 33.217247, 51.941357>,  <29.024260, 33.091640, 51.862125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.212795, 33.217247, 51.941357>,  <29.527021, 33.426590, 52.073410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212795, 33.217247, 51.941357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602179, 0.523836, 0.602475,
		-0.142374, 0.672082, -0.726661,
		-0.785564, -0.523356, -0.330133,
		28.977125, 33.060242, 51.842316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019493, 33.936378, 51.966511>,  <29.527021, 33.426590, 52.073410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019493, 33.936378, 51.966511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.798021, 33.604488, 51.994785>,  <28.665138, 33.405354, 52.011749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.798021, 33.604488, 51.994785>,  <29.019493, 33.936378, 51.966511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798021, 33.604488, 51.994785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696989, 0.508204, 0.505900,
		-0.455679, 0.230842, -0.859691,
		-0.553682, -0.829723, 0.070684,
		28.631916, 33.355572, 52.015991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382648, 34.151413, 51.733650>,  <29.019493, 33.936378, 51.966511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382648, 34.151413, 51.733650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.317583, 33.816494, 51.942448>,  <28.278543, 33.615543, 52.067726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.317583, 33.816494, 51.942448>,  <28.382648, 34.151413, 51.733650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317583, 33.816494, 51.942448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737018, 0.454845, 0.499920,
		-0.656006, -0.303396, -0.691090,
		-0.162665, -0.837297, 0.521990,
		28.268784, 33.565304, 52.099045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545855, 34.925545, 52.089001>,  <28.382648, 34.151413, 51.733650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545855, 34.925545, 52.089001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.208872, 35.072708, 51.931564>,  <28.006683, 35.161007, 51.837105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.208872, 35.072708, 51.931564>,  <28.545855, 34.925545, 52.089001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208872, 35.072708, 51.931564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458056, 0.104507, -0.882759,
		-0.283643, -0.923970, -0.256566,
		-0.842456, 0.367910, -0.393587,
		27.956135, 35.183083, 51.813488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575508, 34.845142, 51.435284>,  <28.545855, 34.925545, 52.089001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575508, 34.845142, 51.435284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.244530, 35.065212, 51.390301>,  <28.045942, 35.197254, 51.363312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.244530, 35.065212, 51.390301>,  <28.575508, 34.845142, 51.435284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244530, 35.065212, 51.390301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220718, 0.134488, -0.966021,
		-0.516352, -0.824151, -0.232714,
		-0.827444, 0.550171, -0.112461,
		27.996296, 35.230263, 51.356564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202280, 34.583618, 50.915611>,  <28.575508, 34.845142, 51.435284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202280, 34.583618, 50.915611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041204, 34.949043, 50.938374>,  <27.944559, 35.168301, 50.952030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.041204, 34.949043, 50.938374>,  <28.202280, 34.583618, 50.915611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041204, 34.949043, 50.938374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159553, 0.131278, -0.978422,
		-0.901323, -0.384920, -0.198627,
		-0.402690, 0.913566, 0.056909,
		27.920397, 35.223114, 50.955444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675110, 34.632175, 50.384747>,  <28.202280, 34.583618, 50.915611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675110, 34.632175, 50.384747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.811768, 34.997952, 50.471535>,  <27.893763, 35.217419, 50.523605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.811768, 34.997952, 50.471535>,  <27.675110, 34.632175, 50.384747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811768, 34.997952, 50.471535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147220, 0.175937, -0.973330,
		-0.928227, 0.364475, -0.074517,
		0.341644, 0.914442, 0.216968,
		27.914261, 35.272285, 50.536625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272488, 35.075794, 50.058971>,  <27.675110, 34.632175, 50.384747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272488, 35.075794, 50.058971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.622190, 35.267921, 50.087173>,  <27.832012, 35.383198, 50.104095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.622190, 35.267921, 50.087173>,  <27.272488, 35.075794, 50.058971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622190, 35.267921, 50.087173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019349, 0.179589, -0.983551,
		-0.485077, 0.858513, 0.166301,
		0.874257, 0.480316, 0.070504,
		27.884468, 35.412018, 50.108326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357183, 35.856953, 50.098068>,  <27.272488, 35.075794, 50.058971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357183, 35.856953, 50.098068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.679396, 35.722504, 49.902870>,  <27.872723, 35.641834, 49.785751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.679396, 35.722504, 49.902870>,  <27.357183, 35.856953, 50.098068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679396, 35.722504, 49.902870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251462, 0.551801, -0.795162,
		0.536551, 0.763240, 0.359970,
		0.805531, -0.336127, -0.487995,
		27.921055, 35.621666, 49.756474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813635, 36.445679, 49.808086>,  <27.357183, 35.856953, 50.098068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813635, 36.445679, 49.808086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.818760, 36.112305, 49.587101>,  <27.821835, 35.912281, 49.454510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.818760, 36.112305, 49.587101>,  <27.813635, 36.445679, 49.808086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818760, 36.112305, 49.587101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281335, 0.527185, -0.801827,
		0.959524, 0.165699, -0.227722,
		0.012810, -0.833439, -0.552464,
		27.822603, 35.862274, 49.421360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160078, 37.051884, 50.031986>,  <27.813635, 36.445679, 49.808086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160078, 37.051884, 50.031986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.235113, 37.443932, 50.057838>,  <28.280134, 37.679161, 50.073349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.235113, 37.443932, 50.057838>,  <28.160078, 37.051884, 50.031986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235113, 37.443932, 50.057838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208741, -0.024515, 0.977664,
		0.959811, -0.196889, 0.199992,
		0.187588, 0.980119, 0.064628,
		28.291389, 37.737968, 50.077229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488558, 37.138828, 50.668316>,  <28.160078, 37.051884, 50.031986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488558, 37.138828, 50.668316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.328510, 37.489708, 50.562168>,  <28.232481, 37.700237, 50.498482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.328510, 37.489708, 50.562168>,  <28.488558, 37.138828, 50.668316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328510, 37.489708, 50.562168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382857, 0.103087, 0.918038,
		0.832661, 0.468923, 0.294596,
		-0.400120, 0.877203, -0.265366,
		28.208475, 37.752869, 50.482559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783401, 37.644218, 51.195175>,  <28.488558, 37.138828, 50.668316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783401, 37.644218, 51.195175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.444109, 37.783123, 51.035217>,  <28.240534, 37.866467, 50.939243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.444109, 37.783123, 51.035217>,  <28.783401, 37.644218, 51.195175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444109, 37.783123, 51.035217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352814, 0.192631, 0.915650,
		0.394998, 0.917772, -0.040878,
		-0.848233, 0.347258, -0.399891,
		28.189640, 37.887299, 50.915249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669531, 38.280678, 51.543736>,  <28.783401, 37.644218, 51.195175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669531, 38.280678, 51.543736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.302647, 38.224567, 51.394581>,  <28.082516, 38.190903, 51.305088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.302647, 38.224567, 51.394581>,  <28.669531, 38.280678, 51.543736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302647, 38.224567, 51.394581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398395, 0.317549, 0.860491,
		-0.002294, 0.937809, -0.347144,
		-0.917211, -0.140274, -0.372890,
		28.027483, 38.182484, 51.282715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336790, 38.947853, 51.618206>,  <28.669531, 38.280678, 51.543736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336790, 38.947853, 51.618206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.032452, 38.693604, 51.565914>,  <27.849848, 38.541054, 51.534538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.032452, 38.693604, 51.565914>,  <28.336790, 38.947853, 51.618206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032452, 38.693604, 51.565914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356048, 0.240471, 0.902997,
		-0.542531, 0.733589, -0.409275,
		-0.760848, -0.635626, -0.130730,
		27.804197, 38.502914, 51.526695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784683, 39.317699, 51.828773>,  <28.336790, 38.947853, 51.618206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784683, 39.317699, 51.828773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.655104, 38.939533, 51.842922>,  <27.577356, 38.712635, 51.851414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.655104, 38.939533, 51.842922>,  <27.784683, 39.317699, 51.828773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655104, 38.939533, 51.842922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416867, 0.176207, 0.891725,
		-0.849281, 0.274129, -0.451193,
		-0.323951, -0.945412, 0.035374,
		27.557919, 38.655910, 51.853535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062235, 39.300060, 52.010857>,  <27.784683, 39.317699, 51.828773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062235, 39.300060, 52.010857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.190027, 38.932285, 52.102562>,  <27.266703, 38.711620, 52.157585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.190027, 38.932285, 52.102562>,  <27.062235, 39.300060, 52.010857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190027, 38.932285, 52.102562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431032, 0.074461, 0.899259,
		-0.843886, -0.386115, -0.372520,
		0.319480, -0.919441, 0.229265,
		27.285872, 38.656452, 52.171341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474802, 38.976768, 52.303120>,  <27.062235, 39.300060, 52.010857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474802, 38.976768, 52.303120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.777174, 38.743652, 52.422398>,  <26.958597, 38.603783, 52.493965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.777174, 38.743652, 52.422398>,  <26.474802, 38.976768, 52.303120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777174, 38.743652, 52.422398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322484, 0.064900, 0.944347,
		-0.569713, -0.810024, -0.138882,
		0.755930, -0.582795, 0.298194,
		27.003954, 38.568813, 52.511856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212458, 38.431419, 52.709583>,  <26.474802, 38.976768, 52.303120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212458, 38.431419, 52.709583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.590786, 38.432713, 52.839455>,  <26.817783, 38.433487, 52.917377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.590786, 38.432713, 52.839455>,  <26.212458, 38.431419, 52.709583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590786, 38.432713, 52.839455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324501, 0.043480, 0.944885,
		-0.011062, -0.999049, 0.042173,
		0.945821, 0.003233, 0.324674,
		26.874533, 38.433681, 52.936855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.778851, 37.776398, 38.678123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133045, 37.884472, 38.829338>,  <34.345562, 37.949318, 38.920067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133045, 37.884472, 38.829338>,  <33.778851, 37.776398, 38.678123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133045, 37.884472, 38.829338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403015, 0.041634, 0.914246,
		0.231278, -0.961907, 0.145756,
		0.885488, 0.270187, 0.378034,
		34.398693, 37.965527, 38.942749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940353, 37.355198, 39.289867>,  <33.778851, 37.776398, 38.678123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940353, 37.355198, 39.289867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141445, 37.700630, 39.305290>,  <34.262100, 37.907890, 39.314545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141445, 37.700630, 39.305290>,  <33.940353, 37.355198, 39.289867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141445, 37.700630, 39.305290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345331, 0.159741, 0.924786,
		0.792471, -0.478231, 0.378528,
		0.502728, 0.863584, 0.038558,
		34.292263, 37.959705, 39.316856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079906, 37.252659, 39.917336>,  <33.940353, 37.355198, 39.289867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079906, 37.252659, 39.917336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131538, 37.638573, 39.825665>,  <34.162518, 37.870121, 39.770660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131538, 37.638573, 39.825665>,  <34.079906, 37.252659, 39.917336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131538, 37.638573, 39.825665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479136, 0.263027, 0.837404,
		0.868197, 0.001714, 0.496217,
		0.129083, 0.964787, -0.229180,
		34.170265, 37.928009, 39.756912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271244, 37.653652, 40.521778>,  <34.079906, 37.252659, 39.917336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271244, 37.653652, 40.521778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161240, 37.954273, 40.281933>,  <34.095238, 38.134647, 40.138027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161240, 37.954273, 40.281933>,  <34.271244, 37.653652, 40.521778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161240, 37.954273, 40.281933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510812, 0.414141, 0.753365,
		0.814519, 0.513473, 0.270009,
		-0.275011, 0.751553, -0.599614,
		34.078735, 38.179741, 40.102047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315468, 38.240910, 40.984268>,  <34.271244, 37.653652, 40.521778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315468, 38.240910, 40.984268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099800, 38.365837, 40.671410>,  <33.970398, 38.440792, 40.483692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099800, 38.365837, 40.671410>,  <34.315468, 38.240910, 40.984268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099800, 38.365837, 40.671410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669912, 0.403792, 0.623033,
		0.510408, 0.859891, -0.008489,
		-0.539168, 0.312314, -0.782150,
		33.938049, 38.459530, 40.436764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144386, 38.913582, 41.245697>,  <34.315468, 38.240910, 40.984268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144386, 38.913582, 41.245697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903702, 38.842136, 40.934303>,  <33.759289, 38.799271, 40.747467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903702, 38.842136, 40.934303>,  <34.144386, 38.913582, 41.245697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903702, 38.842136, 40.934303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731801, 0.513801, 0.447744,
		0.320013, 0.839110, -0.439871,
		-0.601713, -0.178614, -0.778485,
		33.723186, 38.788551, 40.700756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777744, 39.592270, 41.098526>,  <34.144386, 38.913582, 41.245697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777744, 39.592270, 41.098526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532887, 39.308918, 40.957966>,  <33.385971, 39.138908, 40.873631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532887, 39.308918, 40.957966>,  <33.777744, 39.592270, 41.098526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532887, 39.308918, 40.957966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754357, 0.389885, 0.528144,
		-0.237122, 0.588377, -0.773036,
		-0.612143, -0.708380, -0.351396,
		33.349243, 39.096405, 40.852547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119640, 39.935741, 41.071152>,  <33.777744, 39.592270, 41.098526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119640, 39.935741, 41.071152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992683, 39.561378, 41.010052>,  <32.916508, 39.336761, 40.973392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992683, 39.561378, 41.010052>,  <33.119640, 39.935741, 41.071152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992683, 39.561378, 41.010052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786249, 0.169661, 0.594161,
		-0.530165, 0.308684, -0.789708,
		-0.317391, -0.935911, -0.152754,
		32.897465, 39.280605, 40.964226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395172, 39.940666, 40.818153>,  <33.119640, 39.935741, 41.071152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395172, 39.940666, 40.818153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441372, 39.582706, 40.990578>,  <32.469090, 39.367931, 41.094032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441372, 39.582706, 40.990578>,  <32.395172, 39.940666, 40.818153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441372, 39.582706, 40.990578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810925, 0.165664, 0.561210,
		-0.573639, -0.414373, -0.706565,
		0.115498, -0.894903, 0.431056,
		32.476021, 39.314236, 41.119896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735512, 39.752953, 40.884598>,  <32.395172, 39.940666, 40.818153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735512, 39.752953, 40.884598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945858, 39.524891, 41.137070>,  <32.072067, 39.388054, 41.288555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945858, 39.524891, 41.137070>,  <31.735512, 39.752953, 40.884598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945858, 39.524891, 41.137070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708995, 0.116121, 0.695587,
		-0.469885, -0.813290, -0.343172,
		0.525865, -0.570154, 0.631182,
		32.103619, 39.353844, 41.326424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171463, 39.309532, 41.168919>,  <31.735512, 39.752953, 40.884598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171463, 39.309532, 41.168919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468349, 39.254448, 41.431263>,  <31.646481, 39.221397, 41.588669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468349, 39.254448, 41.431263>,  <31.171463, 39.309532, 41.168919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468349, 39.254448, 41.431263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614948, 0.249049, 0.748207,
		-0.266375, -0.958651, 0.100165,
		0.742215, -0.137708, 0.655861,
		31.691013, 39.213135, 41.628021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956814, 38.831631, 41.705772>,  <31.171463, 39.309532, 41.168919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956814, 38.831631, 41.705772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251459, 39.041668, 41.876263>,  <31.428247, 39.167690, 41.978558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251459, 39.041668, 41.876263>,  <30.956814, 38.831631, 41.705772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251459, 39.041668, 41.876263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593291, 0.199175, 0.779958,
		0.324660, -0.827406, 0.458252,
		0.736615, 0.525098, 0.426228,
		31.472445, 39.199196, 42.004131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295622, 38.153870, 41.701340>,  <30.956814, 38.831631, 41.705772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295622, 38.153870, 41.701340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195099, 37.768429, 41.737835>,  <31.134785, 37.537167, 41.759731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.195099, 37.768429, 41.737835>,  <31.295622, 38.153870, 41.701340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195099, 37.768429, 41.737835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381380, -0.185214, -0.905674,
		0.889603, -0.192808, 0.414042,
		-0.251308, -0.963598, 0.091234,
		31.119707, 37.479351, 41.765205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984310, 37.753632, 41.682583>,  <31.295622, 38.153870, 41.701340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984310, 37.753632, 41.682583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663216, 37.554676, 41.550999>,  <31.470558, 37.435303, 41.472050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663216, 37.554676, 41.550999>,  <31.984310, 37.753632, 41.682583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663216, 37.554676, 41.550999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497890, -0.255411, -0.828776,
		0.328207, -0.829076, 0.452675,
		-0.802737, -0.497392, -0.328961,
		31.422394, 37.405457, 41.452309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302670, 37.290775, 41.273220>,  <31.984310, 37.753632, 41.682583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302670, 37.290775, 41.273220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924891, 37.256653, 41.146267>,  <31.698221, 37.236179, 41.070095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924891, 37.256653, 41.146267>,  <32.302670, 37.290775, 41.273220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924891, 37.256653, 41.146267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328306, -0.200731, -0.922996,
		0.015034, -0.975925, 0.217590,
		-0.944452, -0.085313, -0.317384,
		31.641556, 37.231060, 41.051052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382721, 36.737507, 40.853432>,  <32.302670, 37.290775, 41.273220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382721, 36.737507, 40.853432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034653, 36.900814, 40.743069>,  <31.825811, 36.998798, 40.676849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034653, 36.900814, 40.743069>,  <32.382721, 36.737507, 40.853432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034653, 36.900814, 40.743069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207014, -0.205230, -0.956570,
		-0.447160, -0.889493, 0.094068,
		-0.870168, 0.408267, -0.275908,
		31.773602, 37.023293, 40.660297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950909, 36.258461, 40.394070>,  <32.382721, 36.737507, 40.853432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950909, 36.258461, 40.394070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789101, 36.615097, 40.312641>,  <31.692017, 36.829079, 40.263786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789101, 36.615097, 40.312641>,  <31.950909, 36.258461, 40.394070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789101, 36.615097, 40.312641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119698, -0.272294, -0.954740,
		-0.906662, -0.361844, 0.216870,
		-0.404519, 0.891586, -0.203567,
		31.667746, 36.882572, 40.251572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340851, 36.140755, 40.060085>,  <31.950909, 36.258461, 40.394070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340851, 36.140755, 40.060085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434214, 36.508945, 39.934704>,  <31.490231, 36.729858, 39.859474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434214, 36.508945, 39.934704>,  <31.340851, 36.140755, 40.060085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434214, 36.508945, 39.934704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107633, -0.295919, -0.949130,
		-0.966404, 0.255271, 0.030004,
		0.233407, 0.920472, -0.313452,
		31.504236, 36.785088, 39.840668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867680, 36.310829, 39.610180>,  <31.340851, 36.140755, 40.060085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867680, 36.310829, 39.610180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170387, 36.555916, 39.519070>,  <31.352013, 36.702969, 39.464405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170387, 36.555916, 39.519070>,  <30.867680, 36.310829, 39.610180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170387, 36.555916, 39.519070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111257, -0.222631, -0.968534,
		-0.644146, 0.758297, -0.100311,
		0.756768, 0.612716, -0.227772,
		31.397417, 36.739731, 39.450737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710613, 36.562981, 38.971996>,  <30.867680, 36.310829, 39.610180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710613, 36.562981, 38.971996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095345, 36.671486, 38.986435>,  <31.326183, 36.736588, 38.995098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095345, 36.671486, 38.986435>,  <30.710613, 36.562981, 38.971996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095345, 36.671486, 38.986435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075470, -0.136152, -0.987809,
		-0.263041, 0.952827, -0.151427,
		0.961828, 0.271262, 0.036096,
		31.383894, 36.752865, 38.997265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695017, 37.059422, 38.531250>,  <30.710613, 36.562981, 38.971996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695017, 37.059422, 38.531250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069166, 36.926205, 38.578842>,  <31.293655, 36.846275, 38.607399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069166, 36.926205, 38.578842>,  <30.695017, 37.059422, 38.531250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069166, 36.926205, 38.578842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094229, -0.089585, -0.991512,
		0.340877, 0.938646, -0.052413,
		0.935374, -0.333045, 0.118985,
		31.349779, 36.826290, 38.614536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099340, 37.342243, 37.988464>,  <30.695017, 37.059422, 38.531250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099340, 37.342243, 37.988464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358526, 37.052784, 38.083519>,  <31.514038, 36.879108, 38.140553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358526, 37.052784, 38.083519>,  <31.099340, 37.342243, 37.988464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358526, 37.052784, 38.083519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159114, -0.176508, -0.971353,
		0.744865, 0.667215, 0.000772,
		0.647965, -0.723650, 0.237638,
		31.552916, 36.835690, 38.154812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670326, 37.416115, 37.502392>,  <31.099340, 37.342243, 37.988464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670326, 37.416115, 37.502392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652807, 37.039608, 37.636318>,  <31.642296, 36.813705, 37.716675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652807, 37.039608, 37.636318>,  <31.670326, 37.416115, 37.502392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652807, 37.039608, 37.636318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012338, -0.335617, -0.941918,
		0.998964, -0.037120, 0.026312,
		-0.043795, -0.941267, 0.334812,
		31.639669, 36.757229, 37.736763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337254, 37.023376, 37.271984>,  <31.670326, 37.416115, 37.502392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337254, 37.023376, 37.271984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061928, 36.741158, 37.339424>,  <31.896732, 36.571827, 37.379887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061928, 36.741158, 37.339424>,  <32.337254, 37.023376, 37.271984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061928, 36.741158, 37.339424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073484, -0.299036, -0.951408,
		0.721679, -0.642481, 0.257677,
		-0.688317, -0.705546, 0.168596,
		31.855433, 36.529495, 37.390003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570305, 36.380062, 36.843609>,  <32.337254, 37.023376, 37.271984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570305, 36.380062, 36.843609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181561, 36.338779, 36.928314>,  <31.948315, 36.314011, 36.979137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181561, 36.338779, 36.928314>,  <32.570305, 36.380062, 36.843609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181561, 36.338779, 36.928314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186473, -0.212264, -0.959256,
		0.143954, -0.971747, 0.187044,
		-0.971856, -0.103210, 0.211761,
		31.890003, 36.307816, 36.991844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148552, 36.373100, 37.450993>,  <32.570305, 36.380062, 36.843609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148552, 36.373100, 37.450993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970711, 36.318485, 37.805096>,  <32.864006, 36.285717, 38.017559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970711, 36.318485, 37.805096>,  <33.148552, 36.373100, 37.450993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970711, 36.318485, 37.805096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795285, 0.514902, -0.319998,
		-0.412129, -0.846305, -0.337516,
		-0.444604, -0.136541, 0.885259,
		32.837330, 36.277523, 38.070675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500660, 35.881516, 37.428783>,  <33.148552, 36.373100, 37.450993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500660, 35.881516, 37.428783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490349, 36.164597, 37.711197>,  <32.484161, 36.334446, 37.880646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490349, 36.164597, 37.711197>,  <32.500660, 35.881516, 37.428783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490349, 36.164597, 37.711197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735383, 0.464994, -0.492943,
		-0.677162, -0.531915, 0.508447,
		-0.025779, 0.707705, 0.706037,
		32.482616, 36.376907, 37.923008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030083, 35.681911, 37.924278>,  <32.500660, 35.881516, 37.428783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030083, 35.681911, 37.924278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273438, 35.377316, 37.834835>,  <33.419449, 35.194557, 37.781170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273438, 35.377316, 37.834835>,  <33.030083, 35.681911, 37.924278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273438, 35.377316, 37.834835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362417, -0.517221, 0.775330,
		-0.706062, -0.390658, -0.590646,
		0.608383, -0.761491, -0.223608,
		33.455952, 35.148869, 37.767754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650261, 35.086891, 37.848392>,  <33.030083, 35.681911, 37.924278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650261, 35.086891, 37.848392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015499, 34.985317, 37.976006>,  <33.234642, 34.924374, 38.052574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015499, 34.985317, 37.976006>,  <32.650261, 35.086891, 37.848392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015499, 34.985317, 37.976006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403925, -0.456319, 0.792854,
		-0.055756, -0.852813, -0.519232,
		0.913092, -0.253937, 0.319030,
		33.289425, 34.909138, 38.071716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664646, 34.315800, 38.119263>,  <32.650261, 35.086891, 37.848392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664646, 34.315800, 38.119263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946182, 34.550137, 38.279961>,  <33.115105, 34.690739, 38.376381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946182, 34.550137, 38.279961>,  <32.664646, 34.315800, 38.119263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946182, 34.550137, 38.279961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385576, -0.159924, 0.908711,
		0.596610, -0.794490, 0.113327,
		0.703838, 0.585842, 0.401748,
		33.157333, 34.725887, 38.400486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056072, 33.931271, 38.663578>,  <32.664646, 34.315800, 38.119263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056072, 33.931271, 38.663578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119930, 34.317368, 38.746346>,  <33.158245, 34.549026, 38.796005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119930, 34.317368, 38.746346>,  <33.056072, 33.931271, 38.663578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119930, 34.317368, 38.746346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179670, -0.177692, 0.967546,
		0.970686, -0.191644, 0.145057,
		0.159649, 0.965245, 0.206916,
		33.167824, 34.606941, 38.808422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598457, 33.911884, 39.196453>,  <33.056072, 33.931271, 38.663578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598457, 33.911884, 39.196453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432072, 34.274452, 39.225761>,  <33.332241, 34.491993, 39.243347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432072, 34.274452, 39.225761>,  <33.598457, 33.911884, 39.196453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432072, 34.274452, 39.225761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083052, -0.118102, 0.989522,
		0.905580, 0.405521, 0.124406,
		-0.415965, 0.906424, 0.073271,
		33.307281, 34.546379, 39.247742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927914, 34.200481, 39.734253>,  <33.598457, 33.911884, 39.196453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927914, 34.200481, 39.734253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600830, 34.428474, 39.702065>,  <33.404579, 34.565269, 39.682751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600830, 34.428474, 39.702065>,  <33.927914, 34.200481, 39.734253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600830, 34.428474, 39.702065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180661, -0.121383, 0.976027,
		0.546548, 0.812643, 0.202229,
		-0.817709, 0.569980, -0.080471,
		33.355518, 34.599468, 39.677925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003777, 34.560349, 40.353737>,  <33.927914, 34.200481, 39.734253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003777, 34.560349, 40.353737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624050, 34.581474, 40.229790>,  <33.396214, 34.594151, 40.155422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624050, 34.581474, 40.229790>,  <34.003777, 34.560349, 40.353737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624050, 34.581474, 40.229790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312923, -0.252050, 0.915724,
		-0.029740, 0.966272, 0.255801,
		-0.949313, 0.052812, -0.309865,
		33.339256, 34.597317, 40.136829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682133, 35.091785, 40.810356>,  <34.003777, 34.560349, 40.353737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682133, 35.091785, 40.810356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369347, 34.877693, 40.682575>,  <33.181675, 34.749237, 40.605907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369347, 34.877693, 40.682575>,  <33.682133, 35.091785, 40.810356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369347, 34.877693, 40.682575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340393, -0.062655, 0.938193,
		-0.522165, 0.842379, -0.133194,
		-0.781969, -0.535230, -0.319457,
		33.134754, 34.717125, 40.586739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121143, 35.381100, 41.096710>,  <33.682133, 35.091785, 40.810356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121143, 35.381100, 41.096710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993309, 35.017273, 40.990463>,  <32.916607, 34.798977, 40.926716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993309, 35.017273, 40.990463>,  <33.121143, 35.381100, 41.096710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993309, 35.017273, 40.990463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398267, -0.125412, 0.908656,
		-0.859795, 0.396180, -0.322171,
		-0.319587, -0.909568, -0.265615,
		32.897434, 34.744404, 40.910778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388153, 35.416233, 41.127991>,  <33.121143, 35.381100, 41.096710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388153, 35.416233, 41.127991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499962, 35.035461, 41.178116>,  <32.567047, 34.806999, 41.208191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.499962, 35.035461, 41.178116>,  <32.388153, 35.416233, 41.127991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499962, 35.035461, 41.178116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535082, -0.046077, 0.843543,
		-0.797218, -0.302837, -0.522239,
		0.279519, -0.951928, 0.125309,
		32.583817, 34.749882, 41.215710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833220, 34.998234, 41.148136>,  <32.388153, 35.416233, 41.127991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833220, 34.998234, 41.148136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090805, 34.736965, 41.307472>,  <32.245358, 34.580204, 41.403072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090805, 34.736965, 41.307472>,  <31.833220, 34.998234, 41.148136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090805, 34.736965, 41.307472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589102, -0.091140, 0.802902,
		-0.488131, -0.751702, -0.443477,
		0.643962, -0.653175, 0.398342,
		32.283993, 34.541012, 41.426975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418772, 34.593773, 41.632099>,  <31.833220, 34.998234, 41.148136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418772, 34.593773, 41.632099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790522, 34.476536, 41.721863>,  <32.013573, 34.406193, 41.775723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790522, 34.476536, 41.721863>,  <31.418772, 34.593773, 41.632099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790522, 34.476536, 41.721863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325884, -0.365895, 0.871734,
		-0.173382, -0.883301, -0.435566,
		0.929376, -0.293087, 0.224414,
		32.069336, 34.388611, 41.789188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471407, 33.827957, 41.808159>,  <31.418772, 34.593773, 41.632099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471407, 33.827957, 41.808159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734760, 34.043564, 42.018295>,  <31.892773, 34.172928, 42.144379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734760, 34.043564, 42.018295>,  <31.471407, 33.827957, 41.808159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734760, 34.043564, 42.018295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309692, -0.442152, 0.841779,
		0.686019, -0.716909, -0.124176,
		0.658384, 0.539020, 0.525345,
		31.932276, 34.205269, 42.175900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628590, 33.347725, 42.311062>,  <31.471407, 33.827957, 41.808159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628590, 33.347725, 42.311062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740911, 33.716732, 42.416977>,  <31.808306, 33.938137, 42.480526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740911, 33.716732, 42.416977>,  <31.628590, 33.347725, 42.311062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740911, 33.716732, 42.416977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231062, -0.202793, 0.951570,
		0.931535, -0.328390, 0.156213,
		0.280807, 0.922515, 0.264788,
		31.825153, 33.993488, 42.496414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907862, 33.175045, 42.915051>,  <31.628590, 33.347725, 42.311062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907862, 33.175045, 42.915051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857222, 33.571457, 42.932152>,  <31.826838, 33.809303, 42.942413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857222, 33.571457, 42.932152>,  <31.907862, 33.175045, 42.915051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857222, 33.571457, 42.932152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015639, -0.045090, 0.998861,
		0.991831, 0.125785, 0.021208,
		-0.126598, 0.991032, 0.042754,
		31.819242, 33.868767, 42.944977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212231, 33.349525, 43.551884>,  <31.907862, 33.175045, 42.915051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212231, 33.349525, 43.551884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947781, 33.639088, 43.473015>,  <31.789112, 33.812824, 43.425694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947781, 33.639088, 43.473015>,  <32.212231, 33.349525, 43.551884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947781, 33.639088, 43.473015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167331, 0.113917, 0.979297,
		0.731381, 0.680429, 0.045819,
		-0.661122, 0.723906, -0.197173,
		31.749443, 33.856258, 43.413864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322483, 33.758007, 44.100590>,  <32.212231, 33.349525, 43.551884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322483, 33.758007, 44.100590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956543, 33.860569, 43.975811>,  <31.736980, 33.922108, 43.900944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956543, 33.860569, 43.975811>,  <32.322483, 33.758007, 44.100590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956543, 33.860569, 43.975811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320326, 0.009526, 0.947260,
		0.245856, 0.966522, 0.073419,
		-0.914848, 0.256408, -0.311944,
		31.682089, 33.937492, 43.882229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224781, 34.218857, 44.481445>,  <32.322483, 33.758007, 44.100590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224781, 34.218857, 44.481445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854494, 34.115463, 44.370998>,  <31.632322, 34.053429, 44.304729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854494, 34.115463, 44.370998>,  <32.224781, 34.218857, 44.481445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854494, 34.115463, 44.370998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294358, 0.033932, 0.955092,
		-0.237504, 0.965420, -0.107498,
		-0.925713, -0.258481, -0.276120,
		31.576780, 34.037918, 44.288162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758820, 34.698009, 44.846569>,  <32.224781, 34.218857, 44.481445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758820, 34.698009, 44.846569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546991, 34.372631, 44.750347>,  <31.419895, 34.177406, 44.692616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546991, 34.372631, 44.750347>,  <31.758820, 34.698009, 44.846569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546991, 34.372631, 44.750347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386138, -0.021332, 0.922194,
		-0.755283, 0.581255, -0.302804,
		-0.529570, -0.813442, -0.240556,
		31.388121, 34.128597, 44.678181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236307, 34.744743, 45.160961>,  <31.758820, 34.698009, 44.846569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236307, 34.744743, 45.160961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172918, 34.359295, 45.074871>,  <31.134886, 34.128025, 45.023216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.172918, 34.359295, 45.074871>,  <31.236307, 34.744743, 45.160961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172918, 34.359295, 45.074871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409114, -0.134301, 0.902546,
		-0.898617, 0.231079, -0.372948,
		-0.158472, -0.963621, -0.215223,
		31.125376, 34.070210, 45.010303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553356, 34.658531, 45.364971>,  <31.236307, 34.744743, 45.160961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553356, 34.658531, 45.364971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721428, 34.295700, 45.354660>,  <30.822271, 34.078003, 45.348473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721428, 34.295700, 45.354660>,  <30.553356, 34.658531, 45.364971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721428, 34.295700, 45.354660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371120, -0.197695, 0.907296,
		-0.828083, -0.371659, -0.419701,
		0.420177, -0.907076, -0.025777,
		30.847481, 34.023579, 45.346928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027439, 34.141232, 45.666748>,  <30.553356, 34.658531, 45.364971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027439, 34.141232, 45.666748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393425, 33.980953, 45.685860>,  <30.613016, 33.884789, 45.697327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393425, 33.980953, 45.685860>,  <30.027439, 34.141232, 45.666748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393425, 33.980953, 45.685860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185838, -0.313314, 0.931289,
		-0.358192, -0.860976, -0.361136,
		0.914966, -0.400693, 0.047775,
		30.667915, 33.860744, 45.700191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947395, 33.578243, 45.949059>,  <30.027439, 34.141232, 45.666748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947395, 33.578243, 45.949059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341440, 33.602310, 46.013477>,  <30.577868, 33.616749, 46.052128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341440, 33.602310, 46.013477>,  <29.947395, 33.578243, 45.949059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341440, 33.602310, 46.013477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121222, -0.421165, 0.898847,
		0.121907, -0.904986, -0.407601,
		0.985111, 0.060165, 0.161047,
		30.636974, 33.620361, 46.061790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163101, 32.912876, 46.095787>,  <29.947395, 33.578243, 45.949059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163101, 32.912876, 46.095787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441444, 33.169891, 46.224117>,  <30.608450, 33.324100, 46.301117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441444, 33.169891, 46.224117>,  <30.163101, 32.912876, 46.095787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441444, 33.169891, 46.224117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017134, -0.461452, 0.887000,
		0.717976, -0.611728, -0.332113,
		0.695857, 0.642535, 0.320830,
		30.650202, 33.362652, 46.320366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704039, 32.548637, 46.443951>,  <30.163101, 32.912876, 46.095787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704039, 32.548637, 46.443951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689882, 32.919868, 46.592228>,  <30.681389, 33.142609, 46.681194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689882, 32.919868, 46.592228>,  <30.704039, 32.548637, 46.443951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689882, 32.919868, 46.592228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111086, -0.372284, 0.921447,
		0.993180, -0.008568, 0.116273,
		-0.035392, 0.928079, 0.370697,
		30.679264, 33.198292, 46.703438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024841, 32.427608, 46.990456>,  <30.704039, 32.548637, 46.443951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024841, 32.427608, 46.990456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941185, 32.807819, 47.082333>,  <30.890991, 33.035946, 47.137459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941185, 32.807819, 47.082333>,  <31.024841, 32.427608, 46.990456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941185, 32.807819, 47.082333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010701, -0.237100, 0.971426,
		0.977827, 0.200705, 0.059759,
		-0.209139, 0.950527, 0.229695,
		30.878443, 33.092976, 47.151241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515783, 32.750347, 47.455502>,  <31.024841, 32.427608, 46.990456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515783, 32.750347, 47.455502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155251, 32.910690, 47.521118>,  <30.938931, 33.006897, 47.560490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155251, 32.910690, 47.521118>,  <31.515783, 32.750347, 47.455502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155251, 32.910690, 47.521118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098420, -0.179281, 0.978862,
		0.421799, 0.898425, 0.122139,
		-0.901332, 0.400862, 0.164044,
		30.884851, 33.030949, 47.570332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053993, 33.332649, 47.582184>,  <31.515783, 32.750347, 47.455502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053993, 33.332649, 47.582184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416759, 33.426510, 47.722149>,  <32.634418, 33.482826, 47.806129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416759, 33.426510, 47.722149>,  <32.053993, 33.332649, 47.582184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416759, 33.426510, 47.722149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268494, 0.318133, -0.909232,
		-0.324668, 0.918549, 0.225519,
		0.906919, 0.234648, 0.349912,
		32.688835, 33.496902, 47.827122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243259, 34.082886, 47.330746>,  <32.053993, 33.332649, 47.582184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243259, 34.082886, 47.330746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589603, 33.909065, 47.429897>,  <32.797409, 33.804771, 47.489388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589603, 33.909065, 47.429897>,  <32.243259, 34.082886, 47.330746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589603, 33.909065, 47.429897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364575, 0.208784, -0.907466,
		0.342585, 0.876114, 0.339205,
		0.865864, -0.434550, 0.247883,
		32.849361, 33.778702, 47.504261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814781, 34.644676, 47.080452>,  <32.243259, 34.082886, 47.330746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814781, 34.644676, 47.080452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955715, 34.275291, 47.141209>,  <33.040276, 34.053661, 47.177662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955715, 34.275291, 47.141209>,  <32.814781, 34.644676, 47.080452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955715, 34.275291, 47.141209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456822, 0.028056, -0.889116,
		0.816806, 0.382654, 0.431745,
		0.352337, -0.923466, 0.151888,
		33.061417, 33.998253, 47.186775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523441, 34.729092, 46.973145>,  <32.814781, 34.644676, 47.080452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523441, 34.729092, 46.973145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448303, 34.339405, 46.923149>,  <33.403221, 34.105595, 46.893150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448303, 34.339405, 46.923149>,  <33.523441, 34.729092, 46.973145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448303, 34.339405, 46.923149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558889, -0.001373, -0.829241,
		0.807686, -0.225625, 0.544735,
		-0.187845, -0.974213, -0.124991,
		33.391949, 34.047142, 46.885651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170826, 34.482468, 46.869801>,  <33.523441, 34.729092, 46.973145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170826, 34.482468, 46.869801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949368, 34.176773, 46.737484>,  <33.816494, 33.993359, 46.658096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949368, 34.176773, 46.737484>,  <34.170826, 34.482468, 46.869801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949368, 34.176773, 46.737484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463447, 0.047260, -0.884863,
		0.691875, -0.643205, 0.328017,
		-0.553647, -0.764234, -0.330790,
		33.783272, 33.947502, 46.638248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
