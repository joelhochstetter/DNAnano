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
	<1.796091, 1.555968, 5.419245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.862549, 1.866753, 5.176353>,  <1.902424, 2.053223, 5.030618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.862549, 1.866753, 5.176353>,  <1.796091, 1.555968, 5.419245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.862549, 1.866753, 5.176353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539351, -0.443916, -0.715570,
		-0.825528, 0.446398, 0.345300,
		0.166145, 0.776961, -0.607230,
		1.912392, 2.099841, 4.994184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.148215, 1.902345, 5.242144>,  <1.796091, 1.555968, 5.419245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.148215, 1.902345, 5.242144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.395390, 1.917000, 4.927994>,  <1.543694, 1.925793, 4.739504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.395390, 1.917000, 4.927994>,  <1.148215, 1.902345, 5.242144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.395390, 1.917000, 4.927994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692632, -0.447318, -0.565833,
		-0.372043, 0.893624, -0.251038,
		0.617936, 0.036637, -0.785374,
		1.580770, 1.927991, 4.692381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.696389, 2.141899, 4.571070>,  <1.148215, 1.902345, 5.242144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.696389, 2.141899, 4.571070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.028130, 1.931885, 4.494637>,  <1.227174, 1.805876, 4.448777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.028130, 1.931885, 4.494637>,  <0.696389, 2.141899, 4.571070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.028130, 1.931885, 4.494637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517755, -0.593644, -0.616050,
		0.210014, 0.609856, -0.764179,
		0.829352, -0.525036, -0.191083,
		1.276935, 1.774374, 4.437312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.836082, 1.934190, 3.814713>,  <0.696389, 2.141899, 4.571070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.836082, 1.934190, 3.814713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.937710, 1.651932, 4.079292>,  <0.998686, 1.482577, 4.238039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.937710, 1.651932, 4.079292>,  <0.836082, 1.934190, 3.814713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.937710, 1.651932, 4.079292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503435, -0.680425, -0.532517,
		0.825834, -0.197700, -0.528122,
		0.254069, -0.705646, 0.661447,
		1.013930, 1.440238, 4.277727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.230648, 1.364293, 3.535069>,  <0.836082, 1.934190, 3.814713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.230648, 1.364293, 3.535069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.991611, 1.262581, 3.839233>,  <0.848189, 1.201554, 4.021732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.991611, 1.262581, 3.839233>,  <1.230648, 1.364293, 3.535069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.991611, 1.262581, 3.839233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537020, -0.577306, -0.615083,
		0.595394, -0.775925, 0.208440,
		-0.597592, -0.254280, 0.760411,
		0.812334, 1.186297, 4.067357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.108772, 0.666145, 3.421811>,  <1.230648, 1.364293, 3.535069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.108772, 0.666145, 3.421811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.806629, 0.797852, 3.648445>,  <0.625343, 0.876876, 3.784425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.806629, 0.797852, 3.648445>,  <1.108772, 0.666145, 3.421811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.806629, 0.797852, 3.648445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652112, -0.463032, -0.600293,
		0.064690, -0.822913, 0.564473,
		-0.755358, 0.329267, 0.566585,
		0.580022, 0.896632, 3.818420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.733321, 0.056682, 3.638946>,  <1.108772, 0.666145, 3.421811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.733321, 0.056682, 3.638946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.491306, 0.374947, 3.650642>,  <0.346098, 0.565905, 3.657660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.491306, 0.374947, 3.650642>,  <0.733321, 0.056682, 3.638946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.491306, 0.374947, 3.650642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628898, -0.455057, -0.630405,
		-0.488286, -0.399802, 0.775716,
		-0.605032, 0.795664, 0.029237,
		0.309795, 0.613645, 3.659415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.121678, -0.227734, 3.754987>,  <0.733321, 0.056682, 3.638946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.121678, -0.227734, 3.754987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.040440, 0.124092, 3.582886>,  <-0.008304, 0.335188, 3.479625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.040440, 0.124092, 3.582886>,  <0.121678, -0.227734, 3.754987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.040440, 0.124092, 3.582886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690305, -0.440254, -0.574156,
		-0.694429, 0.180397, 0.696582,
		-0.203096, 0.879564, -0.430254,
		-0.020489, 0.387961, 3.453809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.161524, -0.033963, 2.221455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.785835, -0.048775, 2.357979>,  <4.560422, -0.057662, 2.439893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.785835, -0.048775, 2.357979>,  <5.161524, -0.033963, 2.221455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.785835, -0.048775, 2.357979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178708, 0.796124, 0.578144,
		-0.293133, 0.604000, -0.741119,
		-0.939221, -0.037029, 0.341310,
		4.504069, -0.059883, 2.460372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.841203, 0.648002, 2.011884>,  <5.161524, -0.033963, 2.221455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.841203, 0.648002, 2.011884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.709166, 0.438354, 2.325912>,  <4.629943, 0.312566, 2.514330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.709166, 0.438354, 2.325912>,  <4.841203, 0.648002, 2.011884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.709166, 0.438354, 2.325912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215958, 0.767699, 0.603324,
		-0.918913, 0.368696, -0.140225,
		-0.330094, -0.524120, 0.785071,
		4.610137, 0.281119, 2.561434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.634638, 1.216977, 2.527158>,  <4.841203, 0.648002, 2.011884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.634638, 1.216977, 2.527158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.630908, 0.908379, 2.781624>,  <4.628670, 0.723219, 2.934304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.630908, 0.908379, 2.781624>,  <4.634638, 1.216977, 2.527158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.630908, 0.908379, 2.781624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341717, 0.595434, 0.727109,
		-0.939757, 0.224168, 0.258081,
		-0.009325, -0.771497, 0.636165,
		4.628110, 0.676930, 2.972473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.583332, 1.551150, 3.096406>,  <4.634638, 1.216977, 2.527158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.583332, 1.551150, 3.096406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.692927, 1.186180, 3.218002>,  <4.758685, 0.967198, 3.290961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.692927, 1.186180, 3.218002>,  <4.583332, 1.551150, 3.096406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.692927, 1.186180, 3.218002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446770, 0.400666, 0.799915,
		-0.851661, -0.083353, 0.517422,
		0.273989, -0.912425, 0.303992,
		4.775124, 0.912453, 3.309200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.499788, 1.619772, 3.767435>,  <4.583332, 1.551150, 3.096406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.499788, 1.619772, 3.767435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.737708, 1.299026, 3.744705>,  <4.880460, 1.106579, 3.731067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.737708, 1.299026, 3.744705>,  <4.499788, 1.619772, 3.767435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.737708, 1.299026, 3.744705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518723, 0.328849, 0.789167,
		-0.614117, -0.498872, 0.611544,
		0.594799, -0.801864, -0.056825,
		4.916148, 1.058467, 3.727658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.589459, 1.354005, 4.475749>,  <4.499788, 1.619772, 3.767435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.589459, 1.354005, 4.475749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.904116, 1.204376, 4.279274>,  <5.092910, 1.114599, 4.161389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.904116, 1.204376, 4.279274>,  <4.589459, 1.354005, 4.475749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.904116, 1.204376, 4.279274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590531, 0.223672, 0.775400,
		-0.180191, -0.900023, 0.396850,
		0.786642, -0.374072, -0.491187,
		5.140108, 1.092155, 4.131918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.950730, 0.754013, 4.928395>,  <4.589459, 1.354005, 4.475749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.950730, 0.754013, 4.928395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.171971, 0.973572, 4.677704>,  <5.304716, 1.105307, 4.527289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.171971, 0.973572, 4.677704>,  <4.950730, 0.754013, 4.928395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.171971, 0.973572, 4.677704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584990, 0.279742, 0.761270,
		0.593181, -0.787690, -0.166374,
		0.553103, 0.548898, -0.626728,
		5.337902, 1.138241, 4.489686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.785069, 0.596909, 4.871947>,  <4.950730, 0.754013, 4.928395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.785069, 0.596909, 4.871947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.729042, 0.989731, 4.821434>,  <5.695426, 1.225424, 4.791126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.729042, 0.989731, 4.821434>,  <5.785069, 0.596909, 4.871947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.729042, 0.989731, 4.821434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670888, 0.187931, 0.717350,
		0.728210, 0.015756, -0.685173,
		-0.140068, 0.982056, -0.126283,
		5.687022, 1.284348, 4.783549>
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
