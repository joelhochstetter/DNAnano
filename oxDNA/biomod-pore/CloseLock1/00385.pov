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
	<23.855051, 35.118698, 34.800640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.065401, 34.813198, 34.950386>,  <24.191610, 34.629898, 35.040234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.065401, 34.813198, 34.950386>,  <23.855051, 35.118698, 34.800640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.065401, 34.813198, 34.950386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398852, 0.610169, 0.684552,
		-0.751249, -0.210672, 0.625494,
		0.525873, -0.763748, 0.374361,
		24.223164, 34.584072, 35.062695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.276453, 35.710903, 34.692921>,  <23.855051, 35.118698, 34.800640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.276453, 35.710903, 34.692921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.632547, 35.864853, 34.790371>,  <24.846203, 35.957222, 34.848839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.632547, 35.864853, 34.790371>,  <24.276453, 35.710903, 34.692921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.632547, 35.864853, 34.790371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283346, -0.886682, 0.365390,
		0.356647, -0.256253, -0.898408,
		0.890235, 0.384876, 0.243624,
		24.899618, 35.980316, 34.863457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888315, 35.381393, 34.394714>,  <24.276453, 35.710903, 34.692921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888315, 35.381393, 34.394714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015139, 35.530319, 34.743622>,  <25.091232, 35.619675, 34.952969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015139, 35.530319, 34.743622>,  <24.888315, 35.381393, 34.394714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015139, 35.530319, 34.743622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297899, -0.912270, 0.281105,
		0.900406, 0.170722, -0.400153,
		0.317057, 0.372313, 0.872272,
		25.110256, 35.642014, 35.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559681, 35.064884, 34.448898>,  <24.888315, 35.381393, 34.394714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559681, 35.064884, 34.448898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444345, 35.138611, 34.824749>,  <25.375145, 35.182846, 35.050259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444345, 35.138611, 34.824749>,  <25.559681, 35.064884, 34.448898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444345, 35.138611, 34.824749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192642, -0.950068, 0.245479,
		0.937950, 0.251792, 0.238433,
		-0.288337, 0.184315, 0.939622,
		25.357845, 35.193905, 35.106636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094694, 34.904034, 34.934841>,  <25.559681, 35.064884, 34.448898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094694, 34.904034, 34.934841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728855, 34.866192, 35.092098>,  <25.509352, 34.843487, 35.186455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.728855, 34.866192, 35.092098>,  <26.094694, 34.904034, 34.934841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728855, 34.866192, 35.092098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249377, -0.897307, 0.364212,
		0.318317, 0.431149, 0.844266,
		-0.914595, -0.094606, 0.393147,
		25.454477, 34.837811, 35.210041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077068, 35.641743, 35.215942>,  <26.094694, 34.904034, 34.934841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077068, 35.641743, 35.215942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456135, 35.674789, 35.339298>,  <26.683575, 35.694618, 35.413311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456135, 35.674789, 35.339298>,  <26.077068, 35.641743, 35.215942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456135, 35.674789, 35.339298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283237, -0.228207, 0.931503,
		0.147334, -0.970101, -0.192864,
		0.947666, 0.082616, 0.308391,
		26.740435, 35.699574, 35.431816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146635, 35.124241, 35.666409>,  <26.077068, 35.641743, 35.215942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146635, 35.124241, 35.666409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423809, 35.389103, 35.780525>,  <26.590113, 35.548019, 35.848995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423809, 35.389103, 35.780525>,  <26.146635, 35.124241, 35.666409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423809, 35.389103, 35.780525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152495, -0.252143, 0.955599,
		0.704691, -0.705672, -0.073742,
		0.692933, 0.662157, 0.285294,
		26.631689, 35.587749, 35.866112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441143, 34.892036, 36.287342>,  <26.146635, 35.124241, 35.666409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441143, 34.892036, 36.287342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514357, 35.285061, 36.300476>,  <26.558285, 35.520874, 36.308357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.514357, 35.285061, 36.300476>,  <26.441143, 34.892036, 36.287342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.514357, 35.285061, 36.300476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097212, -0.015149, 0.995148,
		0.978288, -0.185340, 0.092743,
		0.183036, 0.982558, 0.032838,
		26.569267, 35.579826, 36.310326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856945, 34.967396, 36.877045>,  <26.441143, 34.892036, 36.287342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856945, 34.967396, 36.877045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731771, 35.338997, 36.798031>,  <26.656668, 35.561958, 36.750622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731771, 35.338997, 36.798031>,  <26.856945, 34.967396, 36.877045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731771, 35.338997, 36.798031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185943, 0.144031, 0.971946,
		0.931396, 0.340884, 0.127670,
		-0.312933, 0.929006, -0.197535,
		26.637892, 35.617699, 36.738770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178246, 35.313251, 37.416634>,  <26.856945, 34.967396, 36.877045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178246, 35.313251, 37.416634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910692, 35.582584, 37.290638>,  <26.750160, 35.744183, 37.215042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.910692, 35.582584, 37.290638>,  <27.178246, 35.313251, 37.416634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.910692, 35.582584, 37.290638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153499, 0.289490, 0.944793,
		0.727345, 0.680308, -0.090280,
		-0.668886, 0.673332, -0.314985,
		26.710026, 35.784584, 37.196144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289148, 35.938091, 37.931179>,  <27.178246, 35.313251, 37.416634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289148, 35.938091, 37.931179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937117, 35.985027, 37.747139>,  <26.725897, 36.013187, 37.636715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937117, 35.985027, 37.747139>,  <27.289148, 35.938091, 37.931179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937117, 35.985027, 37.747139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389946, 0.374286, 0.841340,
		0.270932, 0.919860, -0.283645,
		-0.880079, 0.117340, -0.460101,
		26.673094, 36.020229, 37.609108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051687, 36.615143, 38.009071>,  <27.289148, 35.938091, 37.931179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051687, 36.615143, 38.009071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744759, 36.361309, 37.972134>,  <26.560602, 36.209011, 37.949970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.744759, 36.361309, 37.972134>,  <27.051687, 36.615143, 38.009071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.744759, 36.361309, 37.972134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376289, 0.328961, 0.866136,
		-0.519255, 0.699351, -0.491205,
		-0.767320, -0.634580, -0.092344,
		26.514563, 36.170937, 37.944431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430084, 37.062271, 38.243073>,  <27.051687, 36.615143, 38.009071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430084, 37.062271, 38.243073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339890, 36.672611, 38.248425>,  <26.285772, 36.438816, 38.251637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339890, 36.672611, 38.248425>,  <26.430084, 37.062271, 38.243073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339890, 36.672611, 38.248425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360733, 0.096244, 0.927690,
		-0.905001, 0.204354, -0.373111,
		-0.225487, -0.974154, 0.013384,
		26.272243, 36.380363, 38.252441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806108, 36.951511, 38.580082>,  <26.430084, 37.062271, 38.243073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806108, 36.951511, 38.580082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993874, 36.603706, 38.641541>,  <26.106533, 36.395023, 38.678413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993874, 36.603706, 38.641541>,  <25.806108, 36.951511, 38.580082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993874, 36.603706, 38.641541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069250, 0.137215, 0.988118,
		-0.880258, -0.474476, 0.004197,
		0.469414, -0.869508, 0.153642,
		26.134697, 36.342854, 38.687634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347715, 36.625401, 39.076214>,  <25.806108, 36.951511, 38.580082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347715, 36.625401, 39.076214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678892, 36.401909, 39.095528>,  <25.877598, 36.267815, 39.107117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678892, 36.401909, 39.095528>,  <25.347715, 36.625401, 39.076214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678892, 36.401909, 39.095528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136776, -0.117677, 0.983587,
		-0.543882, -0.820956, -0.173851,
		0.827940, -0.558734, 0.048285,
		25.927275, 36.234287, 39.110012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082111, 36.023548, 39.385529>,  <25.347715, 36.625401, 39.076214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082111, 36.023548, 39.385529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475483, 36.040024, 39.456150>,  <25.711506, 36.049911, 39.498524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475483, 36.040024, 39.456150>,  <25.082111, 36.023548, 39.385529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475483, 36.040024, 39.456150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165293, -0.196362, 0.966499,
		0.074484, -0.979666, -0.186299,
		0.983428, 0.041195, 0.176557,
		25.770512, 36.052383, 39.509117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291630, 35.376850, 39.692085>,  <25.082111, 36.023548, 39.385529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291630, 35.376850, 39.692085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593082, 35.617844, 39.797195>,  <25.773954, 35.762440, 39.860260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593082, 35.617844, 39.797195>,  <25.291630, 35.376850, 39.692085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593082, 35.617844, 39.797195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137586, -0.246332, 0.959370,
		0.642733, -0.759168, -0.102751,
		0.753634, 0.602482, 0.262777,
		25.819172, 35.798588, 39.876030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793503, 35.023083, 40.112206>,  <25.291630, 35.376850, 39.692085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793503, 35.023083, 40.112206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877529, 35.402832, 40.205635>,  <25.927944, 35.630684, 40.261692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877529, 35.402832, 40.205635>,  <25.793503, 35.023083, 40.112206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877529, 35.402832, 40.205635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161610, -0.201900, 0.965981,
		0.964238, -0.240667, 0.111017,
		0.210066, 0.949376, 0.233574,
		25.940550, 35.687645, 40.275707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.171574, 34.993534, 40.676529>,  <25.793503, 35.023083, 40.112206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.171574, 34.993534, 40.676529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078800, 35.381664, 40.703857>,  <26.023136, 35.614544, 40.720253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078800, 35.381664, 40.703857>,  <26.171574, 34.993534, 40.676529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078800, 35.381664, 40.703857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309153, -0.140123, 0.940633,
		0.922296, 0.197045, 0.332480,
		-0.231935, 0.970329, 0.068317,
		26.009220, 35.672764, 40.724354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610235, 35.292633, 41.223507>,  <26.171574, 34.993534, 40.676529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610235, 35.292633, 41.223507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289240, 35.526642, 41.176582>,  <26.096643, 35.667046, 41.148426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289240, 35.526642, 41.176582>,  <26.610235, 35.292633, 41.223507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289240, 35.526642, 41.176582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206973, -0.088525, 0.974333,
		0.559619, 0.806173, 0.192123,
		-0.802489, 0.585020, -0.117316,
		26.048492, 35.702148, 41.141388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587997, 35.581589, 41.865803>,  <26.610235, 35.292633, 41.223507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587997, 35.581589, 41.865803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229034, 35.664207, 41.709854>,  <26.013657, 35.713779, 41.616287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229034, 35.664207, 41.709854>,  <26.587997, 35.581589, 41.865803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229034, 35.664207, 41.709854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393269, 0.026078, 0.919053,
		0.199995, 0.978089, 0.057826,
		-0.897408, 0.206547, -0.389868,
		25.959812, 35.726173, 41.592896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428686, 36.099689, 42.269077>,  <26.587997, 35.581589, 41.865803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428686, 36.099689, 42.269077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110683, 35.921131, 42.104790>,  <25.919882, 35.813995, 42.006218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110683, 35.921131, 42.104790>,  <26.428686, 36.099689, 42.269077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110683, 35.921131, 42.104790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414131, -0.095327, 0.905212,
		-0.443235, 0.889744, -0.109079,
		-0.795009, -0.446394, -0.410723,
		25.872181, 35.787212, 41.981571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966259, 36.292778, 42.728714>,  <26.428686, 36.099689, 42.269077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966259, 36.292778, 42.728714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817049, 35.977100, 42.533562>,  <25.727524, 35.787693, 42.416470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817049, 35.977100, 42.533562>,  <25.966259, 36.292778, 42.728714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817049, 35.977100, 42.533562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424387, -0.322474, 0.846112,
		-0.825075, 0.522669, -0.214634,
		-0.373023, -0.789194, -0.487879,
		25.705141, 35.740341, 42.387199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374174, 36.191208, 43.021126>,  <25.966259, 36.292778, 42.728714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374174, 36.191208, 43.021126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434759, 35.828625, 42.863445>,  <25.471109, 35.611076, 42.768837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434759, 35.828625, 42.863445>,  <25.374174, 36.191208, 43.021126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434759, 35.828625, 42.863445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237450, -0.420493, 0.875673,
		-0.959519, -0.039028, -0.278927,
		0.151463, -0.906456, -0.394204,
		25.480198, 35.556686, 42.745186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.715946, 35.784176, 43.067719>,  <25.374174, 36.191208, 43.021126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.715946, 35.784176, 43.067719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020739, 35.526131, 43.045052>,  <25.203615, 35.371304, 43.031452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020739, 35.526131, 43.045052>,  <24.715946, 35.784176, 43.067719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020739, 35.526131, 43.045052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215367, -0.334962, 0.917288,
		-0.610738, -0.686752, -0.394171,
		0.761982, -0.645114, -0.056670,
		25.249332, 35.332596, 43.028049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.523897, 35.258385, 43.444954>,  <24.715946, 35.784176, 43.067719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.523897, 35.258385, 43.444954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914124, 35.170860, 43.437012>,  <25.148260, 35.118347, 43.432247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.914124, 35.170860, 43.437012>,  <24.523897, 35.258385, 43.444954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.914124, 35.170860, 43.437012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041730, -0.273281, 0.961029,
		-0.215704, -0.936719, -0.275735,
		0.975567, -0.218804, -0.019859,
		25.206793, 35.105217, 43.431053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.667303, 34.640137, 43.675938>,  <24.523897, 35.258385, 43.444954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.667303, 34.640137, 43.675938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025867, 34.805370, 43.740200>,  <25.241005, 34.904510, 43.778759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.025867, 34.805370, 43.740200>,  <24.667303, 34.640137, 43.675938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.025867, 34.805370, 43.740200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011818, -0.384620, 0.922999,
		0.443069, -0.825487, -0.349659,
		0.896410, 0.413085, 0.160658,
		25.294790, 34.929295, 43.788399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.984152, 34.104412, 43.980671>,  <24.667303, 34.640137, 43.675938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.984152, 34.104412, 43.980671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195360, 34.430710, 44.075115>,  <25.322086, 34.626488, 44.131783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195360, 34.430710, 44.075115>,  <24.984152, 34.104412, 43.980671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195360, 34.430710, 44.075115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202837, -0.148837, 0.967835,
		0.824651, -0.558931, 0.086874,
		0.528023, 0.815747, 0.236111,
		25.353767, 34.675434, 44.145950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664091, 33.839916, 43.587524>,  <24.984152, 34.104412, 43.980671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664091, 33.839916, 43.587524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594267, 33.515827, 43.811337>,  <25.552372, 33.321373, 43.945625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594267, 33.515827, 43.811337>,  <25.664091, 33.839916, 43.587524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.594267, 33.515827, 43.811337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978424, -0.206514, 0.006205,
		0.110523, 0.548540, 0.828788,
		-0.174559, -0.810220, 0.559529,
		25.541899, 33.272762, 43.979195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936932, 33.832001, 44.235847>,  <25.664091, 33.839916, 43.587524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936932, 33.832001, 44.235847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901001, 33.456554, 44.102619>,  <25.879442, 33.231289, 44.022682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901001, 33.456554, 44.102619>,  <25.936932, 33.832001, 44.235847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901001, 33.456554, 44.102619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993974, -0.063389, -0.089436,
		0.062832, -0.339097, 0.938651,
		-0.089828, -0.938613, -0.333070,
		25.874052, 33.174969, 44.002697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164450, 33.330471, 44.738152>,  <25.936932, 33.832001, 44.235847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164450, 33.330471, 44.738152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197834, 33.207623, 44.358952>,  <26.217865, 33.133911, 44.131432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197834, 33.207623, 44.358952>,  <26.164450, 33.330471, 44.738152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197834, 33.207623, 44.358952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982988, -0.130821, 0.128924,
		-0.163614, -0.942635, 0.290981,
		0.083462, -0.307124, -0.948003,
		26.222872, 33.115486, 44.074551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320761, 32.559368, 44.616032>,  <26.164450, 33.330471, 44.738152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320761, 32.559368, 44.616032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491915, 32.792236, 44.339485>,  <26.594606, 32.931957, 44.173557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491915, 32.792236, 44.339485>,  <26.320761, 32.559368, 44.616032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491915, 32.792236, 44.339485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903779, -0.284052, 0.320154,
		-0.010000, -0.761832, -0.647698,
		0.427883, 0.582174, -0.691368,
		26.620279, 32.966888, 44.132076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791693, 32.239567, 44.141216>,  <26.320761, 32.559368, 44.616032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791693, 32.239567, 44.141216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929783, 32.611675, 44.190880>,  <27.012636, 32.834942, 44.220676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929783, 32.611675, 44.190880>,  <26.791693, 32.239567, 44.141216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929783, 32.611675, 44.190880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903341, -0.365244, 0.224883,
		0.254549, 0.034520, -0.966443,
		0.345224, 0.930272, 0.124156,
		27.033350, 32.890759, 44.228127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378553, 32.286755, 43.652840>,  <26.791693, 32.239567, 44.141216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378553, 32.286755, 43.652840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368851, 32.490223, 43.997086>,  <27.363029, 32.612305, 44.203632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368851, 32.490223, 43.997086>,  <27.378553, 32.286755, 43.652840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368851, 32.490223, 43.997086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732395, -0.576909, 0.361626,
		0.680448, 0.639086, -0.358554,
		-0.024257, 0.508671, 0.860619,
		27.361574, 32.642826, 44.255272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217512, 31.776184, 43.292686>,  <27.378553, 32.286755, 43.652840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217512, 31.776184, 43.292686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385977, 31.430296, 43.183231>,  <27.487057, 31.222763, 43.117558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385977, 31.430296, 43.183231>,  <27.217512, 31.776184, 43.292686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385977, 31.430296, 43.183231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238288, 0.185606, -0.953294,
		0.875123, 0.466697, -0.127883,
		0.421163, -0.864722, -0.273637,
		27.512325, 31.170879, 43.101139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862253, 31.885376, 42.875793>,  <27.217512, 31.776184, 43.292686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862253, 31.885376, 42.875793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642174, 31.567715, 42.772560>,  <27.510126, 31.377119, 42.710621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642174, 31.567715, 42.772560>,  <27.862253, 31.885376, 42.875793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642174, 31.567715, 42.772560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140853, 0.392904, -0.908728,
		0.823070, -0.463628, -0.328033,
		-0.550197, -0.794151, -0.258084,
		27.477114, 31.329470, 42.695133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215580, 31.446863, 42.360363>,  <27.862253, 31.885376, 42.875793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215580, 31.446863, 42.360363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816500, 31.472273, 42.350880>,  <27.577051, 31.487518, 42.345188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816500, 31.472273, 42.350880>,  <28.215580, 31.446863, 42.360363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816500, 31.472273, 42.350880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054199, 0.537004, -0.841837,
		-0.040747, -0.841184, -0.539211,
		-0.997699, 0.063527, -0.023710,
		27.517191, 31.491331, 42.343765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896667, 31.183556, 41.702129>,  <28.215580, 31.446863, 42.360363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896667, 31.183556, 41.702129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661982, 31.469461, 41.854378>,  <27.521170, 31.641005, 41.945728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661982, 31.469461, 41.854378>,  <27.896667, 31.183556, 41.702129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661982, 31.469461, 41.854378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111491, 0.536849, -0.836279,
		-0.802082, -0.448221, -0.394668,
		-0.586715, 0.714766, 0.380624,
		27.485968, 31.683891, 41.968563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321960, 31.248438, 41.296570>,  <27.896667, 31.183556, 41.702129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321960, 31.248438, 41.296570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363190, 31.608936, 41.464916>,  <27.387928, 31.825235, 41.565926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363190, 31.608936, 41.464916>,  <27.321960, 31.248438, 41.296570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363190, 31.608936, 41.464916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021938, 0.420959, -0.906814,
		-0.994432, 0.102700, 0.023618,
		0.103072, 0.901247, 0.420868,
		27.394112, 31.879311, 41.591175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902229, 31.779978, 41.008087>,  <27.321960, 31.248438, 41.296570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902229, 31.779978, 41.008087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180170, 32.021049, 41.165039>,  <27.346933, 32.165691, 41.259209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180170, 32.021049, 41.165039>,  <26.902229, 31.779978, 41.008087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180170, 32.021049, 41.165039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076872, 0.604727, -0.792714,
		-0.715034, 0.520655, 0.466524,
		0.694851, 0.602680, 0.392377,
		27.388626, 32.201855, 41.282753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753338, 32.386829, 40.656441>,  <26.902229, 31.779978, 41.008087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753338, 32.386829, 40.656441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105761, 32.435059, 40.839394>,  <27.317215, 32.463997, 40.949165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105761, 32.435059, 40.839394>,  <26.753338, 32.386829, 40.656441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105761, 32.435059, 40.839394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308278, 0.587012, -0.748586,
		-0.358751, 0.800548, 0.480020,
		0.881057, 0.120577, 0.457383,
		27.370077, 32.471233, 40.976608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907021, 33.086544, 40.686981>,  <26.753338, 32.386829, 40.656441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.907021, 33.086544, 40.686981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256119, 32.895317, 40.726517>,  <27.465578, 32.780582, 40.750240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256119, 32.895317, 40.726517>,  <26.907021, 33.086544, 40.686981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256119, 32.895317, 40.726517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398997, 0.581878, -0.708675,
		0.281281, 0.657929, 0.698578,
		0.872744, -0.478067, 0.098841,
		27.517942, 32.751896, 40.756168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369202, 33.610008, 40.753456>,  <26.907021, 33.086544, 40.686981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369202, 33.610008, 40.753456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569214, 33.286346, 40.630016>,  <27.689220, 33.092148, 40.555954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.569214, 33.286346, 40.630016>,  <27.369202, 33.610008, 40.753456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569214, 33.286346, 40.630016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376254, 0.523943, -0.764145,
		0.780002, 0.265985, 0.566436,
		0.500031, -0.809158, -0.308598,
		27.719223, 33.043598, 40.537437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003185, 33.909443, 40.504402>,  <27.369202, 33.610008, 40.753456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003185, 33.909443, 40.504402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945124, 33.553783, 40.330811>,  <27.910286, 33.340385, 40.226654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945124, 33.553783, 40.330811>,  <28.003185, 33.909443, 40.504402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945124, 33.553783, 40.330811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175390, 0.408557, -0.895723,
		0.973739, -0.206135, 0.096644,
		-0.145155, -0.889151, -0.433983,
		27.901577, 33.287037, 40.200615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594440, 33.868320, 40.107170>,  <28.003185, 33.909443, 40.504402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594440, 33.868320, 40.107170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343138, 33.603825, 39.943188>,  <28.192356, 33.445129, 39.844799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343138, 33.603825, 39.943188>,  <28.594440, 33.868320, 40.107170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343138, 33.603825, 39.943188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349908, 0.230477, -0.907989,
		0.694880, -0.713896, 0.086573,
		-0.628257, -0.661236, -0.409952,
		28.154661, 33.405453, 39.820202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904327, 33.534801, 39.451706>,  <28.594440, 33.868320, 40.107170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904327, 33.534801, 39.451706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529146, 33.407253, 39.397198>,  <28.304037, 33.330723, 39.364494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529146, 33.407253, 39.397198>,  <28.904327, 33.534801, 39.451706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529146, 33.407253, 39.397198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184017, -0.124618, -0.974991,
		0.293915, -0.939570, 0.175563,
		-0.937951, -0.318871, -0.136270,
		28.247761, 33.311592, 39.356316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979223, 33.010281, 38.941090>,  <28.904327, 33.534801, 39.451706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979223, 33.010281, 38.941090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598982, 33.131542, 38.914391>,  <28.370838, 33.204300, 38.898373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.598982, 33.131542, 38.914391>,  <28.979223, 33.010281, 38.941090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.598982, 33.131542, 38.914391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036174, -0.105364, -0.993776,
		-0.308298, -0.947099, 0.089193,
		-0.950602, 0.303152, -0.066744,
		28.313801, 33.222488, 38.894367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743608, 32.755054, 38.310181>,  <28.979223, 33.010281, 38.941090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743608, 32.755054, 38.310181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484673, 33.044449, 38.406109>,  <28.329311, 33.218086, 38.463665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484673, 33.044449, 38.406109>,  <28.743608, 32.755054, 38.310181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484673, 33.044449, 38.406109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035743, 0.285486, -0.957716,
		-0.761365, -0.628538, -0.158946,
		-0.647337, 0.723490, 0.239825,
		28.290472, 33.261497, 38.478058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194799, 32.642849, 37.822948>,  <28.743608, 32.755054, 38.310181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194799, 32.642849, 37.822948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170742, 33.017868, 37.959991>,  <28.156307, 33.242882, 38.042217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170742, 33.017868, 37.959991>,  <28.194799, 32.642849, 37.822948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170742, 33.017868, 37.959991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049915, 0.339973, -0.939110,
		-0.996941, -0.073582, 0.026351,
		-0.060143, 0.937552, 0.342606,
		28.152699, 33.299133, 38.062775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751177, 33.078606, 37.384312>,  <28.194799, 32.642849, 37.822948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751177, 33.078606, 37.384312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913391, 33.388428, 37.578468>,  <28.010719, 33.574322, 37.694962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913391, 33.388428, 37.578468>,  <27.751177, 33.078606, 37.384312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913391, 33.388428, 37.578468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263392, 0.409477, -0.873472,
		-0.875308, 0.482074, -0.037953,
		0.405537, 0.774554, 0.485393,
		28.035051, 33.620792, 37.724087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383541, 33.679111, 37.175598>,  <27.751177, 33.078606, 37.384312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383541, 33.679111, 37.175598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747326, 33.787407, 37.301823>,  <27.965597, 33.852386, 37.377556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747326, 33.787407, 37.301823>,  <27.383541, 33.679111, 37.175598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747326, 33.787407, 37.301823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167917, 0.455135, -0.874446,
		-0.380370, 0.848264, 0.368466,
		0.909463, 0.270741, 0.315558,
		28.020164, 33.868629, 37.396488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419113, 34.387848, 36.997986>,  <27.383541, 33.679111, 37.175598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419113, 34.387848, 36.997986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790569, 34.255108, 37.064323>,  <28.013443, 34.175465, 37.104126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790569, 34.255108, 37.064323>,  <27.419113, 34.387848, 36.997986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790569, 34.255108, 37.064323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337293, 0.569103, -0.749904,
		0.154479, 0.752326, 0.640423,
		0.928639, -0.331854, 0.165840,
		28.069160, 34.155552, 37.114075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791706, 35.015636, 36.952133>,  <27.419113, 34.387848, 36.997986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791706, 35.015636, 36.952133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064289, 34.736164, 36.864998>,  <28.227839, 34.568481, 36.812717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.064289, 34.736164, 36.864998>,  <27.791706, 35.015636, 36.952133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064289, 34.736164, 36.864998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368004, 0.584419, -0.723206,
		0.632604, 0.412667, 0.655376,
		0.681457, -0.698685, -0.217842,
		28.268726, 34.526558, 36.799644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450762, 35.443268, 36.825626>,  <27.791706, 35.015636, 36.952133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450762, 35.443268, 36.825626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495081, 35.077957, 36.668835>,  <28.521671, 34.858768, 36.574760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495081, 35.077957, 36.668835>,  <28.450762, 35.443268, 36.825626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495081, 35.077957, 36.668835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599863, 0.375913, -0.706296,
		0.792394, -0.156878, 0.589492,
		0.110796, -0.913279, -0.391976,
		28.528320, 34.803974, 36.551243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123550, 35.344929, 36.812096>,  <28.450762, 35.443268, 36.825626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123550, 35.344929, 36.812096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957373, 35.110092, 36.534180>,  <28.857666, 34.969189, 36.367432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957373, 35.110092, 36.534180>,  <29.123550, 35.344929, 36.812096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957373, 35.110092, 36.534180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594477, 0.402885, -0.695903,
		0.688478, -0.702144, 0.181637,
		-0.415445, -0.587093, -0.694786,
		28.832739, 34.933964, 36.325745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664883, 35.123878, 36.535610>,  <29.123550, 35.344929, 36.812096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664883, 35.123878, 36.535610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358313, 35.095490, 36.280251>,  <29.174370, 35.078457, 36.127033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358313, 35.095490, 36.280251>,  <29.664883, 35.123878, 36.535610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358313, 35.095490, 36.280251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534924, 0.479681, -0.695530,
		0.355591, -0.874568, -0.329675,
		-0.766427, -0.070973, -0.638398,
		29.128384, 35.074196, 36.088730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901003, 34.752476, 35.929455>,  <29.664883, 35.123878, 36.535610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901003, 34.752476, 35.929455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611149, 35.014336, 35.843346>,  <29.437237, 35.171452, 35.791679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611149, 35.014336, 35.843346>,  <29.901003, 34.752476, 35.929455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611149, 35.014336, 35.843346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594591, 0.436016, -0.675538,
		-0.348378, -0.617516, -0.705200,
		-0.724634, 0.654648, -0.215271,
		29.393759, 35.210732, 35.778763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410553, 35.088787, 35.611637>,  <29.901003, 34.752476, 35.929455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410553, 35.088787, 35.611637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686142, 34.810535, 35.530224>,  <30.851496, 34.643585, 35.481377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686142, 34.810535, 35.530224>,  <30.410553, 35.088787, 35.611637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686142, 34.810535, 35.530224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371236, 0.579872, -0.725212,
		0.622497, 0.424092, 0.657756,
		0.688971, -0.695625, -0.203530,
		30.892834, 34.601849, 35.469166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142382, 35.489883, 35.570072>,  <30.410553, 35.088787, 35.611637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142382, 35.489883, 35.570072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121696, 35.150833, 35.358845>,  <31.109285, 34.947403, 35.232109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121696, 35.150833, 35.358845>,  <31.142382, 35.489883, 35.570072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121696, 35.150833, 35.358845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442192, 0.454683, -0.773130,
		0.895428, -0.273491, 0.351299,
		-0.051715, -0.847624, -0.528072,
		31.106182, 34.896545, 35.200424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844801, 35.517956, 35.171391>,  <31.142382, 35.489883, 35.570072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844801, 35.517956, 35.171391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086117, 35.757027, 34.960175>,  <32.230907, 35.900467, 34.833447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086117, 35.757027, 34.960175>,  <31.844801, 35.517956, 35.171391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086117, 35.757027, 34.960175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761479, -0.628478, 0.158635,
		-0.237050, -0.497794, -0.834271,
		0.603289, 0.597675, -0.528040,
		32.267105, 35.936329, 34.801762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064545, 35.228271, 34.485844>,  <31.844801, 35.517956, 35.171391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064545, 35.228271, 34.485844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328667, 35.459660, 34.677414>,  <32.487141, 35.598492, 34.792358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328667, 35.459660, 34.677414>,  <32.064545, 35.228271, 34.485844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328667, 35.459660, 34.677414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605901, -0.787130, 0.115375,
		0.443719, 0.214001, -0.870240,
		0.660301, 0.578473, 0.478928,
		32.526756, 35.633202, 34.821091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837036, 35.231491, 34.156696>,  <32.064545, 35.228271, 34.485844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837036, 35.231491, 34.156696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782509, 35.282669, 34.549644>,  <32.749794, 35.313374, 34.785412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.782509, 35.282669, 34.549644>,  <32.837036, 35.231491, 34.156696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782509, 35.282669, 34.549644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556444, -0.810532, 0.182777,
		0.819626, 0.571549, 0.039298,
		-0.136319, 0.127941, 0.982369,
		32.741611, 35.321053, 34.844357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563141, 35.217541, 34.502548>,  <32.837036, 35.231491, 34.156696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563141, 35.217541, 34.502548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278542, 35.153175, 34.776154>,  <33.107780, 35.114555, 34.940315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278542, 35.153175, 34.776154>,  <33.563141, 35.217541, 34.502548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278542, 35.153175, 34.776154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499076, -0.800976, 0.330698,
		0.494664, 0.576666, 0.650203,
		-0.711499, -0.160917, 0.684014,
		33.065090, 35.104900, 34.981358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862339, 35.754333, 34.795750>,  <33.563141, 35.217541, 34.502548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862339, 35.754333, 34.795750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934101, 35.403595, 34.974163>,  <33.977158, 35.193150, 35.081211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934101, 35.403595, 34.974163>,  <33.862339, 35.754333, 34.795750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934101, 35.403595, 34.974163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091389, 0.466286, 0.879901,
		-0.979521, -0.117099, 0.163790,
		0.179408, -0.876850, 0.446035,
		33.987923, 35.140541, 35.107975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409409, 35.609665, 35.321140>,  <33.862339, 35.754333, 34.795750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409409, 35.609665, 35.321140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759258, 35.434772, 35.404911>,  <33.969170, 35.329838, 35.455173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759258, 35.434772, 35.404911>,  <33.409409, 35.609665, 35.321140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759258, 35.434772, 35.404911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039813, 0.365753, 0.929860,
		-0.483160, -0.821618, 0.302490,
		0.874627, -0.437228, 0.209428,
		34.021645, 35.303604, 35.467739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383743, 35.338985, 35.932343>,  <33.409409, 35.609665, 35.321140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383743, 35.338985, 35.932343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779442, 35.383163, 35.893990>,  <34.016861, 35.409668, 35.870975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779442, 35.383163, 35.893990>,  <33.383743, 35.338985, 35.932343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779442, 35.383163, 35.893990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044955, 0.394260, 0.917899,
		0.139178, -0.912339, 0.385055,
		0.989246, 0.110441, -0.095886,
		34.076218, 35.416298, 35.865223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626049, 35.169472, 36.546940>,  <33.383743, 35.338985, 35.932343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626049, 35.169472, 36.546940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937847, 35.369808, 36.396454>,  <34.124928, 35.490009, 36.306160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937847, 35.369808, 36.396454>,  <33.626049, 35.169472, 36.546940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937847, 35.369808, 36.396454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158843, 0.422928, 0.892133,
		0.605932, -0.755175, 0.250116,
		0.779497, 0.500843, -0.376219,
		34.171696, 35.520061, 36.283588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058960, 35.073612, 37.070892>,  <33.626049, 35.169472, 36.546940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058960, 35.073612, 37.070892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196125, 35.382618, 36.857117>,  <34.278423, 35.568024, 36.728851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196125, 35.382618, 36.857117>,  <34.058960, 35.073612, 37.070892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196125, 35.382618, 36.857117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203332, 0.494409, 0.845113,
		0.917097, -0.398469, 0.012461,
		0.342913, 0.772517, -0.534442,
		34.299000, 35.614372, 36.696785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660172, 35.310799, 37.335510>,  <34.058960, 35.073612, 37.070892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660172, 35.310799, 37.335510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563213, 35.635899, 37.123596>,  <34.505039, 35.830959, 36.996449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563213, 35.635899, 37.123596>,  <34.660172, 35.310799, 37.335510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563213, 35.635899, 37.123596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202223, 0.576405, 0.791747,
		0.948867, 0.084784, -0.304078,
		-0.242400, 0.812754, -0.529786,
		34.490494, 35.879726, 36.964661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216579, 35.813839, 37.436752>,  <34.660172, 35.310799, 37.335510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216579, 35.813839, 37.436752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905266, 36.029701, 37.308353>,  <34.718475, 36.159218, 37.231312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905266, 36.029701, 37.308353>,  <35.216579, 35.813839, 37.436752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905266, 36.029701, 37.308353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091977, 0.603692, 0.791894,
		0.621134, 0.586797, -0.519482,
		-0.778289, 0.539652, -0.321001,
		34.671780, 36.191597, 37.212051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423153, 36.424011, 37.499561>,  <35.216579, 35.813839, 37.436752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423153, 36.424011, 37.499561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028931, 36.491409, 37.492661>,  <34.792397, 36.531849, 37.488522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028931, 36.491409, 37.492661>,  <35.423153, 36.424011, 37.499561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028931, 36.491409, 37.492661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101645, 0.669861, 0.735496,
		0.135482, 0.723116, -0.677309,
		-0.985552, 0.168491, -0.017253,
		34.733265, 36.541958, 37.487484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373096, 37.108925, 37.421448>,  <35.423153, 36.424011, 37.499561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373096, 37.108925, 37.421448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025009, 36.981052, 37.571392>,  <34.816154, 36.904331, 37.661358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025009, 36.981052, 37.571392>,  <35.373096, 37.108925, 37.421448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025009, 36.981052, 37.571392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084256, 0.653111, 0.752560,
		-0.485401, 0.686479, -0.541417,
		-0.870222, -0.319677, 0.374861,
		34.763943, 36.885151, 37.683849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999153, 37.749050, 37.490051>,  <35.373096, 37.108925, 37.421448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999153, 37.749050, 37.490051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836502, 37.470028, 37.726040>,  <34.738911, 37.302616, 37.867634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836502, 37.470028, 37.726040>,  <34.999153, 37.749050, 37.490051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836502, 37.470028, 37.726040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004623, 0.647334, 0.762192,
		-0.913580, 0.307205, -0.266452,
		-0.406632, -0.697556, 0.589972,
		34.714512, 37.260761, 37.903030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656075, 38.105579, 38.010242>,  <34.999153, 37.749050, 37.490051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656075, 38.105579, 38.010242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674873, 37.740379, 38.172337>,  <34.686153, 37.521259, 38.269592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674873, 37.740379, 38.172337>,  <34.656075, 38.105579, 38.010242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674873, 37.740379, 38.172337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081835, 0.407840, 0.909379,
		-0.995537, -0.009573, 0.093882,
		0.046994, -0.913003, 0.405237,
		34.688972, 37.466476, 38.293907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199070, 38.099426, 38.633938>,  <34.656075, 38.105579, 38.010242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199070, 38.099426, 38.633938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440598, 37.794037, 38.725605>,  <34.585514, 37.610802, 38.780605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440598, 37.794037, 38.725605>,  <34.199070, 38.099426, 38.633938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440598, 37.794037, 38.725605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022538, 0.303727, 0.952492,
		-0.796806, -0.569964, 0.200602,
		0.603814, -0.763473, 0.229166,
		34.621742, 37.564995, 38.794353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931892, 37.803944, 39.205994>,  <34.199070, 38.099426, 38.633938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931892, 37.803944, 39.205994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311440, 37.677731, 39.209965>,  <34.539165, 37.602001, 39.212349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311440, 37.677731, 39.209965>,  <33.931892, 37.803944, 39.205994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311440, 37.677731, 39.209965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049066, 0.178468, 0.982722,
		-0.311852, -0.931981, 0.184824,
		0.948863, -0.315532, 0.009927,
		34.596100, 37.583073, 39.212944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988972, 37.432693, 39.828560>,  <33.931892, 37.803944, 39.205994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988972, 37.432693, 39.828560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372711, 37.503895, 39.740948>,  <34.602955, 37.546616, 39.688381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372711, 37.503895, 39.740948>,  <33.988972, 37.432693, 39.828560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372711, 37.503895, 39.740948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202102, 0.108451, 0.973341,
		0.197010, -0.978036, 0.068067,
		0.959345, 0.178001, -0.219029,
		34.660515, 37.557297, 39.675240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384254, 36.982159, 40.247780>,  <33.988972, 37.432693, 39.828560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384254, 36.982159, 40.247780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631508, 37.280670, 40.149006>,  <34.779861, 37.459778, 40.089741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631508, 37.280670, 40.149006>,  <34.384254, 36.982159, 40.247780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631508, 37.280670, 40.149006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194495, 0.159175, 0.967903,
		0.761631, -0.646322, -0.046756,
		0.618134, 0.746279, -0.246939,
		34.816948, 37.504555, 40.074924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998081, 36.879841, 40.607746>,  <34.384254, 36.982159, 40.247780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998081, 36.879841, 40.607746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981438, 37.269157, 40.517437>,  <34.971451, 37.502747, 40.463253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981438, 37.269157, 40.517437>,  <34.998081, 36.879841, 40.607746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981438, 37.269157, 40.517437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183926, 0.229568, 0.955756,
		0.982059, -0.001753, -0.188566,
		-0.041613, 0.973291, -0.225772,
		34.968952, 37.561146, 40.449707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491993, 37.092941, 40.958897>,  <34.998081, 36.879841, 40.607746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491993, 37.092941, 40.958897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326050, 37.436729, 40.839432>,  <35.226482, 37.643002, 40.767754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326050, 37.436729, 40.839432>,  <35.491993, 37.092941, 40.958897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326050, 37.436729, 40.839432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090952, 0.365767, 0.926252,
		0.905328, 0.357102, -0.229913,
		-0.414861, 0.859472, -0.298660,
		35.201591, 37.694572, 40.749832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825680, 37.576157, 41.326115>,  <35.491993, 37.092941, 40.958897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825680, 37.576157, 41.326115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505894, 37.783607, 41.204868>,  <35.314022, 37.908077, 41.132122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505894, 37.783607, 41.204868>,  <35.825680, 37.576157, 41.326115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505894, 37.783607, 41.204868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019470, 0.481963, 0.875975,
		0.600393, 0.706215, -0.375216,
		-0.799468, 0.518624, -0.303117,
		35.266052, 37.939194, 41.113934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007656, 38.224323, 41.461960>,  <35.825680, 37.576157, 41.326115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007656, 38.224323, 41.461960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608616, 38.206448, 41.440781>,  <35.369194, 38.195721, 41.428074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608616, 38.206448, 41.440781>,  <36.007656, 38.224323, 41.461960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608616, 38.206448, 41.440781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063406, 0.280613, 0.957724,
		-0.027941, 0.958780, -0.282773,
		-0.997597, -0.044689, -0.052952,
		35.309338, 38.193039, 41.424896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861797, 38.794693, 41.938076>,  <36.007656, 38.224323, 41.461960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861797, 38.794693, 41.938076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521980, 38.590115, 41.886391>,  <35.318089, 38.467369, 41.855381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521980, 38.590115, 41.886391>,  <35.861797, 38.794693, 41.938076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521980, 38.590115, 41.886391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264256, 0.200622, 0.943356,
		-0.456554, 0.835568, -0.305590,
		-0.849546, -0.511446, -0.129209,
		35.267117, 38.436680, 41.847630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402271, 39.240215, 42.259617>,  <35.861797, 38.794693, 41.938076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402271, 39.240215, 42.259617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267944, 38.863556, 42.250404>,  <35.187347, 38.637562, 42.244877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267944, 38.863556, 42.250404>,  <35.402271, 39.240215, 42.259617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267944, 38.863556, 42.250404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255211, 0.067430, 0.964531,
		-0.906693, 0.329785, -0.262962,
		-0.335820, -0.941645, -0.023027,
		35.167198, 38.581062, 42.243496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667725, 39.328457, 42.550739>,  <35.402271, 39.240215, 42.259617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667725, 39.328457, 42.550739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732063, 38.934200, 42.571289>,  <34.770668, 38.697647, 42.583618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732063, 38.934200, 42.571289>,  <34.667725, 39.328457, 42.550739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732063, 38.934200, 42.571289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286793, 0.003134, 0.957987,
		-0.944393, -0.168827, -0.282170,
		0.160849, -0.985641, 0.051378,
		34.780319, 38.638508, 42.586704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017891, 39.025875, 42.755234>,  <34.667725, 39.328457, 42.550739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017891, 39.025875, 42.755234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319260, 38.795589, 42.882294>,  <34.500080, 38.657417, 42.958530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319260, 38.795589, 42.882294>,  <34.017891, 39.025875, 42.755234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319260, 38.795589, 42.882294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390523, -0.003129, 0.920588,
		-0.529002, -0.817645, -0.227187,
		0.753425, -0.575714, 0.317654,
		34.545288, 38.622875, 42.977589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706303, 38.487617, 43.096634>,  <34.017891, 39.025875, 42.755234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706303, 38.487617, 43.096634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083820, 38.513767, 43.226238>,  <34.310329, 38.529457, 43.304001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083820, 38.513767, 43.226238>,  <33.706303, 38.487617, 43.096634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083820, 38.513767, 43.226238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324959, 0.004118, 0.945719,
		0.060493, -0.997852, 0.025131,
		0.943791, 0.065376, 0.324012,
		34.366959, 38.533379, 43.323441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665665, 38.197792, 43.746521>,  <33.706303, 38.487617, 43.096634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665665, 38.197792, 43.746521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027809, 38.367615, 43.749805>,  <34.245098, 38.469509, 43.751774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027809, 38.367615, 43.749805>,  <33.665665, 38.197792, 43.746521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027809, 38.367615, 43.749805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026352, 0.036882, 0.998972,
		0.423817, -0.904650, 0.044580,
		0.905365, 0.424556, 0.008208,
		34.299419, 38.494980, 43.752270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954880, 37.928387, 44.317871>,  <33.665665, 38.197792, 43.746521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954880, 37.928387, 44.317871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190205, 38.245667, 44.254986>,  <34.331402, 38.436035, 44.217255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190205, 38.245667, 44.254986>,  <33.954880, 37.928387, 44.317871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190205, 38.245667, 44.254986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083660, 0.253086, 0.963820,
		0.804292, -0.553878, 0.215254,
		0.588316, 0.793201, -0.157217,
		34.366699, 38.483627, 44.207821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481861, 37.862118, 44.894077>,  <33.954880, 37.928387, 44.317871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481861, 37.862118, 44.894077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461044, 38.230804, 44.740334>,  <34.448555, 38.452015, 44.648087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461044, 38.230804, 44.740334>,  <34.481861, 37.862118, 44.894077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461044, 38.230804, 44.740334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102131, 0.377952, 0.920175,
		0.993409, 0.087147, 0.074465,
		-0.052047, 0.921715, -0.384361,
		34.445431, 38.507320, 44.625027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070145, 38.213444, 45.247414>,  <34.481861, 37.862118, 44.894077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070145, 38.213444, 45.247414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782658, 38.457680, 45.114372>,  <34.610165, 38.604221, 45.034546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782658, 38.457680, 45.114372>,  <35.070145, 38.213444, 45.247414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782658, 38.457680, 45.114372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129526, 0.352410, 0.926839,
		0.683127, 0.709220, -0.174198,
		-0.718721, 0.610586, -0.332603,
		34.567039, 38.640854, 45.014591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261444, 38.905884, 45.491741>,  <35.070145, 38.213444, 45.247414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261444, 38.905884, 45.491741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872276, 38.949017, 45.409962>,  <34.638775, 38.974895, 45.360893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872276, 38.949017, 45.409962>,  <35.261444, 38.905884, 45.491741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872276, 38.949017, 45.409962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090803, 0.635088, 0.767084,
		0.212561, 0.764875, -0.608098,
		-0.972920, 0.107835, -0.204447,
		34.580399, 38.981365, 45.348629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120644, 39.538361, 45.614479>,  <35.261444, 38.905884, 45.491741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120644, 39.538361, 45.614479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755325, 39.375515, 45.619419>,  <34.536133, 39.277809, 45.622383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755325, 39.375515, 45.619419>,  <35.120644, 39.538361, 45.614479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755325, 39.375515, 45.619419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267776, 0.623010, 0.734952,
		-0.306900, 0.667922, -0.678007,
		-0.913295, -0.407111, 0.012348,
		34.481339, 39.253384, 45.623123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654697, 40.035934, 45.779118>,  <35.120644, 39.538361, 45.614479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654697, 40.035934, 45.779118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404079, 39.732105, 45.848961>,  <34.253708, 39.549809, 45.890865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404079, 39.732105, 45.848961>,  <34.654697, 40.035934, 45.779118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404079, 39.732105, 45.848961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451681, 0.536455, 0.712881,
		-0.635153, 0.367788, -0.679200,
		-0.626550, -0.759571, 0.174608,
		34.216114, 39.504234, 45.901344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972755, 40.338032, 45.868687>,  <34.654697, 40.035934, 45.779118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972755, 40.338032, 45.868687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976131, 39.985237, 46.057163>,  <33.978157, 39.773560, 46.170250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976131, 39.985237, 46.057163>,  <33.972755, 40.338032, 45.868687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976131, 39.985237, 46.057163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418780, 0.424781, 0.802611,
		-0.908049, -0.204098, -0.365776,
		0.008437, -0.881989, 0.471194,
		33.978664, 39.720642, 46.198521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432697, 40.366585, 46.381966>,  <33.972755, 40.338032, 45.868687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432697, 40.366585, 46.381966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637939, 40.057251, 46.530922>,  <33.761086, 39.871651, 46.620296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637939, 40.057251, 46.530922>,  <33.432697, 40.366585, 46.381966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637939, 40.057251, 46.530922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399574, 0.168760, 0.901033,
		-0.759647, -0.611121, -0.222413,
		0.513106, -0.773338, 0.372386,
		33.791870, 39.825249, 46.642639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992847, 40.124901, 46.832561>,  <33.432697, 40.366585, 46.381966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992847, 40.124901, 46.832561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341671, 39.965576, 46.946301>,  <33.550964, 39.869980, 47.014545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341671, 39.965576, 46.946301>,  <32.992847, 40.124901, 46.832561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341671, 39.965576, 46.946301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200844, 0.238559, 0.950132,
		-0.446282, -0.885685, 0.128040,
		0.872063, -0.398311, 0.284350,
		33.603291, 39.846085, 47.031605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784863, 39.718254, 47.421413>,  <32.992847, 40.124901, 46.832561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784863, 39.718254, 47.421413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179054, 39.672741, 47.471821>,  <33.415569, 39.645435, 47.502068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179054, 39.672741, 47.471821>,  <32.784863, 39.718254, 47.421413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179054, 39.672741, 47.471821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106023, 0.167337, 0.980182,
		-0.132615, -0.979312, 0.152844,
		0.985481, -0.113782, 0.126021,
		33.474697, 39.638607, 47.509628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880520, 39.303829, 47.982067>,  <32.784863, 39.718254, 47.421413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880520, 39.303829, 47.982067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215420, 39.522343, 47.972404>,  <33.416359, 39.653450, 47.966606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215420, 39.522343, 47.972404>,  <32.880520, 39.303829, 47.982067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215420, 39.522343, 47.972404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117670, 0.223133, 0.967660,
		0.534008, -0.807332, 0.251099,
		0.837251, 0.546285, -0.024156,
		33.466595, 39.686230, 47.965157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328281, 38.981457, 48.446587>,  <32.880520, 39.303829, 47.982067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328281, 38.981457, 48.446587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418060, 39.368031, 48.396587>,  <33.471928, 39.599976, 48.366589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418060, 39.368031, 48.396587>,  <33.328281, 38.981457, 48.446587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418060, 39.368031, 48.396587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125274, 0.155818, 0.979810,
		0.966400, -0.204258, 0.156043,
		0.224448, 0.966436, -0.124995,
		33.485394, 39.657963, 48.359089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727287, 39.145565, 49.153767>,  <33.328281, 38.981457, 48.446587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727287, 39.145565, 49.153767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595844, 39.484787, 48.987484>,  <33.516979, 39.688320, 48.887714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595844, 39.484787, 48.987484>,  <33.727287, 39.145565, 49.153767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595844, 39.484787, 48.987484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235250, 0.352784, 0.905649,
		0.914699, 0.395398, 0.083579,
		-0.328607, 0.848059, -0.415709,
		33.497261, 39.739204, 48.862770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107979, 39.776241, 49.421932>,  <33.727287, 39.145565, 49.153767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107979, 39.776241, 49.421932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745461, 39.890068, 49.296932>,  <33.527950, 39.958366, 49.221931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745461, 39.890068, 49.296932>,  <34.107979, 39.776241, 49.421932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745461, 39.890068, 49.296932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111035, 0.553097, 0.825685,
		0.407808, 0.783009, -0.469669,
		-0.906291, 0.284571, -0.312498,
		33.473572, 39.975441, 49.203182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095497, 40.447445, 49.603798>,  <34.107979, 39.776241, 49.421932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095497, 40.447445, 49.603798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716694, 40.350407, 49.519585>,  <33.489410, 40.292183, 49.469055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716694, 40.350407, 49.519585>,  <34.095497, 40.447445, 49.603798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716694, 40.350407, 49.519585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302801, 0.455503, 0.837155,
		-0.107191, 0.856542, -0.504822,
		-0.947007, -0.242596, -0.210536,
		33.432590, 40.277626, 49.456425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556305, 40.936371, 49.737129>,  <34.095497, 40.447445, 49.603798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556305, 40.936371, 49.737129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383736, 40.578815, 49.785851>,  <33.280193, 40.364281, 49.815083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383736, 40.578815, 49.785851>,  <33.556305, 40.936371, 49.737129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383736, 40.578815, 49.785851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323672, 0.279398, 0.903976,
		-0.842087, 0.350570, -0.409866,
		-0.431422, -0.893889, 0.121808,
		33.254311, 40.310650, 49.822392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076504, 40.870682, 50.348473>,  <33.556305, 40.936371, 49.737129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076504, 40.870682, 50.348473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069954, 40.480885, 50.258949>,  <33.066025, 40.247005, 50.205235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069954, 40.480885, 50.258949>,  <33.076504, 40.870682, 50.348473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069954, 40.480885, 50.258949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447813, -0.192990, 0.873051,
		-0.893977, 0.114519, -0.433232,
		-0.016371, -0.974495, -0.223812,
		33.065044, 40.188538, 50.191807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440403, 40.688175, 50.493343>,  <33.076504, 40.870682, 50.348473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440403, 40.688175, 50.493343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709923, 40.397591, 50.547371>,  <32.871635, 40.223240, 50.579788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709923, 40.397591, 50.547371>,  <32.440403, 40.688175, 50.493343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709923, 40.397591, 50.547371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248321, -0.050463, 0.967362,
		-0.695937, -0.685351, -0.214398,
		0.673802, -0.726463, 0.135068,
		32.912064, 40.179653, 50.587891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360859, 40.007538, 50.562908>,  <32.440403, 40.688175, 50.493343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360859, 40.007538, 50.562908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653599, 39.767578, 50.692223>,  <32.829243, 39.623604, 50.769814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653599, 39.767578, 50.692223>,  <32.360859, 40.007538, 50.562908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653599, 39.767578, 50.692223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458132, 0.784317, 0.418284,
		-0.504491, -0.158012, 0.848835,
		0.731850, -0.599899, 0.323290,
		32.873154, 39.587608, 50.789211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493595, 40.202911, 51.281456>,  <32.360859, 40.007538, 50.562908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493595, 40.202911, 51.281456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844055, 40.059311, 51.152786>,  <33.054333, 39.973148, 51.075584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844055, 40.059311, 51.152786>,  <32.493595, 40.202911, 51.281456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844055, 40.059311, 51.152786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474040, 0.762742, 0.439898,
		0.087429, -0.537904, 0.838460,
		0.876152, -0.359004, -0.321674,
		33.106899, 39.951611, 51.056282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907864, 39.958626, 51.768749>,  <32.493595, 40.202911, 51.281456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907864, 39.958626, 51.768749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099358, 40.138615, 51.467197>,  <33.214252, 40.246609, 51.286266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099358, 40.138615, 51.467197>,  <32.907864, 39.958626, 51.768749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099358, 40.138615, 51.467197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285280, 0.732354, 0.618282,
		0.830320, -0.511059, 0.222232,
		0.478731, 0.449974, -0.753883,
		33.242977, 40.273605, 51.241032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247101, 40.064930, 52.023029>,  <32.907864, 39.958626, 51.768749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247101, 40.064930, 52.023029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184227, 39.926613, 52.393051>,  <32.146503, 39.843624, 52.615063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184227, 39.926613, 52.393051>,  <32.247101, 40.064930, 52.023029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184227, 39.926613, 52.393051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795244, -0.599715, -0.089048,
		0.585560, 0.721646, 0.369252,
		-0.157184, -0.345788, 0.925053,
		32.137074, 39.822876, 52.670567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851528, 40.177845, 52.500439>,  <32.247101, 40.064930, 52.023029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851528, 40.177845, 52.500439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617310, 39.854168, 52.519783>,  <32.476780, 39.659962, 52.531387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617310, 39.854168, 52.519783>,  <32.851528, 40.177845, 52.500439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617310, 39.854168, 52.519783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692515, -0.530339, -0.489044,
		0.421378, -0.252870, 0.870917,
		-0.585546, -0.809196, 0.048357,
		32.441647, 39.611408, 52.534290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370167, 39.691357, 52.285065>,  <32.851528, 40.177845, 52.500439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370167, 39.691357, 52.285065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025341, 39.491753, 52.320465>,  <32.818447, 39.371990, 52.341705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025341, 39.491753, 52.320465>,  <33.370167, 39.691357, 52.285065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025341, 39.491753, 52.320465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283594, -0.619701, -0.731810,
		0.420024, -0.605769, 0.675739,
		-0.862064, -0.499014, 0.088497,
		32.766724, 39.342049, 52.347015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516178, 38.983051, 52.098133>,  <33.370167, 39.691357, 52.285065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516178, 38.983051, 52.098133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122059, 39.029449, 52.047974>,  <32.885586, 39.057289, 52.017876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122059, 39.029449, 52.047974>,  <33.516178, 38.983051, 52.098133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122059, 39.029449, 52.047974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001275, -0.729092, -0.684414,
		-0.170819, -0.674514, 0.718228,
		-0.985302, 0.115995, -0.125403,
		32.826469, 39.064247, 52.010353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350246, 38.337196, 51.850704>,  <33.516178, 38.983051, 52.098133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350246, 38.337196, 51.850704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032894, 38.564800, 51.764198>,  <32.842484, 38.701363, 51.712296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032894, 38.564800, 51.764198>,  <33.350246, 38.337196, 51.850704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032894, 38.564800, 51.764198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243699, -0.622475, -0.743731,
		-0.557805, -0.537363, 0.632530,
		-0.793388, 0.569004, -0.216265,
		32.794880, 38.735500, 51.699318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871582, 37.896370, 51.960964>,  <33.350246, 38.337196, 51.850704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871582, 37.896370, 51.960964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761772, 38.157280, 51.678356>,  <32.695885, 38.313828, 51.508793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761772, 38.157280, 51.678356>,  <32.871582, 37.896370, 51.960964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761772, 38.157280, 51.678356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054156, -0.744070, -0.665903,
		-0.960053, -0.144547, 0.239592,
		-0.274528, 0.652278, -0.706519,
		32.679413, 38.352962, 51.466400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157711, 37.789806, 51.780605>,  <32.871582, 37.896370, 51.960964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157711, 37.789806, 51.780605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378136, 37.922855, 51.474483>,  <32.510391, 38.002686, 51.290810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378136, 37.922855, 51.474483>,  <32.157711, 37.789806, 51.780605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378136, 37.922855, 51.474483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217645, -0.828086, -0.516627,
		-0.805579, 0.451260, -0.383936,
		0.551066, 0.332622, -0.765303,
		32.543457, 38.022640, 51.244892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751644, 37.837471, 51.110939>,  <32.157711, 37.789806, 51.780605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751644, 37.837471, 51.110939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131382, 37.806873, 50.989029>,  <32.359226, 37.788517, 50.915882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131382, 37.806873, 50.989029>,  <31.751644, 37.837471, 51.110939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131382, 37.806873, 50.989029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263881, -0.720682, -0.641081,
		-0.170612, 0.689033, -0.704361,
		0.949346, -0.076491, -0.304779,
		32.416187, 37.783924, 50.897594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612478, 37.414822, 50.582779>,  <31.751644, 37.837471, 51.110939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612478, 37.414822, 50.582779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010952, 37.442184, 50.604446>,  <32.250038, 37.458603, 50.617447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010952, 37.442184, 50.604446>,  <31.612478, 37.414822, 50.582779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010952, 37.442184, 50.604446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086180, -0.674010, -0.733679,
		-0.013675, 0.735549, -0.677334,
		0.996186, 0.068405, 0.054173,
		32.309807, 37.462708, 50.620697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801043, 37.395702, 49.845211>,  <31.612478, 37.414822, 50.582779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801043, 37.395702, 49.845211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123577, 37.278008, 50.050442>,  <32.317097, 37.207390, 50.173580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123577, 37.278008, 50.050442>,  <31.801043, 37.395702, 49.845211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123577, 37.278008, 50.050442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228194, -0.645554, -0.728826,
		0.545667, 0.704759, -0.453389,
		0.806334, -0.294235, 0.513080,
		32.365479, 37.189735, 50.204365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443878, 37.435383, 49.464497>,  <31.801043, 37.395702, 49.845211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443878, 37.435383, 49.464497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528301, 37.164745, 49.746681>,  <32.578957, 37.002361, 49.915993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528301, 37.164745, 49.746681>,  <32.443878, 37.435383, 49.464497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528301, 37.164745, 49.746681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318077, -0.634897, -0.704083,
		0.924273, 0.372995, 0.081207,
		0.211062, -0.676595, 0.705459,
		32.591621, 36.961765, 49.958321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110317, 37.145279, 49.321892>,  <32.443878, 37.435383, 49.464497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110317, 37.145279, 49.321892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960274, 36.887280, 49.588203>,  <32.870247, 36.732479, 49.747990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960274, 36.887280, 49.588203>,  <33.110317, 37.145279, 49.321892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960274, 36.887280, 49.588203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422820, -0.758212, -0.496324,
		0.824933, 0.095330, 0.557133,
		-0.375111, -0.645001, 0.665782,
		32.847740, 36.693779, 49.787937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696568, 36.881321, 49.648430>,  <33.110317, 37.145279, 49.321892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696568, 36.881321, 49.648430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391811, 36.625114, 49.686939>,  <33.208958, 36.471390, 49.710045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391811, 36.625114, 49.686939>,  <33.696568, 36.881321, 49.648430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391811, 36.625114, 49.686939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393059, -0.575347, -0.717273,
		0.514815, -0.508639, 0.690110,
		-0.761886, -0.640516, 0.096272,
		33.163246, 36.432961, 49.715820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921726, 36.278881, 49.726162>,  <33.696568, 36.881321, 49.648430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921726, 36.278881, 49.726162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562546, 36.218060, 49.560963>,  <33.347038, 36.181564, 49.461842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562546, 36.218060, 49.560963>,  <33.921726, 36.278881, 49.726162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562546, 36.218060, 49.560963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416981, -0.594098, -0.687877,
		-0.140765, -0.789891, 0.596874,
		-0.897949, -0.152056, -0.412998,
		33.293159, 36.172443, 49.437065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952587, 35.548508, 49.639793>,  <33.921726, 36.278881, 49.726162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952587, 35.548508, 49.639793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629776, 35.647850, 49.425491>,  <33.436089, 35.707455, 49.296909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629776, 35.647850, 49.425491>,  <33.952587, 35.548508, 49.639793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629776, 35.647850, 49.425491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266836, -0.655978, -0.706039,
		-0.526792, -0.712748, 0.463119,
		-0.807024, 0.248359, -0.535751,
		33.387669, 35.722359, 49.264767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675323, 34.894165, 49.301331>,  <33.952587, 35.548508, 49.639793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675323, 34.894165, 49.301331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499161, 35.194500, 49.104439>,  <33.393463, 35.374699, 48.986305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499161, 35.194500, 49.104439>,  <33.675323, 34.894165, 49.301331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499161, 35.194500, 49.104439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220611, -0.440946, -0.869999,
		-0.870271, -0.491745, 0.028553,
		-0.440408, 0.750835, -0.492227,
		33.367039, 35.419750, 48.956772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233929, 34.509892, 48.840858>,  <33.675323, 34.894165, 49.301331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233929, 34.509892, 48.840858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312767, 34.869400, 48.684216>,  <33.360069, 35.085106, 48.590229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312767, 34.869400, 48.684216>,  <33.233929, 34.509892, 48.840858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312767, 34.869400, 48.684216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314828, -0.436310, -0.842921,
		-0.928459, 0.042847, -0.368955,
		0.197095, 0.898776, -0.391607,
		33.371895, 35.139034, 48.566734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956562, 34.486084, 48.225945>,  <33.233929, 34.509892, 48.840858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956562, 34.486084, 48.225945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214287, 34.787415, 48.173229>,  <33.368923, 34.968212, 48.141602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214287, 34.787415, 48.173229>,  <32.956562, 34.486084, 48.225945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214287, 34.787415, 48.173229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257877, -0.376239, -0.889912,
		-0.719974, 0.539396, -0.436680,
		0.644311, 0.753323, -0.131784,
		33.407581, 35.013412, 48.133694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807945, 34.867504, 47.685429>,  <32.956562, 34.486084, 48.225945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807945, 34.867504, 47.685429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189190, 34.983788, 47.719048>,  <33.417938, 35.053558, 47.739220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189190, 34.983788, 47.719048>,  <32.807945, 34.867504, 47.685429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189190, 34.983788, 47.719048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055249, 0.105906, -0.992840,
		-0.297532, 0.950931, 0.084879,
		0.953112, 0.290712, 0.084048,
		33.475124, 35.071003, 47.744263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025562, 35.323307, 47.103245>,  <32.807945, 34.867504, 47.685429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025562, 35.323307, 47.103245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384331, 35.221981, 47.248222>,  <33.599590, 35.161186, 47.335209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384331, 35.221981, 47.248222>,  <33.025562, 35.323307, 47.103245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384331, 35.221981, 47.248222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340828, -0.126183, -0.931619,
		0.281726, 0.959120, -0.026840,
		0.896921, -0.253313, 0.362444,
		33.653408, 35.145988, 47.356956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505215, 35.602627, 46.635216>,  <33.025562, 35.323307, 47.103245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505215, 35.602627, 46.635216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771923, 35.358658, 46.806526>,  <33.931946, 35.212276, 46.909313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771923, 35.358658, 46.806526>,  <33.505215, 35.602627, 46.635216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771923, 35.358658, 46.806526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331242, -0.272245, -0.903417,
		0.667609, 0.744230, 0.020507,
		0.666767, -0.609922, 0.428273,
		33.971954, 35.175682, 46.935009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187325, 35.875195, 46.403431>,  <33.505215, 35.602627, 46.635216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187325, 35.875195, 46.403431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160244, 35.483719, 46.480980>,  <34.143997, 35.248833, 46.527508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160244, 35.483719, 46.480980>,  <34.187325, 35.875195, 46.403431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160244, 35.483719, 46.480980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177231, -0.203020, -0.963002,
		0.981838, -0.030834, 0.187198,
		-0.067698, -0.978689, 0.193868,
		34.139935, 35.190113, 46.539139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584084, 35.538776, 45.868851>,  <34.187325, 35.875195, 46.403431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584084, 35.538776, 45.868851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366062, 35.231609, 46.003445>,  <34.235249, 35.047310, 46.084202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366062, 35.231609, 46.003445>,  <34.584084, 35.538776, 45.868851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366062, 35.231609, 46.003445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066967, -0.360178, -0.930477,
		0.835722, -0.529693, 0.144891,
		-0.545054, -0.767917, 0.336480,
		34.202545, 35.001236, 46.104389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867577, 35.022717, 45.524765>,  <34.584084, 35.538776, 45.868851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867577, 35.022717, 45.524765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510876, 34.890388, 45.648273>,  <34.296856, 34.810989, 45.722378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510876, 34.890388, 45.648273>,  <34.867577, 35.022717, 45.524765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510876, 34.890388, 45.648273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205025, -0.312911, -0.927390,
		0.403419, -0.890305, 0.211211,
		-0.891750, -0.330823, 0.308769,
		34.243351, 34.791142, 45.740906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750698, 34.406097, 45.110271>,  <34.867577, 35.022717, 45.524765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750698, 34.406097, 45.110271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394180, 34.457851, 45.284103>,  <34.180271, 34.488903, 45.388401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394180, 34.457851, 45.284103>,  <34.750698, 34.406097, 45.110271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394180, 34.457851, 45.284103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450955, -0.352898, -0.819818,
		0.047289, -0.926673, 0.372882,
		-0.891293, 0.129385, 0.434576,
		34.126793, 34.496666, 45.414474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334084, 33.773434, 45.011444>,  <34.750698, 34.406097, 45.110271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334084, 33.773434, 45.011444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069893, 34.069813, 45.060059>,  <33.911377, 34.247639, 45.089226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069893, 34.069813, 45.060059>,  <34.334084, 33.773434, 45.011444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069893, 34.069813, 45.060059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499805, -0.313058, -0.807582,
		-0.560328, -0.594132, 0.577096,
		-0.660475, 0.740946, 0.121535,
		33.871750, 34.292095, 45.096519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493332, 33.499268, 44.900261>,  <34.334084, 33.773434, 45.011444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493332, 33.499268, 44.900261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533539, 33.888100, 44.815441>,  <33.557663, 34.121399, 44.764549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533539, 33.888100, 44.815441>,  <33.493332, 33.499268, 44.900261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533539, 33.888100, 44.815441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276023, -0.177512, -0.944617,
		-0.955880, 0.153483, 0.250472,
		0.100521, 0.972076, -0.212045,
		33.563694, 34.179722, 44.751827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909966, 33.730995, 44.378864>,  <33.493332, 33.499268, 44.900261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909966, 33.730995, 44.378864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200417, 34.005638, 44.364422>,  <33.374687, 34.170425, 44.355759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200417, 34.005638, 44.364422>,  <32.909966, 33.730995, 44.378864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200417, 34.005638, 44.364422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056456, 0.007208, -0.998379,
		-0.685238, 0.726989, 0.043998,
		0.726128, 0.686611, -0.036104,
		33.418255, 34.211620, 44.353592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858440, 33.940327, 43.736237>,  <32.909966, 33.730995, 44.378864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858440, 33.940327, 43.736237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199375, 34.126663, 43.831322>,  <33.403934, 34.238464, 43.888374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199375, 34.126663, 43.831322>,  <32.858440, 33.940327, 43.736237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199375, 34.126663, 43.831322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218982, 0.094882, -0.971105,
		-0.474940, 0.879764, -0.021141,
		0.852337, 0.465846, 0.237716,
		33.455078, 34.266418, 43.902637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898861, 34.646488, 43.364803>,  <32.858440, 33.940327, 43.736237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898861, 34.646488, 43.364803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272469, 34.526546, 43.442471>,  <33.496632, 34.454582, 43.489071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272469, 34.526546, 43.442471>,  <32.898861, 34.646488, 43.364803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272469, 34.526546, 43.442471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206462, 0.009555, -0.978408,
		0.291521, 0.953938, 0.070832,
		0.934018, -0.299850, 0.194167,
		33.552673, 34.436592, 43.500721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224228, 34.896122, 42.750206>,  <32.898861, 34.646488, 43.364803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224228, 34.896122, 42.750206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495461, 34.631313, 42.877911>,  <33.658199, 34.472427, 42.954533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495461, 34.631313, 42.877911>,  <33.224228, 34.896122, 42.750206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495461, 34.631313, 42.877911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321399, -0.123559, -0.938848,
		0.660989, 0.739226, 0.128991,
		0.678083, -0.662026, 0.319257,
		33.698887, 34.432705, 42.973686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776848, 35.148418, 42.516407>,  <33.224228, 34.896122, 42.750206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776848, 35.148418, 42.516407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844078, 34.755100, 42.544361>,  <33.884415, 34.519108, 42.561134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844078, 34.755100, 42.544361>,  <33.776848, 35.148418, 42.516407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844078, 34.755100, 42.544361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329072, -0.010863, -0.944243,
		0.929227, 0.181701, 0.321748,
		0.168074, -0.983294, 0.069886,
		33.894501, 34.460114, 42.565327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495045, 35.086861, 42.198582>,  <33.776848, 35.148418, 42.516407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495045, 35.086861, 42.198582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334641, 34.720833, 42.215733>,  <34.238400, 34.501217, 42.226025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334641, 34.720833, 42.215733>,  <34.495045, 35.086861, 42.198582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334641, 34.720833, 42.215733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361111, -0.200917, -0.910621,
		0.841896, -0.349687, 0.411011,
		-0.401012, -0.915069, 0.042876,
		34.214336, 34.446312, 42.228596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022987, 34.605980, 41.987263>,  <34.495045, 35.086861, 42.198582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022987, 34.605980, 41.987263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675442, 34.417294, 41.927193>,  <34.466915, 34.304081, 41.891151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675442, 34.417294, 41.927193>,  <35.022987, 34.605980, 41.987263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675442, 34.417294, 41.927193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312658, -0.287693, -0.905250,
		0.383816, -0.833496, 0.397453,
		-0.868867, -0.471717, -0.150178,
		34.414780, 34.275780, 41.882141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100945, 33.867287, 41.701954>,  <35.022987, 34.605980, 41.987263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100945, 33.867287, 41.701954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708931, 33.897083, 41.628220>,  <34.473721, 33.914959, 41.583981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708931, 33.897083, 41.628220>,  <35.100945, 33.867287, 41.701954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708931, 33.897083, 41.628220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142121, -0.385881, -0.911536,
		-0.139030, -0.919536, 0.367592,
		-0.980037, 0.074488, -0.184335,
		34.414921, 33.919430, 41.572918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913437, 33.277210, 41.392673>,  <35.100945, 33.867287, 41.701954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913437, 33.277210, 41.392673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636585, 33.541260, 41.275925>,  <34.470474, 33.699688, 41.205875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636585, 33.541260, 41.275925>,  <34.913437, 33.277210, 41.392673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636585, 33.541260, 41.275925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099724, -0.313047, -0.944488,
		-0.714849, -0.682816, 0.150839,
		-0.692131, 0.660124, -0.291874,
		34.428947, 33.739296, 41.188362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467411, 32.868942, 41.035984>,  <34.913437, 33.277210, 41.392673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467411, 32.868942, 41.035984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425392, 33.249352, 40.919693>,  <34.400181, 33.477596, 40.849918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425392, 33.249352, 40.919693>,  <34.467411, 32.868942, 41.035984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425392, 33.249352, 40.919693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021462, -0.294444, -0.955428,
		-0.994236, -0.094122, 0.051340,
		-0.105043, 0.951022, -0.290727,
		34.393879, 33.534657, 40.832474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961227, 32.787975, 40.504726>,  <34.467411, 32.868942, 41.035984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961227, 32.787975, 40.504726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138020, 33.141293, 40.442200>,  <34.244095, 33.353283, 40.404682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138020, 33.141293, 40.442200>,  <33.961227, 32.787975, 40.504726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138020, 33.141293, 40.442200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090775, -0.217409, -0.971851,
		-0.892418, 0.415353, -0.176272,
		0.441985, 0.883298, -0.156316,
		34.270615, 33.406281, 40.395306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599926, 33.073914, 39.947121>,  <33.961227, 32.787975, 40.504726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599926, 33.073914, 39.947121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961838, 33.244240, 39.950039>,  <34.178986, 33.346436, 39.951790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.961838, 33.244240, 39.950039>,  <33.599926, 33.073914, 39.947121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961838, 33.244240, 39.950039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098277, -0.192082, -0.976446,
		-0.414383, 0.884187, -0.215640,
		0.904781, 0.425815, 0.007299,
		34.233273, 33.371983, 39.952229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586632, 33.604073, 39.460121>,  <33.599926, 33.073914, 39.947121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586632, 33.604073, 39.460121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980499, 33.556355, 39.511036>,  <34.216820, 33.527725, 39.541584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980499, 33.556355, 39.511036>,  <33.586632, 33.604073, 39.460121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980499, 33.556355, 39.511036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132204, 0.034189, -0.990633,
		0.113827, 0.992270, 0.049436,
		0.984665, -0.119296, 0.127291,
		34.275898, 33.520565, 39.549225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814209, 33.906647, 38.875992>,  <33.586632, 33.604073, 39.460121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814209, 33.906647, 38.875992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155933, 33.732777, 38.989983>,  <34.360970, 33.628456, 39.058376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155933, 33.732777, 38.989983>,  <33.814209, 33.906647, 38.875992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155933, 33.732777, 38.989983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305541, -0.023552, -0.951888,
		0.420475, 0.900279, 0.112690,
		0.854310, -0.434676, 0.284975,
		34.412228, 33.602375, 39.075474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287006, 34.277088, 38.559128>,  <33.814209, 33.906647, 38.875992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287006, 34.277088, 38.559128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456493, 33.921947, 38.630894>,  <34.558186, 33.708862, 38.673954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456493, 33.921947, 38.630894>,  <34.287006, 34.277088, 38.559128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456493, 33.921947, 38.630894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228763, -0.086766, -0.969608,
		0.876431, 0.451883, 0.166343,
		0.423716, -0.887848, 0.179419,
		34.583607, 33.655594, 38.684719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913063, 34.261433, 38.106007>,  <34.287006, 34.277088, 38.559128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913063, 34.261433, 38.106007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837631, 33.882526, 38.209637>,  <34.792374, 33.655182, 38.271816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837631, 33.882526, 38.209637>,  <34.913063, 34.261433, 38.106007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837631, 33.882526, 38.209637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233106, -0.299443, -0.925200,
		0.953992, -0.114079, 0.277282,
		-0.188576, -0.947270, 0.259074,
		34.781059, 33.598347, 38.287357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451900, 33.813118, 37.912594>,  <34.913063, 34.261433, 38.106007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451900, 33.813118, 37.912594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152439, 33.549782, 37.943874>,  <34.972763, 33.391781, 37.962643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152439, 33.549782, 37.943874>,  <35.451900, 33.813118, 37.912594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152439, 33.549782, 37.943874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193606, -0.329915, -0.923944,
		0.634066, -0.676570, 0.374449,
		-0.748650, -0.658338, 0.078200,
		34.927845, 33.352280, 37.967335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691360, 33.120110, 38.019825>,  <35.451900, 33.813118, 37.912594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691360, 33.120110, 38.019825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350708, 33.203506, 37.827469>,  <35.146317, 33.253544, 37.712055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350708, 33.203506, 37.827469>,  <35.691360, 33.120110, 38.019825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350708, 33.203506, 37.827469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408447, -0.310995, -0.858168,
		-0.328472, -0.927262, 0.179698,
		-0.851632, 0.208487, -0.480891,
		35.095219, 33.266056, 37.683201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102100, 32.422138, 37.893547>,  <35.691360, 33.120110, 38.019825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102100, 32.422138, 37.893547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177235, 32.045258, 38.004528>,  <36.222317, 31.819130, 38.071117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177235, 32.045258, 38.004528>,  <36.102100, 32.422138, 37.893547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177235, 32.045258, 38.004528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113895, 0.301473, 0.946648,
		-0.975575, -0.146212, 0.163938,
		0.187834, -0.942198, 0.277456,
		36.233585, 31.762598, 38.087765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679920, 32.194923, 38.546692>,  <36.102100, 32.422138, 37.893547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679920, 32.194923, 38.546692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030293, 32.002087, 38.539364>,  <36.240517, 31.886385, 38.534966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030293, 32.002087, 38.539364>,  <35.679920, 32.194923, 38.546692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030293, 32.002087, 38.539364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185423, 0.301358, 0.935308,
		-0.445382, -0.822662, 0.353359,
		0.875930, -0.482090, -0.018321,
		36.293072, 31.857460, 38.533867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744308, 31.891893, 39.171638>,  <35.679920, 32.194923, 38.546692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744308, 31.891893, 39.171638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126686, 31.862434, 39.057976>,  <36.356113, 31.844759, 38.989777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126686, 31.862434, 39.057976>,  <35.744308, 31.891893, 39.171638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126686, 31.862434, 39.057976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292707, 0.165986, 0.941685,
		-0.022188, -0.983374, 0.180231,
		0.955945, -0.073649, -0.284158,
		36.413471, 31.840340, 38.972729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102840, 31.440901, 39.649929>,  <35.744308, 31.891893, 39.171638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102840, 31.440901, 39.649929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391548, 31.657619, 39.477646>,  <36.564774, 31.787651, 39.374275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391548, 31.657619, 39.477646>,  <36.102840, 31.440901, 39.649929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391548, 31.657619, 39.477646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370944, 0.222563, 0.901591,
		0.584340, -0.810506, -0.040339,
		0.721767, 0.541799, -0.430705,
		36.608078, 31.820160, 39.348434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726101, 31.098785, 39.965122>,  <36.102840, 31.440901, 39.649929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726101, 31.098785, 39.965122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813892, 31.465654, 39.832081>,  <36.866570, 31.685776, 39.752254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813892, 31.465654, 39.832081>,  <36.726101, 31.098785, 39.965122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813892, 31.465654, 39.832081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501984, 0.186161, 0.844604,
		0.836564, -0.352337, -0.419546,
		0.219482, 0.917171, -0.332603,
		36.879738, 31.740807, 39.732300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477955, 31.189024, 39.998211>,  <36.726101, 31.098785, 39.965122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477955, 31.189024, 39.998211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328983, 31.559919, 40.013824>,  <37.239601, 31.782457, 40.023193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328983, 31.559919, 40.013824>,  <37.477955, 31.189024, 39.998211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328983, 31.559919, 40.013824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448179, 0.142860, 0.882455,
		0.812670, 0.346148, -0.468775,
		-0.372429, 0.927239, 0.039038,
		37.217255, 31.838091, 40.025536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037468, 31.558731, 40.154190>,  <37.477955, 31.189024, 39.998211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037468, 31.558731, 40.154190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715000, 31.768396, 40.263985>,  <37.521519, 31.894196, 40.329861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715000, 31.768396, 40.263985>,  <38.037468, 31.558731, 40.154190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715000, 31.768396, 40.263985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430323, 0.201011, 0.880010,
		0.406093, 0.827555, -0.387608,
		-0.806170, 0.524162, 0.274487,
		37.473148, 31.925646, 40.346333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326206, 32.233727, 40.410110>,  <38.037468, 31.558731, 40.154190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326206, 32.233727, 40.410110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958202, 32.184242, 40.558857>,  <37.737400, 32.154552, 40.648106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958202, 32.184242, 40.558857>,  <38.326206, 32.233727, 40.410110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958202, 32.184242, 40.558857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284834, 0.440659, 0.851287,
		-0.269175, 0.889110, -0.370174,
		-0.920008, -0.123708, 0.371863,
		37.682201, 32.147129, 40.670414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048450, 32.857323, 40.710022>,  <38.326206, 32.233727, 40.410110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048450, 32.857323, 40.710022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834362, 32.565651, 40.880589>,  <37.705910, 32.390648, 40.982929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834362, 32.565651, 40.880589>,  <38.048450, 32.857323, 40.710022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834362, 32.565651, 40.880589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041434, 0.481540, 0.875444,
		-0.843695, 0.486225, -0.227518,
		-0.535222, -0.729180, 0.426419,
		37.673794, 32.346897, 41.008514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599197, 33.199604, 41.147480>,  <38.048450, 32.857323, 40.710022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599197, 33.199604, 41.147480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571259, 32.827072, 41.290447>,  <37.554497, 32.603554, 41.376228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571259, 32.827072, 41.290447>,  <37.599197, 33.199604, 41.147480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571259, 32.827072, 41.290447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022834, 0.359689, 0.932793,
		-0.997296, 0.056992, -0.046390,
		-0.069848, -0.931330, 0.357415,
		37.550304, 32.547672, 41.397671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131664, 33.258034, 41.735607>,  <37.599197, 33.199604, 41.147480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131664, 33.258034, 41.735607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300255, 32.901791, 41.803932>,  <37.401409, 32.688046, 41.844929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300255, 32.901791, 41.803932>,  <37.131664, 33.258034, 41.735607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300255, 32.901791, 41.803932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095722, 0.143617, 0.984993,
		-0.901772, -0.431505, -0.024720,
		0.421479, -0.890605, 0.170814,
		37.426697, 32.634609, 41.855175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765194, 32.822796, 42.196224>,  <37.131664, 33.258034, 41.735607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765194, 32.822796, 42.196224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137585, 32.685318, 42.245480>,  <37.361019, 32.602829, 42.275032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137585, 32.685318, 42.245480>,  <36.765194, 32.822796, 42.196224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137585, 32.685318, 42.245480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164768, -0.094563, 0.981789,
		-0.325794, -0.934307, -0.144666,
		0.930973, -0.343698, 0.123135,
		37.416878, 32.582211, 42.282421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679478, 32.373913, 42.690346>,  <36.765194, 32.822796, 42.196224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679478, 32.373913, 42.690346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076206, 32.424812, 42.694302>,  <37.314243, 32.455353, 42.696674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076206, 32.424812, 42.694302>,  <36.679478, 32.373913, 42.690346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076206, 32.424812, 42.694302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006806, -0.024644, 0.999673,
		0.127452, -0.991565, -0.023577,
		0.991822, 0.127250, 0.009889,
		37.373753, 32.462986, 42.697269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997208, 31.923624, 43.203526>,  <36.679478, 32.373913, 42.690346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997208, 31.923624, 43.203526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285736, 32.199131, 43.174423>,  <37.458855, 32.364437, 43.156960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.285736, 32.199131, 43.174423>,  <36.997208, 31.923624, 43.203526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285736, 32.199131, 43.174423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031671, 0.137745, 0.989961,
		0.691877, -0.711775, 0.121172,
		0.721320, 0.688769, -0.072760,
		37.502132, 32.405762, 43.152596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442150, 31.701302, 43.773205>,  <36.997208, 31.923624, 43.203526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442150, 31.701302, 43.773205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464275, 32.089134, 43.677830>,  <37.477551, 32.321835, 43.620605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464275, 32.089134, 43.677830>,  <37.442150, 31.701302, 43.773205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464275, 32.089134, 43.677830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042043, 0.240850, 0.969651,
		0.997584, -0.043609, 0.054086,
		0.055312, 0.969582, -0.238434,
		37.480869, 32.380009, 43.606300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880909, 32.012974, 44.234241>,  <37.442150, 31.701302, 43.773205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880909, 32.012974, 44.234241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694016, 32.338741, 44.096592>,  <37.581879, 32.534203, 44.014004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694016, 32.338741, 44.096592>,  <37.880909, 32.012974, 44.234241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694016, 32.338741, 44.096592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027035, 0.375875, 0.926276,
		0.883722, 0.442088, -0.153602,
		-0.467230, 0.814418, -0.344121,
		37.553848, 32.583065, 43.993355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120846, 32.585674, 44.558537>,  <37.880909, 32.012974, 44.234241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120846, 32.585674, 44.558537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793476, 32.774796, 44.427910>,  <37.597054, 32.888268, 44.349533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793476, 32.774796, 44.427910>,  <38.120846, 32.585674, 44.558537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793476, 32.774796, 44.427910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031881, 0.530078, 0.847349,
		0.573735, 0.703899, -0.418753,
		-0.818421, 0.472803, -0.326565,
		37.547951, 32.916637, 44.329941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188286, 33.468704, 44.695534>,  <38.120846, 32.585674, 44.558537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188286, 33.468704, 44.695534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827126, 33.298878, 44.668674>,  <37.610428, 33.196980, 44.652557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827126, 33.298878, 44.668674>,  <38.188286, 33.468704, 44.695534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827126, 33.298878, 44.668674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284974, 0.474296, 0.832966,
		-0.321804, 0.771222, -0.549234,
		-0.902902, -0.424570, -0.067148,
		37.556255, 33.171505, 44.648529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771263, 33.949612, 44.929131>,  <38.188286, 33.468704, 44.695534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771263, 33.949612, 44.929131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480240, 33.675224, 44.933498>,  <37.305626, 33.510593, 44.936119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.480240, 33.675224, 44.933498>,  <37.771263, 33.949612, 44.929131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480240, 33.675224, 44.933498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281126, 0.312617, 0.907325,
		-0.625806, 0.657058, -0.420288,
		-0.727554, -0.685964, 0.010921,
		37.261974, 33.469437, 44.936775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111038, 34.296314, 45.159374>,  <37.771263, 33.949612, 44.929131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111038, 34.296314, 45.159374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066456, 33.902180, 45.211040>,  <37.039707, 33.665699, 45.242043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066456, 33.902180, 45.211040>,  <37.111038, 34.296314, 45.159374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066456, 33.902180, 45.211040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342855, 0.160125, 0.925640,
		-0.932753, 0.058883, -0.355676,
		-0.111457, -0.985339, 0.129169,
		37.033020, 33.606579, 45.249790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359745, 34.254272, 45.441204>,  <37.111038, 34.296314, 45.159374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359745, 34.254272, 45.441204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566807, 33.924259, 45.531845>,  <36.691044, 33.726250, 45.586227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566807, 33.924259, 45.531845>,  <36.359745, 34.254272, 45.441204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566807, 33.924259, 45.531845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385665, 0.011408, 0.922568,
		-0.763737, -0.564965, -0.312282,
		0.517656, -0.825036, 0.226601,
		36.722103, 33.676750, 45.599827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759514, 33.812294, 45.690971>,  <36.359745, 34.254272, 45.441204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759514, 33.812294, 45.690971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120491, 33.727077, 45.840752>,  <36.337078, 33.675945, 45.930622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.120491, 33.727077, 45.840752>,  <35.759514, 33.812294, 45.690971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120491, 33.727077, 45.840752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372261, 0.051895, 0.926676,
		-0.216858, -0.975663, -0.032477,
		0.902438, -0.213047, 0.374455,
		36.391224, 33.663162, 45.953087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599373, 33.506672, 46.290192>,  <35.759514, 33.812294, 45.690971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599373, 33.506672, 46.290192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987206, 33.592800, 46.336758>,  <36.219906, 33.644478, 46.364697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987206, 33.592800, 46.336758>,  <35.599373, 33.506672, 46.290192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987206, 33.592800, 46.336758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125072, 0.026966, 0.991781,
		0.210412, -0.976171, 0.053076,
		0.969579, 0.215321, 0.116418,
		36.278080, 33.657398, 46.371681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882576, 33.099392, 46.811470>,  <35.599373, 33.506672, 46.290192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882576, 33.099392, 46.811470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100689, 33.432880, 46.776649>,  <36.231556, 33.632973, 46.755756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100689, 33.432880, 46.776649>,  <35.882576, 33.099392, 46.811470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100689, 33.432880, 46.776649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226966, 0.246809, 0.942110,
		0.806943, -0.493955, 0.323807,
		0.545279, 0.833723, -0.087050,
		36.264271, 33.682999, 46.750534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262428, 32.989086, 47.341053>,  <35.882576, 33.099392, 46.811470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262428, 32.989086, 47.341053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255203, 33.376793, 47.242912>,  <36.250870, 33.609417, 47.184029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255203, 33.376793, 47.242912>,  <36.262428, 32.989086, 47.341053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255203, 33.376793, 47.242912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159097, 0.239477, 0.957778,
		0.987098, 0.056336, 0.149881,
		-0.018064, 0.969266, -0.245350,
		36.249783, 33.667572, 47.169308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596878, 33.315887, 47.856846>,  <36.262428, 32.989086, 47.341053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596878, 33.315887, 47.856846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407459, 33.626450, 47.690498>,  <36.293808, 33.812786, 47.590691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407459, 33.626450, 47.690498>,  <36.596878, 33.315887, 47.856846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407459, 33.626450, 47.690498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117480, 0.412268, 0.903457,
		0.872899, 0.476684, -0.104015,
		-0.473545, 0.776407, -0.415869,
		36.265396, 33.859371, 47.565739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942734, 33.801136, 48.152061>,  <36.596878, 33.315887, 47.856846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942734, 33.801136, 48.152061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627842, 33.995770, 48.000538>,  <36.438908, 34.112549, 47.909622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627842, 33.995770, 48.000538>,  <36.942734, 33.801136, 48.152061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627842, 33.995770, 48.000538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006904, 0.621212, 0.783612,
		0.616617, 0.614270, -0.492398,
		-0.787233, 0.486588, -0.378809,
		36.391670, 34.141747, 47.886894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100193, 34.583454, 47.953060>,  <36.942734, 33.801136, 48.152061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100193, 34.583454, 47.953060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711224, 34.524097, 48.025040>,  <36.477844, 34.488483, 48.068226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711224, 34.524097, 48.025040>,  <37.100193, 34.583454, 47.953060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711224, 34.524097, 48.025040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029009, 0.842456, 0.537983,
		-0.231430, 0.517925, -0.823525,
		-0.972419, -0.148395, 0.179945,
		36.419498, 34.479580, 48.079021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613438, 35.245346, 47.773277>,  <37.100193, 34.583454, 47.953060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613438, 35.245346, 47.773277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370686, 35.046928, 48.021679>,  <36.225037, 34.927879, 48.170719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370686, 35.046928, 48.021679>,  <36.613438, 35.245346, 47.773277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370686, 35.046928, 48.021679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117286, 0.828673, 0.547308,
		-0.786094, 0.259314, -0.561081,
		-0.606878, -0.496042, 0.621001,
		36.188622, 34.898117, 48.207977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197353, 35.758022, 48.075401>,  <36.613438, 35.245346, 47.773277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197353, 35.758022, 48.075401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133736, 35.454330, 48.327839>,  <36.095566, 35.272118, 48.479301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133736, 35.454330, 48.327839>,  <36.197353, 35.758022, 48.075401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133736, 35.454330, 48.327839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010057, 0.640442, 0.767940,
		-0.987220, 0.115789, -0.109494,
		-0.159044, -0.759227, 0.631093,
		36.086021, 35.226562, 48.517166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528503, 35.903522, 48.469585>,  <36.197353, 35.758022, 48.075401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528503, 35.903522, 48.469585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751507, 35.644989, 48.677982>,  <35.885311, 35.489868, 48.803020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751507, 35.644989, 48.677982>,  <35.528503, 35.903522, 48.469585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751507, 35.644989, 48.677982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078020, 0.584003, 0.807993,
		-0.826494, -0.491114, 0.275162,
		0.557512, -0.646334, 0.520992,
		35.918762, 35.451088, 48.834278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215305, 35.889793, 49.154503>,  <35.528503, 35.903522, 48.469585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215305, 35.889793, 49.154503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577656, 35.749794, 49.249912>,  <35.795067, 35.665794, 49.307156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577656, 35.749794, 49.249912>,  <35.215305, 35.889793, 49.154503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577656, 35.749794, 49.249912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027877, 0.611201, 0.790984,
		-0.422626, -0.709884, 0.563429,
		0.905875, -0.349997, 0.238520,
		35.849419, 35.644794, 49.321468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150772, 35.734703, 49.861019>,  <35.215305, 35.889793, 49.154503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150772, 35.734703, 49.861019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539204, 35.784565, 49.779572>,  <35.772263, 35.814480, 49.730701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539204, 35.784565, 49.779572>,  <35.150772, 35.734703, 49.861019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539204, 35.784565, 49.779572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043727, 0.745587, 0.664972,
		0.234704, -0.654646, 0.718577,
		0.971083, 0.124650, -0.203618,
		35.830528, 35.821960, 49.718487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520287, 35.589119, 50.467339>,  <35.150772, 35.734703, 49.861019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520287, 35.589119, 50.467339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796078, 35.789490, 50.258072>,  <35.961552, 35.909714, 50.132511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.796078, 35.789490, 50.258072>,  <35.520287, 35.589119, 50.467339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796078, 35.789490, 50.258072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041401, 0.693854, 0.718924,
		0.723127, -0.517339, 0.457655,
		0.689473, 0.500926, -0.523163,
		36.002918, 35.939766, 50.101124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043713, 35.742977, 50.970345>,  <35.520287, 35.589119, 50.467339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043713, 35.742977, 50.970345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118984, 35.997639, 50.671211>,  <36.164146, 36.150436, 50.491730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118984, 35.997639, 50.671211>,  <36.043713, 35.742977, 50.970345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118984, 35.997639, 50.671211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357404, 0.664838, 0.655936,
		0.914795, -0.390713, -0.102435,
		0.188180, 0.636658, -0.747833,
		36.175438, 36.188637, 50.446861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780190, 35.941753, 51.060143>,  <36.043713, 35.742977, 50.970345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780190, 35.941753, 51.060143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620693, 36.242229, 50.849728>,  <36.524994, 36.422516, 50.723480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620693, 36.242229, 50.849728>,  <36.780190, 35.941753, 51.060143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620693, 36.242229, 50.849728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274799, 0.645127, 0.712949,
		0.874921, 0.139731, -0.463668,
		-0.398746, 0.751190, -0.526038,
		36.501068, 36.467587, 50.691917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301678, 36.495060, 50.933094>,  <36.780190, 35.941753, 51.060143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301678, 36.495060, 50.933094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951912, 36.682838, 50.884071>,  <36.742054, 36.795506, 50.854656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951912, 36.682838, 50.884071>,  <37.301678, 36.495060, 50.933094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951912, 36.682838, 50.884071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330256, 0.760946, 0.558473,
		0.355433, 0.447861, -0.820419,
		-0.874413, 0.469448, -0.122557,
		36.689587, 36.823673, 50.847305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489277, 37.238194, 51.065231>,  <37.301678, 36.495060, 50.933094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489277, 37.238194, 51.065231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094627, 37.219349, 51.127651>,  <36.857838, 37.208042, 51.165104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094627, 37.219349, 51.127651>,  <37.489277, 37.238194, 51.065231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094627, 37.219349, 51.127651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064028, 0.768395, 0.636765,
		-0.149907, 0.638240, -0.755101,
		-0.986625, -0.047108, 0.156053,
		36.798641, 37.205215, 51.174465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393314, 37.995537, 51.082989>,  <37.489277, 37.238194, 51.065231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393314, 37.995537, 51.082989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101818, 37.795929, 51.270573>,  <36.926922, 37.676167, 51.383121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101818, 37.795929, 51.270573>,  <37.393314, 37.995537, 51.082989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101818, 37.795929, 51.270573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088014, 0.747391, 0.658529,
		-0.679112, 0.438621, -0.588574,
		-0.728739, -0.499018, 0.468957,
		36.883198, 37.646225, 51.411259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207886, 38.689526, 51.382118>,  <37.393314, 37.995537, 51.082989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207886, 38.689526, 51.382118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417656, 38.990070, 51.221901>,  <37.543518, 39.170399, 51.125771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417656, 38.990070, 51.221901>,  <37.207886, 38.689526, 51.382118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417656, 38.990070, 51.221901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229474, -0.577738, -0.783301,
		-0.819952, 0.318867, -0.475398,
		0.524424, 0.751361, -0.400546,
		37.574982, 39.215477, 51.101738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954113, 38.780891, 50.731640>,  <37.207886, 38.689526, 51.382118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954113, 38.780891, 50.731640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295078, 38.989708, 50.719864>,  <37.499657, 39.114998, 50.712799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295078, 38.989708, 50.719864>,  <36.954113, 38.780891, 50.731640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295078, 38.989708, 50.719864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238151, -0.437752, -0.866982,
		-0.465488, 0.732014, -0.497470,
		0.852411, 0.522042, -0.029439,
		37.550800, 39.146320, 50.711033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047699, 39.256702, 50.076164>,  <36.954113, 38.780891, 50.731640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047699, 39.256702, 50.076164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413723, 39.179684, 50.217922>,  <37.633335, 39.133472, 50.302975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413723, 39.179684, 50.217922>,  <37.047699, 39.256702, 50.076164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413723, 39.179684, 50.217922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221423, -0.494589, -0.840448,
		0.337107, 0.847529, -0.409943,
		0.915058, -0.192550, 0.354392,
		37.688240, 39.121918, 50.324242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303684, 39.397762, 49.483196>,  <37.047699, 39.256702, 50.076164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303684, 39.397762, 49.483196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571529, 39.204437, 49.708771>,  <37.732239, 39.088444, 49.844116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571529, 39.204437, 49.708771>,  <37.303684, 39.397762, 49.483196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571529, 39.204437, 49.708771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284784, -0.534174, -0.795962,
		0.685938, 0.693590, -0.220052,
		0.669618, -0.483313, 0.563933,
		37.772415, 39.059444, 49.877953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980892, 39.475800, 49.220089>,  <37.303684, 39.397762, 49.483196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980892, 39.475800, 49.220089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036224, 39.131947, 49.416821>,  <38.069424, 38.925636, 49.534859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036224, 39.131947, 49.416821>,  <37.980892, 39.475800, 49.220089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036224, 39.131947, 49.416821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423251, -0.397662, -0.814078,
		0.895390, 0.320782, 0.308830,
		0.138332, -0.859630, 0.491834,
		38.077724, 38.874058, 49.564369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540661, 39.104984, 48.867058>,  <37.980892, 39.475800, 49.220089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540661, 39.104984, 48.867058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378105, 38.811440, 49.084789>,  <38.280571, 38.635315, 49.215427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378105, 38.811440, 49.084789>,  <38.540661, 39.104984, 48.867058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378105, 38.811440, 49.084789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367755, -0.676732, -0.637801,
		0.836422, -0.059017, 0.544899,
		-0.406392, -0.733860, 0.544330,
		38.256187, 38.591282, 49.248089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069290, 38.540642, 49.097961>,  <38.540661, 39.104984, 48.867058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069290, 38.540642, 49.097961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701344, 38.384449, 49.083141>,  <38.480576, 38.290733, 49.074249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701344, 38.384449, 49.083141>,  <39.069290, 38.540642, 49.097961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701344, 38.384449, 49.083141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284778, -0.599927, -0.747656,
		0.269719, -0.698293, 0.663052,
		-0.919866, -0.390480, -0.037047,
		38.425385, 38.267303, 49.072025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202538, 37.828522, 49.062466>,  <39.069290, 38.540642, 49.097961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202538, 37.828522, 49.062466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819202, 37.843002, 48.949131>,  <38.589203, 37.851692, 48.881130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819202, 37.843002, 48.949131>,  <39.202538, 37.828522, 49.062466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819202, 37.843002, 48.949131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210141, -0.582503, -0.785195,
		-0.193471, -0.812022, 0.550626,
		-0.958337, 0.036203, -0.283336,
		38.531700, 37.853863, 48.864132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927792, 37.133717, 49.041435>,  <39.202538, 37.828522, 49.062466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927792, 37.133717, 49.041435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697693, 37.337364, 48.785343>,  <38.559635, 37.459553, 48.631687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697693, 37.337364, 48.785343>,  <38.927792, 37.133717, 49.041435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697693, 37.337364, 48.785343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218109, -0.658883, -0.719931,
		-0.788368, -0.553775, 0.267973,
		-0.575243, 0.509123, -0.640226,
		38.525120, 37.490101, 48.593277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627666, 36.602913, 48.633400>,  <38.927792, 37.133717, 49.041435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627666, 36.602913, 48.633400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498665, 36.898392, 48.396648>,  <38.421265, 37.075680, 48.254597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498665, 36.898392, 48.396648>,  <38.627666, 36.602913, 48.633400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498665, 36.898392, 48.396648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192730, -0.560944, -0.805107,
		-0.926740, -0.373721, 0.038537,
		-0.322503, 0.738698, -0.591876,
		38.401913, 37.120003, 48.219086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161308, 36.301689, 48.144985>,  <38.627666, 36.602913, 48.633400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161308, 36.301689, 48.144985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238548, 36.650314, 47.964722>,  <38.284893, 36.859489, 47.856564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238548, 36.650314, 47.964722>,  <38.161308, 36.301689, 48.144985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238548, 36.650314, 47.964722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092660, -0.473453, -0.875932,
		-0.976795, 0.127381, -0.172181,
		0.193096, 0.871560, -0.450663,
		38.296478, 36.911781, 47.829521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617325, 36.432941, 47.554592>,  <38.161308, 36.301689, 48.144985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617325, 36.432941, 47.554592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972260, 36.611996, 47.510300>,  <38.185219, 36.719429, 47.483727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972260, 36.611996, 47.510300>,  <37.617325, 36.432941, 47.554592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972260, 36.611996, 47.510300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128234, -0.470190, -0.873200,
		-0.442936, 0.760622, -0.474618,
		0.887335, 0.447634, -0.110727,
		38.238461, 36.746284, 47.477081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561211, 36.802513, 46.868679>,  <37.617325, 36.432941, 47.554592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561211, 36.802513, 46.868679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940556, 36.720100, 46.965137>,  <38.168163, 36.670650, 47.023014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940556, 36.720100, 46.965137>,  <37.561211, 36.802513, 46.868679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940556, 36.720100, 46.965137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144581, -0.395886, -0.906846,
		0.282308, 0.894888, -0.345656,
		0.948366, -0.206035, 0.241146,
		38.225067, 36.658291, 47.037479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807495, 36.784294, 46.283958>,  <37.561211, 36.802513, 46.868679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807495, 36.784294, 46.283958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118088, 36.631546, 46.484455>,  <38.304443, 36.539898, 46.604755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118088, 36.631546, 46.484455>,  <37.807495, 36.784294, 46.283958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118088, 36.631546, 46.484455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353816, -0.394006, -0.848277,
		0.521428, 0.836021, -0.170826,
		0.776484, -0.381874, 0.501244,
		38.351032, 36.516983, 46.634827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472214, 37.012665, 45.940952>,  <37.807495, 36.784294, 46.283958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472214, 37.012665, 45.940952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523380, 36.680119, 46.157276>,  <38.554081, 36.480591, 46.287071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523380, 36.680119, 46.157276>,  <38.472214, 37.012665, 45.940952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523380, 36.680119, 46.157276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251959, -0.500156, -0.828469,
		0.959247, 0.242234, 0.145493,
		0.127914, -0.831365, 0.540806,
		38.561756, 36.430710, 46.319519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980793, 36.790760, 45.575851>,  <38.472214, 37.012665, 45.940952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980793, 36.790760, 45.575851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837734, 36.482342, 45.786598>,  <38.751900, 36.297291, 45.913044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837734, 36.482342, 45.786598>,  <38.980793, 36.790760, 45.575851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837734, 36.482342, 45.786598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106675, -0.594218, -0.797199,
		0.927745, -0.228911, 0.294770,
		-0.357645, -0.771042, 0.526863,
		38.730442, 36.251030, 45.944656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481018, 36.301258, 45.529278>,  <38.980793, 36.790760, 45.575851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481018, 36.301258, 45.529278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164764, 36.073536, 45.619423>,  <38.975014, 35.936901, 45.673512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.164764, 36.073536, 45.619423>,  <39.481018, 36.301258, 45.529278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164764, 36.073536, 45.619423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192732, -0.580756, -0.790934,
		0.581165, -0.581904, 0.568889,
		-0.790633, -0.569307, 0.225364,
		38.927574, 35.902744, 45.687031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745655, 35.613789, 45.504265>,  <39.481018, 36.301258, 45.529278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745655, 35.613789, 45.504265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348370, 35.596638, 45.461037>,  <39.109997, 35.586349, 45.435101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348370, 35.596638, 45.461037>,  <39.745655, 35.613789, 45.504265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348370, 35.596638, 45.461037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109599, -0.655514, -0.747188,
		-0.038809, -0.753965, 0.655767,
		-0.993218, -0.042873, -0.108074,
		39.050404, 35.583775, 45.428616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706688, 34.960083, 45.299927>,  <39.745655, 35.613789, 45.504265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706688, 34.960083, 45.299927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350304, 35.112526, 45.201176>,  <39.136475, 35.203991, 45.141926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350304, 35.112526, 45.201176>,  <39.706688, 34.960083, 45.299927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350304, 35.112526, 45.201176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023451, -0.504338, -0.863188,
		-0.453477, -0.774855, 0.440407,
		-0.890959, 0.381108, -0.246877,
		39.083015, 35.226860, 45.127113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128166, 34.371994, 45.168568>,  <39.706688, 34.960083, 45.299927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128166, 34.371994, 45.168568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023930, 34.708920, 44.979843>,  <38.961388, 34.911076, 44.866608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023930, 34.708920, 44.979843>,  <39.128166, 34.371994, 45.168568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023930, 34.708920, 44.979843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077073, -0.468987, -0.879836,
		-0.962369, -0.265639, 0.057293,
		-0.260589, 0.842311, -0.471812,
		38.945751, 34.961613, 44.838299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450771, 34.203739, 44.779545>,  <39.128166, 34.371994, 45.168568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450771, 34.203739, 44.779545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634361, 34.516762, 44.611286>,  <38.744514, 34.704575, 44.510330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634361, 34.516762, 44.611286>,  <38.450771, 34.203739, 44.779545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634361, 34.516762, 44.611286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012082, -0.478915, -0.877778,
		-0.888365, 0.397800, -0.229267,
		0.458979, 0.782557, -0.420645,
		38.772057, 34.751530, 44.485092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215141, 34.160385, 44.102070>,  <38.450771, 34.203739, 44.779545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215141, 34.160385, 44.102070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490429, 34.445995, 44.050644>,  <38.655602, 34.617363, 44.019787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490429, 34.445995, 44.050644>,  <38.215141, 34.160385, 44.102070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490429, 34.445995, 44.050644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224433, -0.378045, -0.898172,
		-0.689920, 0.589281, -0.420427,
		0.688215, 0.714024, -0.128567,
		38.696892, 34.660202, 44.012074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054058, 34.477142, 43.469158>,  <38.215141, 34.160385, 44.102070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054058, 34.477142, 43.469158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442402, 34.554558, 43.525681>,  <38.675407, 34.601009, 43.559593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.442402, 34.554558, 43.525681>,  <38.054058, 34.477142, 43.469158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.442402, 34.554558, 43.525681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179091, -0.194217, -0.964472,
		-0.159223, 0.961676, -0.223219,
		0.970863, 0.193543, 0.141304,
		38.733662, 34.612621, 43.568073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241280, 34.720459, 42.851120>,  <38.054058, 34.477142, 43.469158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241280, 34.720459, 42.851120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590641, 34.639828, 43.028446>,  <38.800259, 34.591450, 43.134842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590641, 34.639828, 43.028446>,  <38.241280, 34.720459, 42.851120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590641, 34.639828, 43.028446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387384, -0.264074, -0.883289,
		0.295123, 0.943202, -0.152554,
		0.873405, -0.201582, 0.443316,
		38.852661, 34.579353, 43.161442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786999, 35.224586, 42.515701>,  <38.241280, 34.720459, 42.851120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786999, 35.224586, 42.515701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927464, 34.876129, 42.652988>,  <39.011742, 34.667057, 42.735359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927464, 34.876129, 42.652988>,  <38.786999, 35.224586, 42.515701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927464, 34.876129, 42.652988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420687, -0.180679, -0.889032,
		0.836484, 0.456583, 0.303030,
		0.351165, -0.871141, 0.343214,
		39.032814, 34.614788, 42.755951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462635, 35.164165, 42.201096>,  <38.786999, 35.224586, 42.515701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462635, 35.164165, 42.201096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401814, 34.793877, 42.339611>,  <39.365322, 34.571705, 42.422722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401814, 34.793877, 42.339611>,  <39.462635, 35.164165, 42.201096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401814, 34.793877, 42.339611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307714, -0.377292, -0.873477,
		0.939251, -0.026254, 0.342226,
		-0.152052, -0.925722, 0.346293,
		39.356197, 34.516159, 42.443501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084000, 34.706264, 42.035789>,  <39.462635, 35.164165, 42.201096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084000, 34.706264, 42.035789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755707, 34.480198, 42.069221>,  <39.558731, 34.344559, 42.089279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755707, 34.480198, 42.069221>,  <40.084000, 34.706264, 42.035789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755707, 34.480198, 42.069221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259769, -0.499455, -0.826477,
		0.508842, -0.656605, 0.556732,
		-0.820731, -0.565168, 0.083578,
		39.509487, 34.310646, 42.094296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289276, 34.151726, 41.640816>,  <40.084000, 34.706264, 42.035789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289276, 34.151726, 41.640816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894730, 34.103508, 41.685635>,  <39.658001, 34.074577, 41.712528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894730, 34.103508, 41.685635>,  <40.289276, 34.151726, 41.640816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894730, 34.103508, 41.685635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040354, -0.482904, -0.874743,
		0.159558, -0.867336, 0.471455,
		-0.986363, -0.120548, 0.112052,
		39.598820, 34.067345, 41.719250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171886, 33.477039, 41.449089>,  <40.289276, 34.151726, 41.640816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171886, 33.477039, 41.449089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810665, 33.646275, 41.419453>,  <39.593933, 33.747814, 41.401672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810665, 33.646275, 41.419453>,  <40.171886, 33.477039, 41.449089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810665, 33.646275, 41.419453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050637, -0.276148, -0.959780,
		-0.426531, -0.862982, 0.270801,
		-0.903054, 0.423089, -0.074087,
		39.539749, 33.773201, 41.397228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765987, 33.029877, 41.083817>,  <40.171886, 33.477039, 41.449089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765987, 33.029877, 41.083817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580112, 33.381699, 41.042950>,  <39.468586, 33.592793, 41.018429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580112, 33.381699, 41.042950>,  <39.765987, 33.029877, 41.083817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580112, 33.381699, 41.042950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103648, -0.168619, -0.980217,
		-0.879386, -0.444908, 0.169520,
		-0.464691, 0.879559, -0.102167,
		39.440704, 33.645565, 41.012299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150780, 32.905415, 40.649620>,  <39.765987, 33.029877, 41.083817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150780, 32.905415, 40.649620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215897, 33.298672, 40.616318>,  <39.254967, 33.534626, 40.596336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215897, 33.298672, 40.616318>,  <39.150780, 32.905415, 40.649620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215897, 33.298672, 40.616318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088068, -0.069562, -0.993683,
		-0.982722, 0.169093, 0.075259,
		0.162790, 0.983142, -0.083252,
		39.264732, 33.593613, 40.591343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593586, 33.109562, 40.144211>,  <39.150780, 32.905415, 40.649620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593586, 33.109562, 40.144211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890945, 33.376137, 40.166920>,  <39.069363, 33.536079, 40.180546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890945, 33.376137, 40.166920>,  <38.593586, 33.109562, 40.144211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890945, 33.376137, 40.166920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071125, 0.005629, -0.997451,
		-0.665056, 0.745542, -0.043216,
		0.743399, 0.666434, 0.056770,
		39.113964, 33.576069, 40.183952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451862, 33.620415, 39.645691>,  <38.593586, 33.109562, 40.144211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451862, 33.620415, 39.645691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844139, 33.633347, 39.722832>,  <39.079506, 33.641106, 39.769115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844139, 33.633347, 39.722832>,  <38.451862, 33.620415, 39.645691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844139, 33.633347, 39.722832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188283, 0.110064, -0.975928,
		-0.052777, 0.993399, 0.101852,
		0.980696, 0.032330, 0.192849,
		39.138348, 33.643044, 39.780685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777962, 34.152145, 39.149757>,  <38.451862, 33.620415, 39.645691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777962, 34.152145, 39.149757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096344, 33.956573, 39.292534>,  <39.287373, 33.839230, 39.378201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096344, 33.956573, 39.292534>,  <38.777962, 34.152145, 39.149757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096344, 33.956573, 39.292534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425844, 0.033152, -0.904189,
		0.430250, 0.871694, 0.234594,
		0.795953, -0.488928, 0.356942,
		39.335129, 33.809895, 39.399616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341640, 34.444035, 38.875175>,  <38.777962, 34.152145, 39.149757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341640, 34.444035, 38.875175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490143, 34.089615, 38.986237>,  <39.579243, 33.876965, 39.052872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490143, 34.089615, 38.986237>,  <39.341640, 34.444035, 38.875175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490143, 34.089615, 38.986237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509739, -0.055447, -0.858540,
		0.776103, 0.460266, 0.431068,
		0.371255, -0.886048, 0.277648,
		39.601521, 33.823799, 39.069530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055866, 34.454365, 38.666401>,  <39.341640, 34.444035, 38.875175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055866, 34.454365, 38.666401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993496, 34.062389, 38.716049>,  <39.956074, 33.827206, 38.745838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993496, 34.062389, 38.716049>,  <40.055866, 34.454365, 38.666401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993496, 34.062389, 38.716049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655073, -0.196635, -0.729530,
		0.739302, -0.032442, 0.672592,
		-0.155922, -0.979940, 0.124120,
		39.946720, 33.768406, 38.753284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692410, 34.065605, 38.546345>,  <40.055866, 34.454365, 38.666401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692410, 34.065605, 38.546345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395760, 33.804939, 38.482693>,  <40.217770, 33.648540, 38.444500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395760, 33.804939, 38.482693>,  <40.692410, 34.065605, 38.546345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395760, 33.804939, 38.482693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394599, -0.231963, -0.889092,
		0.542482, -0.722163, 0.429177,
		-0.741623, -0.651669, -0.159129,
		40.173271, 33.609440, 38.434956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028080, 33.459812, 38.256741>,  <40.692410, 34.065605, 38.546345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028080, 33.459812, 38.256741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644981, 33.465416, 38.141830>,  <40.415123, 33.468777, 38.072884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644981, 33.465416, 38.141830>,  <41.028080, 33.459812, 38.256741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644981, 33.465416, 38.141830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282513, -0.141449, -0.948777,
		-0.053924, -0.989846, 0.131514,
		-0.957746, 0.014008, -0.287272,
		40.357658, 33.469620, 38.055649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999157, 32.986576, 37.734722>,  <41.028080, 33.459812, 38.256741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999157, 32.986576, 37.734722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647076, 33.172077, 37.694378>,  <40.435825, 33.283379, 37.670170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647076, 33.172077, 37.694378>,  <40.999157, 32.986576, 37.734722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647076, 33.172077, 37.694378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067466, -0.088103, -0.993824,
		-0.469776, -0.881573, 0.046261,
		-0.880204, 0.463753, -0.100865,
		40.383015, 33.311203, 37.664120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527805, 32.641403, 37.328075>,  <40.999157, 32.986576, 37.734722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527805, 32.641403, 37.328075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438972, 33.029797, 37.292580>,  <40.385674, 33.262833, 37.271282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438972, 33.029797, 37.292580>,  <40.527805, 32.641403, 37.328075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438972, 33.029797, 37.292580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073561, -0.074066, -0.994537,
		-0.972250, -0.227394, -0.054978,
		-0.222080, 0.970982, -0.088739,
		40.372349, 33.321091, 37.265957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999317, 32.565353, 36.821068>,  <40.527805, 32.641403, 37.328075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999317, 32.565353, 36.821068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180538, 32.921810, 36.831024>,  <40.289268, 33.135685, 36.836998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180538, 32.921810, 36.831024>,  <39.999317, 32.565353, 36.821068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180538, 32.921810, 36.831024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102860, -0.024522, -0.994393,
		-0.885532, 0.453068, -0.102772,
		0.453048, 0.891138, 0.024887,
		40.316452, 33.189152, 36.838490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668213, 32.986675, 36.283928>,  <39.999317, 32.565353, 36.821068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668213, 32.986675, 36.283928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044388, 33.095943, 36.364887>,  <40.270092, 33.161503, 36.413464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044388, 33.095943, 36.364887>,  <39.668213, 32.986675, 36.283928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044388, 33.095943, 36.364887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238257, -0.104866, -0.965524,
		-0.242525, 0.956234, -0.163703,
		0.940433, 0.273167, 0.202397,
		40.326519, 33.177895, 36.425606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187233, 32.784031, 35.779510>,  <39.668213, 32.986675, 36.283928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187233, 32.784031, 35.779510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410107, 33.082214, 35.925846>,  <40.543831, 33.261124, 36.013645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410107, 33.082214, 35.925846>,  <40.187233, 32.784031, 35.779510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410107, 33.082214, 35.925846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610244, -0.068811, -0.789219,
		-0.563156, 0.662991, -0.493252,
		0.557187, 0.745458, 0.365835,
		40.577263, 33.305851, 36.035595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164936, 33.181736, 35.298443>,  <40.187233, 32.784031, 35.779510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164936, 33.181736, 35.298443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489223, 33.264118, 35.517647>,  <40.683796, 33.313545, 35.649170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489223, 33.264118, 35.517647>,  <40.164936, 33.181736, 35.298443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489223, 33.264118, 35.517647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568307, -0.052103, -0.821165,
		-0.140568, 0.977174, -0.159286,
		0.810720, 0.205953, 0.548011,
		40.732441, 33.325905, 35.682049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583492, 33.784611, 34.962723>,  <40.164936, 33.181736, 35.298443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583492, 33.784611, 34.962723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839024, 33.569248, 35.182545>,  <40.992344, 33.440029, 35.314438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.839024, 33.569248, 35.182545>,  <40.583492, 33.784611, 34.962723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839024, 33.569248, 35.182545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607022, -0.086120, -0.790005,
		0.472670, 0.838274, 0.271808,
		0.638832, -0.538405, 0.549557,
		41.030674, 33.407726, 35.347412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222771, 34.126263, 35.072357>,  <40.583492, 33.784611, 34.962723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222771, 34.126263, 35.072357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245415, 33.736145, 34.986938>,  <41.259003, 33.502075, 34.935688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245415, 33.736145, 34.986938>,  <41.222771, 34.126263, 35.072357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245415, 33.736145, 34.986938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479707, 0.214150, -0.850894,
		0.875601, -0.054267, 0.479978,
		0.056611, -0.975292, -0.213542,
		41.262398, 33.443558, 34.922874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974796, 33.900234, 34.942841>,  <41.222771, 34.126263, 35.072357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974796, 33.900234, 34.942841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722752, 33.643929, 34.767395>,  <41.571526, 33.490147, 34.662128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722752, 33.643929, 34.767395>,  <41.974796, 33.900234, 34.942841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722752, 33.643929, 34.767395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454538, 0.153607, -0.877382,
		0.629568, -0.752216, 0.194462,
		-0.630110, -0.640762, -0.438617,
		41.533718, 33.451698, 34.635811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641235, 33.790504, 34.586868>,  <41.974796, 33.900234, 34.942841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641235, 33.790504, 34.586868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999172, 33.953442, 34.659893>,  <43.213936, 34.051205, 34.703709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999172, 33.953442, 34.659893>,  <42.641235, 33.790504, 34.586868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999172, 33.953442, 34.659893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314137, -0.284109, -0.905870,
		-0.317135, 0.867959, -0.382194,
		0.894843, 0.407344, 0.182557,
		43.267624, 34.075645, 34.714661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782234, 34.367699, 34.140930>,  <42.641235, 33.790504, 34.586868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782234, 34.367699, 34.140930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141525, 34.232204, 34.252964>,  <43.357101, 34.150909, 34.320183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141525, 34.232204, 34.252964>,  <42.782234, 34.367699, 34.140930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141525, 34.232204, 34.252964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216287, -0.214096, -0.952566,
		0.382628, 0.916201, -0.119044,
		0.898229, -0.338731, 0.280082,
		43.410995, 34.130585, 34.336990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255779, 34.630795, 33.651306>,  <42.782234, 34.367699, 34.140930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255779, 34.630795, 33.651306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462353, 34.338634, 33.830109>,  <43.586296, 34.163338, 33.937389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.462353, 34.338634, 33.830109>,  <43.255779, 34.630795, 33.651306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.462353, 34.338634, 33.830109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512775, -0.154298, -0.844544,
		0.685828, 0.665360, 0.294848,
		0.516431, -0.730403, 0.447002,
		43.617283, 34.119514, 33.964211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030968, 34.754219, 33.653111>,  <43.255779, 34.630795, 33.651306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030968, 34.754219, 33.653111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975246, 34.361923, 33.707870>,  <43.941814, 34.126545, 33.740726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.975246, 34.361923, 33.707870>,  <44.030968, 34.754219, 33.653111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975246, 34.361923, 33.707870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590789, -0.193261, -0.783338,
		0.794711, -0.028237, 0.606332,
		-0.139299, -0.980741, 0.136905,
		43.933456, 34.067699, 33.748943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643581, 34.463627, 33.459846>,  <44.030968, 34.754219, 33.653111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643581, 34.463627, 33.459846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406052, 34.143948, 33.422619>,  <44.263535, 33.952141, 33.400284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406052, 34.143948, 33.422619>,  <44.643581, 34.463627, 33.459846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406052, 34.143948, 33.422619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449879, -0.233900, -0.861916,
		0.667071, -0.553694, 0.498436,
		-0.593822, -0.799196, -0.093067,
		44.227905, 33.904190, 33.394699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096069, 33.952065, 33.266876>,  <44.643581, 34.463627, 33.459846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096069, 33.952065, 33.266876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726192, 33.850994, 33.152962>,  <44.504265, 33.790352, 33.084614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726192, 33.850994, 33.152962>,  <45.096069, 33.952065, 33.266876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726192, 33.850994, 33.152962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322803, -0.123760, -0.938340,
		0.201850, -0.959604, 0.196004,
		-0.924692, -0.252674, -0.284782,
		44.448784, 33.775192, 33.067528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221889, 33.588768, 32.551735>,  <45.096069, 33.952065, 33.266876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221889, 33.588768, 32.551735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823990, 33.627117, 32.566063>,  <44.585251, 33.650127, 32.574661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823990, 33.627117, 32.566063>,  <45.221889, 33.588768, 32.551735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823990, 33.627117, 32.566063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032309, 0.037954, -0.998757,
		-0.097109, -0.994670, -0.034657,
		-0.994749, 0.095869, 0.035822,
		44.525566, 33.655876, 32.576809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037357, 33.042122, 32.081409>,  <45.221889, 33.588768, 32.551735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037357, 33.042122, 32.081409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762390, 33.332077, 32.099247>,  <44.597408, 33.506050, 32.109947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.762390, 33.332077, 32.099247>,  <45.037357, 33.042122, 32.081409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762390, 33.332077, 32.099247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063847, 0.121478, -0.990539,
		-0.723446, -0.678071, -0.129788,
		-0.687422, 0.724888, 0.044590,
		44.556164, 33.549545, 32.112625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752533, 32.910778, 31.412798>,  <45.037357, 33.042122, 32.081409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752533, 32.910778, 31.412798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611885, 33.267750, 31.525885>,  <44.527496, 33.481934, 31.593737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611885, 33.267750, 31.525885>,  <44.752533, 32.910778, 31.412798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611885, 33.267750, 31.525885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059431, 0.322671, -0.944643,
		-0.934254, -0.315355, -0.166496,
		-0.351621, 0.892432, 0.282715,
		44.506397, 33.535480, 31.610699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300766, 32.970985, 30.920630>,  <44.752533, 32.910778, 31.412798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300766, 32.970985, 30.920630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406513, 33.328758, 31.064907>,  <44.469959, 33.543423, 31.151474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406513, 33.328758, 31.064907>,  <44.300766, 32.970985, 30.920630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406513, 33.328758, 31.064907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223564, 0.306976, -0.925087,
		-0.938153, 0.325197, -0.118810,
		0.264364, 0.894434, 0.360692,
		44.485821, 33.597088, 31.173115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971092, 33.434910, 30.458715>,  <44.300766, 32.970985, 30.920630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971092, 33.434910, 30.458715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266239, 33.636471, 30.638330>,  <44.443329, 33.757408, 30.746099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266239, 33.636471, 30.638330>,  <43.971092, 33.434910, 30.458715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266239, 33.636471, 30.638330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179846, 0.494457, -0.850393,
		-0.650545, 0.708234, 0.274219,
		0.737867, 0.503901, 0.449039,
		44.487598, 33.787640, 30.773043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734013, 34.108444, 30.234749>,  <43.971092, 33.434910, 30.458715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734013, 34.108444, 30.234749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113247, 34.105011, 30.361904>,  <44.340790, 34.102951, 30.438196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113247, 34.105011, 30.361904>,  <43.734013, 34.108444, 30.234749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113247, 34.105011, 30.361904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240406, 0.673685, -0.698823,
		-0.208160, 0.738969, 0.640776,
		0.948090, -0.008580, 0.317887,
		44.397675, 34.102436, 30.457270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923317, 34.793106, 30.134333>,  <43.734013, 34.108444, 30.234749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923317, 34.793106, 30.134333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274578, 34.607121, 30.179340>,  <44.485332, 34.495529, 30.206345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274578, 34.607121, 30.179340>,  <43.923317, 34.793106, 30.134333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274578, 34.607121, 30.179340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411466, 0.614138, -0.673447,
		0.244029, 0.637684, 0.730622,
		0.878149, -0.464967, 0.112518,
		44.538021, 34.467632, 30.213095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547630, 35.301323, 30.301188>,  <43.923317, 34.793106, 30.134333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547630, 35.301323, 30.301188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688408, 34.971848, 30.123344>,  <44.772877, 34.774162, 30.016640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688408, 34.971848, 30.123344>,  <44.547630, 35.301323, 30.301188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688408, 34.971848, 30.123344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488345, 0.566809, -0.663511,
		0.798531, 0.016400, 0.601730,
		0.351948, -0.823686, -0.444605,
		44.793991, 34.724743, 29.989964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190197, 35.518681, 30.150440>,  <44.547630, 35.301323, 30.301188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190197, 35.518681, 30.150440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148029, 35.193260, 29.921700>,  <45.122726, 34.998009, 29.784454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148029, 35.193260, 29.921700>,  <45.190197, 35.518681, 30.150440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148029, 35.193260, 29.921700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463610, 0.468531, -0.752027,
		0.879746, -0.344397, 0.327778,
		-0.105421, -0.813554, -0.571854,
		45.116402, 34.949196, 29.750143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832527, 35.552780, 29.759861>,  <45.190197, 35.518681, 30.150440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832527, 35.552780, 29.759861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624905, 35.270264, 29.567305>,  <45.500332, 35.100754, 29.451771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.624905, 35.270264, 29.567305>,  <45.832527, 35.552780, 29.759861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624905, 35.270264, 29.567305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493836, 0.211883, -0.843346,
		0.697642, -0.675474, 0.238810,
		-0.519058, -0.706286, -0.481392,
		45.469189, 35.058376, 29.422888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333138, 35.217926, 29.376890>,  <45.832527, 35.552780, 29.759861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333138, 35.217926, 29.376890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993534, 35.113911, 29.192904>,  <45.789772, 35.051502, 29.082512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993534, 35.113911, 29.192904>,  <46.333138, 35.217926, 29.376890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993534, 35.113911, 29.192904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371985, 0.324078, -0.869828,
		0.375256, -0.909589, -0.178412,
		-0.849005, -0.260042, -0.459966,
		45.738834, 35.035896, 29.054914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462238, 34.751602, 28.780968>,  <46.333138, 35.217926, 29.376890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462238, 34.751602, 28.780968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115917, 34.931801, 28.693850>,  <45.908123, 35.039921, 28.641579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.115917, 34.931801, 28.693850>,  <46.462238, 34.751602, 28.780968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115917, 34.931801, 28.693850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351691, 0.238245, -0.905292,
		-0.355941, -0.860403, -0.364709,
		-0.865806, 0.450495, -0.217795,
		45.856174, 35.066948, 28.628511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.269310, 34.442455, 28.189201>,  <46.462238, 34.751602, 28.780968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.269310, 34.442455, 28.189201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041607, 34.770782, 28.170460>,  <45.904984, 34.967781, 28.159214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041607, 34.770782, 28.170460>,  <46.269310, 34.442455, 28.189201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041607, 34.770782, 28.170460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180955, 0.069498, -0.981033,
		-0.801997, -0.566941, -0.188094,
		-0.569260, 0.820822, -0.046853,
		45.870831, 35.017029, 28.156404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727196, 34.386650, 27.617523>,  <46.269310, 34.442455, 28.189201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727196, 34.386650, 27.617523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807701, 34.770325, 27.696976>,  <45.856003, 35.000530, 27.744648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.807701, 34.770325, 27.696976>,  <45.727196, 34.386650, 27.617523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807701, 34.770325, 27.696976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162698, 0.167230, -0.972401,
		-0.965931, 0.228023, -0.122401,
		0.201260, 0.959187, 0.198632,
		45.868080, 35.058083, 27.756565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.506790, 34.746113, 27.053019>,  <45.727196, 34.386650, 27.617523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.506790, 34.746113, 27.053019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753498, 35.024738, 27.199654>,  <45.901524, 35.191914, 27.287634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753498, 35.024738, 27.199654>,  <45.506790, 34.746113, 27.053019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753498, 35.024738, 27.199654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154858, 0.349240, -0.924149,
		-0.771759, 0.626758, 0.107533,
		0.616772, 0.696567, 0.366587,
		45.938530, 35.233707, 27.309629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394829, 35.394955, 26.656641>,  <45.506790, 34.746113, 27.053019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394829, 35.394955, 26.656641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761589, 35.395901, 26.816282>,  <45.981647, 35.396469, 26.912067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.761589, 35.395901, 26.816282>,  <45.394829, 35.394955, 26.656641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.761589, 35.395901, 26.816282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380294, 0.298238, -0.875460,
		-0.121094, 0.954488, 0.272558,
		0.916904, 0.002361, 0.399101,
		46.036659, 35.396610, 26.936012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605698, 36.076801, 26.633499>,  <45.394829, 35.394955, 26.656641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605698, 36.076801, 26.633499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895523, 35.803589, 26.596682>,  <46.069420, 35.639660, 26.574591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895523, 35.803589, 26.596682>,  <45.605698, 36.076801, 26.633499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895523, 35.803589, 26.596682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325420, 0.456779, -0.827922,
		0.607540, 0.569931, 0.553239,
		0.724567, -0.683031, -0.092045,
		46.112892, 35.598679, 26.569069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965046, 36.430862, 26.726490>,  <45.605698, 36.076801, 26.633499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965046, 36.430862, 26.726490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977013, 36.779755, 26.921759>,  <44.984192, 36.989090, 27.038919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.977013, 36.779755, 26.921759>,  <44.965046, 36.430862, 26.726490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977013, 36.779755, 26.921759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992072, -0.033729, 0.121061,
		0.122059, -0.487923, 0.864311,
		0.029916, 0.872235, 0.488172,
		44.985989, 37.041424, 27.068211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728970, 36.358871, 27.430145>,  <44.965046, 36.430862, 26.726490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728970, 36.358871, 27.430145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623573, 36.733246, 27.336681>,  <44.560337, 36.957870, 27.280603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.623573, 36.733246, 27.336681>,  <44.728970, 36.358871, 27.430145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.623573, 36.733246, 27.336681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964630, -0.253638, 0.071813,
		0.007948, 0.244315, 0.969663,
		-0.263488, 0.935937, -0.233658,
		44.544525, 37.014027, 27.266584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169220, 36.618999, 27.943550>,  <44.728970, 36.358871, 27.430145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169220, 36.618999, 27.943550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122753, 36.817989, 27.599684>,  <44.094875, 36.937382, 27.393364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122753, 36.817989, 27.599684>,  <44.169220, 36.618999, 27.943550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122753, 36.817989, 27.599684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952899, -0.299957, -0.044818,
		-0.280159, 0.813970, 0.508885,
		-0.116163, 0.497473, -0.859667,
		44.087906, 36.967232, 27.341784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762199, 37.210735, 27.990051>,  <44.169220, 36.618999, 27.943550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762199, 37.210735, 27.990051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759304, 37.021839, 27.637476>,  <43.757565, 36.908501, 27.425930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759304, 37.021839, 27.637476>,  <43.762199, 37.210735, 27.990051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759304, 37.021839, 27.637476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985431, -0.146410, 0.086538,
		-0.169918, 0.869224, -0.464303,
		-0.007242, -0.472243, -0.881438,
		43.757130, 36.880165, 27.373045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309624, 37.576717, 27.641333>,  <43.762199, 37.210735, 27.990051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309624, 37.576717, 27.641333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333248, 37.192745, 27.531759>,  <43.347424, 36.962360, 27.466015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333248, 37.192745, 27.531759>,  <43.309624, 37.576717, 27.641333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333248, 37.192745, 27.531759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987472, -0.096403, 0.124924,
		-0.146327, 0.263122, -0.953601,
		0.059059, -0.959934, -0.273932,
		43.350967, 36.904766, 27.449579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793400, 37.415703, 27.019016>,  <43.309624, 37.576717, 27.641333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793400, 37.415703, 27.019016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873306, 37.125591, 27.282551>,  <42.921249, 36.951527, 27.440672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873306, 37.125591, 27.282551>,  <42.793400, 37.415703, 27.019016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873306, 37.125591, 27.282551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917825, 0.096907, 0.384977,
		-0.343060, -0.681604, -0.646317,
		0.199770, -0.725276, 0.658838,
		42.933239, 36.908009, 27.480202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138401, 37.524555, 26.647320>,  <42.793400, 37.415703, 27.019016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138401, 37.524555, 26.647320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787193, 37.711254, 26.689713>,  <41.576469, 37.823273, 26.715149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787193, 37.711254, 26.689713>,  <42.138401, 37.524555, 26.647320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787193, 37.711254, 26.689713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269298, 0.298697, 0.915565,
		0.395678, 0.832424, -0.387955,
		-0.878019, 0.466744, 0.105982,
		41.523788, 37.851276, 26.721508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170948, 38.225357, 26.922310>,  <42.138401, 37.524555, 26.647320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170948, 38.225357, 26.922310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839203, 38.039444, 27.046328>,  <41.640156, 37.927895, 27.120737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839203, 38.039444, 27.046328>,  <42.170948, 38.225357, 26.922310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839203, 38.039444, 27.046328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301450, 0.094965, 0.948741,
		-0.470402, 0.880317, 0.061348,
		-0.829367, -0.464783, 0.310043,
		41.590393, 37.900009, 27.139341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779846, 38.632080, 27.352690>,  <42.170948, 38.225357, 26.922310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779846, 38.632080, 27.352690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674294, 38.256351, 27.440363>,  <41.610962, 38.030914, 27.492968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.674294, 38.256351, 27.440363>,  <41.779846, 38.632080, 27.352690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674294, 38.256351, 27.440363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187963, 0.172802, 0.966855,
		-0.946062, 0.296338, 0.130957,
		-0.263886, -0.939320, 0.219183,
		41.595127, 37.974556, 27.506117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315834, 38.675980, 27.935158>,  <41.779846, 38.632080, 27.352690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315834, 38.675980, 27.935158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501266, 38.321606, 27.941133>,  <41.612526, 38.108982, 27.944719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501266, 38.321606, 27.941133>,  <41.315834, 38.675980, 27.935158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501266, 38.321606, 27.941133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256371, 0.150250, 0.954829,
		-0.848157, -0.438808, 0.296779,
		0.463577, -0.885931, 0.014938,
		41.640339, 38.055828, 27.945614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092888, 38.336761, 28.499916>,  <41.315834, 38.675980, 27.935158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092888, 38.336761, 28.499916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439590, 38.145050, 28.444736>,  <41.647610, 38.030022, 28.411629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439590, 38.145050, 28.444736>,  <41.092888, 38.336761, 28.499916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439590, 38.145050, 28.444736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131299, -0.047558, 0.990201,
		-0.481142, -0.876374, 0.021707,
		0.866754, -0.479278, -0.137949,
		41.699615, 38.001266, 28.403351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969826, 37.881950, 28.979118>,  <41.092888, 38.336761, 28.499916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969826, 37.881950, 28.979118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358036, 37.845222, 28.889984>,  <41.590961, 37.823185, 28.836504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358036, 37.845222, 28.889984>,  <40.969826, 37.881950, 28.979118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358036, 37.845222, 28.889984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193319, -0.255567, 0.947266,
		-0.143929, -0.962421, -0.230283,
		0.970522, -0.091822, -0.222838,
		41.649193, 37.817677, 28.823133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176201, 37.232311, 29.263260>,  <40.969826, 37.881950, 28.979118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176201, 37.232311, 29.263260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503365, 37.461910, 29.247520>,  <41.699661, 37.599670, 29.238077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503365, 37.461910, 29.247520>,  <41.176201, 37.232311, 29.263260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503365, 37.461910, 29.247520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244160, -0.284352, 0.927108,
		0.520971, -0.767898, -0.372722,
		0.817909, 0.574001, -0.039351,
		41.748737, 37.634109, 29.235716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647640, 36.844429, 29.647840>,  <41.176201, 37.232311, 29.263260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647640, 36.844429, 29.647840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858051, 37.182335, 29.608513>,  <41.984299, 37.385078, 29.584917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858051, 37.182335, 29.608513>,  <41.647640, 36.844429, 29.647840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858051, 37.182335, 29.608513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503205, -0.215955, 0.836748,
		0.685625, -0.489625, -0.538689,
		0.526025, 0.844767, -0.098318,
		42.015858, 37.435764, 29.579018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.334064, 36.632267, 29.722670>,  <41.647640, 36.844429, 29.647840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.334064, 36.632267, 29.722670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289467, 37.015823, 29.827055>,  <42.262711, 37.245956, 29.889687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289467, 37.015823, 29.827055>,  <42.334064, 36.632267, 29.722670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289467, 37.015823, 29.827055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444533, -0.186743, 0.876081,
		0.888797, 0.213683, -0.405438,
		-0.111491, 0.958888, 0.260966,
		42.256020, 37.303490, 29.905344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963306, 36.865734, 29.995026>,  <42.334064, 36.632267, 29.722670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963306, 36.865734, 29.995026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697117, 37.124348, 30.144228>,  <42.537403, 37.279514, 30.233749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697117, 37.124348, 30.144228>,  <42.963306, 36.865734, 29.995026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697117, 37.124348, 30.144228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392439, -0.122024, 0.911648,
		0.634926, 0.753064, -0.172520,
		-0.665478, 0.646532, 0.373008,
		42.497475, 37.318306, 30.256130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350094, 37.397461, 30.337967>,  <42.963306, 36.865734, 29.995026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350094, 37.397461, 30.337967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980522, 37.366001, 30.487728>,  <42.758781, 37.347126, 30.577585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980522, 37.366001, 30.487728>,  <43.350094, 37.397461, 30.337967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980522, 37.366001, 30.487728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382119, -0.141957, 0.913145,
		-0.018671, 0.986743, 0.161212,
		-0.923925, -0.078651, 0.374403,
		42.703346, 37.342407, 30.600048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365185, 37.897038, 30.914539>,  <43.350094, 37.397461, 30.337967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365185, 37.897038, 30.914539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079197, 37.625420, 30.981140>,  <42.907604, 37.462448, 31.021101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079197, 37.625420, 30.981140>,  <43.365185, 37.897038, 30.914539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079197, 37.625420, 30.981140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284930, -0.065515, 0.956307,
		-0.638465, 0.731169, 0.240321,
		-0.714967, -0.679043, 0.166503,
		42.864708, 37.421707, 31.031092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077652, 38.013931, 31.704802>,  <43.365185, 37.897038, 30.914539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077652, 38.013931, 31.704802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939190, 37.645325, 31.634399>,  <42.856113, 37.424160, 31.592157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939190, 37.645325, 31.634399>,  <43.077652, 38.013931, 31.704802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939190, 37.645325, 31.634399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373751, -0.307525, 0.875065,
		-0.860516, 0.237125, 0.450870,
		-0.346154, -0.921521, -0.176005,
		42.835342, 37.368870, 31.581598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826218, 37.770271, 32.418018>,  <43.077652, 38.013931, 31.704802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826218, 37.770271, 32.418018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835747, 37.457699, 32.168606>,  <42.841465, 37.270153, 32.018959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835747, 37.457699, 32.168606>,  <42.826218, 37.770271, 32.418018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835747, 37.457699, 32.168606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125559, -0.616431, 0.777333,
		-0.991800, -0.096811, 0.083429,
		0.023827, -0.781435, -0.623532,
		42.842896, 37.223267, 31.981546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318031, 37.331249, 32.642879>,  <42.826218, 37.770271, 32.418018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318031, 37.331249, 32.642879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601379, 37.123539, 32.451649>,  <42.771389, 36.998913, 32.336910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601379, 37.123539, 32.451649>,  <42.318031, 37.331249, 32.642879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601379, 37.123539, 32.451649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127454, -0.572087, 0.810230,
		-0.694236, -0.634878, -0.339067,
		0.708373, -0.519275, -0.478080,
		42.813892, 36.967758, 32.308224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123871, 36.646866, 32.790527>,  <42.318031, 37.331249, 32.642879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123871, 36.646866, 32.790527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510056, 36.638733, 32.686630>,  <42.741768, 36.633854, 32.624294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510056, 36.638733, 32.686630>,  <42.123871, 36.646866, 32.790527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510056, 36.638733, 32.686630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204880, -0.556598, 0.805123,
		-0.160939, -0.830533, -0.533210,
		0.965465, -0.020331, -0.259738,
		42.799694, 36.632633, 32.608707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366005, 35.979004, 32.787006>,  <42.123871, 36.646866, 32.790527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366005, 35.979004, 32.787006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698471, 36.199448, 32.816528>,  <42.897949, 36.331715, 32.834240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698471, 36.199448, 32.816528>,  <42.366005, 35.979004, 32.787006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698471, 36.199448, 32.816528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253922, -0.494290, 0.831385,
		0.494663, -0.672277, -0.550774,
		0.831163, 0.551109, 0.073801,
		42.947819, 36.364780, 32.838669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888546, 35.499077, 33.020782>,  <42.366005, 35.979004, 32.787006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888546, 35.499077, 33.020782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014866, 35.868618, 33.107281>,  <43.090656, 36.090343, 33.159180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014866, 35.868618, 33.107281>,  <42.888546, 35.499077, 33.020782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014866, 35.868618, 33.107281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444428, -0.345384, 0.826555,
		0.838305, -0.164919, -0.519659,
		0.315797, 0.923857, 0.216243,
		43.109604, 36.145775, 33.172153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571270, 35.351780, 33.139500>,  <42.888546, 35.499077, 33.020782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571270, 35.351780, 33.139500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493736, 35.705772, 33.308846>,  <43.447216, 35.918167, 33.410454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493736, 35.705772, 33.308846>,  <43.571270, 35.351780, 33.139500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493736, 35.705772, 33.308846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624232, -0.221652, 0.749136,
		0.756812, 0.409481, -0.509472,
		-0.193832, 0.884983, 0.423360,
		43.435585, 35.971268, 33.435852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219009, 35.686810, 33.149948>,  <43.571270, 35.351780, 33.139500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219009, 35.686810, 33.149948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983246, 35.843765, 33.432404>,  <43.841789, 35.937939, 33.601875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.983246, 35.843765, 33.432404>,  <44.219009, 35.686810, 33.149948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.983246, 35.843765, 33.432404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668126, -0.254575, 0.699142,
		0.454101, 0.883868, -0.112116,
		-0.589407, 0.392389, 0.706138,
		43.806423, 35.961483, 33.644245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676071, 35.931198, 33.535629>,  <44.219009, 35.686810, 33.149948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676071, 35.931198, 33.535629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353458, 35.948582, 33.771465>,  <44.159889, 35.959011, 33.912968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353458, 35.948582, 33.771465>,  <44.676071, 35.931198, 33.535629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353458, 35.948582, 33.771465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576351, -0.164212, 0.800534,
		0.131609, 0.985467, 0.107394,
		-0.806535, 0.043461, 0.589586,
		44.111496, 35.961620, 33.948341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000187, 36.056446, 34.121605>,  <44.676071, 35.931198, 33.535629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000187, 36.056446, 34.121605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628963, 35.956554, 34.232124>,  <44.406227, 35.896618, 34.298435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628963, 35.956554, 34.232124>,  <45.000187, 36.056446, 34.121605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628963, 35.956554, 34.232124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342850, -0.283136, 0.895706,
		-0.145455, 0.925997, 0.348387,
		-0.928061, -0.249729, 0.276294,
		44.350544, 35.881634, 34.315014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.540871, 35.643356, 34.290657>,  <45.000187, 36.056446, 34.121605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.540871, 35.643356, 34.290657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621319, 35.251572, 34.284931>,  <45.669586, 35.016502, 34.281494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621319, 35.251572, 34.284931>,  <45.540871, 35.643356, 34.290657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621319, 35.251572, 34.284931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314684, -0.050765, -0.947838,
		0.927644, 0.195136, -0.318431,
		0.201122, -0.979462, -0.014315,
		45.681656, 34.957733, 34.280636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.316982, 35.721657, 33.994572>,  <45.540871, 35.643356, 34.290657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.316982, 35.721657, 33.994572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345623, 35.599655, 34.374435>,  <46.362808, 35.526455, 34.602352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345623, 35.599655, 34.374435>,  <46.316982, 35.721657, 33.994572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345623, 35.599655, 34.374435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922796, -0.341115, -0.179131,
		0.378577, 0.889166, 0.257029,
		0.071601, -0.305000, 0.949657,
		46.367104, 35.508156, 34.659332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012993, 35.752377, 34.198597>,  <46.316982, 35.721657, 33.994572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012993, 35.752377, 34.198597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866966, 35.497532, 34.470131>,  <46.779350, 35.344624, 34.633049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866966, 35.497532, 34.470131>,  <47.012993, 35.752377, 34.198597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866966, 35.497532, 34.470131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845787, -0.531690, -0.044164,
		0.389066, 0.558024, 0.732965,
		-0.365065, -0.637115, 0.678831,
		46.757446, 35.306396, 34.673779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.525528, 35.802231, 34.790512>,  <47.012993, 35.752377, 34.198597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.525528, 35.802231, 34.790512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.318798, 35.460007, 34.778477>,  <47.194759, 35.254669, 34.771255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.318798, 35.460007, 34.778477>,  <47.525528, 35.802231, 34.790512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.318798, 35.460007, 34.778477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822426, -0.486429, -0.294960,
		0.237722, -0.177186, 0.955036,
		-0.516820, -0.855565, -0.030088,
		47.163754, 35.203339, 34.769451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.000774, 35.299553, 34.779202>,  <47.525528, 35.802231, 34.790512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.000774, 35.299553, 34.779202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684677, 35.057636, 34.739735>,  <47.495018, 34.912487, 34.716053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684677, 35.057636, 34.739735>,  <48.000774, 35.299553, 34.779202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.684677, 35.057636, 34.739735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602806, -0.738276, -0.302610,
		0.110173, -0.298613, 0.947994,
		-0.790244, -0.604796, -0.098667,
		47.447605, 34.876198, 34.710133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.720371, 40.811771, 42.762997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325649, 40.747032, 42.764465>,  <37.088814, 40.708187, 42.765347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325649, 40.747032, 42.764465>,  <37.720371, 40.811771, 42.762997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325649, 40.747032, 42.764465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065710, -0.421160, -0.904603,
		0.147959, -0.892428, 0.426240,
		-0.986808, -0.161853, 0.003673,
		37.029606, 40.698475, 42.765568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587788, 40.168861, 42.454193>,  <37.720371, 40.811771, 42.762997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587788, 40.168861, 42.454193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218159, 40.315510, 42.410969>,  <36.996380, 40.403500, 42.385036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.218159, 40.315510, 42.410969>,  <37.587788, 40.168861, 42.454193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218159, 40.315510, 42.410969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047161, -0.389916, -0.919642,
		-0.379289, -0.844723, 0.377602,
		-0.924076, 0.366618, -0.108053,
		36.940937, 40.425499, 42.378551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149185, 39.630432, 42.346554>,  <37.587788, 40.168861, 42.454193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149185, 39.630432, 42.346554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987320, 39.956848, 42.181469>,  <36.890202, 40.152699, 42.082417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987320, 39.956848, 42.181469>,  <37.149185, 39.630432, 42.346554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987320, 39.956848, 42.181469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060728, -0.474300, -0.878266,
		-0.912448, -0.330336, 0.241487,
		-0.404661, 0.816037, -0.412713,
		36.865921, 40.201660, 42.057655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656097, 39.307240, 41.893181>,  <37.149185, 39.630432, 42.346554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656097, 39.307240, 41.893181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684086, 39.687859, 41.773411>,  <36.700878, 39.916229, 41.701550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684086, 39.687859, 41.773411>,  <36.656097, 39.307240, 41.893181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684086, 39.687859, 41.773411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043505, -0.296964, -0.953897,
		-0.996600, 0.079776, 0.020617,
		0.069975, 0.951550, -0.299425,
		36.705078, 39.973324, 41.683582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117096, 39.380325, 41.425922>,  <36.656097, 39.307240, 41.893181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117096, 39.380325, 41.425922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.383087, 39.664845, 41.334839>,  <36.542683, 39.835556, 41.280190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.383087, 39.664845, 41.334839>,  <36.117096, 39.380325, 41.425922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383087, 39.664845, 41.334839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102486, -0.215102, -0.971199,
		-0.739796, 0.669165, -0.070140,
		0.664980, 0.711301, -0.227712,
		36.582581, 39.878235, 41.266525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811359, 39.752304, 40.925758>,  <36.117096, 39.380325, 41.425922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811359, 39.752304, 40.925758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203548, 39.817032, 40.881054>,  <36.438862, 39.855869, 40.854233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.203548, 39.817032, 40.881054>,  <35.811359, 39.752304, 40.925758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203548, 39.817032, 40.881054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035279, -0.414330, -0.909443,
		-0.193469, 0.895626, -0.400530,
		0.980472, 0.161819, -0.111757,
		36.497688, 39.865578, 40.847527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805393, 39.959236, 40.269108>,  <35.811359, 39.752304, 40.925758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805393, 39.959236, 40.269108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190495, 39.877720, 40.340191>,  <36.421555, 39.828812, 40.382839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190495, 39.877720, 40.340191>,  <35.805393, 39.959236, 40.269108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190495, 39.877720, 40.340191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045256, -0.526508, -0.848965,
		0.266570, 0.825385, -0.497674,
		0.962752, -0.203786, 0.177705,
		36.479321, 39.816586, 40.393501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971790, 39.625797, 39.613098>,  <35.805393, 39.959236, 40.269108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971790, 39.625797, 39.613098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.310448, 39.637829, 39.825623>,  <36.513641, 39.645050, 39.953136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.310448, 39.637829, 39.825623>,  <35.971790, 39.625797, 39.613098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310448, 39.637829, 39.825623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512075, -0.317780, -0.797994,
		0.144836, 0.947687, -0.284450,
		0.846641, 0.030081, 0.531313,
		36.564442, 39.646854, 39.985016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503689, 39.994507, 39.262779>,  <35.971790, 39.625797, 39.613098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503689, 39.994507, 39.262779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.661037, 39.715561, 39.502426>,  <36.755447, 39.548195, 39.646214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.661037, 39.715561, 39.502426>,  <36.503689, 39.994507, 39.262779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661037, 39.715561, 39.502426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428718, -0.437327, -0.790535,
		0.813300, 0.567829, 0.126938,
		0.393375, -0.697363, 0.599117,
		36.779049, 39.506351, 39.682159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233459, 39.930016, 39.135609>,  <36.503689, 39.994507, 39.262779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233459, 39.930016, 39.135609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083710, 39.582314, 39.264755>,  <36.993858, 39.373692, 39.342243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.083710, 39.582314, 39.264755>,  <37.233459, 39.930016, 39.135609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083710, 39.582314, 39.264755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394322, -0.464379, -0.793008,
		0.839258, -0.169568, 0.516617,
		-0.374375, -0.869252, 0.322870,
		36.971397, 39.321537, 39.361614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803642, 39.361908, 39.160973>,  <37.233459, 39.930016, 39.135609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803642, 39.361908, 39.160973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449062, 39.178379, 39.136703>,  <37.236313, 39.068260, 39.122143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449062, 39.178379, 39.136703>,  <37.803642, 39.361908, 39.160973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449062, 39.178379, 39.136703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355275, -0.590576, -0.724568,
		0.296619, -0.663851, 0.686527,
		-0.886452, -0.458827, -0.060673,
		37.183128, 39.040730, 39.118500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027393, 38.697304, 38.959446>,  <37.803642, 39.361908, 39.160973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027393, 38.697304, 38.959446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629993, 38.685577, 38.915443>,  <37.391552, 38.678543, 38.889042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.629993, 38.685577, 38.915443>,  <38.027393, 38.697304, 38.959446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629993, 38.685577, 38.915443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092668, -0.769535, -0.631846,
		-0.066135, -0.637932, 0.767248,
		-0.993498, -0.029312, -0.110009,
		37.331944, 38.676785, 38.882442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869946, 37.868652, 38.920166>,  <38.027393, 38.697304, 38.959446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869946, 37.868652, 38.920166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544621, 38.054661, 38.780293>,  <37.349426, 38.166264, 38.696369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.544621, 38.054661, 38.780293>,  <37.869946, 37.868652, 38.920166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544621, 38.054661, 38.780293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090970, -0.695257, -0.712981,
		-0.574670, -0.548066, 0.607764,
		-0.813313, 0.465017, -0.349686,
		37.300625, 38.194168, 38.675385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357353, 37.356731, 38.756325>,  <37.869946, 37.868652, 38.920166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357353, 37.356731, 38.756325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261124, 37.671051, 38.528416>,  <37.203384, 37.859642, 38.391670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261124, 37.671051, 38.528416>,  <37.357353, 37.356731, 38.756325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261124, 37.671051, 38.528416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198576, -0.614440, -0.763565,
		-0.950101, -0.070550, 0.303860,
		-0.240573, 0.785803, -0.569770,
		37.188953, 37.906792, 38.357483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720055, 37.210182, 38.481651>,  <37.357353, 37.356731, 38.756325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720055, 37.210182, 38.481651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920879, 37.460640, 38.243031>,  <37.041374, 37.610916, 38.099857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.920879, 37.460640, 38.243031>,  <36.720055, 37.210182, 38.481651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920879, 37.460640, 38.243031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184345, -0.596457, -0.781189,
		-0.844959, 0.502174, -0.184028,
		0.502057, 0.626148, -0.596555,
		37.071495, 37.648483, 38.064064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274914, 37.307827, 37.901203>,  <36.720055, 37.210182, 38.481651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274914, 37.307827, 37.901203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642097, 37.419140, 37.788132>,  <36.862408, 37.485928, 37.720287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642097, 37.419140, 37.788132>,  <36.274914, 37.307827, 37.901203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642097, 37.419140, 37.788132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162092, -0.387254, -0.907613,
		-0.362044, 0.878972, -0.310375,
		0.917960, 0.278287, -0.282677,
		36.917484, 37.502625, 37.703327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180119, 37.482750, 37.254837>,  <36.274914, 37.307827, 37.901203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180119, 37.482750, 37.254837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.572372, 37.413353, 37.291191>,  <36.807724, 37.371716, 37.313004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.572372, 37.413353, 37.291191>,  <36.180119, 37.482750, 37.254837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572372, 37.413353, 37.291191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026879, -0.578857, -0.814986,
		0.194003, 0.796759, -0.572309,
		0.980633, -0.173493, 0.090884,
		36.866562, 37.361305, 37.318455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429634, 37.488445, 36.567829>,  <36.180119, 37.482750, 37.254837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429634, 37.488445, 36.567829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708496, 37.299603, 36.783642>,  <36.875813, 37.186298, 36.913128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708496, 37.299603, 36.783642>,  <36.429634, 37.488445, 36.567829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708496, 37.299603, 36.783642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193836, -0.600415, -0.775841,
		0.690222, 0.645460, -0.327070,
		0.697153, -0.472105, 0.539533,
		36.917641, 37.157970, 36.945503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061024, 37.411663, 36.181305>,  <36.429634, 37.488445, 36.567829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061024, 37.411663, 36.181305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066086, 37.114563, 36.449085>,  <37.069122, 36.936302, 36.609753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.066086, 37.114563, 36.449085>,  <37.061024, 37.411663, 36.181305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066086, 37.114563, 36.449085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158833, -0.659506, -0.734727,
		0.987224, 0.115629, 0.109627,
		0.012656, -0.742753, 0.669446,
		37.069881, 36.891739, 36.649918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487396, 36.946205, 35.902443>,  <37.061024, 37.411663, 36.181305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487396, 36.946205, 35.902443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310982, 36.706154, 36.169376>,  <37.205132, 36.562122, 36.329536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310982, 36.706154, 36.169376>,  <37.487396, 36.946205, 35.902443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310982, 36.706154, 36.169376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202045, -0.790862, -0.577681,
		0.874449, -0.119949, 0.470054,
		-0.441040, -0.600124, 0.667334,
		37.178669, 36.526115, 36.369576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906071, 36.431694, 35.958973>,  <37.487396, 36.946205, 35.902443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906071, 36.431694, 35.958973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556873, 36.287224, 36.090076>,  <37.347355, 36.200542, 36.168739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556873, 36.287224, 36.090076>,  <37.906071, 36.431694, 35.958973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556873, 36.287224, 36.090076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204869, -0.881411, -0.425609,
		0.442613, -0.304407, 0.843463,
		-0.872996, -0.361180, 0.327760,
		37.294975, 36.178871, 36.188404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068550, 35.774143, 36.349232>,  <37.906071, 36.431694, 35.958973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068550, 35.774143, 36.349232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694038, 35.766018, 36.208961>,  <37.469334, 35.761143, 36.124798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694038, 35.766018, 36.208961>,  <38.068550, 35.774143, 36.349232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694038, 35.766018, 36.208961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144090, -0.932673, -0.330696,
		-0.320349, -0.360152, 0.876166,
		-0.936277, -0.020309, -0.350675,
		37.413155, 35.759926, 36.103760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723259, 36.262260, 36.283070>,  <38.068550, 35.774143, 36.349232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723259, 36.262260, 36.283070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077259, 36.115261, 36.397415>,  <39.289658, 36.027061, 36.466022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.077259, 36.115261, 36.397415>,  <38.723259, 36.262260, 36.283070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077259, 36.115261, 36.397415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180592, 0.294957, 0.938289,
		-0.429140, -0.882011, 0.194669,
		0.885000, -0.367501, 0.285862,
		39.342758, 36.005013, 36.483173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573639, 35.860157, 36.909550>,  <38.723259, 36.262260, 36.283070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573639, 35.860157, 36.909550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969440, 35.917400, 36.917648>,  <39.206921, 35.951748, 36.922508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.969440, 35.917400, 36.917648>,  <38.573639, 35.860157, 36.909550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969440, 35.917400, 36.917648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029193, 0.060716, 0.997728,
		0.141554, -0.987843, 0.064256,
		0.989500, 0.143108, 0.020243,
		39.266289, 35.960335, 36.923721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833714, 35.386806, 37.431683>,  <38.573639, 35.860157, 36.909550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833714, 35.386806, 37.431683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096977, 35.686153, 37.398785>,  <39.254936, 35.865761, 37.379047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096977, 35.686153, 37.398785>,  <38.833714, 35.386806, 37.431683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096977, 35.686153, 37.398785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024999, 0.130902, 0.991080,
		0.752460, -0.650237, 0.104864,
		0.658163, 0.748369, -0.082243,
		39.294426, 35.910664, 37.374111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421619, 35.293381, 37.948006>,  <38.833714, 35.386806, 37.431683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421619, 35.293381, 37.948006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.472488, 35.681438, 37.865406>,  <39.503010, 35.914272, 37.815845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.472488, 35.681438, 37.865406>,  <39.421619, 35.293381, 37.948006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472488, 35.681438, 37.865406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081510, 0.197266, 0.976956,
		0.988525, -0.141078, -0.053989,
		0.127176, 0.970146, -0.206502,
		39.510643, 35.972481, 37.803455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050186, 35.533287, 38.337955>,  <39.421619, 35.293381, 37.948006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050186, 35.533287, 38.337955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831402, 35.857590, 38.254520>,  <39.700130, 36.052174, 38.204460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.831402, 35.857590, 38.254520>,  <40.050186, 35.533287, 38.337955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831402, 35.857590, 38.254520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122426, 0.323945, 0.938121,
		0.828160, 0.487576, -0.276442,
		-0.546958, 0.810758, -0.208586,
		39.667313, 36.100819, 38.191944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444290, 36.117577, 38.793385>,  <40.050186, 35.533287, 38.337955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444290, 36.117577, 38.793385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.068672, 36.233917, 38.720070>,  <39.843300, 36.303722, 38.676083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.068672, 36.233917, 38.720070>,  <40.444290, 36.117577, 38.793385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068672, 36.233917, 38.720070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140154, 0.162946, 0.976630,
		0.313922, 0.942790, -0.112249,
		-0.939047, 0.290854, -0.183288,
		39.786957, 36.321175, 38.665085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529861, 36.806263, 38.914349>,  <40.444290, 36.117577, 38.793385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529861, 36.806263, 38.914349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139236, 36.732147, 38.958172>,  <39.904861, 36.687679, 38.984467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139236, 36.732147, 38.958172>,  <40.529861, 36.806263, 38.914349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139236, 36.732147, 38.958172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017370, 0.439470, 0.898089,
		-0.214553, 0.878939, -0.425949,
		-0.976558, -0.185289, 0.109557,
		39.846268, 36.676559, 38.991039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300980, 37.287067, 39.268497>,  <40.529861, 36.806263, 38.914349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300980, 37.287067, 39.268497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.985462, 37.042175, 39.290329>,  <39.796154, 36.895241, 39.303429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.985462, 37.042175, 39.290329>,  <40.300980, 37.287067, 39.268497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985462, 37.042175, 39.290329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221934, 0.366486, 0.903567,
		-0.573197, 0.700612, -0.424956,
		-0.788790, -0.612235, 0.054579,
		39.748825, 36.858505, 39.306702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895489, 37.676510, 39.657326>,  <40.300980, 37.287067, 39.268497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895489, 37.676510, 39.657326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.717239, 37.318977, 39.677258>,  <39.610291, 37.104458, 39.689217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.717239, 37.318977, 39.677258>,  <39.895489, 37.676510, 39.657326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717239, 37.318977, 39.677258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322007, 0.211974, 0.922702,
		-0.835302, 0.395136, -0.382281,
		-0.445626, -0.893832, 0.049825,
		39.583553, 37.050827, 39.692204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177238, 37.732853, 39.900501>,  <39.895489, 37.676510, 39.657326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177238, 37.732853, 39.900501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.284523, 37.356030, 39.981091>,  <39.348892, 37.129936, 40.029446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.284523, 37.356030, 39.981091>,  <39.177238, 37.732853, 39.900501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284523, 37.356030, 39.981091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244131, 0.135845, 0.960180,
		-0.931914, -0.306715, -0.193550,
		0.268209, -0.942057, 0.201475,
		39.364986, 37.073414, 40.041534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564541, 37.342850, 40.250160>,  <39.177238, 37.732853, 39.900501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564541, 37.342850, 40.250160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.909729, 37.162052, 40.340473>,  <39.116840, 37.053574, 40.394661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.909729, 37.162052, 40.340473>,  <38.564541, 37.342850, 40.250160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909729, 37.162052, 40.340473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250183, 0.005976, 0.968180,
		-0.438965, -0.891999, -0.107925,
		0.862970, -0.451998, 0.225786,
		39.168621, 37.026451, 40.408211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440575, 36.901981, 40.870346>,  <38.564541, 37.342850, 40.250160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440575, 36.901981, 40.870346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.839645, 36.929203, 40.870010>,  <39.079090, 36.945538, 40.869808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.839645, 36.929203, 40.870010>,  <38.440575, 36.901981, 40.870346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839645, 36.929203, 40.870010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007975, 0.129183, 0.991589,
		0.067585, -0.989283, 0.129427,
		0.997682, 0.068049, -0.000841,
		39.138950, 36.949619, 40.869759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753090, 36.505730, 41.407261>,  <38.440575, 36.901981, 40.870346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753090, 36.505730, 41.407261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999210, 36.804359, 41.306038>,  <39.146881, 36.983536, 41.245304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.999210, 36.804359, 41.306038>,  <38.753090, 36.505730, 41.407261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999210, 36.804359, 41.306038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108212, 0.397970, 0.910994,
		0.780830, -0.533151, 0.325659,
		0.615300, 0.746572, -0.253054,
		39.183800, 37.028332, 41.230122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055168, 36.677799, 42.047215>,  <38.753090, 36.505730, 41.407261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055168, 36.677799, 42.047215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139057, 37.002972, 41.829899>,  <39.189392, 37.198074, 41.699509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139057, 37.002972, 41.829899>,  <39.055168, 36.677799, 42.047215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139057, 37.002972, 41.829899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100742, 0.534723, 0.839001,
		0.972557, -0.230690, 0.030248,
		0.209724, 0.812929, -0.543288,
		39.201973, 37.246849, 41.666912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746559, 37.051720, 42.266747>,  <39.055168, 36.677799, 42.047215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746559, 37.051720, 42.266747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528030, 37.324608, 42.072384>,  <39.396912, 37.488342, 41.955765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.528030, 37.324608, 42.072384>,  <39.746559, 37.051720, 42.266747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528030, 37.324608, 42.072384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082151, 0.620983, 0.779507,
		0.833535, 0.385946, -0.395304,
		-0.546325, 0.682221, -0.485905,
		39.364132, 37.529274, 41.926613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068020, 37.766106, 42.314411>,  <39.746559, 37.051720, 42.266747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068020, 37.766106, 42.314411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682884, 37.847141, 42.242973>,  <39.451801, 37.895763, 42.200111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.682884, 37.847141, 42.242973>,  <40.068020, 37.766106, 42.314411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682884, 37.847141, 42.242973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052095, 0.788190, 0.613223,
		0.265002, 0.581131, -0.769454,
		-0.962839, 0.202590, -0.178599,
		39.394032, 37.907917, 42.189392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026695, 38.465965, 42.347332>,  <40.068020, 37.766106, 42.314411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026695, 38.465965, 42.347332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642979, 38.352993, 42.347244>,  <39.412750, 38.285210, 42.347191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642979, 38.352993, 42.347244>,  <40.026695, 38.465965, 42.347332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642979, 38.352993, 42.347244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208072, 0.706200, 0.676748,
		-0.190982, 0.649241, -0.736215,
		-0.959287, -0.282432, -0.000217,
		39.355194, 38.268265, 42.347179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636696, 39.070786, 42.145462>,  <40.026695, 38.465965, 42.347332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636696, 39.070786, 42.145462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403431, 38.817619, 42.349163>,  <39.263470, 38.665718, 42.471382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403431, 38.817619, 42.349163>,  <39.636696, 39.070786, 42.145462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403431, 38.817619, 42.349163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285878, 0.746673, 0.600627,
		-0.760390, 0.204682, -0.616370,
		-0.583164, -0.632918, 0.509249,
		39.228481, 38.627743, 42.501938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.946739, 39.424587, 42.252281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961269, 39.120895, 42.512207>,  <38.969990, 38.938683, 42.668163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.961269, 39.120895, 42.512207>,  <38.946739, 39.424587, 42.252281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961269, 39.120895, 42.512207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075073, 0.646330, 0.759356,
		-0.996516, -0.076370, -0.033518,
		0.036328, -0.759227, 0.649812,
		38.972168, 38.893127, 42.707150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356575, 39.391392, 42.703117>,  <38.946739, 39.424587, 42.252281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356575, 39.391392, 42.703117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616951, 39.171616, 42.912647>,  <38.773178, 39.039749, 43.038364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.616951, 39.171616, 42.912647>,  <38.356575, 39.391392, 42.703117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616951, 39.171616, 42.912647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111469, 0.613367, 0.781892,
		-0.750902, -0.567354, 0.338018,
		0.650939, -0.549445, 0.523821,
		38.812233, 39.006783, 43.069794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005993, 39.307190, 43.310333>,  <38.356575, 39.391392, 42.703117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005993, 39.307190, 43.310333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.388756, 39.222149, 43.389450>,  <38.618416, 39.171124, 43.436920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.388756, 39.222149, 43.389450>,  <38.005993, 39.307190, 43.310333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388756, 39.222149, 43.389450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002651, 0.674732, 0.738058,
		-0.290369, -0.706780, 0.645095,
		0.956911, -0.212599, 0.197795,
		38.675831, 39.158371, 43.448788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059082, 39.317680, 44.132172>,  <38.005993, 39.307190, 43.310333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059082, 39.317680, 44.132172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433189, 39.343567, 43.992981>,  <38.657654, 39.359097, 43.909466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433189, 39.343567, 43.992981>,  <38.059082, 39.317680, 44.132172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433189, 39.343567, 43.992981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229334, 0.638050, 0.735050,
		0.269594, -0.767271, 0.581906,
		0.935267, 0.064714, -0.347976,
		38.713768, 39.362980, 43.888588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481056, 39.100224, 44.710258>,  <38.059082, 39.317680, 44.132172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481056, 39.100224, 44.710258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679047, 39.323608, 44.443989>,  <38.797840, 39.457638, 44.284225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679047, 39.323608, 44.443989>,  <38.481056, 39.100224, 44.710258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679047, 39.323608, 44.443989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180903, 0.683085, 0.707580,
		0.849867, -0.470657, 0.237083,
		0.494975, 0.558461, -0.665675,
		38.827538, 39.491146, 44.244286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004509, 39.284309, 45.049789>,  <38.481056, 39.100224, 44.710258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004509, 39.284309, 45.049789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995998, 39.537655, 44.740364>,  <38.990894, 39.689663, 44.554710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.995998, 39.537655, 44.740364>,  <39.004509, 39.284309, 45.049789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995998, 39.537655, 44.740364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059872, 0.773155, 0.631384,
		0.997979, -0.032883, -0.054369,
		-0.021274, 0.633364, -0.773562,
		38.989616, 39.727665, 44.508297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583527, 39.776321, 45.147461>,  <39.004509, 39.284309, 45.049789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583527, 39.776321, 45.147461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331406, 39.965855, 44.901466>,  <39.180134, 40.079575, 44.753868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331406, 39.965855, 44.901466>,  <39.583527, 39.776321, 45.147461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331406, 39.965855, 44.901466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022401, 0.802919, 0.595667,
		0.776029, 0.361671, -0.516693,
		-0.630299, 0.473830, -0.614987,
		39.142315, 40.108002, 44.716969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869274, 40.446289, 45.026184>,  <39.583527, 39.776321, 45.147461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869274, 40.446289, 45.026184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479103, 40.467815, 44.940723>,  <39.244999, 40.480732, 44.889446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479103, 40.467815, 44.940723>,  <39.869274, 40.446289, 45.026184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479103, 40.467815, 44.940723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053450, 0.882950, 0.466414,
		0.213742, 0.466373, -0.858377,
		-0.975427, 0.053812, -0.213651,
		39.186474, 40.483959, 44.876629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736877, 41.071796, 44.760853>,  <39.869274, 40.446289, 45.026184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736877, 41.071796, 44.760853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368607, 40.955135, 44.864609>,  <39.147644, 40.885139, 44.926865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368607, 40.955135, 44.864609>,  <39.736877, 41.071796, 44.760853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368607, 40.955135, 44.864609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127885, 0.853291, 0.505509,
		-0.368772, 0.432240, -0.822907,
		-0.920681, -0.291655, 0.259393,
		39.092403, 40.867638, 44.942429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299446, 41.553989, 44.695866>,  <39.736877, 41.071796, 44.760853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299446, 41.553989, 44.695866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.080898, 41.334133, 44.948650>,  <38.949772, 41.202221, 45.100323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.080898, 41.334133, 44.948650>,  <39.299446, 41.553989, 44.695866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080898, 41.334133, 44.948650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116746, 0.797155, 0.592381,
		-0.829370, 0.249877, -0.499707,
		-0.546366, -0.549641, 0.631964,
		38.916988, 41.169239, 45.138241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885899, 42.035240, 45.054630>,  <39.299446, 41.553989, 44.695866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885899, 42.035240, 45.054630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852654, 41.705593, 45.278744>,  <38.832706, 41.507805, 45.413212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.852654, 41.705593, 45.278744>,  <38.885899, 42.035240, 45.054630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852654, 41.705593, 45.278744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079608, 0.565921, 0.820607,
		-0.993355, 0.023599, -0.112642,
		-0.083112, -0.824121, 0.560282,
		38.827721, 41.458355, 45.446827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352383, 42.157223, 45.610092>,  <38.885899, 42.035240, 45.054630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352383, 42.157223, 45.610092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571545, 41.848396, 45.738911>,  <38.703041, 41.663101, 45.816204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571545, 41.848396, 45.738911>,  <38.352383, 42.157223, 45.610092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571545, 41.848396, 45.738911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043830, 0.357955, 0.932710,
		-0.835389, -0.525155, 0.162288,
		0.547909, -0.772062, 0.322049,
		38.735916, 41.616779, 45.835526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887016, 41.978825, 46.108734>,  <38.352383, 42.157223, 45.610092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887016, 41.978825, 46.108734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247280, 41.826653, 46.192719>,  <38.463440, 41.735352, 46.243111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.247280, 41.826653, 46.192719>,  <37.887016, 41.978825, 46.108734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247280, 41.826653, 46.192719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135682, 0.212824, 0.967624,
		-0.412796, -0.899990, 0.140065,
		0.900661, -0.380427, 0.209965,
		38.517479, 41.712524, 46.255707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854893, 41.598888, 46.752300>,  <37.887016, 41.978825, 46.108734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854893, 41.598888, 46.752300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251163, 41.635849, 46.712254>,  <38.488926, 41.658024, 46.688225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.251163, 41.635849, 46.712254>,  <37.854893, 41.598888, 46.752300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251163, 41.635849, 46.712254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072964, 0.260728, 0.962651,
		0.115050, -0.960981, 0.251555,
		0.990676, 0.092398, -0.100114,
		38.548367, 41.663570, 46.682220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156040, 41.150459, 47.206833>,  <37.854893, 41.598888, 46.752300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156040, 41.150459, 47.206833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414486, 41.449516, 47.145420>,  <38.569553, 41.628948, 47.108574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.414486, 41.449516, 47.145420>,  <38.156040, 41.150459, 47.206833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414486, 41.449516, 47.145420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021474, 0.218886, 0.975514,
		0.762938, -0.626998, 0.157480,
		0.646115, 0.747638, -0.153532,
		38.608322, 41.673809, 47.099361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681076, 41.094311, 47.738251>,  <38.156040, 41.150459, 47.206833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681076, 41.094311, 47.738251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.650650, 41.473511, 47.614635>,  <38.632397, 41.701031, 47.540466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.650650, 41.473511, 47.614635>,  <38.681076, 41.094311, 47.738251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650650, 41.473511, 47.614635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225931, 0.285487, 0.931371,
		0.971169, 0.140664, 0.192468,
		-0.076064, 0.948004, -0.309037,
		38.627831, 41.757912, 47.521923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169342, 41.386520, 48.221985>,  <38.681076, 41.094311, 47.738251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169342, 41.386520, 48.221985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937576, 41.684883, 48.090584>,  <38.798519, 41.863899, 48.011745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937576, 41.684883, 48.090584>,  <39.169342, 41.386520, 48.221985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937576, 41.684883, 48.090584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135172, 0.309524, 0.941235,
		0.803748, 0.589766, -0.078517,
		-0.579411, 0.745903, -0.328499,
		38.763752, 41.908653, 47.992035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324852, 41.959145, 48.514183>,  <39.169342, 41.386520, 48.221985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324852, 41.959145, 48.514183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.951824, 42.045853, 48.398716>,  <38.728008, 42.097878, 48.329437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.951824, 42.045853, 48.398716>,  <39.324852, 41.959145, 48.514183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951824, 42.045853, 48.398716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234147, 0.245400, 0.940720,
		0.274760, 0.944875, -0.178095,
		-0.932567, 0.216772, -0.288666,
		38.672054, 42.110886, 48.312115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078152, 42.450546, 49.012039>,  <39.324852, 41.959145, 48.514183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078152, 42.450546, 49.012039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733242, 42.328003, 48.850727>,  <38.526299, 42.254478, 48.753941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.733242, 42.328003, 48.850727>,  <39.078152, 42.450546, 49.012039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733242, 42.328003, 48.850727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456933, 0.127210, 0.880358,
		-0.218403, 0.943378, -0.249674,
		-0.862271, -0.306357, -0.403278,
		38.474560, 42.236095, 48.729744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586830, 42.910072, 49.295887>,  <39.078152, 42.450546, 49.012039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586830, 42.910072, 49.295887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.368851, 42.612999, 49.140217>,  <38.238064, 42.434757, 49.046814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.368851, 42.612999, 49.140217>,  <38.586830, 42.910072, 49.295887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368851, 42.612999, 49.140217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647570, 0.077961, 0.758007,
		-0.532616, 0.665093, -0.523422,
		-0.544952, -0.742680, -0.389171,
		38.205364, 42.390194, 49.023464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950195, 43.185276, 49.314449>,  <38.586830, 42.910072, 49.295887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950195, 43.185276, 49.314449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933453, 42.785656, 49.319199>,  <37.923409, 42.545883, 49.322048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.933453, 42.785656, 49.319199>,  <37.950195, 43.185276, 49.314449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933453, 42.785656, 49.319199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671447, 0.036922, 0.740132,
		-0.739870, 0.023008, -0.672357,
		-0.041854, -0.999053, 0.011869,
		37.920895, 42.485939, 49.322758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262875, 42.987167, 49.549549>,  <37.950195, 43.185276, 49.314449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262875, 42.987167, 49.549549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475746, 42.649906, 49.580200>,  <37.603470, 42.447548, 49.598591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.475746, 42.649906, 49.580200>,  <37.262875, 42.987167, 49.549549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475746, 42.649906, 49.580200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326310, -0.120752, 0.937518,
		-0.781222, -0.523933, -0.339392,
		0.532179, -0.843157, 0.076630,
		37.635399, 42.396957, 49.603188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739334, 42.360710, 49.823189>,  <37.262875, 42.987167, 49.549549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739334, 42.360710, 49.823189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.129440, 42.334560, 49.907642>,  <37.363506, 42.318871, 49.958313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.129440, 42.334560, 49.907642>,  <36.739334, 42.360710, 49.823189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129440, 42.334560, 49.907642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194581, 0.199094, 0.960468,
		-0.104823, -0.977797, 0.181450,
		0.975269, -0.065372, 0.211131,
		37.422020, 42.314949, 49.970982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608055, 43.090633, 50.114090>,  <36.739334, 42.360710, 49.823189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608055, 43.090633, 50.114090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.324738, 43.073994, 50.395966>,  <36.154747, 43.064011, 50.565090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.324738, 43.073994, 50.395966>,  <36.608055, 43.090633, 50.114090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324738, 43.073994, 50.395966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340544, -0.854283, -0.392721,
		0.618340, -0.518141, 0.590920,
		-0.708297, -0.041601, 0.704687,
		36.112247, 43.061512, 50.607372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712902, 42.490929, 50.527145>,  <36.608055, 43.090633, 50.114090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712902, 42.490929, 50.527145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327740, 42.598465, 50.517918>,  <36.096642, 42.662987, 50.512383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327740, 42.598465, 50.517918>,  <36.712902, 42.490929, 50.527145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327740, 42.598465, 50.517918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238929, -0.889232, -0.390101,
		-0.125391, -0.370119, 0.920483,
		-0.962907, 0.268845, -0.023070,
		36.038868, 42.679119, 50.510998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291393, 41.830082, 50.624516>,  <36.712902, 42.490929, 50.527145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291393, 41.830082, 50.624516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062557, 42.098919, 50.436474>,  <35.925255, 42.260223, 50.323650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062557, 42.098919, 50.436474>,  <36.291393, 41.830082, 50.624516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062557, 42.098919, 50.436474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240205, -0.685327, -0.687480,
		-0.784227, -0.280381, 0.553511,
		-0.572093, 0.672097, -0.470103,
		35.890930, 42.300549, 50.295444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805202, 41.442982, 50.391155>,  <36.291393, 41.830082, 50.624516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805202, 41.442982, 50.391155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753597, 41.762043, 50.155491>,  <35.722633, 41.953480, 50.014091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.753597, 41.762043, 50.155491>,  <35.805202, 41.442982, 50.391155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753597, 41.762043, 50.155491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284075, -0.598953, -0.748703,
		-0.950082, 0.070769, 0.303868,
		-0.129017, 0.797651, -0.589159,
		35.714893, 42.001339, 49.978745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147274, 41.324177, 50.066784>,  <35.805202, 41.442982, 50.391155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147274, 41.324177, 50.066784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338860, 41.604443, 49.855251>,  <35.453812, 41.772602, 49.728333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338860, 41.604443, 49.855251>,  <35.147274, 41.324177, 50.066784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338860, 41.604443, 49.855251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282310, -0.447480, -0.848565,
		-0.831202, 0.555725, -0.016522,
		0.478962, 0.700665, -0.528833,
		35.482548, 41.814644, 49.696602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693504, 41.477619, 49.468384>,  <35.147274, 41.324177, 50.066784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693504, 41.477619, 49.468384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052711, 41.610268, 49.352741>,  <35.268238, 41.689857, 49.283356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.052711, 41.610268, 49.352741>,  <34.693504, 41.477619, 49.468384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052711, 41.610268, 49.352741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209838, -0.254716, -0.943974,
		-0.386685, 0.908375, -0.159153,
		0.898022, 0.331624, -0.289106,
		35.322117, 41.709755, 49.266010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585945, 41.875595, 48.868210>,  <34.693504, 41.477619, 49.468384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585945, 41.875595, 48.868210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.981434, 41.820728, 48.844173>,  <35.218727, 41.787807, 48.829750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.981434, 41.820728, 48.844173>,  <34.585945, 41.875595, 48.868210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981434, 41.820728, 48.844173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099674, -0.303277, -0.947675,
		0.111763, 0.942978, -0.313529,
		0.988723, -0.137166, -0.060095,
		35.278049, 41.779579, 48.826145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844391, 42.257847, 48.206326>,  <34.585945, 41.875595, 48.868210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844391, 42.257847, 48.206326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.120049, 41.983738, 48.300541>,  <35.285442, 41.819271, 48.357071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.120049, 41.983738, 48.300541>,  <34.844391, 42.257847, 48.206326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120049, 41.983738, 48.300541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006528, -0.330910, -0.943640,
		0.724594, 0.648767, -0.232518,
		0.689144, -0.685274, 0.235540,
		35.326794, 41.778156, 48.371204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367390, 42.374195, 47.724560>,  <34.844391, 42.257847, 48.206326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367390, 42.374195, 47.724560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.399750, 41.995064, 47.847897>,  <35.419167, 41.767586, 47.921898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.399750, 41.995064, 47.847897>,  <35.367390, 42.374195, 47.724560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399750, 41.995064, 47.847897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055634, -0.304584, -0.950859,
		0.995168, 0.094079, 0.028091,
		0.080900, -0.947828, 0.308346,
		35.424019, 41.710716, 47.940399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749870, 42.109875, 47.135468>,  <35.367390, 42.374195, 47.724560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749870, 42.109875, 47.135468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685715, 41.772392, 47.340385>,  <35.647221, 41.569904, 47.463337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.685715, 41.772392, 47.340385>,  <35.749870, 42.109875, 47.135468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685715, 41.772392, 47.340385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218470, -0.536483, -0.815142,
		0.962573, -0.018817, 0.270368,
		-0.160386, -0.843701, 0.512293,
		35.637600, 41.519283, 47.494072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374630, 41.614849, 47.320889>,  <35.749870, 42.109875, 47.135468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374630, 41.614849, 47.320889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041920, 41.393616, 47.301949>,  <35.842293, 41.260876, 47.290585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041920, 41.393616, 47.301949>,  <36.374630, 41.614849, 47.320889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041920, 41.393616, 47.301949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368529, -0.486409, -0.792208,
		0.415128, -0.676390, 0.608412,
		-0.831778, -0.553085, -0.047347,
		35.792385, 41.227692, 47.287743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685623, 41.011608, 47.131500>,  <36.374630, 41.614849, 47.320889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685623, 41.011608, 47.131500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300930, 41.011700, 47.021908>,  <36.070114, 41.011753, 46.956154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300930, 41.011700, 47.021908>,  <36.685623, 41.011608, 47.131500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300930, 41.011700, 47.021908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251790, -0.393498, -0.884173,
		-0.108008, -0.919325, 0.378385,
		-0.961736, 0.000224, -0.273978,
		36.012409, 41.011768, 46.939716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640518, 40.467049, 46.622578>,  <36.685623, 41.011608, 47.131500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640518, 40.467049, 46.622578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.293877, 40.659061, 46.568066>,  <36.085892, 40.774269, 46.535358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.293877, 40.659061, 46.568066>,  <36.640518, 40.467049, 46.622578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293877, 40.659061, 46.568066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024399, -0.313532, -0.949264,
		-0.498404, -0.819309, 0.283419,
		-0.866601, 0.480032, -0.136276,
		36.033897, 40.803070, 46.527184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202839, 39.978848, 46.322487>,  <36.640518, 40.467049, 46.622578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202839, 39.978848, 46.322487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093182, 40.345741, 46.206879>,  <36.027386, 40.565876, 46.137512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093182, 40.345741, 46.206879>,  <36.202839, 39.978848, 46.322487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093182, 40.345741, 46.206879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039681, -0.289491, -0.956358,
		-0.960869, -0.273649, 0.042966,
		-0.274145, 0.917230, -0.289022,
		36.010937, 40.620911, 46.120171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755451, 39.941032, 45.671318>,  <36.202839, 39.978848, 46.322487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755451, 39.941032, 45.671318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882648, 40.320255, 45.668175>,  <35.958965, 40.547791, 45.666290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882648, 40.320255, 45.668175>,  <35.755451, 39.941032, 45.671318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882648, 40.320255, 45.668175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048905, 0.008129, -0.998770,
		-0.946832, 0.317984, 0.048950,
		0.317991, 0.948061, -0.007854,
		35.978046, 40.604675, 45.665817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424110, 40.170837, 45.109447>,  <35.755451, 39.941032, 45.671318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424110, 40.170837, 45.109447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682423, 40.472618, 45.156384>,  <35.837410, 40.653687, 45.184547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682423, 40.472618, 45.156384>,  <35.424110, 40.170837, 45.109447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682423, 40.472618, 45.156384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047311, 0.113851, -0.992371,
		-0.762052, 0.646409, 0.037830,
		0.645784, 0.754449, 0.117343,
		35.876160, 40.698952, 45.191586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179672, 40.800446, 44.713573>,  <35.424110, 40.170837, 45.109447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179672, 40.800446, 44.713573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573803, 40.842972, 44.766991>,  <35.810280, 40.868488, 44.799042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.573803, 40.842972, 44.766991>,  <35.179672, 40.800446, 44.713573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573803, 40.842972, 44.766991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131492, 0.026090, -0.990974,
		-0.108839, 0.993990, 0.011728,
		0.985324, 0.106315, 0.133541,
		35.869400, 40.874866, 44.807053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487724, 41.362110, 44.150837>,  <35.179672, 40.800446, 44.713573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487724, 41.362110, 44.150837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816780, 41.154728, 44.244198>,  <36.014214, 41.030300, 44.300217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816780, 41.154728, 44.244198>,  <35.487724, 41.362110, 44.150837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816780, 41.154728, 44.244198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266879, -0.010379, -0.963674,
		0.502042, 0.855043, 0.129826,
		0.822636, -0.518453, 0.233404,
		36.063572, 40.999191, 44.314220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033012, 41.618042, 43.649986>,  <35.487724, 41.362110, 44.150837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033012, 41.618042, 43.649986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209206, 41.287510, 43.790356>,  <36.314922, 41.089191, 43.874577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209206, 41.287510, 43.790356>,  <36.033012, 41.618042, 43.649986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209206, 41.287510, 43.790356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400001, -0.169299, -0.900743,
		0.803725, 0.537131, 0.255961,
		0.440483, -0.826334, 0.350923,
		36.341351, 41.039608, 43.895634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773071, 41.667809, 43.589218>,  <36.033012, 41.618042, 43.649986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773071, 41.667809, 43.589218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.680408, 41.278801, 43.579918>,  <36.624813, 41.045395, 43.574337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.680408, 41.278801, 43.579918>,  <36.773071, 41.667809, 43.589218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680408, 41.278801, 43.579918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304583, -0.049813, -0.951182,
		0.923886, -0.227425, 0.307753,
		-0.231653, -0.972521, -0.023248,
		36.610912, 40.987045, 43.572945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316143, 41.469444, 43.119179>,  <36.773071, 41.667809, 43.589218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316143, 41.469444, 43.119179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049484, 41.172565, 43.146683>,  <36.889488, 40.994438, 43.163185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.049484, 41.172565, 43.146683>,  <37.316143, 41.469444, 43.119179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049484, 41.172565, 43.146683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218591, -0.282861, -0.933920,
		0.712601, -0.607565, 0.350806,
		-0.666647, -0.742196, 0.068759,
		36.849491, 40.949905, 43.167309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.686386, 35.972477, 27.971903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.415508, 35.796963, 27.735640>,  <46.252983, 35.691654, 27.593882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.415508, 35.796963, 27.735640>,  <46.686386, 35.972477, 27.971903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.415508, 35.796963, 27.735640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651670, -0.015085, 0.758353,
		-0.341666, 0.898464, -0.275728,
		-0.677193, -0.438787, -0.590657,
		46.212349, 35.665325, 27.558443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068123, 36.314846, 28.094032>,  <46.686386, 35.972477, 27.971903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068123, 36.314846, 28.094032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.984573, 35.943466, 27.971169>,  <45.934444, 35.720638, 27.897449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.984573, 35.943466, 27.971169>,  <46.068123, 36.314846, 28.094032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984573, 35.943466, 27.971169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555806, -0.145727, 0.818440,
		-0.804645, 0.341670, -0.485601,
		-0.208871, -0.928453, -0.307161,
		45.921913, 35.664928, 27.879021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316109, 36.193550, 28.195660>,  <46.068123, 36.314846, 28.094032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316109, 36.193550, 28.195660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.476128, 35.827541, 28.174906>,  <45.572140, 35.607937, 28.162453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.476128, 35.827541, 28.174906>,  <45.316109, 36.193550, 28.195660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476128, 35.827541, 28.174906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545057, -0.283049, 0.789174,
		-0.736799, -0.287430, -0.611974,
		0.400051, -0.915023, -0.051885,
		45.596142, 35.553036, 28.159340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784073, 35.664181, 28.272308>,  <45.316109, 36.193550, 28.195660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784073, 35.664181, 28.272308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109356, 35.466602, 28.395414>,  <45.304523, 35.348057, 28.469278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109356, 35.466602, 28.395414>,  <44.784073, 35.664181, 28.272308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109356, 35.466602, 28.395414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548249, -0.472770, 0.689864,
		-0.195248, -0.729734, -0.655261,
		0.813204, -0.493941, 0.307769,
		45.353317, 35.318420, 28.487745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666996, 34.955788, 28.304119>,  <44.784073, 35.664181, 28.272308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666996, 34.955788, 28.304119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973854, 34.979786, 28.559586>,  <45.157967, 34.994186, 28.712866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.973854, 34.979786, 28.559586>,  <44.666996, 34.955788, 28.304119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973854, 34.979786, 28.559586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497921, -0.572016, 0.651822,
		0.404437, -0.818045, -0.408941,
		0.767141, 0.060000, 0.638666,
		45.203995, 34.997787, 28.751186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579853, 34.420307, 28.709522>,  <44.666996, 34.955788, 28.304119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579853, 34.420307, 28.709522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863190, 34.604515, 28.923504>,  <45.033192, 34.715038, 29.051893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.863190, 34.604515, 28.923504>,  <44.579853, 34.420307, 28.709522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863190, 34.604515, 28.923504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323699, -0.461554, 0.825946,
		0.627276, -0.758214, -0.177867,
		0.708339, 0.460521, 0.534955,
		45.075691, 34.742672, 29.083990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841633, 33.924217, 29.064264>,  <44.579853, 34.420307, 28.709522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841633, 33.924217, 29.064264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.962234, 34.248642, 29.264772>,  <45.034595, 34.443298, 29.385077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.962234, 34.248642, 29.264772>,  <44.841633, 33.924217, 29.064264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962234, 34.248642, 29.264772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240987, -0.443841, 0.863094,
		0.922508, -0.381026, 0.061636,
		0.301504, 0.811064, 0.501269,
		45.052685, 34.491962, 29.415154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265949, 33.647732, 29.545183>,  <44.841633, 33.924217, 29.064264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265949, 33.647732, 29.545183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.146824, 34.004448, 29.681423>,  <45.075348, 34.218479, 29.763166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.146824, 34.004448, 29.681423>,  <45.265949, 33.647732, 29.545183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.146824, 34.004448, 29.681423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162124, -0.398856, 0.902568,
		0.940755, 0.213582, 0.263368,
		-0.297818, 0.891794, 0.340599,
		45.057480, 34.271988, 29.783604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692955, 33.923256, 30.105597>,  <45.265949, 33.647732, 29.545183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692955, 33.923256, 30.105597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.328896, 34.083321, 30.148502>,  <45.110462, 34.179359, 30.174246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.328896, 34.083321, 30.148502>,  <45.692955, 33.923256, 30.105597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328896, 34.083321, 30.148502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120261, -0.502952, 0.855907,
		0.396452, 0.766099, 0.505883,
		-0.910145, 0.400164, 0.107265,
		45.055851, 34.203369, 30.180681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641777, 34.098347, 30.797670>,  <45.692955, 33.923256, 30.105597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641777, 34.098347, 30.797670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261570, 34.101582, 30.673449>,  <45.033443, 34.103523, 30.598915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.261570, 34.101582, 30.673449>,  <45.641777, 34.098347, 30.797670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261570, 34.101582, 30.673449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309387, -0.115015, 0.943955,
		-0.028084, 0.993331, 0.111827,
		-0.950521, 0.008087, -0.310553,
		44.976414, 34.104008, 30.580282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387249, 34.516212, 31.339687>,  <45.641777, 34.098347, 30.797670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387249, 34.516212, 31.339687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.104843, 34.296406, 31.160995>,  <44.935398, 34.164520, 31.053780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.104843, 34.296406, 31.160995>,  <45.387249, 34.516212, 31.339687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104843, 34.296406, 31.160995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386345, -0.229810, 0.893266,
		-0.593532, 0.803252, -0.050055,
		-0.706015, -0.549521, -0.446732,
		44.893040, 34.131550, 31.026976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759552, 34.729111, 31.660797>,  <45.387249, 34.516212, 31.339687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759552, 34.729111, 31.660797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.651234, 34.382225, 31.493656>,  <44.586243, 34.174091, 31.393372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.651234, 34.382225, 31.493656>,  <44.759552, 34.729111, 31.660797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651234, 34.382225, 31.493656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403321, -0.291925, 0.867244,
		-0.874071, 0.403377, -0.270714,
		-0.270798, -0.867218, -0.417854,
		44.569996, 34.122059, 31.368299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085350, 34.743057, 31.962929>,  <44.759552, 34.729111, 31.660797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085350, 34.743057, 31.962929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.206745, 34.373611, 31.869263>,  <44.279583, 34.151943, 31.813063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.206745, 34.373611, 31.869263>,  <44.085350, 34.743057, 31.962929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206745, 34.373611, 31.869263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487327, -0.361643, 0.794812,
		-0.818783, -0.127104, -0.559857,
		0.303492, -0.923612, -0.234166,
		44.297794, 34.096527, 31.799013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524609, 34.329765, 32.023468>,  <44.085350, 34.743057, 31.962929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524609, 34.329765, 32.023468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.844463, 34.093754, 32.068089>,  <44.036377, 33.952145, 32.094860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.844463, 34.093754, 32.068089>,  <43.524609, 34.329765, 32.023468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844463, 34.093754, 32.068089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354165, -0.313397, 0.881107,
		-0.484924, -0.744072, -0.459572,
		0.799635, -0.590034, 0.111551,
		44.084354, 33.916744, 32.101555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210732, 33.750202, 32.480888>,  <43.524609, 34.329765, 32.023468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210732, 33.750202, 32.480888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605370, 33.692524, 32.511459>,  <43.842152, 33.657917, 32.529804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.605370, 33.692524, 32.511459>,  <43.210732, 33.750202, 32.480888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605370, 33.692524, 32.511459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122724, -0.346792, 0.929879,
		-0.107580, -0.926791, -0.359839,
		0.986593, -0.144197, 0.076432,
		43.901348, 33.649265, 32.534389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432339, 33.124386, 32.686466>,  <43.210732, 33.750202, 32.480888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432339, 33.124386, 32.686466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.743473, 33.343269, 32.810097>,  <43.930153, 33.474602, 32.884274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.743473, 33.343269, 32.810097>,  <43.432339, 33.124386, 32.686466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743473, 33.343269, 32.810097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144217, -0.323253, 0.935259,
		0.611693, -0.772054, -0.172521,
		0.777838, 0.547211, 0.309074,
		43.976826, 33.507431, 32.902821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.454075, 32.872906, 33.382538>,  <43.432339, 33.124386, 32.686466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.454075, 32.872906, 33.382538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.720146, 33.171135, 33.398827>,  <43.879787, 33.350071, 33.408600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.720146, 33.171135, 33.398827>,  <43.454075, 32.872906, 33.382538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720146, 33.171135, 33.398827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125049, 0.057465, 0.990485,
		0.736139, -0.663942, 0.131458,
		0.665179, 0.745573, 0.040723,
		43.919701, 33.394806, 33.411045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820282, 32.756603, 33.897388>,  <43.454075, 32.872906, 33.382538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820282, 32.756603, 33.897388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.842960, 33.152664, 33.846203>,  <43.856567, 33.390301, 33.815491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.842960, 33.152664, 33.846203>,  <43.820282, 32.756603, 33.897388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842960, 33.152664, 33.846203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158893, 0.135489, 0.977955,
		0.985667, -0.035115, 0.165010,
		0.056698, 0.990156, -0.127967,
		43.859970, 33.449711, 33.807812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351906, 33.126087, 34.351631>,  <43.820282, 32.756603, 33.897388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351906, 33.126087, 34.351631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.114204, 33.428276, 34.241272>,  <43.971584, 33.609589, 34.175056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.114204, 33.428276, 34.241272>,  <44.351906, 33.126087, 34.351631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114204, 33.428276, 34.241272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088830, 0.279289, 0.956089,
		0.799355, 0.592671, -0.098861,
		-0.594257, 0.755473, -0.275898,
		43.935928, 33.654919, 34.158501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521461, 33.730289, 34.717880>,  <44.351906, 33.126087, 34.351631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521461, 33.730289, 34.717880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163120, 33.863476, 34.600182>,  <43.948116, 33.943390, 34.529560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163120, 33.863476, 34.600182>,  <44.521461, 33.730289, 34.717880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163120, 33.863476, 34.600182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124261, 0.448054, 0.885329,
		0.426627, 0.829686, -0.360014,
		-0.895851, 0.332969, -0.294250,
		43.894363, 33.963367, 34.511906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479607, 34.424423, 35.028149>,  <44.521461, 33.730289, 34.717880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479607, 34.424423, 35.028149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.104679, 34.351604, 34.909294>,  <43.879723, 34.307911, 34.837982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.104679, 34.351604, 34.909294>,  <44.479607, 34.424423, 35.028149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104679, 34.351604, 34.909294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348421, 0.475595, 0.807720,
		-0.005732, 0.860620, -0.509215,
		-0.937320, -0.182052, -0.297132,
		43.823483, 34.296989, 34.820156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800915, 34.999290, 35.137615>,  <44.479607, 34.424423, 35.028149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800915, 34.999290, 35.137615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.928635, 35.361015, 35.024284>,  <44.005264, 35.578049, 34.956287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.928635, 35.361015, 35.024284>,  <43.800915, 34.999290, 35.137615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928635, 35.361015, 35.024284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639512, -0.015018, -0.768634,
		-0.699338, 0.426614, 0.573521,
		0.319297, 0.904309, -0.283328,
		44.024426, 35.632309, 34.939285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291969, 35.270935, 34.817547>,  <43.800915, 34.999290, 35.137615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291969, 35.270935, 34.817547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580437, 35.518524, 34.693108>,  <43.753517, 35.667076, 34.618443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580437, 35.518524, 34.693108>,  <43.291969, 35.270935, 34.817547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580437, 35.518524, 34.693108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559779, 0.256121, -0.788067,
		-0.408114, 0.742478, 0.531196,
		0.721172, 0.618974, -0.311097,
		43.796787, 35.704216, 34.599777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000126, 35.909786, 34.595024>,  <43.291969, 35.270935, 34.817547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000126, 35.909786, 34.595024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359924, 35.953518, 34.425812>,  <43.575802, 35.979759, 34.324284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.359924, 35.953518, 34.425812>,  <43.000126, 35.909786, 34.595024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.359924, 35.953518, 34.425812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431680, 0.372027, -0.821735,
		0.067536, 0.921760, 0.381834,
		0.899495, 0.109334, -0.423031,
		43.629772, 35.986317, 34.298901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081638, 36.618729, 34.514454>,  <43.000126, 35.909786, 34.595024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081638, 36.618729, 34.514454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292171, 36.398266, 34.255470>,  <43.418491, 36.265987, 34.100079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292171, 36.398266, 34.255470>,  <43.081638, 36.618729, 34.514454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292171, 36.398266, 34.255470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408283, 0.504118, -0.761032,
		0.745842, 0.664902, 0.040307,
		0.526332, -0.551153, -0.647460,
		43.450069, 36.232922, 34.061234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329605, 37.089245, 34.028217>,  <43.081638, 36.618729, 34.514454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329605, 37.089245, 34.028217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353912, 36.733326, 33.847301>,  <43.368496, 36.519775, 33.738750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353912, 36.733326, 33.847301>,  <43.329605, 37.089245, 34.028217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353912, 36.733326, 33.847301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032296, 0.451138, -0.891870,
		0.997629, 0.068808, -0.001321,
		0.060772, -0.889798, -0.452290,
		43.372143, 36.466385, 33.711613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704819, 37.283531, 33.450516>,  <43.329605, 37.089245, 34.028217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704819, 37.283531, 33.450516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.528591, 36.928783, 33.394852>,  <43.422855, 36.715935, 33.361454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.528591, 36.928783, 33.394852>,  <43.704819, 37.283531, 33.450516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528591, 36.928783, 33.394852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308287, 0.295056, -0.904379,
		0.843126, -0.355536, -0.403402,
		-0.440566, -0.886868, -0.139162,
		43.396420, 36.662724, 33.353104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999149, 37.106583, 32.890873>,  <43.704819, 37.283531, 33.450516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999149, 37.106583, 32.890873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.679577, 36.866024, 32.888760>,  <43.487835, 36.721687, 32.887493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.679577, 36.866024, 32.888760>,  <43.999149, 37.106583, 32.890873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679577, 36.866024, 32.888760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342191, 0.461773, -0.818334,
		0.494592, -0.651980, -0.574718,
		-0.798927, -0.601405, -0.005287,
		43.439896, 36.685604, 32.887173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052414, 36.712013, 32.269207>,  <43.999149, 37.106583, 32.890873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052414, 36.712013, 32.269207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.666004, 36.670506, 32.363888>,  <43.434158, 36.645599, 32.420696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.666004, 36.670506, 32.363888>,  <44.052414, 36.712013, 32.269207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666004, 36.670506, 32.363888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248727, 0.124420, -0.960549,
		0.070220, -0.986789, -0.146002,
		-0.966025, -0.103764, 0.236704,
		43.376198, 36.639374, 32.434898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727600, 36.257881, 31.764011>,  <44.052414, 36.712013, 32.269207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727600, 36.257881, 31.764011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432400, 36.472813, 31.927296>,  <43.255280, 36.601772, 32.025265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432400, 36.472813, 31.927296>,  <43.727600, 36.257881, 31.764011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432400, 36.472813, 31.927296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364431, 0.191763, -0.911272,
		-0.567935, -0.821280, 0.054300,
		-0.737997, 0.537332, 0.408209,
		43.211002, 36.634010, 32.049759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127903, 36.123940, 31.334099>,  <43.727600, 36.257881, 31.764011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127903, 36.123940, 31.334099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.020947, 36.459076, 31.524479>,  <42.956772, 36.660156, 31.638708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.020947, 36.459076, 31.524479>,  <43.127903, 36.123940, 31.334099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020947, 36.459076, 31.524479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511707, 0.295072, -0.806901,
		-0.816493, -0.459302, 0.349830,
		-0.267386, 0.837839, 0.475952,
		42.940731, 36.710426, 31.667265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360077, 36.218430, 31.181067>,  <43.127903, 36.123940, 31.334099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360077, 36.218430, 31.181067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.529114, 36.562790, 31.294397>,  <42.630535, 36.769405, 31.362396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.529114, 36.562790, 31.294397>,  <42.360077, 36.218430, 31.181067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529114, 36.562790, 31.294397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574687, 0.496259, -0.650739,
		-0.700823, 0.112172, 0.704461,
		0.422590, 0.860897, 0.283326,
		42.655891, 36.821060, 31.379395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769501, 36.771206, 31.349871>,  <42.360077, 36.218430, 31.181067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769501, 36.771206, 31.349871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.105968, 36.959309, 31.243069>,  <42.307850, 37.072170, 31.178988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.105968, 36.959309, 31.243069>,  <41.769501, 36.771206, 31.349871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105968, 36.959309, 31.243069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467757, 0.384959, -0.795619,
		-0.271359, 0.794145, 0.543781,
		0.841170, 0.470256, -0.267005,
		42.358318, 37.100384, 31.162968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534107, 37.380547, 31.187880>,  <41.769501, 36.771206, 31.349871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534107, 37.380547, 31.187880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886654, 37.358692, 31.000174>,  <42.098183, 37.345581, 30.887550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.886654, 37.358692, 31.000174>,  <41.534107, 37.380547, 31.187880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886654, 37.358692, 31.000174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390837, 0.473700, -0.789211,
		0.265412, 0.878990, 0.396148,
		0.881364, -0.054637, -0.469267,
		42.151062, 37.342300, 30.859394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677212, 38.083202, 30.819916>,  <41.534107, 37.380547, 31.187880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677212, 38.083202, 30.819916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.938232, 37.835278, 30.645557>,  <42.094845, 37.686523, 30.540941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.938232, 37.835278, 30.645557>,  <41.677212, 38.083202, 30.819916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938232, 37.835278, 30.645557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143580, 0.463696, -0.874283,
		0.744017, 0.633101, 0.213592,
		0.652551, -0.619814, -0.435898,
		42.133999, 37.649334, 30.514788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014416, 38.569206, 30.250193>,  <41.677212, 38.083202, 30.819916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014416, 38.569206, 30.250193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118725, 38.195370, 30.153408>,  <42.181309, 37.971069, 30.095337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.118725, 38.195370, 30.153408>,  <42.014416, 38.569206, 30.250193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118725, 38.195370, 30.153408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157827, 0.205991, -0.965742,
		0.952413, 0.290023, -0.093787,
		0.260768, -0.934588, -0.241962,
		42.196957, 37.914993, 30.080820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618145, 38.594498, 29.762976>,  <42.014416, 38.569206, 30.250193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618145, 38.594498, 29.762976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.455639, 38.236794, 29.687870>,  <42.358135, 38.022171, 29.642807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.455639, 38.236794, 29.687870>,  <42.618145, 38.594498, 29.762976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455639, 38.236794, 29.687870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028443, 0.217761, -0.975588,
		0.913313, -0.391005, -0.113903,
		-0.406263, -0.894257, -0.187762,
		42.333759, 37.968517, 29.631542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825874, 38.320019, 29.105972>,  <42.618145, 38.594498, 29.762976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825874, 38.320019, 29.105972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510078, 38.081066, 29.162317>,  <42.320599, 37.937695, 29.196125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.510078, 38.081066, 29.162317>,  <42.825874, 38.320019, 29.105972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510078, 38.081066, 29.162317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199535, 0.032774, -0.979342,
		0.580421, -0.801290, -0.145072,
		-0.789492, -0.597378, 0.140862,
		42.273232, 37.901852, 29.204576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930191, 37.775486, 28.629414>,  <42.825874, 38.320019, 29.105972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930191, 37.775486, 28.629414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536079, 37.794548, 28.695095>,  <42.299614, 37.805984, 28.734503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536079, 37.794548, 28.695095>,  <42.930191, 37.775486, 28.629414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536079, 37.794548, 28.695095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167004, -0.062370, -0.983982,
		-0.036654, -0.996915, 0.069410,
		-0.985275, 0.047658, 0.164203,
		42.240498, 37.808846, 28.744356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750381, 37.340008, 28.194288>,  <42.930191, 37.775486, 28.629414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750381, 37.340008, 28.194288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417171, 37.547829, 28.270323>,  <42.217243, 37.672520, 28.315943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417171, 37.547829, 28.270323>,  <42.750381, 37.340008, 28.194288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417171, 37.547829, 28.270323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278480, -0.096903, -0.955541,
		-0.478032, -0.848927, 0.225407,
		-0.833027, 0.519550, 0.190086,
		42.167263, 37.703693, 28.327349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199646, 36.890755, 27.966263>,  <42.750381, 37.340008, 28.194288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199646, 36.890755, 27.966263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032261, 37.253952, 27.957869>,  <41.931831, 37.471870, 27.952833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032261, 37.253952, 27.957869>,  <42.199646, 36.890755, 27.966263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032261, 37.253952, 27.957869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534238, -0.264766, -0.802800,
		-0.734492, -0.324732, 0.595878,
		-0.418463, 0.907991, -0.020984,
		41.906723, 37.526348, 27.951572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611507, 36.682514, 27.769182>,  <42.199646, 36.890755, 27.966263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611507, 36.682514, 27.769182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.619709, 37.074940, 27.692137>,  <41.624630, 37.310394, 27.645910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.619709, 37.074940, 27.692137>,  <41.611507, 36.682514, 27.769182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619709, 37.074940, 27.692137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648117, -0.133647, -0.749722,
		-0.761265, 0.140209, 0.633101,
		0.020506, 0.981061, -0.192613,
		41.625862, 37.369259, 27.634354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.420753, 36.969894, 40.896244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021217, 36.959850, 40.879856>,  <39.781494, 36.953823, 40.870022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021217, 36.959850, 40.879856>,  <40.420753, 36.969894, 40.896244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021217, 36.959850, 40.879856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045655, -0.761992, -0.645976,
		-0.014999, -0.647100, 0.762258,
		-0.998845, -0.025112, -0.040972,
		39.721565, 36.952316, 40.867565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120106, 36.239697, 40.824062>,  <40.420753, 36.969894, 40.896244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120106, 36.239697, 40.824062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849167, 36.493397, 40.674973>,  <39.686604, 36.645618, 40.585518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849167, 36.493397, 40.674973>,  <40.120106, 36.239697, 40.824062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849167, 36.493397, 40.674973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067948, -0.450546, -0.890164,
		-0.732519, -0.628276, 0.262079,
		-0.677347, 0.634255, -0.372724,
		39.645962, 36.683674, 40.563156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776348, 35.819572, 40.245621>,  <40.120106, 36.239697, 40.824062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776348, 35.819572, 40.245621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660084, 36.199726, 40.201279>,  <39.590324, 36.427818, 40.174675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660084, 36.199726, 40.201279>,  <39.776348, 35.819572, 40.245621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660084, 36.199726, 40.201279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155862, -0.161334, -0.974514,
		-0.944046, -0.265978, 0.195022,
		-0.290663, 0.950383, -0.110851,
		39.572884, 36.484840, 40.168022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268147, 35.815739, 39.859596>,  <39.776348, 35.819572, 40.245621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268147, 35.815739, 39.859596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351284, 36.204292, 39.813633>,  <39.401169, 36.437424, 39.786057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351284, 36.204292, 39.813633>,  <39.268147, 35.815739, 39.859596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351284, 36.204292, 39.813633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249560, -0.060927, -0.966441,
		-0.945791, 0.229547, 0.229756,
		0.207846, 0.971389, -0.114910,
		39.413639, 36.495708, 39.779160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780888, 36.025902, 39.434334>,  <39.268147, 35.815739, 39.859596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780888, 36.025902, 39.434334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064117, 36.306526, 39.402206>,  <39.234055, 36.474899, 39.382931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064117, 36.306526, 39.402206>,  <38.780888, 36.025902, 39.434334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064117, 36.306526, 39.402206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087682, -0.025515, -0.995822,
		-0.700676, 0.712156, 0.043447,
		0.708071, 0.701558, -0.080321,
		39.276539, 36.516994, 39.378109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532639, 36.536716, 39.010395>,  <38.780888, 36.025902, 39.434334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532639, 36.536716, 39.010395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931339, 36.562943, 38.991653>,  <39.170559, 36.578678, 38.980408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931339, 36.562943, 38.991653>,  <38.532639, 36.536716, 39.010395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931339, 36.562943, 38.991653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049274, 0.035845, -0.998142,
		-0.063766, 0.997204, 0.038959,
		0.996748, 0.065568, -0.046851,
		39.230362, 36.582611, 38.977600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643463, 36.961433, 38.495872>,  <38.532639, 36.536716, 39.010395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643463, 36.961433, 38.495872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992058, 36.767368, 38.524502>,  <39.201214, 36.650928, 38.541679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992058, 36.767368, 38.524502>,  <38.643463, 36.961433, 38.495872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992058, 36.767368, 38.524502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127925, 0.083993, -0.988221,
		0.473439, 0.870378, 0.135264,
		0.871487, -0.485166, 0.071578,
		39.253506, 36.621819, 38.545975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939743, 37.074856, 37.870281>,  <38.643463, 36.961433, 38.495872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939743, 37.074856, 37.870281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185837, 36.787766, 38.000736>,  <39.333492, 36.615513, 38.079010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185837, 36.787766, 38.000736>,  <38.939743, 37.074856, 37.870281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185837, 36.787766, 38.000736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318405, -0.152223, -0.935653,
		0.721184, 0.679487, 0.134873,
		0.615233, -0.717722, 0.326133,
		39.370407, 36.572449, 38.098576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562069, 37.213253, 37.495659>,  <38.939743, 37.074856, 37.870281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562069, 37.213253, 37.495659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531307, 36.827000, 37.594963>,  <39.512848, 36.595245, 37.654545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531307, 36.827000, 37.594963>,  <39.562069, 37.213253, 37.495659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531307, 36.827000, 37.594963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161186, -0.257762, -0.952669,
		0.983923, -0.033252, 0.175471,
		-0.076908, -0.965636, 0.248258,
		39.508236, 36.537308, 37.669441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133266, 36.899418, 37.209782>,  <39.562069, 37.213253, 37.495659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133266, 36.899418, 37.209782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864452, 36.609734, 37.271610>,  <39.703163, 36.435925, 37.308708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864452, 36.609734, 37.271610>,  <40.133266, 36.899418, 37.209782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864452, 36.609734, 37.271610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285610, -0.446067, -0.848205,
		0.683228, -0.525874, 0.506613,
		-0.672031, -0.724211, 0.154570,
		39.662842, 36.392471, 37.317982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508816, 36.300278, 37.080143>,  <40.133266, 36.899418, 37.209782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508816, 36.300278, 37.080143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119572, 36.223328, 37.029472>,  <39.886024, 36.177158, 36.999069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119572, 36.223328, 37.029472>,  <40.508816, 36.300278, 37.080143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119572, 36.223328, 37.029472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202279, -0.450683, -0.869464,
		0.110168, -0.871710, 0.477477,
		-0.973111, -0.192371, -0.126678,
		39.827637, 36.165615, 36.991470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490719, 35.569233, 36.836636>,  <40.508816, 36.300278, 37.080143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490719, 35.569233, 36.836636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138626, 35.715588, 36.715759>,  <39.927372, 35.803402, 36.643234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138626, 35.715588, 36.715759>,  <40.490719, 35.569233, 36.836636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138626, 35.715588, 36.715759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118845, -0.446539, -0.886836,
		-0.459438, -0.816529, 0.349569,
		-0.880223, 0.365901, -0.302198,
		39.874557, 35.825356, 36.625103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150043, 34.993843, 36.523613>,  <40.490719, 35.569233, 36.836636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150043, 34.993843, 36.523613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013214, 35.343140, 36.384796>,  <39.931114, 35.552719, 36.301506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013214, 35.343140, 36.384796>,  <40.150043, 34.993843, 36.523613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013214, 35.343140, 36.384796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296623, -0.250087, -0.921668,
		-0.891627, -0.418219, -0.173475,
		-0.342075, 0.873241, -0.347038,
		39.910591, 35.605110, 36.280685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424244, 34.475945, 36.865120>,  <40.150043, 34.993843, 36.523613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424244, 34.475945, 36.865120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309872, 34.093384, 36.841339>,  <40.241249, 33.863846, 36.827072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309872, 34.093384, 36.841339>,  <40.424244, 34.475945, 36.865120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309872, 34.093384, 36.841339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118056, -0.026406, 0.992656,
		-0.950949, 0.290852, -0.105359,
		-0.285934, -0.956403, -0.059448,
		40.224091, 33.806461, 36.823505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797016, 34.423225, 37.161438>,  <40.424244, 34.475945, 36.865120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797016, 34.423225, 37.161438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981087, 34.070267, 37.200653>,  <40.091530, 33.858490, 37.224182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981087, 34.070267, 37.200653>,  <39.797016, 34.423225, 37.161438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981087, 34.070267, 37.200653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268875, -0.033268, 0.962600,
		-0.846134, -0.469328, -0.252564,
		0.460178, -0.882397, 0.098041,
		40.119141, 33.805546, 37.230064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256527, 33.951630, 37.566277>,  <39.797016, 34.423225, 37.161438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256527, 33.951630, 37.566277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618656, 33.785469, 37.601665>,  <39.835934, 33.685772, 37.622898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618656, 33.785469, 37.601665>,  <39.256527, 33.951630, 37.566277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618656, 33.785469, 37.601665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199092, -0.231072, 0.952349,
		-0.375166, -0.879799, -0.291899,
		0.905325, -0.415404, 0.088470,
		39.890255, 33.660847, 37.628208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131493, 33.284439, 37.775936>,  <39.256527, 33.951630, 37.566277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131493, 33.284439, 37.775936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511703, 33.366222, 37.869480>,  <39.739830, 33.415291, 37.925606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511703, 33.366222, 37.869480>,  <39.131493, 33.284439, 37.775936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511703, 33.366222, 37.869480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210555, -0.129449, 0.968973,
		0.228386, -0.970278, -0.079996,
		0.950529, 0.204456, 0.233861,
		39.796864, 33.427559, 37.939640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349674, 32.654892, 38.164146>,  <39.131493, 33.284439, 37.775936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349674, 32.654892, 38.164146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592712, 32.958675, 38.257137>,  <39.738537, 33.140945, 38.312931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592712, 32.958675, 38.257137>,  <39.349674, 32.654892, 38.164146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592712, 32.958675, 38.257137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275055, -0.073388, 0.958623,
		0.745100, -0.646397, 0.164304,
		0.607593, 0.759463, 0.232477,
		39.774990, 33.186516, 38.326881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565571, 32.513954, 38.833618>,  <39.349674, 32.654892, 38.164146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565571, 32.513954, 38.833618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703369, 32.889294, 38.822178>,  <39.786049, 33.114498, 38.815315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703369, 32.889294, 38.822178>,  <39.565571, 32.513954, 38.833618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703369, 32.889294, 38.822178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125328, 0.076159, 0.989188,
		0.930383, -0.337191, 0.143838,
		0.344500, 0.938351, -0.028598,
		39.806721, 33.170799, 38.813599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107578, 32.636971, 39.347214>,  <39.565571, 32.513954, 38.833618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107578, 32.636971, 39.347214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937279, 32.993843, 39.286877>,  <39.835098, 33.207966, 39.250675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937279, 32.993843, 39.286877>,  <40.107578, 32.636971, 39.347214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937279, 32.993843, 39.286877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000318, 0.166559, 0.986031,
		0.904840, 0.419851, -0.070629,
		-0.425751, 0.892179, -0.150843,
		39.809555, 33.261497, 39.241623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361660, 33.150249, 39.850849>,  <40.107578, 32.636971, 39.347214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361660, 33.150249, 39.850849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036785, 33.335327, 39.708717>,  <39.841858, 33.446373, 39.623440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036785, 33.335327, 39.708717>,  <40.361660, 33.150249, 39.850849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036785, 33.335327, 39.708717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220257, 0.320792, 0.921183,
		0.540216, 0.826439, -0.158632,
		-0.812190, 0.462699, -0.355327,
		39.793129, 33.474136, 39.602119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366383, 33.817413, 40.075806>,  <40.361660, 33.150249, 39.850849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366383, 33.817413, 40.075806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979050, 33.758022, 39.995514>,  <39.746651, 33.722385, 39.947338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979050, 33.758022, 39.995514>,  <40.366383, 33.817413, 40.075806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979050, 33.758022, 39.995514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239005, 0.318757, 0.917208,
		-0.072205, 0.936134, -0.344150,
		-0.968330, -0.148480, -0.200725,
		39.688549, 33.713478, 39.935295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009029, 34.533024, 40.019592>,  <40.366383, 33.817413, 40.075806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009029, 34.533024, 40.019592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762466, 34.229717, 40.104511>,  <39.614529, 34.047733, 40.155464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762466, 34.229717, 40.104511>,  <40.009029, 34.533024, 40.019592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762466, 34.229717, 40.104511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335911, 0.497069, 0.800054,
		-0.712182, 0.421847, -0.561108,
		-0.616410, -0.758266, 0.212300,
		39.577545, 34.002239, 40.168201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495655, 34.873833, 40.539783>,  <40.009029, 34.533024, 40.019592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495655, 34.873833, 40.539783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415806, 34.482113, 40.553143>,  <39.367897, 34.247082, 40.561157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415806, 34.482113, 40.553143>,  <39.495655, 34.873833, 40.539783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415806, 34.482113, 40.553143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310075, 0.095469, 0.945907,
		-0.929518, 0.178471, -0.322715,
		-0.199626, -0.979303, 0.033401,
		39.355919, 34.188320, 40.563164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805202, 34.761063, 40.832253>,  <39.495655, 34.873833, 40.539783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805202, 34.761063, 40.832253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993919, 34.413105, 40.889801>,  <39.107147, 34.204330, 40.924332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993919, 34.413105, 40.889801>,  <38.805202, 34.761063, 40.832253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993919, 34.413105, 40.889801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208725, 0.048345, 0.976779,
		-0.856650, -0.490862, -0.158760,
		0.471788, -0.869895, 0.143870,
		39.135456, 34.152138, 40.932961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418152, 34.439793, 41.283520>,  <38.805202, 34.761063, 40.832253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418152, 34.439793, 41.283520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760956, 34.237091, 41.320911>,  <38.966637, 34.115471, 41.343346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760956, 34.237091, 41.320911>,  <38.418152, 34.439793, 41.283520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760956, 34.237091, 41.320911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022093, 0.145100, 0.989170,
		-0.514828, -0.849793, 0.113156,
		0.857009, -0.506753, 0.093476,
		39.018059, 34.085064, 41.348953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281162, 33.941048, 41.807526>,  <38.418152, 34.439793, 41.283520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281162, 33.941048, 41.807526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679249, 33.980122, 41.807564>,  <38.918102, 34.003567, 41.807587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679249, 33.980122, 41.807564>,  <38.281162, 33.941048, 41.807526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679249, 33.980122, 41.807564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014414, 0.145919, 0.989192,
		0.096614, -0.984462, 0.146629,
		0.995218, 0.097683, 0.000092,
		38.977814, 34.009426, 41.807590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553707, 33.501862, 42.364101>,  <38.281162, 33.941048, 41.807526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553707, 33.501862, 42.364101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831245, 33.775681, 42.274681>,  <38.997768, 33.939972, 42.221027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831245, 33.775681, 42.274681>,  <38.553707, 33.501862, 42.364101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831245, 33.775681, 42.274681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096594, 0.219163, 0.970895,
		0.713616, -0.695245, 0.085942,
		0.693845, 0.684545, -0.223555,
		39.039398, 33.981045, 42.207615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697079, 32.778233, 42.652294>,  <38.553707, 33.501862, 42.364101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697079, 32.778233, 42.652294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306534, 32.692818, 42.665733>,  <38.072208, 32.641571, 42.673798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306534, 32.692818, 42.665733>,  <38.697079, 32.778233, 42.652294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306534, 32.692818, 42.665733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037231, -0.319221, -0.946949,
		0.212932, -0.923309, 0.319624,
		-0.976357, -0.213536, 0.033597,
		38.013626, 32.628757, 42.675812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612347, 32.096081, 42.371094>,  <38.697079, 32.778233, 42.652294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612347, 32.096081, 42.371094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245823, 32.254765, 42.349190>,  <38.025909, 32.349976, 42.336048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245823, 32.254765, 42.349190>,  <38.612347, 32.096081, 42.371094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245823, 32.254765, 42.349190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063315, -0.278518, -0.958342,
		-0.395439, -0.874669, 0.280326,
		-0.916307, 0.396715, -0.054757,
		37.970932, 32.373779, 42.332764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144691, 31.567266, 42.097710>,  <38.612347, 32.096081, 42.371094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144691, 31.567266, 42.097710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935104, 31.896166, 42.008839>,  <37.809353, 32.093506, 41.955517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935104, 31.896166, 42.008839>,  <38.144691, 31.567266, 42.097710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935104, 31.896166, 42.008839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245568, -0.395609, -0.884980,
		-0.815569, -0.409144, 0.409206,
		-0.523970, 0.822250, -0.222174,
		37.777912, 32.142841, 41.942188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502636, 31.322453, 41.888866>,  <38.144691, 31.567266, 42.097710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502636, 31.322453, 41.888866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523762, 31.687710, 41.727188>,  <37.536438, 31.906864, 41.630180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523762, 31.687710, 41.727188>,  <37.502636, 31.322453, 41.888866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523762, 31.687710, 41.727188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369284, -0.358210, -0.857505,
		-0.927814, 0.194555, 0.318291,
		0.052817, 0.913145, -0.404198,
		37.539608, 31.961653, 41.605930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917622, 31.376472, 41.410248>,  <37.502636, 31.322453, 41.888866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917622, 31.376472, 41.410248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124237, 31.702536, 41.305405>,  <37.248207, 31.898174, 41.242496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124237, 31.702536, 41.305405>,  <36.917622, 31.376472, 41.410248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124237, 31.702536, 41.305405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296004, -0.117245, -0.947964,
		-0.803473, 0.567245, 0.180729,
		0.516538, 0.815160, -0.262110,
		37.279198, 31.947084, 41.226772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442684, 31.965536, 41.109558>,  <36.917622, 31.376472, 41.410248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442684, 31.965536, 41.109558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813839, 32.025585, 40.973038>,  <37.036533, 32.061615, 40.891125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813839, 32.025585, 40.973038>,  <36.442684, 31.965536, 41.109558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813839, 32.025585, 40.973038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363578, 0.161348, -0.917485,
		-0.082666, 0.975413, 0.204294,
		0.927889, 0.150121, -0.341300,
		37.092205, 32.070621, 40.870647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444572, 32.640617, 40.712528>,  <36.442684, 31.965536, 41.109558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444572, 32.640617, 40.712528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747955, 32.403538, 40.604111>,  <36.929985, 32.261292, 40.539062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747955, 32.403538, 40.604111>,  <36.444572, 32.640617, 40.712528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747955, 32.403538, 40.604111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224427, 0.152923, -0.962417,
		0.611868, 0.790777, -0.017031,
		0.758453, -0.592694, -0.271041,
		36.975491, 32.225731, 40.522797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798931, 32.986622, 40.081192>,  <36.444572, 32.640617, 40.712528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798931, 32.986622, 40.081192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870838, 32.593826, 40.104435>,  <36.913982, 32.358147, 40.118382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870838, 32.593826, 40.104435>,  <36.798931, 32.986622, 40.081192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870838, 32.593826, 40.104435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163171, -0.088015, -0.982664,
		0.970081, 0.167173, -0.176055,
		0.179771, -0.981991, 0.058104,
		36.924770, 32.299229, 40.121864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219242, 32.952213, 39.471378>,  <36.798931, 32.986622, 40.081192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219242, 32.952213, 39.471378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094975, 32.579865, 39.548286>,  <37.020416, 32.356457, 39.594433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094975, 32.579865, 39.548286>,  <37.219242, 32.952213, 39.471378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094975, 32.579865, 39.548286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120418, -0.162110, -0.979398,
		0.942860, -0.327419, -0.061731,
		-0.310667, -0.930869, 0.192274,
		37.001774, 32.300602, 39.605968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500244, 32.619709, 38.889225>,  <37.219242, 32.952213, 39.471378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500244, 32.619709, 38.889225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226185, 32.363548, 39.028049>,  <37.061749, 32.209850, 39.111343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226185, 32.363548, 39.028049>,  <37.500244, 32.619709, 38.889225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226185, 32.363548, 39.028049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207637, -0.284986, -0.935772,
		0.698182, -0.713205, 0.062286,
		-0.685149, -0.640407, 0.347060,
		37.020641, 32.171425, 39.132168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592346, 32.025936, 38.476315>,  <37.500244, 32.619709, 38.889225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592346, 32.025936, 38.476315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221062, 32.002563, 38.623295>,  <36.998291, 31.988541, 38.711483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221062, 32.002563, 38.623295>,  <37.592346, 32.025936, 38.476315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221062, 32.002563, 38.623295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305290, -0.444904, -0.841937,
		0.212674, -0.893670, 0.395125,
		-0.928207, -0.058431, 0.367448,
		36.942600, 31.985035, 38.733528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400944, 31.306499, 38.509533>,  <37.592346, 32.025936, 38.476315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400944, 31.306499, 38.509533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050861, 31.499050, 38.490406>,  <36.840813, 31.614580, 38.478931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050861, 31.499050, 38.490406>,  <37.400944, 31.306499, 38.509533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050861, 31.499050, 38.490406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219192, -0.482742, -0.847889,
		-0.431237, -0.731598, 0.528014,
		-0.875208, 0.481377, -0.047816,
		36.788300, 31.643463, 38.476063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.541489, 33.275311, 46.502708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203251, 33.403561, 46.331982>,  <37.000309, 33.480511, 46.229546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203251, 33.403561, 46.331982>,  <37.541489, 33.275311, 46.502708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203251, 33.403561, 46.331982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360844, -0.245908, -0.899622,
		-0.393397, -0.914729, 0.092244,
		-0.845594, 0.320623, -0.426814,
		36.949574, 33.499748, 46.203938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387611, 32.719887, 46.198589>,  <37.541489, 33.275311, 46.502708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387611, 32.719887, 46.198589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.202843, 33.020168, 46.009663>,  <37.091984, 33.200336, 45.896309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.202843, 33.020168, 46.009663>,  <37.387611, 32.719887, 46.198589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202843, 33.020168, 46.009663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364833, -0.324565, -0.872671,
		-0.808410, -0.575420, -0.123957,
		-0.461920, 0.750699, -0.472314,
		37.064266, 33.245377, 45.867970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002773, 32.382904, 45.636223>,  <37.387611, 32.719887, 46.198589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002773, 32.382904, 45.636223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.990952, 32.760006, 45.503353>,  <36.983856, 32.986267, 45.423630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.990952, 32.760006, 45.503353>,  <37.002773, 32.382904, 45.636223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990952, 32.760006, 45.503353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174352, -0.322365, -0.930421,
		-0.984240, -0.085418, -0.154842,
		-0.029559, 0.942754, -0.332177,
		36.982082, 33.042831, 45.403702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646919, 32.297970, 45.014835>,  <37.002773, 32.382904, 45.636223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646919, 32.297970, 45.014835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818745, 32.658779, 44.997719>,  <36.921841, 32.875263, 44.987450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.818745, 32.658779, 44.997719>,  <36.646919, 32.297970, 45.014835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818745, 32.658779, 44.997719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262225, -0.169940, -0.949926,
		-0.864124, 0.396837, -0.309533,
		0.429567, 0.902021, -0.042789,
		36.947617, 32.929386, 44.984882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279182, 32.895176, 44.499928>,  <36.646919, 32.297970, 45.014835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279182, 32.895176, 44.499928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676266, 32.934261, 44.528164>,  <36.914516, 32.957714, 44.545105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676266, 32.934261, 44.528164>,  <36.279182, 32.895176, 44.499928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676266, 32.934261, 44.528164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080655, -0.103239, -0.991381,
		-0.089583, 0.989845, -0.110367,
		0.992708, 0.097712, 0.070588,
		36.974079, 32.963573, 44.549339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415367, 33.312321, 43.958771>,  <36.279182, 32.895176, 44.499928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415367, 33.312321, 43.958771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771355, 33.162945, 44.063457>,  <36.984947, 33.073318, 44.126270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771355, 33.162945, 44.063457>,  <36.415367, 33.312321, 43.958771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771355, 33.162945, 44.063457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263382, -0.047583, -0.963517,
		0.372274, 0.926432, 0.056011,
		0.889968, -0.373444, 0.261719,
		37.038345, 33.050911, 44.141972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972290, 33.631294, 43.494682>,  <36.415367, 33.312321, 43.958771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972290, 33.631294, 43.494682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.146507, 33.306889, 43.650921>,  <37.251038, 33.112244, 43.744663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.146507, 33.306889, 43.650921>,  <36.972290, 33.631294, 43.494682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146507, 33.306889, 43.650921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375185, -0.230874, -0.897738,
		0.818255, 0.537546, 0.203725,
		0.435541, -0.811013, 0.390592,
		37.277168, 33.063583, 43.768097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626534, 33.640186, 43.235268>,  <36.972290, 33.631294, 43.494682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626534, 33.640186, 43.235268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596073, 33.256321, 43.343529>,  <37.577797, 33.026001, 43.408485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596073, 33.256321, 43.343529>,  <37.626534, 33.640186, 43.235268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596073, 33.256321, 43.343529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352749, -0.279818, -0.892900,
		0.932615, 0.027482, 0.359826,
		-0.076147, -0.959660, 0.270656,
		37.573231, 32.968422, 43.424725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314941, 33.414036, 43.115982>,  <37.626534, 33.640186, 43.235268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314941, 33.414036, 43.115982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073654, 33.095242, 43.128307>,  <37.928883, 32.903965, 43.135704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.073654, 33.095242, 43.128307>,  <38.314941, 33.414036, 43.115982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073654, 33.095242, 43.128307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303770, -0.265294, -0.915064,
		0.737467, -0.542619, 0.402129,
		-0.603213, -0.796984, 0.030815,
		37.892689, 32.856148, 43.137550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045177, 33.340702, 42.932774>,  <38.314941, 33.414036, 43.115982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045177, 33.340702, 42.932774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.123096, 33.698997, 42.772919>,  <39.169849, 33.913975, 42.677006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.123096, 33.698997, 42.772919>,  <39.045177, 33.340702, 42.932774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123096, 33.698997, 42.772919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111203, 0.384650, 0.916340,
		0.974519, -0.222942, -0.024680,
		0.194797, 0.895735, -0.399641,
		39.181538, 33.967716, 42.653027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624146, 33.555134, 43.229225>,  <39.045177, 33.340702, 42.932774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624146, 33.555134, 43.229225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453117, 33.886879, 43.085373>,  <39.350502, 34.085926, 42.999062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.453117, 33.886879, 43.085373>,  <39.624146, 33.555134, 43.229225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453117, 33.886879, 43.085373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129374, 0.449878, 0.883670,
		0.894677, 0.331303, -0.299652,
		-0.427569, 0.829367, -0.359633,
		39.324848, 34.135689, 42.977482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931709, 34.069012, 43.631821>,  <39.624146, 33.555134, 43.229225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931709, 34.069012, 43.631821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.618061, 34.262913, 43.476810>,  <39.429874, 34.379253, 43.383804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.618061, 34.262913, 43.476810>,  <39.931709, 34.069012, 43.631821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618061, 34.262913, 43.476810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239505, 0.339688, 0.909532,
		0.572537, 0.805993, -0.150254,
		-0.784116, 0.484755, -0.387523,
		39.382828, 34.408340, 43.360554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989979, 34.794514, 43.765865>,  <39.931709, 34.069012, 43.631821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989979, 34.794514, 43.765865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.599445, 34.736366, 43.701820>,  <39.365124, 34.701477, 43.663395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.599445, 34.736366, 43.701820>,  <39.989979, 34.794514, 43.765865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599445, 34.736366, 43.701820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213509, 0.530258, 0.820512,
		-0.034374, 0.835281, -0.548747,
		-0.976336, -0.145366, -0.160113,
		39.306545, 34.692757, 43.653786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666428, 35.475624, 43.785408>,  <39.989979, 34.794514, 43.765865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666428, 35.475624, 43.785408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351913, 35.236858, 43.849205>,  <39.163204, 35.093597, 43.887482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351913, 35.236858, 43.849205>,  <39.666428, 35.475624, 43.785408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351913, 35.236858, 43.849205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305649, 0.600124, 0.739209,
		-0.536962, 0.532483, -0.654319,
		-0.786289, -0.596919, 0.159491,
		39.116028, 35.057781, 43.897053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108200, 35.913506, 43.902081>,  <39.666428, 35.475624, 43.785408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108200, 35.913506, 43.902081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.020054, 35.566597, 44.080643>,  <38.967167, 35.358452, 44.187778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.020054, 35.566597, 44.080643>,  <39.108200, 35.913506, 43.902081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020054, 35.566597, 44.080643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212316, 0.489332, 0.845858,
		-0.952029, 0.091621, -0.291968,
		-0.220368, -0.867271, 0.446406,
		38.953945, 35.306416, 44.214565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428478, 35.990772, 44.233028>,  <39.108200, 35.913506, 43.902081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428478, 35.990772, 44.233028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570705, 35.663921, 44.414520>,  <38.656044, 35.467812, 44.523415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570705, 35.663921, 44.414520>,  <38.428478, 35.990772, 44.233028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570705, 35.663921, 44.414520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288269, 0.365915, 0.884877,
		-0.889083, -0.445435, -0.105443,
		0.355572, -0.817125, 0.453734,
		38.677376, 35.418785, 44.550640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962963, 35.752686, 44.750908>,  <38.428478, 35.990772, 44.233028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962963, 35.752686, 44.750908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.309639, 35.595730, 44.874126>,  <38.517643, 35.501556, 44.948055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.309639, 35.595730, 44.874126>,  <37.962963, 35.752686, 44.750908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309639, 35.595730, 44.874126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097656, 0.472098, 0.876120,
		-0.489203, -0.789403, 0.370842,
		0.866686, -0.392385, 0.308042,
		38.569645, 35.478016, 44.966537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773514, 35.487366, 45.399025>,  <37.962963, 35.752686, 44.750908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773514, 35.487366, 45.399025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.172382, 35.517426, 45.398052>,  <38.411701, 35.535461, 45.397469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.172382, 35.517426, 45.398052>,  <37.773514, 35.487366, 45.399025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172382, 35.517426, 45.398052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013291, 0.207977, 0.978043,
		0.074006, -0.975242, 0.208387,
		0.997169, 0.075151, -0.002430,
		38.471535, 35.539970, 45.397324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858406, 35.273685, 46.143673>,  <37.773514, 35.487366, 45.399025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858406, 35.273685, 46.143673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185646, 35.456898, 46.004574>,  <38.381989, 35.566826, 45.921116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185646, 35.456898, 46.004574>,  <37.858406, 35.273685, 46.143673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185646, 35.456898, 46.004574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102572, 0.478776, 0.871925,
		0.565861, -0.748987, 0.344703,
		0.818096, 0.458032, -0.347745,
		38.431076, 35.594307, 45.900249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418331, 35.141560, 46.512005>,  <37.858406, 35.273685, 46.143673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418331, 35.141560, 46.512005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500591, 35.499489, 46.353516>,  <38.549946, 35.714249, 46.258423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.500591, 35.499489, 46.353516>,  <38.418331, 35.141560, 46.512005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500591, 35.499489, 46.353516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167742, 0.366653, 0.915111,
		0.964142, -0.254657, -0.074697,
		0.205651, 0.894827, -0.396222,
		38.562286, 35.767937, 46.234650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976746, 35.434559, 46.934074>,  <38.418331, 35.141560, 46.512005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976746, 35.434559, 46.934074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796215, 35.737709, 46.745636>,  <38.687897, 35.919598, 46.632572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796215, 35.737709, 46.745636>,  <38.976746, 35.434559, 46.934074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796215, 35.737709, 46.745636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264886, 0.617908, 0.740287,
		0.852139, 0.209324, -0.479628,
		-0.451326, 0.757874, -0.471097,
		38.660816, 35.965073, 46.604305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245121, 35.853512, 47.353432>,  <38.976746, 35.434559, 46.934074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245121, 35.853512, 47.353432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.021858, 36.091743, 47.122349>,  <38.887901, 36.234684, 46.983700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.021858, 36.091743, 47.122349>,  <39.245121, 35.853512, 47.353432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021858, 36.091743, 47.122349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039564, 0.714566, 0.698448,
		0.828793, 0.366985, -0.422402,
		-0.558154, 0.595581, -0.577708,
		38.854412, 36.270416, 46.949036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489296, 36.517521, 47.283295>,  <39.245121, 35.853512, 47.353432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489296, 36.517521, 47.283295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108482, 36.592358, 47.186447>,  <38.879993, 36.637260, 47.128338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.108482, 36.592358, 47.186447>,  <39.489296, 36.517521, 47.283295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108482, 36.592358, 47.186447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034360, 0.720914, 0.692173,
		0.304051, 0.667292, -0.679907,
		-0.952036, 0.187094, -0.242123,
		38.822872, 36.648487, 47.113811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.793732, 39.629112, 44.573196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.047470, 39.342552, 44.689384>,  <34.199715, 39.170616, 44.759098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.047470, 39.342552, 44.689384>,  <33.793732, 39.629112, 44.573196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047470, 39.342552, 44.689384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340739, -0.078159, -0.936903,
		0.693903, 0.693295, 0.194526,
		0.634347, -0.716403, 0.290468,
		34.237774, 39.127632, 44.776524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462753, 39.729870, 44.154007>,  <33.793732, 39.629112, 44.573196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462753, 39.729870, 44.154007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479816, 39.357918, 44.300159>,  <34.490055, 39.134747, 44.387852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479816, 39.357918, 44.300159>,  <34.462753, 39.729870, 44.154007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479816, 39.357918, 44.300159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499337, -0.296917, -0.813943,
		0.865357, 0.217165, 0.451659,
		0.042655, -0.929882, 0.365378,
		34.492611, 39.078953, 44.409771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140686, 39.494064, 44.003445>,  <34.462753, 39.729870, 44.154007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140686, 39.494064, 44.003445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.913906, 39.168674, 44.055340>,  <34.777840, 38.973442, 44.086475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.913906, 39.168674, 44.055340>,  <35.140686, 39.494064, 44.003445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913906, 39.168674, 44.055340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404935, -0.412372, -0.816074,
		0.717353, -0.410139, 0.563197,
		-0.566950, -0.813472, 0.129737,
		34.743820, 38.924633, 44.094261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549091, 38.875290, 43.929508>,  <35.140686, 39.494064, 44.003445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549091, 38.875290, 43.929508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.169712, 38.774555, 43.852539>,  <34.942085, 38.714115, 43.806358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.169712, 38.774555, 43.852539>,  <35.549091, 38.875290, 43.929508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169712, 38.774555, 43.852539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292470, -0.461529, -0.837527,
		0.122109, -0.850629, 0.511390,
		-0.948446, -0.251836, -0.192427,
		34.885178, 38.699005, 43.794811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572144, 38.282471, 43.667595>,  <35.549091, 38.875290, 43.929508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572144, 38.282471, 43.667595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.202522, 38.382126, 43.551617>,  <34.980751, 38.441917, 43.482029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.202522, 38.382126, 43.551617>,  <35.572144, 38.282471, 43.667595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202522, 38.382126, 43.551617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191197, -0.355580, -0.914881,
		-0.331019, -0.900832, 0.280942,
		-0.924051, 0.249128, -0.289940,
		34.925308, 38.456867, 43.464634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417904, 37.635826, 43.408215>,  <35.572144, 38.282471, 43.667595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417904, 37.635826, 43.408215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174755, 37.926811, 43.280910>,  <35.028866, 38.101402, 43.204529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.174755, 37.926811, 43.280910>,  <35.417904, 37.635826, 43.408215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174755, 37.926811, 43.280910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158867, -0.281284, -0.946383,
		-0.777983, -0.625836, 0.055413,
		-0.607868, 0.727467, -0.318259,
		34.992393, 38.145050, 43.185432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101551, 37.425156, 42.874878>,  <35.417904, 37.635826, 43.408215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101551, 37.425156, 42.874878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.047741, 37.811237, 42.785175>,  <35.015453, 38.042885, 42.731354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.047741, 37.811237, 42.785175>,  <35.101551, 37.425156, 42.874878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047741, 37.811237, 42.785175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271372, -0.181778, -0.945153,
		-0.953027, -0.188004, -0.237474,
		-0.134525, 0.965200, -0.224258,
		35.007385, 38.100796, 42.717899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708580, 37.331486, 42.218838>,  <35.101551, 37.425156, 42.874878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708580, 37.331486, 42.218838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814426, 37.716911, 42.203201>,  <34.877934, 37.948166, 42.193821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814426, 37.716911, 42.203201>,  <34.708580, 37.331486, 42.218838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814426, 37.716911, 42.203201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101193, -0.068056, -0.992536,
		-0.959030, 0.258685, -0.115515,
		0.264616, 0.963561, -0.039090,
		34.893810, 38.005981, 42.191475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183151, 37.764023, 41.784710>,  <34.708580, 37.331486, 42.218838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183151, 37.764023, 41.784710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528587, 37.964340, 41.808121>,  <34.735847, 38.084530, 41.822166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528587, 37.964340, 41.808121>,  <34.183151, 37.764023, 41.784710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528587, 37.964340, 41.808121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033023, 0.059652, -0.997673,
		-0.503119, 0.863509, 0.034977,
		0.863586, 0.500794, 0.058528,
		34.787663, 38.114578, 41.825680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000668, 38.304691, 41.398579>,  <34.183151, 37.764023, 41.784710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000668, 38.304691, 41.398579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.395081, 38.240452, 41.416191>,  <34.631729, 38.201908, 41.426758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.395081, 38.240452, 41.416191>,  <34.000668, 38.304691, 41.398579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395081, 38.240452, 41.416191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029803, -0.089970, -0.995498,
		0.163837, 0.982911, -0.083928,
		0.986037, -0.160598, 0.044034,
		34.690891, 38.192272, 41.429401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137024, 38.506496, 40.797588>,  <34.000668, 38.304691, 41.398579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137024, 38.506496, 40.797588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485672, 38.330353, 40.883717>,  <34.694862, 38.224667, 40.935394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485672, 38.330353, 40.883717>,  <34.137024, 38.506496, 40.797588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485672, 38.330353, 40.883717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223410, -0.034111, -0.974127,
		0.436307, 0.897175, 0.068648,
		0.871621, -0.440356, 0.215321,
		34.747158, 38.198246, 40.948315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716793, 38.908310, 40.443970>,  <34.137024, 38.506496, 40.797588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716793, 38.908310, 40.443970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795391, 38.524052, 40.522511>,  <34.842548, 38.293499, 40.569633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.795391, 38.524052, 40.522511>,  <34.716793, 38.908310, 40.443970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795391, 38.524052, 40.522511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314555, -0.127913, -0.940581,
		0.928680, 0.246579, 0.277042,
		0.196491, -0.960644, 0.196353,
		34.854340, 38.235859, 40.581417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134285, 38.740261, 39.985168>,  <34.716793, 38.908310, 40.443970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134285, 38.740261, 39.985168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064453, 38.374332, 40.130840>,  <35.022552, 38.154778, 40.218243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.064453, 38.374332, 40.130840>,  <35.134285, 38.740261, 39.985168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064453, 38.374332, 40.130840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245661, -0.398633, -0.883597,
		0.953505, -0.064794, 0.294329,
		-0.174581, -0.914819, 0.364181,
		35.012077, 38.099888, 40.240093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722015, 38.352192, 39.739582>,  <35.134285, 38.740261, 39.985168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722015, 38.352192, 39.739582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433414, 38.088406, 39.823994>,  <35.260254, 37.930134, 39.874641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433414, 38.088406, 39.823994>,  <35.722015, 38.352192, 39.739582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433414, 38.088406, 39.823994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033844, -0.270830, -0.962032,
		0.691580, -0.701255, 0.173087,
		-0.721507, -0.659464, 0.211034,
		35.216961, 37.890568, 39.887302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399773, 38.265862, 39.703060>,  <35.722015, 38.352192, 39.739582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399773, 38.265862, 39.703060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.561924, 38.614136, 39.591652>,  <36.659214, 38.823101, 39.524807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.561924, 38.614136, 39.591652>,  <36.399773, 38.265862, 39.703060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561924, 38.614136, 39.591652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243087, 0.396381, 0.885320,
		0.881238, -0.291182, 0.372335,
		0.405375, 0.870687, -0.278523,
		36.683537, 38.875343, 39.508095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021759, 38.338680, 40.154045>,  <36.399773, 38.265862, 39.703060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021759, 38.338680, 40.154045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924423, 38.703957, 40.023285>,  <36.866020, 38.923122, 39.944828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.924423, 38.703957, 40.023285>,  <37.021759, 38.338680, 40.154045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924423, 38.703957, 40.023285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158588, 0.369956, 0.915414,
		0.956888, 0.170915, -0.234847,
		-0.243342, 0.913192, -0.326901,
		36.851421, 38.977913, 39.925213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196407, 38.729454, 40.689510>,  <37.021759, 38.338680, 40.154045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196407, 38.729454, 40.689510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.060043, 39.015919, 40.445908>,  <36.978226, 39.187798, 40.299747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.060043, 39.015919, 40.445908>,  <37.196407, 38.729454, 40.689510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060043, 39.015919, 40.445908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186907, 0.686513, 0.702685,
		0.921329, 0.125723, -0.367894,
		-0.340908, 0.716166, -0.609006,
		36.957771, 39.230770, 40.263206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652332, 39.365341, 40.775002>,  <37.196407, 38.729454, 40.689510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652332, 39.365341, 40.775002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.290920, 39.491222, 40.658661>,  <37.074074, 39.566750, 40.588856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.290920, 39.491222, 40.658661>,  <37.652332, 39.365341, 40.775002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290920, 39.491222, 40.658661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030459, 0.629843, 0.776125,
		0.427439, 0.710112, -0.559497,
		-0.903531, 0.314704, -0.290849,
		37.019859, 39.585632, 40.571407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752247, 40.086678, 40.823944>,  <37.652332, 39.365341, 40.775002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752247, 40.086678, 40.823944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.354378, 40.046848, 40.813232>,  <37.115658, 40.022949, 40.806805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.354378, 40.046848, 40.813232>,  <37.752247, 40.086678, 40.823944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354378, 40.046848, 40.813232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078820, 0.566830, 0.820055,
		-0.066477, 0.817795, -0.571657,
		-0.994670, -0.099573, -0.026778,
		37.055977, 40.016975, 40.805199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382404, 40.832451, 40.865143>,  <37.752247, 40.086678, 40.823944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382404, 40.832451, 40.865143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.144268, 40.538368, 40.994781>,  <37.001385, 40.361919, 41.072563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.144268, 40.538368, 40.994781>,  <37.382404, 40.832451, 40.865143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144268, 40.538368, 40.994781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145019, 0.495070, 0.856666,
		-0.790278, 0.463007, -0.401354,
		-0.595340, -0.735208, 0.324098,
		36.965668, 40.317806, 41.092010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925770, 41.180481, 41.251644>,  <37.382404, 40.832451, 40.865143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925770, 41.180481, 41.251644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.849510, 40.808926, 41.378654>,  <36.803757, 40.585991, 41.454861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.849510, 40.808926, 41.378654>,  <36.925770, 41.180481, 41.251644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849510, 40.808926, 41.378654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208768, 0.354424, 0.911482,
		-0.959203, 0.107481, -0.261492,
		-0.190646, -0.928887, 0.317526,
		36.792316, 40.530258, 41.473911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289715, 41.239300, 41.609493>,  <36.925770, 41.180481, 41.251644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289715, 41.239300, 41.609493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.469994, 40.913620, 41.755890>,  <36.578159, 40.718212, 41.843727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.469994, 40.913620, 41.755890>,  <36.289715, 41.239300, 41.609493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469994, 40.913620, 41.755890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116958, 0.352598, 0.928437,
		-0.884982, -0.461250, 0.063688,
		0.450698, -0.814201, 0.365990,
		36.605202, 40.669361, 41.865688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864876, 41.023781, 42.179897>,  <36.289715, 41.239300, 41.609493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864876, 41.023781, 42.179897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.215012, 40.843090, 42.248863>,  <36.425095, 40.734676, 42.290245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.215012, 40.843090, 42.248863>,  <35.864876, 41.023781, 42.179897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215012, 40.843090, 42.248863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103476, 0.173318, 0.979415,
		-0.472309, -0.875161, 0.104970,
		0.875339, -0.451724, 0.172418,
		36.477612, 40.707573, 42.300591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775803, 40.464146, 42.720680>,  <35.864876, 41.023781, 42.179897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775803, 40.464146, 42.720680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165504, 40.552197, 42.740147>,  <36.399326, 40.605026, 42.751827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165504, 40.552197, 42.740147>,  <35.775803, 40.464146, 42.720680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165504, 40.552197, 42.740147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066854, 0.075931, 0.994869,
		0.215302, -0.972512, 0.088692,
		0.974256, 0.220127, 0.048668,
		36.457783, 40.618233, 42.754745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836857, 40.152840, 43.334770>,  <35.775803, 40.464146, 42.720680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836857, 40.152840, 43.334770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.181667, 40.338531, 43.253376>,  <36.388554, 40.449947, 43.204540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.181667, 40.338531, 43.253376>,  <35.836857, 40.152840, 43.334770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181667, 40.338531, 43.253376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192489, 0.071548, 0.978687,
		0.468896, -0.882819, -0.027683,
		0.862024, 0.464231, -0.203482,
		36.440273, 40.477802, 43.192333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367817, 39.729687, 43.673496>,  <35.836857, 40.152840, 43.334770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367817, 39.729687, 43.673496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438721, 40.121487, 43.635227>,  <36.481262, 40.356567, 43.612267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.438721, 40.121487, 43.635227>,  <36.367817, 39.729687, 43.673496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438721, 40.121487, 43.635227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051215, 0.087903, 0.994812,
		0.982832, -0.181235, -0.034584,
		0.177255, 0.979503, -0.095675,
		36.491898, 40.415337, 43.606525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888584, 39.918900, 44.195892>,  <36.367817, 39.729687, 43.673496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888584, 39.918900, 44.195892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.705963, 40.267559, 44.124573>,  <36.596390, 40.476753, 44.081779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.705963, 40.267559, 44.124573>,  <36.888584, 39.918900, 44.195892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705963, 40.267559, 44.124573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060221, 0.169671, 0.983659,
		0.887655, 0.459832, -0.024973,
		-0.456555, 0.871646, -0.178301,
		36.568996, 40.529053, 44.071083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151810, 40.400059, 44.641109>,  <36.888584, 39.918900, 44.195892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151810, 40.400059, 44.641109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.808403, 40.582172, 44.546730>,  <36.602360, 40.691441, 44.490101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.808403, 40.582172, 44.546730>,  <37.151810, 40.400059, 44.641109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808403, 40.582172, 44.546730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101130, 0.300769, 0.948320,
		0.502718, 0.838008, -0.212172,
		-0.858515, 0.455281, -0.235949,
		36.550850, 40.718758, 44.475945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906872, 40.527988, 44.479832>,  <37.151810, 40.400059, 44.641109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906872, 40.527988, 44.479832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.290226, 40.525425, 44.593994>,  <38.520237, 40.523888, 44.662491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.290226, 40.525425, 44.593994>,  <37.906872, 40.527988, 44.479832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290226, 40.525425, 44.593994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245683, -0.490623, -0.836020,
		0.145384, 0.871348, -0.468632,
		0.958386, -0.006409, 0.285404,
		38.577744, 40.523502, 44.679615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309959, 40.702053, 43.911201>,  <37.906872, 40.527988, 44.479832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309959, 40.702053, 43.911201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574776, 40.512970, 44.143841>,  <38.733665, 40.399521, 44.283424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.574776, 40.512970, 44.143841>,  <38.309959, 40.702053, 43.911201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574776, 40.512970, 44.143841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239249, -0.602111, -0.761723,
		0.710258, 0.643436, -0.285525,
		0.662038, -0.472708, 0.581596,
		38.773388, 40.371159, 44.318321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976757, 40.633610, 43.558842>,  <38.309959, 40.702053, 43.911201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976757, 40.633610, 43.558842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.972485, 40.349239, 43.840115>,  <38.969921, 40.178616, 44.008877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.972485, 40.349239, 43.840115>,  <38.976757, 40.633610, 43.558842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972485, 40.349239, 43.840115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214563, -0.688472, -0.692798,
		0.976652, 0.143475, 0.159895,
		-0.010684, -0.710930, 0.703181,
		38.969280, 40.135960, 44.051067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512058, 40.246170, 43.393509>,  <38.976757, 40.633610, 43.558842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512058, 40.246170, 43.393509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.298542, 40.017136, 43.642414>,  <39.170433, 39.879715, 43.791759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.298542, 40.017136, 43.642414>,  <39.512058, 40.246170, 43.393509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298542, 40.017136, 43.642414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186756, -0.797528, -0.573647,
		0.824734, -0.189997, 0.532649,
		-0.533794, -0.572582, 0.622265,
		39.138405, 39.845360, 43.829094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865528, 39.672932, 43.443459>,  <39.512058, 40.246170, 43.393509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865528, 39.672932, 43.443459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.515594, 39.535007, 43.579552>,  <39.305634, 39.452251, 43.661209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.515594, 39.535007, 43.579552>,  <39.865528, 39.672932, 43.443459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515594, 39.535007, 43.579552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132437, -0.845857, -0.516707,
		0.465959, -0.406976, 0.785654,
		-0.874838, -0.344814, 0.340237,
		39.253143, 39.431564, 43.681622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945751, 39.019032, 43.724957>,  <39.865528, 39.672932, 43.443459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945751, 39.019032, 43.724957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.552155, 38.998901, 43.656574>,  <39.315998, 38.986824, 43.615543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.552155, 38.998901, 43.656574>,  <39.945751, 39.019032, 43.724957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552155, 38.998901, 43.656574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159424, -0.677286, -0.718239,
		-0.079641, -0.733996, 0.674468,
		-0.983993, -0.050326, -0.170956,
		39.256958, 38.983803, 43.605286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698895, 38.307991, 43.646263>,  <39.945751, 39.019032, 43.724957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698895, 38.307991, 43.646263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.400700, 38.522259, 43.487617>,  <39.221783, 38.650818, 43.392429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.400700, 38.522259, 43.487617>,  <39.698895, 38.307991, 43.646263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400700, 38.522259, 43.487617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094597, -0.674071, -0.732584,
		-0.659758, -0.508624, 0.553192,
		-0.745500, 0.535658, -0.396609,
		39.177052, 38.682957, 43.368633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014053, 37.943062, 43.590816>,  <39.698895, 38.307991, 43.646263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014053, 37.943062, 43.590816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.966415, 38.218079, 43.304291>,  <38.937832, 38.383087, 43.132374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.966415, 38.218079, 43.304291>,  <39.014053, 37.943062, 43.590816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966415, 38.218079, 43.304291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033787, -0.723838, -0.689142,
		-0.992308, -0.057869, 0.109433,
		-0.119092, 0.687539, -0.716315,
		38.930687, 38.424339, 43.089397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478447, 37.752853, 43.119057>,  <39.014053, 37.943062, 43.590816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478447, 37.752853, 43.119057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689304, 38.032108, 42.925266>,  <38.815819, 38.199661, 42.808990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689304, 38.032108, 42.925266>,  <38.478447, 37.752853, 43.119057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689304, 38.032108, 42.925266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084925, -0.523989, -0.847481,
		-0.845523, 0.487887, -0.216926,
		0.527141, 0.698142, -0.484479,
		38.847446, 38.241550, 42.779922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157562, 37.793121, 42.534382>,  <38.478447, 37.752853, 43.119057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157562, 37.793121, 42.534382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517761, 37.950867, 42.461082>,  <38.733883, 38.045513, 42.417103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.517761, 37.950867, 42.461082>,  <38.157562, 37.793121, 42.534382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517761, 37.950867, 42.461082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016218, -0.390644, -0.920399,
		-0.434553, 0.831791, -0.345379,
		0.900500, 0.394361, -0.183246,
		38.787910, 38.069176, 42.406109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184666, 38.152565, 41.845573>,  <38.157562, 37.793121, 42.534382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184666, 38.152565, 41.845573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.561974, 38.069088, 41.948875>,  <38.788357, 38.019001, 42.010857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.561974, 38.069088, 41.948875>,  <38.184666, 38.152565, 41.845573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561974, 38.069088, 41.948875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119196, -0.513111, -0.850005,
		0.309901, 0.832565, -0.459126,
		0.943268, -0.208692, 0.258252,
		38.844955, 38.006481, 42.026352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626480, 38.410069, 41.301487>,  <38.184666, 38.152565, 41.845573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626480, 38.410069, 41.301487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.842953, 38.129951, 41.487694>,  <38.972836, 37.961880, 41.599419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.842953, 38.129951, 41.487694>,  <38.626480, 38.410069, 41.301487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842953, 38.129951, 41.487694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201713, -0.429322, -0.880337,
		0.816357, 0.570321, -0.091081,
		0.541178, -0.700297, 0.465522,
		39.005306, 37.919861, 41.627350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318333, 38.295185, 40.966400>,  <38.626480, 38.410069, 41.301487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318333, 38.295185, 40.966400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.254116, 37.955379, 41.167416>,  <39.215588, 37.751495, 41.288025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.254116, 37.955379, 41.167416>,  <39.318333, 38.295185, 40.966400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254116, 37.955379, 41.167416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325734, -0.526218, -0.785488,
		0.931732, 0.037593, 0.361196,
		-0.160539, -0.849518, 0.502539,
		39.205956, 37.700523, 41.318176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019405, 37.987995, 40.955830>,  <39.318333, 38.295185, 40.966400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019405, 37.987995, 40.955830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782360, 37.672474, 41.021061>,  <39.640133, 37.483162, 41.060200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782360, 37.672474, 41.021061>,  <40.019405, 37.987995, 40.955830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782360, 37.672474, 41.021061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330810, -0.422943, -0.843614,
		0.734421, -0.445988, 0.511586,
		-0.592613, -0.788806, 0.163081,
		39.604576, 37.435833, 41.069984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.207253, 34.489914, 42.850304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.894547, 34.737637, 42.879417>,  <25.706923, 34.886272, 42.896885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.894547, 34.737637, 42.879417>,  <26.207253, 34.489914, 42.850304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894547, 34.737637, 42.879417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091996, 0.229985, -0.968836,
		-0.616748, -0.750708, -0.236768,
		-0.781766, 0.619310, 0.072781,
		25.660017, 34.923431, 42.901253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688095, 34.371574, 42.265747>,  <26.207253, 34.489914, 42.850304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688095, 34.371574, 42.265747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.631384, 34.741558, 42.406803>,  <25.597357, 34.963547, 42.491436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.631384, 34.741558, 42.406803>,  <25.688095, 34.371574, 42.265747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631384, 34.741558, 42.406803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172939, 0.373902, -0.911202,
		-0.974675, -0.068205, -0.212973,
		-0.141779, 0.924957, 0.352638,
		25.588850, 35.019047, 42.512596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174900, 34.678150, 41.840172>,  <25.688095, 34.371574, 42.265747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174900, 34.678150, 41.840172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.313644, 35.011292, 42.012703>,  <25.396891, 35.211174, 42.116222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.313644, 35.011292, 42.012703>,  <25.174900, 34.678150, 41.840172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313644, 35.011292, 42.012703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080383, 0.431794, -0.898383,
		-0.934466, 0.346285, 0.082825,
		0.346860, 0.832851, 0.431332,
		25.417702, 35.261147, 42.142101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872463, 35.217800, 41.404522>,  <25.174900, 34.678150, 41.840172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872463, 35.217800, 41.404522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.175230, 35.406017, 41.585922>,  <25.356890, 35.518948, 41.694763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.175230, 35.406017, 41.585922>,  <24.872463, 35.217800, 41.404522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.175230, 35.406017, 41.585922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112557, 0.589705, -0.799737,
		-0.643745, 0.656379, 0.393395,
		0.756917, 0.470547, 0.453499,
		25.402306, 35.547180, 41.721973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737917, 35.965897, 41.289661>,  <24.872463, 35.217800, 41.404522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737917, 35.965897, 41.289661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.122093, 35.886372, 41.367661>,  <25.352600, 35.838657, 41.414459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.122093, 35.886372, 41.367661>,  <24.737917, 35.965897, 41.289661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122093, 35.886372, 41.367661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261462, 0.402790, -0.877153,
		0.095849, 0.893439, 0.438839,
		0.960443, -0.198814, 0.194993,
		25.410227, 35.826729, 41.426159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.065092, 36.561630, 40.982620>,  <24.737917, 35.965897, 41.289661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.065092, 36.561630, 40.982620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.368824, 36.305450, 41.028645>,  <25.551064, 36.151741, 41.056259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.368824, 36.305450, 41.028645>,  <25.065092, 36.561630, 40.982620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368824, 36.305450, 41.028645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353971, 0.258181, -0.898914,
		0.546006, 0.723300, 0.422746,
		0.759330, -0.640452, 0.115059,
		25.596622, 36.113316, 41.063164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.621553, 36.887177, 40.781464>,  <25.065092, 36.561630, 40.982620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.621553, 36.887177, 40.781464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.725142, 36.501194, 40.764530>,  <25.787294, 36.269604, 40.754372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.725142, 36.501194, 40.764530>,  <25.621553, 36.887177, 40.781464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725142, 36.501194, 40.764530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309164, 0.124336, -0.942846,
		0.915069, 0.231081, 0.330529,
		0.258970, -0.964957, -0.042334,
		25.802832, 36.211708, 40.751831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217497, 36.932415, 40.485718>,  <25.621553, 36.887177, 40.781464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217497, 36.932415, 40.485718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.122564, 36.548904, 40.423210>,  <26.065605, 36.318798, 40.385708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.122564, 36.548904, 40.423210>,  <26.217497, 36.932415, 40.485718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122564, 36.548904, 40.423210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261131, 0.091976, -0.960912,
		0.935674, -0.268860, 0.228537,
		-0.237331, -0.958778, -0.156267,
		26.051365, 36.261272, 40.376331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836039, 36.620342, 40.140266>,  <26.217497, 36.932415, 40.485718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836039, 36.620342, 40.140266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527870, 36.376144, 40.066780>,  <26.342970, 36.229626, 40.022690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527870, 36.376144, 40.066780>,  <26.836039, 36.620342, 40.140266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527870, 36.376144, 40.066780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254674, -0.030532, -0.966545,
		0.584462, -0.791431, 0.179000,
		-0.770419, -0.610495, -0.183712,
		26.296745, 36.192997, 40.011665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052914, 36.055756, 39.637749>,  <26.836039, 36.620342, 40.140266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052914, 36.055756, 39.637749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.654779, 36.046219, 39.600353>,  <26.415899, 36.040497, 39.577915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.654779, 36.046219, 39.600353>,  <27.052914, 36.055756, 39.637749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654779, 36.046219, 39.600353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095877, -0.136036, -0.986054,
		0.010798, -0.990417, 0.137688,
		-0.995335, -0.023848, -0.093489,
		26.356178, 36.039066, 39.572308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952581, 35.462662, 39.225876>,  <27.052914, 36.055756, 39.637749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952581, 35.462662, 39.225876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.627617, 35.692520, 39.186352>,  <26.432638, 35.830437, 39.162636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.627617, 35.692520, 39.186352>,  <26.952581, 35.462662, 39.225876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627617, 35.692520, 39.186352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049592, -0.236952, -0.970255,
		-0.580971, -0.783346, 0.221001,
		-0.812412, 0.574650, -0.098814,
		26.383894, 35.864914, 39.156708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.400713, 35.106308, 38.869823>,  <26.952581, 35.462662, 39.225876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.400713, 35.106308, 38.869823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.322189, 35.493080, 38.804707>,  <26.275076, 35.725143, 38.765636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.322189, 35.493080, 38.804707>,  <26.400713, 35.106308, 38.869823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322189, 35.493080, 38.804707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039488, -0.158088, -0.986635,
		-0.979747, -0.200112, -0.007148,
		-0.196307, 0.966935, -0.162788,
		26.263298, 35.783161, 38.755871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905975, 35.130497, 38.348824>,  <26.400713, 35.106308, 38.869823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905975, 35.130497, 38.348824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.043221, 35.504753, 38.315704>,  <26.125568, 35.729305, 38.295834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.043221, 35.504753, 38.315704>,  <25.905975, 35.130497, 38.348824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.043221, 35.504753, 38.315704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096471, -0.122787, -0.987733,
		-0.934326, 0.330918, -0.132392,
		0.343115, 0.935637, -0.082799,
		26.146154, 35.785442, 38.290863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522285, 35.439476, 37.787441>,  <25.905975, 35.130497, 38.348824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522285, 35.439476, 37.787441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.857275, 35.653355, 37.832581>,  <26.058270, 35.781681, 37.859665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.857275, 35.653355, 37.832581>,  <25.522285, 35.439476, 37.787441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857275, 35.653355, 37.832581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057275, 0.119474, -0.991184,
		-0.543468, 0.836554, 0.069431,
		0.837474, 0.534700, 0.112844,
		26.108517, 35.813766, 37.866432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482752, 35.901913, 37.220222>,  <25.522285, 35.439476, 37.787441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482752, 35.901913, 37.220222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.865747, 35.954185, 37.323093>,  <26.095545, 35.985550, 37.384815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.865747, 35.954185, 37.323093>,  <25.482752, 35.901913, 37.220222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.865747, 35.954185, 37.323093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245272, 0.100503, -0.964231,
		-0.151858, 0.986317, 0.064176,
		0.957487, 0.130686, 0.257178,
		26.152994, 35.993393, 37.400246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.669605, 36.455112, 36.835499>,  <25.482752, 35.901913, 37.220222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.669605, 36.455112, 36.835499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.990246, 36.246719, 36.952812>,  <26.182631, 36.121685, 37.023201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.990246, 36.246719, 36.952812>,  <25.669605, 36.455112, 36.835499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990246, 36.246719, 36.952812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381315, 0.067686, -0.921964,
		0.460474, 0.850881, 0.252915,
		0.801600, -0.520981, 0.293286,
		26.230726, 36.090424, 37.040798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309237, 36.837185, 36.694984>,  <25.669605, 36.455112, 36.835499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309237, 36.837185, 36.694984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383984, 36.444233, 36.695923>,  <26.428831, 36.208462, 36.696487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383984, 36.444233, 36.695923>,  <26.309237, 36.837185, 36.694984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383984, 36.444233, 36.695923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426422, 0.078959, -0.901072,
		0.885012, 0.169382, 0.433664,
		0.186867, -0.982383, 0.002348,
		26.440044, 36.149517, 36.696629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894485, 36.809620, 36.447796>,  <26.309237, 36.837185, 36.694984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894485, 36.809620, 36.447796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.800688, 36.425323, 36.388489>,  <26.744410, 36.194744, 36.352905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.800688, 36.425323, 36.388489>,  <26.894485, 36.809620, 36.447796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800688, 36.425323, 36.388489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550776, -0.005621, -0.834635,
		0.801036, -0.277381, 0.530472,
		-0.234493, -0.960744, -0.148272,
		26.730339, 36.137100, 36.344006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457226, 36.520504, 36.187820>,  <26.894485, 36.809620, 36.447796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457226, 36.520504, 36.187820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.216246, 36.217171, 36.088238>,  <27.071657, 36.035172, 36.028488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.216246, 36.217171, 36.088238>,  <27.457226, 36.520504, 36.187820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216246, 36.217171, 36.088238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336123, 0.041852, -0.940888,
		0.723929, -0.650519, 0.229681,
		-0.602452, -0.758336, -0.248952,
		27.035509, 35.989670, 36.013554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914713, 35.965282, 35.858379>,  <27.457226, 36.520504, 36.187820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914713, 35.965282, 35.858379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.534973, 35.909321, 35.745838>,  <27.307129, 35.875744, 35.678314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.534973, 35.909321, 35.745838>,  <27.914713, 35.965282, 35.858379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534973, 35.909321, 35.745838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291739, -0.059896, -0.954621,
		0.116704, -0.988352, 0.097678,
		-0.949352, -0.139904, -0.281351,
		27.250168, 35.867352, 35.661434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008793, 35.460495, 35.466377>,  <27.914713, 35.965282, 35.858379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008793, 35.460495, 35.466377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.666063, 35.631718, 35.351402>,  <27.460426, 35.734451, 35.282417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.666063, 35.631718, 35.351402>,  <28.008793, 35.460495, 35.466377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666063, 35.631718, 35.351402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274948, -0.092276, -0.957021,
		-0.436187, -0.899027, -0.038630,
		-0.856822, 0.428061, -0.287435,
		27.409016, 35.760136, 35.265171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236927, 34.737576, 35.190758>,  <28.008793, 35.460495, 35.466377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236927, 34.737576, 35.190758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535370, 34.814644, 35.445694>,  <28.714436, 34.860886, 35.598656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.535370, 34.814644, 35.445694>,  <28.236927, 34.737576, 35.190758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535370, 34.814644, 35.445694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515643, -0.438370, 0.736169,
		0.421229, -0.877900, -0.227722,
		0.746109, 0.192673, 0.637337,
		28.759203, 34.872444, 35.636894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562281, 34.127979, 35.350220>,  <28.236927, 34.737576, 35.190758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562281, 34.127979, 35.350220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.608194, 34.385418, 35.652905>,  <28.635742, 34.539879, 35.834515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.608194, 34.385418, 35.652905>,  <28.562281, 34.127979, 35.350220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608194, 34.385418, 35.652905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473496, -0.634199, 0.611222,
		0.873284, -0.428459, 0.231943,
		0.114786, 0.643595, 0.756710,
		28.642630, 34.578495, 35.879917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673777, 33.685905, 35.872856>,  <28.562281, 34.127979, 35.350220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673777, 33.685905, 35.872856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.646505, 34.021107, 36.089417>,  <28.630142, 34.222225, 36.219353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.646505, 34.021107, 36.089417>,  <28.673777, 33.685905, 35.872856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646505, 34.021107, 36.089417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423683, -0.515615, 0.744737,
		0.903241, -0.178605, 0.390200,
		-0.068179, 0.837999, 0.541396,
		28.626051, 34.272507, 36.251835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116293, 33.611275, 36.417645>,  <28.673777, 33.685905, 35.872856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116293, 33.611275, 36.417645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858168, 33.886177, 36.551060>,  <28.703293, 34.051117, 36.631111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858168, 33.886177, 36.551060>,  <29.116293, 33.611275, 36.417645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858168, 33.886177, 36.551060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053889, -0.476488, 0.877528,
		0.762014, 0.548307, 0.344519,
		-0.645314, 0.687255, 0.333543,
		28.664574, 34.092354, 36.651123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307444, 33.779259, 37.140182>,  <29.116293, 33.611275, 36.417645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307444, 33.779259, 37.140182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.931751, 33.916355, 37.147900>,  <28.706335, 33.998611, 37.152531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.931751, 33.916355, 37.147900>,  <29.307444, 33.779259, 37.140182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931751, 33.916355, 37.147900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134521, -0.419174, 0.897885,
		0.315829, 0.840727, 0.439807,
		-0.939232, 0.342741, 0.019292,
		28.649982, 34.019176, 37.153687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230288, 34.152328, 37.757248>,  <29.307444, 33.779259, 37.140182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230288, 34.152328, 37.757248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855595, 34.060287, 37.651737>,  <28.630779, 34.005062, 37.588428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.855595, 34.060287, 37.651737>,  <29.230288, 34.152328, 37.757248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855595, 34.060287, 37.651737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229601, -0.164912, 0.959212,
		-0.264220, 0.959091, 0.101647,
		-0.936734, -0.230105, -0.263781,
		28.574574, 33.991257, 37.572601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821068, 34.481258, 38.182018>,  <29.230288, 34.152328, 37.757248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821068, 34.481258, 38.182018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585667, 34.186470, 38.049030>,  <28.444426, 34.009598, 37.969238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585667, 34.186470, 38.049030>,  <28.821068, 34.481258, 38.182018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585667, 34.186470, 38.049030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284760, -0.195933, 0.938361,
		-0.756687, 0.646903, -0.094553,
		-0.588503, -0.736971, -0.332472,
		28.409117, 33.965378, 37.949287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135925, 34.505722, 38.513317>,  <28.821068, 34.481258, 38.182018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135925, 34.505722, 38.513317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120956, 34.131744, 38.372185>,  <28.111975, 33.907360, 38.287506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120956, 34.131744, 38.372185>,  <28.135925, 34.505722, 38.513317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120956, 34.131744, 38.372185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207233, -0.338138, 0.917996,
		-0.977575, 0.107471, -0.181097,
		-0.037422, -0.934940, -0.352827,
		28.109730, 33.851261, 38.266338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416023, 34.222885, 38.546391>,  <28.135925, 34.505722, 38.513317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416023, 34.222885, 38.546391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685762, 33.927567, 38.541054>,  <27.847605, 33.750378, 38.537853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.685762, 33.927567, 38.541054>,  <27.416023, 34.222885, 38.546391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685762, 33.927567, 38.541054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301609, -0.291883, 0.907654,
		-0.674010, -0.608051, -0.419506,
		0.674346, -0.738295, -0.013338,
		27.888067, 33.706078, 38.537052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042797, 33.612991, 38.827694>,  <27.416023, 34.222885, 38.546391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042797, 33.612991, 38.827694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.419708, 33.484947, 38.866974>,  <27.645855, 33.408123, 38.890541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.419708, 33.484947, 38.866974>,  <27.042797, 33.612991, 38.827694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419708, 33.484947, 38.866974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204348, -0.317472, 0.925988,
		-0.265240, -0.892605, -0.364560,
		0.942279, -0.320106, 0.098196,
		27.702393, 33.388916, 38.896431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983597, 33.049503, 39.173561>,  <27.042797, 33.612991, 38.827694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983597, 33.049503, 39.173561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.370905, 33.128517, 39.234795>,  <27.603291, 33.175926, 39.271534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.370905, 33.128517, 39.234795>,  <26.983597, 33.049503, 39.173561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370905, 33.128517, 39.234795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078564, -0.340912, 0.936807,
		0.237237, -0.919109, -0.314576,
		0.968270, 0.197531, 0.153086,
		27.661386, 33.187775, 39.280720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347097, 32.415836, 39.445686>,  <26.983597, 33.049503, 39.173561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347097, 32.415836, 39.445686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581188, 32.727486, 39.535545>,  <27.721643, 32.914474, 39.589462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581188, 32.727486, 39.535545>,  <27.347097, 32.415836, 39.445686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581188, 32.727486, 39.535545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118310, -0.356129, 0.926917,
		0.802191, -0.515881, -0.300595,
		0.585229, 0.779127, 0.224649,
		27.756758, 32.961224, 39.602940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882711, 32.094475, 39.754292>,  <27.347097, 32.415836, 39.445686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882711, 32.094475, 39.754292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.908964, 32.474766, 39.875488>,  <27.924717, 32.702942, 39.948208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.908964, 32.474766, 39.875488>,  <27.882711, 32.094475, 39.754292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908964, 32.474766, 39.875488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138870, -0.309397, 0.940738,
		0.988133, -0.019667, -0.152334,
		0.065633, 0.950729, 0.302995,
		27.928654, 32.759983, 39.966385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473543, 32.068710, 40.106812>,  <27.882711, 32.094475, 39.754292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473543, 32.068710, 40.106812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214849, 32.347675, 40.230331>,  <28.059633, 32.515053, 40.304443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.214849, 32.347675, 40.230331>,  <28.473543, 32.068710, 40.106812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214849, 32.347675, 40.230331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084364, -0.336971, 0.937728,
		0.758036, 0.632511, 0.159094,
		-0.646734, 0.697409, 0.308797,
		28.020830, 32.556900, 40.322971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579885, 32.044975, 40.852848>,  <28.473543, 32.068710, 40.106812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579885, 32.044975, 40.852848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262426, 32.286556, 40.823540>,  <28.071951, 32.431503, 40.805954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.262426, 32.286556, 40.823540>,  <28.579885, 32.044975, 40.852848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262426, 32.286556, 40.823540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233640, -0.191365, 0.953306,
		0.561727, 0.773708, 0.292983,
		-0.793647, 0.603950, -0.073274,
		28.024332, 32.467743, 40.801556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605429, 32.492168, 41.404930>,  <28.579885, 32.044975, 40.852848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605429, 32.492168, 41.404930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225002, 32.485229, 41.281532>,  <27.996746, 32.481068, 41.207493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.225002, 32.485229, 41.281532>,  <28.605429, 32.492168, 41.404930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225002, 32.485229, 41.281532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287200, -0.318619, 0.903326,
		-0.113959, 0.947724, 0.298047,
		-0.951068, -0.017343, -0.308495,
		27.939682, 32.480026, 41.188984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215338, 32.996937, 41.789516>,  <28.605429, 32.492168, 41.404930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215338, 32.996937, 41.789516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967899, 32.720112, 41.640713>,  <27.819437, 32.554016, 41.551430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967899, 32.720112, 41.640713>,  <28.215338, 32.996937, 41.789516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967899, 32.720112, 41.640713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272292, -0.255301, 0.927728,
		-0.737018, 0.675184, -0.030514,
		-0.618597, -0.692061, -0.372008,
		27.782320, 32.512493, 41.529110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560347, 33.071770, 42.082878>,  <28.215338, 32.996937, 41.789516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560347, 33.071770, 42.082878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.524456, 32.700821, 41.937584>,  <27.502922, 32.478252, 41.850407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.524456, 32.700821, 41.937584>,  <27.560347, 33.071770, 42.082878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524456, 32.700821, 41.937584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416240, -0.296410, 0.859585,
		-0.904817, 0.228322, -0.359411,
		-0.089729, -0.927367, -0.363233,
		27.497538, 32.422611, 41.828613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770473, 32.829212, 42.028908>,  <27.560347, 33.071770, 42.082878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770473, 32.829212, 42.028908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.006361, 32.506592, 42.045460>,  <27.147894, 32.313019, 42.055393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.006361, 32.506592, 42.045460>,  <26.770473, 32.829212, 42.028908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006361, 32.506592, 42.045460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579143, -0.386626, 0.717714,
		-0.562870, -0.447217, -0.695107,
		0.589720, -0.806547, 0.041382,
		27.183277, 32.264629, 42.057873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644913, 32.109299, 41.753510>,  <26.770473, 32.829212, 42.028908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644913, 32.109299, 41.753510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.895491, 32.076130, 42.063526>,  <27.045837, 32.056229, 42.249535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.895491, 32.076130, 42.063526>,  <26.644913, 32.109299, 41.753510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895491, 32.076130, 42.063526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778298, -0.120950, 0.616135,
		0.042652, -0.989189, -0.140304,
		0.626445, -0.082919, 0.775044,
		27.083424, 32.051254, 42.296040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398455, 31.607683, 42.266861>,  <26.644913, 32.109299, 41.753510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398455, 31.607683, 42.266861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.647430, 31.800770, 42.513294>,  <26.796816, 31.916622, 42.661152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.647430, 31.800770, 42.513294>,  <26.398455, 31.607683, 42.266861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647430, 31.800770, 42.513294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700222, -0.008202, 0.713877,
		0.349656, -0.875736, 0.332906,
		0.622438, 0.482720, 0.616078,
		26.834162, 31.945585, 42.698116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.396770, 37.339340, 47.355473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031906, 37.176807, 47.376858>,  <38.812988, 37.079288, 47.389690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031906, 37.176807, 47.376858>,  <39.396770, 37.339340, 47.355473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031906, 37.176807, 47.376858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242313, 0.639918, 0.729239,
		-0.330528, 0.652226, -0.682167,
		-0.912160, -0.406332, 0.053468,
		38.758259, 37.054909, 47.392899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994328, 37.940838, 47.512840>,  <39.396770, 37.339340, 47.355473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994328, 37.940838, 47.512840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.764206, 37.620712, 47.580399>,  <38.626133, 37.428638, 47.620934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.764206, 37.620712, 47.580399>,  <38.994328, 37.940838, 47.512840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764206, 37.620712, 47.580399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452488, 0.483417, 0.749375,
		-0.681383, 0.354693, -0.640243,
		-0.575302, -0.800313, 0.168898,
		38.591614, 37.380619, 47.631069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264755, 38.123943, 47.450901>,  <38.994328, 37.940838, 47.512840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264755, 38.123943, 47.450901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295235, 37.812038, 47.699471>,  <38.313522, 37.624897, 47.848610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.295235, 37.812038, 47.699471>,  <38.264755, 38.123943, 47.450901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295235, 37.812038, 47.699471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392690, 0.549394, 0.737537,
		-0.916509, -0.300225, -0.264342,
		0.076199, -0.779764, 0.621420,
		38.318096, 37.578110, 47.885895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653156, 37.944336, 47.801601>,  <38.264755, 38.123943, 47.450901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653156, 37.944336, 47.801601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937016, 37.813618, 48.051273>,  <38.107330, 37.735188, 48.201077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.937016, 37.813618, 48.051273>,  <37.653156, 37.944336, 47.801601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937016, 37.813618, 48.051273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452795, 0.467208, 0.759403,
		-0.539792, -0.821536, 0.183582,
		0.709648, -0.326794, 0.624183,
		38.149910, 37.715580, 48.238529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270645, 37.724354, 48.451077>,  <37.653156, 37.944336, 47.801601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270645, 37.724354, 48.451077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.649204, 37.783321, 48.566044>,  <37.876339, 37.818703, 48.635025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.649204, 37.783321, 48.566044>,  <37.270645, 37.724354, 48.451077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649204, 37.783321, 48.566044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322425, 0.484862, 0.812989,
		-0.019511, -0.862078, 0.506401,
		0.946394, 0.147414, 0.287416,
		37.933121, 37.827545, 48.652267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254585, 37.701996, 49.177658>,  <37.270645, 37.724354, 48.451077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254585, 37.701996, 49.177658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.615570, 37.866959, 49.127903>,  <37.832161, 37.965939, 49.098049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.615570, 37.866959, 49.127903>,  <37.254585, 37.701996, 49.177658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615570, 37.866959, 49.127903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162403, 0.593208, 0.788498,
		0.398973, -0.691392, 0.602327,
		0.902467, 0.412409, -0.124390,
		37.886311, 37.990681, 49.090588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619583, 37.604881, 49.804642>,  <37.254585, 37.701996, 49.177658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619583, 37.604881, 49.804642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.793793, 37.924614, 49.639042>,  <37.898319, 38.116451, 49.539680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.793793, 37.924614, 49.639042>,  <37.619583, 37.604881, 49.804642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793793, 37.924614, 49.639042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050861, 0.481023, 0.875232,
		0.898741, -0.360125, 0.250150,
		0.435520, 0.799329, -0.413998,
		37.924450, 38.164413, 49.514843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131954, 37.863255, 50.299583>,  <37.619583, 37.604881, 49.804642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131954, 37.863255, 50.299583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085293, 38.183754, 50.064842>,  <38.057297, 38.376053, 49.924000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085293, 38.183754, 50.064842>,  <38.131954, 37.863255, 50.299583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085293, 38.183754, 50.064842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120269, 0.575138, 0.809168,
		0.985864, 0.164970, 0.029275,
		-0.116651, 0.801250, -0.586848,
		38.050297, 38.424129, 49.888786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644985, 38.330067, 50.566269>,  <38.131954, 37.863255, 50.299583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644985, 38.330067, 50.566269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.384933, 38.536381, 50.343094>,  <38.228905, 38.660172, 50.209187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.384933, 38.536381, 50.343094>,  <38.644985, 38.330067, 50.566269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384933, 38.536381, 50.343094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136738, 0.642890, 0.753654,
		0.747421, 0.566262, -0.347432,
		-0.650127, 0.515790, -0.557939,
		38.189896, 38.691116, 50.175713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921284, 39.026119, 50.687798>,  <38.644985, 38.330067, 50.566269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921284, 39.026119, 50.687798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.542950, 39.078907, 50.569149>,  <38.315948, 39.110580, 50.497959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.542950, 39.078907, 50.569149>,  <38.921284, 39.026119, 50.687798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542950, 39.078907, 50.569149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119654, 0.707645, 0.696363,
		0.301801, 0.694135, -0.653523,
		-0.945832, 0.131967, -0.296624,
		38.259201, 39.118496, 50.480164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693489, 39.764931, 50.548275>,  <38.921284, 39.026119, 50.687798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693489, 39.764931, 50.548275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.343700, 39.577694, 50.599174>,  <38.133827, 39.465351, 50.629715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.343700, 39.577694, 50.599174>,  <38.693489, 39.764931, 50.548275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343700, 39.577694, 50.599174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226152, 0.625480, 0.746746,
		-0.429137, 0.624230, -0.652824,
		-0.874469, -0.468094, 0.127246,
		38.081360, 39.437267, 50.637348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197994, 40.206383, 50.496117>,  <38.693489, 39.764931, 50.548275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197994, 40.206383, 50.496117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015293, 39.921783, 50.709713>,  <37.905674, 39.751022, 50.837872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.015293, 39.921783, 50.709713>,  <38.197994, 40.206383, 50.496117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015293, 39.921783, 50.709713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314165, 0.690594, 0.651445,
		-0.832275, 0.129786, -0.538957,
		-0.456749, -0.711502, 0.533990,
		37.878269, 39.708332, 50.869911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256920, 40.739925, 49.982635>,  <38.197994, 40.206383, 50.496117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256920, 40.739925, 49.982635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.268833, 40.442532, 49.715397>,  <38.275982, 40.264095, 49.555054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.268833, 40.442532, 49.715397>,  <38.256920, 40.739925, 49.982635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268833, 40.442532, 49.715397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945308, -0.238148, 0.222886,
		-0.324816, 0.624915, -0.709912,
		0.029779, -0.743483, -0.668092,
		38.277767, 40.219486, 49.514969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862041, 40.843616, 49.794380>,  <38.256920, 40.739925, 49.982635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862041, 40.843616, 49.794380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531590, 40.712608, 49.610970>,  <38.333321, 40.634003, 49.500923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.531590, 40.712608, 49.610970>,  <38.862041, 40.843616, 49.794380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531590, 40.712608, 49.610970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561496, 0.410170, 0.718668,
		-0.047303, 0.851171, -0.522752,
		-0.826126, -0.327518, -0.458527,
		38.283752, 40.614353, 49.473412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365616, 41.498222, 49.755314>,  <38.862041, 40.843616, 49.794380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365616, 41.498222, 49.755314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034027, 41.719437, 49.721943>,  <37.835075, 41.852165, 49.701920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.034027, 41.719437, 49.721943>,  <38.365616, 41.498222, 49.755314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034027, 41.719437, 49.721943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168257, 0.104344, -0.980205,
		-0.533382, -0.826599, -0.179550,
		-0.828971, 0.553034, -0.083426,
		37.785336, 41.885345, 49.696915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902397, 41.229393, 49.215446>,  <38.365616, 41.498222, 49.755314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902397, 41.229393, 49.215446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882492, 41.628529, 49.232628>,  <37.870548, 41.868008, 49.242935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.882492, 41.628529, 49.232628>,  <37.902397, 41.229393, 49.215446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882492, 41.628529, 49.232628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322464, 0.056752, -0.944879,
		-0.945273, -0.033168, -0.324591,
		-0.049761, 0.997837, 0.042950,
		37.867565, 41.927879, 49.245514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496674, 41.380966, 48.576778>,  <37.902397, 41.229393, 49.215446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496674, 41.380966, 48.576778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719147, 41.682278, 48.717197>,  <37.852631, 41.863064, 48.801449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719147, 41.682278, 48.717197>,  <37.496674, 41.380966, 48.576778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719147, 41.682278, 48.717197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414666, 0.114527, -0.902738,
		-0.720219, 0.647651, -0.248662,
		0.556181, 0.753280, 0.351044,
		37.886002, 41.908260, 48.822510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388950, 41.957123, 48.109966>,  <37.496674, 41.380966, 48.576778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388950, 41.957123, 48.109966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719925, 42.084595, 48.294918>,  <37.918510, 42.161079, 48.405888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719925, 42.084595, 48.294918>,  <37.388950, 41.957123, 48.109966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719925, 42.084595, 48.294918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483334, 0.015055, -0.875307,
		-0.285903, 0.947743, -0.141572,
		0.827435, 0.318679, 0.462381,
		37.968155, 42.180199, 48.433632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551147, 42.520760, 47.803249>,  <37.388950, 41.957123, 48.109966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551147, 42.520760, 47.803249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.892227, 42.389385, 47.965748>,  <38.096874, 42.310558, 48.063248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.892227, 42.389385, 47.965748>,  <37.551147, 42.520760, 47.803249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892227, 42.389385, 47.965748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440528, 0.034096, -0.897091,
		0.280789, 0.943909, 0.173760,
		0.852697, -0.328439, 0.406245,
		38.148037, 42.290852, 48.087620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999439, 42.890739, 47.512497>,  <37.551147, 42.520760, 47.803249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999439, 42.890739, 47.512497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.242901, 42.604465, 47.649517>,  <38.388977, 42.432701, 47.731728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.242901, 42.604465, 47.649517>,  <37.999439, 42.890739, 47.512497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242901, 42.604465, 47.649517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424956, -0.070544, -0.902461,
		0.670039, 0.694856, 0.261195,
		0.608655, -0.715680, 0.342550,
		38.425499, 42.389763, 47.752281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797577, 43.027199, 47.249126>,  <37.999439, 42.890739, 47.512497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797577, 43.027199, 47.249126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.735542, 42.639080, 47.323383>,  <38.698322, 42.406208, 47.367935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.735542, 42.639080, 47.323383>,  <38.797577, 43.027199, 47.249126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735542, 42.639080, 47.323383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302211, -0.225504, -0.926184,
		0.940540, -0.087539, 0.328209,
		-0.155090, -0.970302, 0.185640,
		38.689014, 42.347988, 47.379074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416668, 42.652992, 46.992813>,  <38.797577, 43.027199, 47.249126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416668, 42.652992, 46.992813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141144, 42.363018, 46.994576>,  <38.975830, 42.189034, 46.995632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.141144, 42.363018, 46.994576>,  <39.416668, 42.652992, 46.992813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141144, 42.363018, 46.994576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370336, -0.357099, -0.857515,
		0.623214, -0.589030, 0.514440,
		-0.688808, -0.724931, 0.004410,
		38.934502, 42.145538, 46.995899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760281, 42.112499, 46.582870>,  <39.416668, 42.652992, 46.992813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760281, 42.112499, 46.582870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380936, 41.992363, 46.623665>,  <39.153328, 41.920280, 46.648140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380936, 41.992363, 46.623665>,  <39.760281, 42.112499, 46.582870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380936, 41.992363, 46.623665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073529, -0.520952, -0.850413,
		0.308544, -0.799002, 0.516136,
		-0.948364, -0.300341, 0.101987,
		39.096428, 41.902260, 46.654263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746990, 41.375507, 46.459526>,  <39.760281, 42.112499, 46.582870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746990, 41.375507, 46.459526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360607, 41.466949, 46.411083>,  <39.128777, 41.521812, 46.382019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360607, 41.466949, 46.411083>,  <39.746990, 41.375507, 46.459526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360607, 41.466949, 46.411083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072939, -0.689804, -0.720312,
		-0.248203, -0.686958, 0.682996,
		-0.965958, 0.228601, -0.121105,
		39.070820, 41.535530, 46.374752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407372, 40.710503, 46.397915>,  <39.746990, 41.375507, 46.459526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407372, 40.710503, 46.397915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.174274, 40.988499, 46.229435>,  <39.034416, 41.155296, 46.128349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.174274, 40.988499, 46.229435>,  <39.407372, 40.710503, 46.397915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174274, 40.988499, 46.229435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113450, -0.582792, -0.804663,
		-0.804700, -0.421125, 0.418463,
		-0.582740, 0.694987, -0.421196,
		38.999451, 41.196995, 46.103077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764263, 40.385601, 46.185028>,  <39.407372, 40.710503, 46.397915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764263, 40.385601, 46.185028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.817131, 40.709473, 45.956310>,  <38.848854, 40.903797, 45.819080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.817131, 40.709473, 45.956310>,  <38.764263, 40.385601, 46.185028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817131, 40.709473, 45.956310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308259, -0.514673, -0.800056,
		-0.942076, 0.282004, 0.181567,
		0.132172, 0.809683, -0.571791,
		38.856781, 40.952377, 45.784775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171215, 40.262257, 45.811497>,  <38.764263, 40.385601, 46.185028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171215, 40.262257, 45.811497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.417709, 40.528400, 45.642948>,  <38.565605, 40.688087, 45.541821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.417709, 40.528400, 45.642948>,  <38.171215, 40.262257, 45.811497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417709, 40.528400, 45.642948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236626, -0.353890, -0.904859,
		-0.751175, 0.657312, -0.060638,
		0.616234, 0.665359, -0.421370,
		38.602581, 40.728008, 45.516537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818417, 40.697121, 45.208553>,  <38.171215, 40.262257, 45.811497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818417, 40.697121, 45.208553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214535, 40.679455, 45.155834>,  <38.452206, 40.668854, 45.124203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.214535, 40.679455, 45.155834>,  <37.818417, 40.697121, 45.208553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214535, 40.679455, 45.155834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137759, -0.438195, -0.888261,
		-0.018519, 0.897794, -0.440026,
		0.990293, -0.044168, -0.131794,
		38.511623, 40.666206, 45.116295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161636, 41.052437, 45.012684>,  <37.818417, 40.697121, 45.208553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161636, 41.052437, 45.012684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769093, 41.005756, 44.951618>,  <36.533566, 40.977749, 44.914978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.769093, 41.005756, 44.951618>,  <37.161636, 41.052437, 45.012684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769093, 41.005756, 44.951618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169530, 0.151799, 0.973764,
		-0.090465, 0.981498, -0.168754,
		-0.981364, -0.116701, -0.152661,
		36.474682, 40.970745, 44.905819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756218, 41.671436, 45.374928>,  <37.161636, 41.052437, 45.012684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756218, 41.671436, 45.374928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484608, 41.381496, 45.328426>,  <36.321640, 41.207535, 45.300526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.484608, 41.381496, 45.328426>,  <36.756218, 41.671436, 45.374928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484608, 41.381496, 45.328426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348873, 0.179290, 0.919860,
		-0.645915, 0.665171, -0.374623,
		-0.679030, -0.724847, -0.116254,
		36.280899, 41.164043, 45.293549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136868, 41.867012, 45.624470>,  <36.756218, 41.671436, 45.374928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136868, 41.867012, 45.624470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071369, 41.472588, 45.636265>,  <36.032070, 41.235931, 45.643341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071369, 41.472588, 45.636265>,  <36.136868, 41.867012, 45.624470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071369, 41.472588, 45.636265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430484, 0.098323, 0.897227,
		-0.887621, 0.134224, -0.440583,
		-0.163748, -0.986061, 0.029492,
		36.022243, 41.176769, 45.645111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469994, 41.764751, 45.810326>,  <36.136868, 41.867012, 45.624470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469994, 41.764751, 45.810326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645866, 41.418999, 45.907909>,  <35.751392, 41.211548, 45.966457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.645866, 41.418999, 45.907909>,  <35.469994, 41.764751, 45.810326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645866, 41.418999, 45.907909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399696, 0.054930, 0.915000,
		-0.804313, -0.499822, -0.321339,
		0.439686, -0.864385, 0.243958,
		35.777771, 41.159683, 45.981098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913582, 41.357449, 46.114799>,  <35.469994, 41.764751, 45.810326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913582, 41.357449, 46.114799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252102, 41.192963, 46.250252>,  <35.455215, 41.094273, 46.331524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.252102, 41.192963, 46.250252>,  <34.913582, 41.357449, 46.114799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252102, 41.192963, 46.250252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334938, 0.083550, 0.938529,
		-0.414229, -0.907702, -0.067023,
		0.846304, -0.411214, 0.338633,
		35.505993, 41.069599, 46.351841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684196, 40.962795, 46.703213>,  <34.913582, 41.357449, 46.114799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684196, 40.962795, 46.703213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079147, 40.973145, 46.765713>,  <35.316120, 40.979355, 46.803211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.079147, 40.973145, 46.765713>,  <34.684196, 40.962795, 46.703213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079147, 40.973145, 46.765713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150185, -0.160164, 0.975598,
		0.050264, -0.986751, -0.154257,
		0.987379, 0.025870, 0.156246,
		35.375362, 40.980907, 46.812588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716999, 40.544403, 47.245285>,  <34.684196, 40.962795, 46.703213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716999, 40.544403, 47.245285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058418, 40.751633, 47.267372>,  <35.263271, 40.875969, 47.280624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.058418, 40.751633, 47.267372>,  <34.716999, 40.544403, 47.245285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058418, 40.751633, 47.267372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108618, 0.073288, 0.991379,
		0.509560, -0.852191, 0.118827,
		0.853552, 0.518074, 0.055219,
		35.314484, 40.907055, 47.283939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754894, 39.949543, 47.685055>,  <34.716999, 40.544403, 47.245285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754894, 39.949543, 47.685055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367916, 39.860897, 47.636177>,  <34.135731, 39.807709, 47.606850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367916, 39.860897, 47.636177>,  <34.754894, 39.949543, 47.685055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367916, 39.860897, 47.636177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220373, -0.500315, -0.837329,
		0.124429, -0.837001, 0.532867,
		-0.967447, -0.221618, -0.122199,
		34.077682, 39.794411, 47.599518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757538, 39.368141, 47.471725>,  <34.754894, 39.949543, 47.685055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757538, 39.368141, 47.471725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406471, 39.509693, 47.342442>,  <34.195831, 39.594624, 47.264870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406471, 39.509693, 47.342442>,  <34.757538, 39.368141, 47.471725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406471, 39.509693, 47.342442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176589, -0.388163, -0.904514,
		-0.445551, -0.850939, 0.278186,
		-0.877668, 0.353882, -0.323213,
		34.143169, 39.615856, 47.245476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525185, 38.846851, 47.090168>,  <34.757538, 39.368141, 47.471725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525185, 38.846851, 47.090168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294407, 39.146381, 46.959694>,  <34.155941, 39.326099, 46.881409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294407, 39.146381, 46.959694>,  <34.525185, 38.846851, 47.090168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294407, 39.146381, 46.959694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010050, -0.392809, -0.919565,
		-0.816722, -0.533815, 0.219103,
		-0.576943, 0.748827, -0.326181,
		34.121323, 39.371029, 46.861839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898506, 38.526894, 46.744316>,  <34.525185, 38.846851, 47.090168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898506, 38.526894, 46.744316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943317, 38.888287, 46.578823>,  <33.970203, 39.105122, 46.479527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.943317, 38.888287, 46.578823>,  <33.898506, 38.526894, 46.744316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943317, 38.888287, 46.578823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067997, -0.408409, -0.910263,
		-0.991376, 0.130106, 0.015681,
		0.112027, 0.903479, -0.413734,
		33.976925, 39.159328, 46.454704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465538, 38.511295, 46.154713>,  <33.898506, 38.526894, 46.744316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465538, 38.511295, 46.154713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.692581, 38.833466, 46.086464>,  <33.828808, 39.026768, 46.045513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.692581, 38.833466, 46.086464>,  <33.465538, 38.511295, 46.154713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692581, 38.833466, 46.086464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052067, -0.241942, -0.968893,
		-0.821654, 0.541063, -0.179264,
		0.567604, 0.805428, -0.170621,
		33.862862, 39.075092, 46.035278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252090, 38.785851, 45.460930>,  <33.465538, 38.511295, 46.154713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252090, 38.785851, 45.460930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632107, 38.893539, 45.524094>,  <33.860119, 38.958153, 45.561993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.632107, 38.893539, 45.524094>,  <33.252090, 38.785851, 45.460930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632107, 38.893539, 45.524094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204611, -0.155163, -0.966467,
		-0.235697, 0.950496, -0.202498,
		0.950043, 0.269227, 0.157911,
		33.917118, 38.974308, 45.571468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349545, 39.208599, 44.965481>,  <33.252090, 38.785851, 45.460930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349545, 39.208599, 44.965481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714310, 39.097172, 45.086021>,  <33.933170, 39.030315, 45.158344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714310, 39.097172, 45.086021>,  <33.349545, 39.208599, 44.965481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714310, 39.097172, 45.086021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264168, -0.163475, -0.950521,
		0.314044, 0.946403, -0.075488,
		0.911916, -0.278564, 0.301348,
		33.987885, 39.013603, 45.176426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.845074, 37.519386, 51.116325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.754650, 37.351089, 50.764900>,  <34.700397, 37.250111, 50.554047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.754650, 37.351089, 50.764900>,  <34.845074, 37.519386, 51.116325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754650, 37.351089, 50.764900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746120, 0.505052, -0.433853,
		0.626261, -0.753588, 0.199755,
		-0.226060, -0.420747, -0.878561,
		34.686832, 37.224865, 50.501331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466343, 37.026543, 51.272072>,  <34.845074, 37.519386, 51.116325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466343, 37.026543, 51.272072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.856270, 37.099419, 51.220631>,  <36.090225, 37.143147, 51.189766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.856270, 37.099419, 51.220631>,  <35.466343, 37.026543, 51.272072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856270, 37.099419, 51.220631> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068120, -0.305856, -0.949638,
		-0.212353, 0.934482, -0.285742,
		0.974816, 0.182194, -0.128606,
		36.148716, 37.154076, 51.182049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674271, 37.592236, 50.665318>,  <35.466343, 37.026543, 51.272072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674271, 37.592236, 50.665318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.973148, 37.336327, 50.737309>,  <36.152473, 37.182781, 50.780502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.973148, 37.336327, 50.737309>,  <35.674271, 37.592236, 50.665318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973148, 37.336327, 50.737309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061977, -0.336697, -0.939571,
		0.661709, 0.690888, -0.291229,
		0.747195, -0.639772, 0.179976,
		36.197308, 37.144394, 50.791302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985012, 37.450520, 50.059612>,  <35.674271, 37.592236, 50.665318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985012, 37.450520, 50.059612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.127781, 37.128044, 50.248363>,  <36.213444, 36.934559, 50.361614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.127781, 37.128044, 50.248363>,  <35.985012, 37.450520, 50.059612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127781, 37.128044, 50.248363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132637, -0.543767, -0.828688,
		0.924670, 0.233190, -0.301013,
		0.356923, -0.806188, 0.471876,
		36.234859, 36.886189, 50.389927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332684, 37.084217, 49.513996>,  <35.985012, 37.450520, 50.059612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332684, 37.084217, 49.513996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.272770, 36.814789, 49.803513>,  <36.236824, 36.653133, 49.977222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.272770, 36.814789, 49.803513>,  <36.332684, 37.084217, 49.513996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272770, 36.814789, 49.803513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139982, -0.710224, -0.689918,
		0.978760, -0.204654, 0.012091,
		-0.149782, -0.673571, 0.723787,
		36.227837, 36.612717, 50.020649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871319, 36.594158, 49.447624>,  <36.332684, 37.084217, 49.513996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871319, 36.594158, 49.447624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.574566, 36.403385, 49.636150>,  <36.396515, 36.288921, 49.749268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.574566, 36.403385, 49.636150>,  <36.871319, 36.594158, 49.447624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574566, 36.403385, 49.636150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127876, -0.790642, -0.598777,
		0.658221, -0.383953, 0.647553,
		-0.741884, -0.476934, 0.471318,
		36.352001, 36.260303, 49.777546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079861, 35.862484, 49.377609>,  <36.871319, 36.594158, 49.447624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079861, 35.862484, 49.377609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.704548, 35.850128, 49.515404>,  <36.479359, 35.842716, 49.598080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.704548, 35.850128, 49.515404>,  <37.079861, 35.862484, 49.377609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704548, 35.850128, 49.515404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152096, -0.857683, -0.491168,
		0.310632, -0.513250, 0.800051,
		-0.938282, -0.030888, 0.344487,
		36.423061, 35.840862, 49.618752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990639, 35.173443, 49.636086>,  <37.079861, 35.862484, 49.377609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990639, 35.173443, 49.636086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.641861, 35.336716, 49.527939>,  <36.432594, 35.434681, 49.463051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.641861, 35.336716, 49.527939>,  <36.990639, 35.173443, 49.636086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641861, 35.336716, 49.527939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184897, -0.785852, -0.590128,
		-0.453345, -0.464570, 0.760692,
		-0.871947, 0.408181, -0.270365,
		36.380276, 35.459171, 49.446831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585293, 34.638947, 49.540016>,  <36.990639, 35.173443, 49.636086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585293, 34.638947, 49.540016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.358528, 34.894173, 49.331596>,  <36.222469, 35.047306, 49.206543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.358528, 34.894173, 49.331596>,  <36.585293, 34.638947, 49.540016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358528, 34.894173, 49.331596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289570, -0.746494, -0.599080,
		-0.771211, -0.188742, 0.607955,
		-0.566906, 0.638062, -0.521051,
		36.188457, 35.085590, 49.175282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975922, 34.188286, 49.343479>,  <36.585293, 34.638947, 49.540016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975922, 34.188286, 49.343479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031574, 34.501350, 49.100800>,  <36.064964, 34.689190, 48.955193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.031574, 34.501350, 49.100800>,  <35.975922, 34.188286, 49.343479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031574, 34.501350, 49.100800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091669, -0.599850, -0.794843,
		-0.986022, 0.166201, -0.011710,
		0.139128, 0.782660, -0.606702,
		36.073315, 34.736149, 48.918789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408428, 34.110802, 48.846092>,  <35.975922, 34.188286, 49.343479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408428, 34.110802, 48.846092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.698872, 34.329460, 48.679268>,  <35.873138, 34.460655, 48.579174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.698872, 34.329460, 48.679268>,  <35.408428, 34.110802, 48.846092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698872, 34.329460, 48.679268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078599, -0.536596, -0.840171,
		-0.683069, 0.642839, -0.346663,
		0.726113, 0.546647, -0.417058,
		35.916706, 34.493454, 48.554150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107632, 34.326916, 48.180336>,  <35.408428, 34.110802, 48.846092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107632, 34.326916, 48.180336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.504570, 34.359943, 48.143616>,  <35.742733, 34.379761, 48.121582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.504570, 34.359943, 48.143616>,  <35.107632, 34.326916, 48.180336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504570, 34.359943, 48.143616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055410, -0.366613, -0.928722,
		-0.110337, 0.926703, -0.359233,
		0.992348, 0.082567, -0.091800,
		35.802273, 34.384712, 48.116077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689125, 34.840591, 47.897499>,  <35.107632, 34.326916, 48.180336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689125, 34.840591, 47.897499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.386600, 34.931965, 47.652283>,  <34.205086, 34.986790, 47.505154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.386600, 34.931965, 47.652283>,  <34.689125, 34.840591, 47.897499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386600, 34.931965, 47.652283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389209, 0.596080, 0.702285,
		0.525846, 0.769744, -0.361911,
		-0.756308, 0.228435, -0.613038,
		34.159710, 35.000496, 47.468372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650005, 35.506359, 48.050121>,  <34.689125, 34.840591, 47.897499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650005, 35.506359, 48.050121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.295269, 35.348808, 47.953480>,  <34.082428, 35.254276, 47.895496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.295269, 35.348808, 47.953480>,  <34.650005, 35.506359, 48.050121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295269, 35.348808, 47.953480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392577, 0.366479, 0.843549,
		-0.243714, 0.842942, -0.479637,
		-0.886841, -0.393880, -0.241604,
		34.029217, 35.230644, 47.880997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181087, 36.045082, 48.126305>,  <34.650005, 35.506359, 48.050121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181087, 36.045082, 48.126305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.959881, 35.711937, 48.135380>,  <33.827156, 35.512051, 48.140827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.959881, 35.711937, 48.135380>,  <34.181087, 36.045082, 48.126305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959881, 35.711937, 48.135380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502350, 0.355042, 0.788410,
		-0.664691, 0.424606, -0.614732,
		-0.553019, -0.832859, 0.022692,
		33.793976, 35.462078, 48.142189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462814, 36.329479, 47.993908>,  <34.181087, 36.045082, 48.126305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462814, 36.329479, 47.993908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.438404, 35.978672, 48.184536>,  <33.423756, 35.768188, 48.298912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.438404, 35.978672, 48.184536>,  <33.462814, 36.329479, 47.993908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438404, 35.978672, 48.184536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548756, 0.428310, 0.717925,
		-0.833752, -0.217710, -0.507406,
		-0.061028, -0.877013, 0.476574,
		33.420097, 35.715569, 48.327507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830669, 36.257118, 48.124352>,  <33.462814, 36.329479, 47.993908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830669, 36.257118, 48.124352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.007420, 36.007076, 48.381718>,  <33.113472, 35.857052, 48.536137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.007420, 36.007076, 48.381718>,  <32.830669, 36.257118, 48.124352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007420, 36.007076, 48.381718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554632, 0.373355, 0.743633,
		-0.705072, -0.685455, -0.181727,
		0.441879, -0.625106, 0.643418,
		33.139984, 35.819546, 48.574741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326271, 36.064861, 48.534042>,  <32.830669, 36.257118, 48.124352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326271, 36.064861, 48.534042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.655308, 35.990810, 48.749104>,  <32.852730, 35.946381, 48.878139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.655308, 35.990810, 48.749104>,  <32.326271, 36.064861, 48.534042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655308, 35.990810, 48.749104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482747, 0.272313, 0.832347,
		-0.300500, -0.944232, 0.134633,
		0.822591, -0.185127, 0.537655,
		32.902084, 35.935272, 48.910400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107807, 35.746754, 49.141273>,  <32.326271, 36.064861, 48.534042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107807, 35.746754, 49.141273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.475063, 35.869751, 49.241241>,  <32.695415, 35.943550, 49.301224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.475063, 35.869751, 49.241241>,  <32.107807, 35.746754, 49.141273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475063, 35.869751, 49.241241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340446, 0.289412, 0.894615,
		0.202756, -0.906471, 0.370407,
		0.918143, 0.307492, 0.249924,
		32.750507, 35.962002, 49.316219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092926, 35.679451, 49.949718>,  <32.107807, 35.746754, 49.141273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092926, 35.679451, 49.949718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.414375, 35.893650, 49.845848>,  <32.607246, 36.022171, 49.783527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.414375, 35.893650, 49.845848>,  <32.092926, 35.679451, 49.949718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414375, 35.893650, 49.845848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105178, 0.557247, 0.823658,
		0.585773, -0.634598, 0.504139,
		0.803622, 0.535501, -0.259674,
		32.655464, 36.054298, 49.767948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335964, 35.837082, 50.585499>,  <32.092926, 35.679451, 49.949718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335964, 35.837082, 50.585499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.496246, 36.100990, 50.331211>,  <32.592415, 36.259338, 50.178638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.496246, 36.100990, 50.331211>,  <32.335964, 35.837082, 50.585499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496246, 36.100990, 50.331211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114296, 0.724431, 0.679806,
		0.909052, -0.199739, 0.365690,
		0.400701, 0.659776, -0.635716,
		32.616455, 36.298923, 50.140495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857052, 36.274200, 51.021801>,  <32.335964, 35.837082, 50.585499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857052, 36.274200, 51.021801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781532, 36.483379, 50.689323>,  <32.736221, 36.608887, 50.489838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781532, 36.483379, 50.689323>,  <32.857052, 36.274200, 51.021801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781532, 36.483379, 50.689323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030981, 0.849163, 0.527221,
		0.981527, 0.073788, -0.176524,
		-0.188800, 0.522951, -0.831190,
		32.724892, 36.640266, 50.439968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363941, 36.752392, 51.009102>,  <32.857052, 36.274200, 51.021801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363941, 36.752392, 51.009102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084927, 36.894726, 50.760323>,  <32.917519, 36.980125, 50.611053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.084927, 36.894726, 50.760323>,  <33.363941, 36.752392, 51.009102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084927, 36.894726, 50.760323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047669, 0.889101, 0.455222,
		0.714961, 0.287887, -0.637144,
		-0.697537, 0.355837, -0.621950,
		32.875664, 37.001476, 50.573738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647293, 37.387901, 50.727337>,  <33.363941, 36.752392, 51.009102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647293, 37.387901, 50.727337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.250412, 37.394402, 50.677910>,  <33.012283, 37.398300, 50.648254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.250412, 37.394402, 50.677910>,  <33.647293, 37.387901, 50.727337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250412, 37.394402, 50.677910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046474, 0.871701, 0.487829,
		0.115639, 0.489768, -0.864150,
		-0.992204, 0.016251, -0.123564,
		32.952751, 37.399277, 50.640842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577404, 37.911144, 50.377617>,  <33.647293, 37.387901, 50.727337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577404, 37.911144, 50.377617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.223579, 37.848373, 50.553310>,  <33.011284, 37.810711, 50.658726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.223579, 37.848373, 50.553310>,  <33.577404, 37.911144, 50.377617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223579, 37.848373, 50.553310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008077, 0.946714, 0.321975,
		-0.466359, 0.281258, -0.838691,
		-0.884559, -0.156930, 0.439237,
		32.958210, 37.801296, 50.685081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973591, 38.303040, 50.074806>,  <33.577404, 37.911144, 50.377617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973591, 38.303040, 50.074806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.915657, 38.252064, 50.467293>,  <32.880898, 38.221478, 50.702785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.915657, 38.252064, 50.467293>,  <32.973591, 38.303040, 50.074806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915657, 38.252064, 50.467293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051084, 0.991311, 0.121214,
		-0.988136, -0.032569, -0.150087,
		-0.144836, -0.127443, 0.981214,
		32.872208, 38.213829, 50.761658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982464, 39.071121, 49.832924>,  <32.973591, 38.303040, 50.074806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982464, 39.071121, 49.832924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.094299, 39.455147, 49.837128>,  <33.161400, 39.685562, 49.839649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.094299, 39.455147, 49.837128>,  <32.982464, 39.071121, 49.832924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094299, 39.455147, 49.837128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276544, -0.070047, -0.958445,
		-0.919431, 0.270875, -0.285084,
		0.279588, 0.960063, 0.010506,
		33.178177, 39.743164, 49.840279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481384, 39.573315, 49.694729>,  <32.982464, 39.071121, 49.832924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481384, 39.573315, 49.694729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.637466, 39.941605, 49.694450>,  <32.731113, 40.162579, 49.694283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.637466, 39.941605, 49.694450>,  <32.481384, 39.573315, 49.694729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637466, 39.941605, 49.694450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299078, -0.127460, -0.945678,
		-0.870801, 0.368798, -0.325105,
		0.390202, 0.920729, -0.000693,
		32.754528, 40.217823, 49.694241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194145, 40.051521, 49.117886>,  <32.481384, 39.573315, 49.694729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194145, 40.051521, 49.117886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.575226, 40.113209, 49.222633>,  <32.803875, 40.150223, 49.285484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.575226, 40.113209, 49.222633>,  <32.194145, 40.051521, 49.117886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575226, 40.113209, 49.222633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290238, -0.206157, -0.934485,
		-0.090131, 0.966289, -0.241167,
		0.952700, 0.154222, 0.261873,
		32.861034, 40.159477, 49.301193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495037, 40.456810, 48.564320>,  <32.194145, 40.051521, 49.117886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495037, 40.456810, 48.564320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.807327, 40.323593, 48.775810>,  <32.994701, 40.243664, 48.902702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.807327, 40.323593, 48.775810>,  <32.495037, 40.456810, 48.564320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807327, 40.323593, 48.775810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563864, 0.010829, -0.825797,
		0.269301, 0.942849, 0.196245,
		0.780727, -0.333044, 0.528722,
		33.041546, 40.223679, 48.934425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187569, 40.892075, 48.459732>,  <32.495037, 40.456810, 48.564320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187569, 40.892075, 48.459732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.297184, 40.525627, 48.576786>,  <33.362953, 40.305759, 48.647018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.297184, 40.525627, 48.576786>,  <33.187569, 40.892075, 48.459732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297184, 40.525627, 48.576786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466758, -0.139345, -0.873338,
		0.840856, 0.375917, 0.389419,
		0.274039, -0.916117, 0.292631,
		33.379395, 40.250793, 48.664574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829647, 40.912029, 48.275799>,  <33.187569, 40.892075, 48.459732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829647, 40.912029, 48.275799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.731674, 40.525555, 48.308022>,  <33.672890, 40.293671, 48.327354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.731674, 40.525555, 48.308022>,  <33.829647, 40.912029, 48.275799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731674, 40.525555, 48.308022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527823, -0.202582, -0.824841,
		0.813271, -0.159512, 0.559595,
		-0.244936, -0.966187, 0.080560,
		33.658192, 40.235699, 48.332188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383873, 40.545639, 47.989017>,  <33.829647, 40.912029, 48.275799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383873, 40.545639, 47.989017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.117382, 40.247513, 47.978901>,  <33.957485, 40.068638, 47.972832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.117382, 40.247513, 47.978901>,  <34.383873, 40.545639, 47.989017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117382, 40.247513, 47.978901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230340, -0.173406, -0.957535,
		0.709281, -0.643765, 0.287205,
		-0.666231, -0.745317, -0.025292,
		33.917511, 40.023918, 47.971313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140747, 40.454678, 48.014385>,  <34.383873, 40.545639, 47.989017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140747, 40.454678, 48.014385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.334263, 40.772724, 47.868103>,  <35.450371, 40.963551, 47.780334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.334263, 40.772724, 47.868103>,  <35.140747, 40.454678, 48.014385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334263, 40.772724, 47.868103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038935, 0.436998, 0.898619,
		0.874318, -0.420503, 0.242373,
		0.483789, 0.795116, -0.365703,
		35.479401, 41.011257, 47.758392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672489, 40.499199, 48.396126>,  <35.140747, 40.454678, 48.014385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672489, 40.499199, 48.396126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.620083, 40.868038, 48.250488>,  <35.588638, 41.089344, 48.163105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.620083, 40.868038, 48.250488>,  <35.672489, 40.499199, 48.396126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620083, 40.868038, 48.250488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185499, 0.383574, 0.904688,
		0.973872, 0.050986, -0.221302,
		-0.131012, 0.922102, -0.364094,
		35.580780, 41.144669, 48.141258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287052, 40.807713, 48.567459>,  <35.672489, 40.499199, 48.396126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287052, 40.807713, 48.567459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.017128, 41.099712, 48.524132>,  <35.855175, 41.274914, 48.498135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.017128, 41.099712, 48.524132>,  <36.287052, 40.807713, 48.567459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017128, 41.099712, 48.524132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163403, 0.290930, 0.942687,
		0.719678, 0.618431, -0.315606,
		-0.674806, 0.730002, -0.108323,
		35.814686, 41.318714, 48.491634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551529, 41.430115, 48.741833>,  <36.287052, 40.807713, 48.567459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551529, 41.430115, 48.741833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.170521, 41.551254, 48.754456>,  <35.941917, 41.623940, 48.762032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.170521, 41.551254, 48.754456>,  <36.551529, 41.430115, 48.741833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170521, 41.551254, 48.754456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169394, 0.440917, 0.881418,
		0.253021, 0.844911, -0.471281,
		-0.952516, 0.302849, 0.031562,
		35.884766, 41.642109, 48.763924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512089, 42.128639, 48.868504>,  <36.551529, 41.430115, 48.741833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512089, 42.128639, 48.868504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.152332, 41.998936, 48.985771>,  <35.936478, 41.921112, 49.056129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.152332, 41.998936, 48.985771>,  <36.512089, 42.128639, 48.868504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152332, 41.998936, 48.985771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044692, 0.598923, 0.799558,
		-0.434852, 0.732219, -0.524175,
		-0.899392, -0.324263, 0.293167,
		35.882515, 41.901657, 49.073723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107903, 42.593613, 48.862301>,  <36.512089, 42.128639, 48.868504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107903, 42.593613, 48.862301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.911346, 42.373512, 49.132339>,  <35.793411, 42.241451, 49.294361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.911346, 42.373512, 49.132339>,  <36.107903, 42.593613, 48.862301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911346, 42.373512, 49.132339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013842, 0.770103, 0.637769,
		-0.870829, 0.322739, -0.370805,
		-0.491391, -0.550255, 0.675096,
		35.763927, 42.208435, 49.334869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695183, 43.061993, 49.191143>,  <36.107903, 42.593613, 48.862301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695183, 43.061993, 49.191143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.672131, 42.759144, 49.451435>,  <35.658298, 42.577435, 49.607609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.672131, 42.759144, 49.451435>,  <35.695183, 43.061993, 49.191143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672131, 42.759144, 49.451435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032155, 0.652881, 0.756777,
		-0.997820, 0.022690, -0.061971,
		-0.057631, -0.757120, 0.650729,
		35.654842, 42.532009, 49.646652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191700, 43.183098, 49.593761>,  <35.695183, 43.061993, 49.191143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191700, 43.183098, 49.593761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.404312, 42.923317, 49.811268>,  <35.531879, 42.767448, 49.941772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.404312, 42.923317, 49.811268>,  <35.191700, 43.183098, 49.593761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404312, 42.923317, 49.811268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032369, 0.625921, 0.779214,
		-0.846423, -0.431775, 0.311672,
		0.531527, -0.649456, 0.543770,
		35.563770, 42.728481, 49.974400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876114, 43.034927, 50.193279>,  <35.191700, 43.183098, 49.593761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876114, 43.034927, 50.193279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.242447, 42.925591, 50.310944>,  <35.462246, 42.859989, 50.381542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.242447, 42.925591, 50.310944>,  <34.876114, 43.034927, 50.193279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242447, 42.925591, 50.310944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038569, 0.669293, 0.741997,
		-0.399702, -0.690891, 0.602418,
		0.915833, -0.273343, 0.294165,
		35.517197, 42.843586, 50.399193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.089066, 35.757431, 35.982567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488438, 35.736794, 35.991371>,  <36.728062, 35.724411, 35.996655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488438, 35.736794, 35.991371>,  <36.089066, 35.757431, 35.982567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488438, 35.736794, 35.991371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016260, 0.641738, 0.766752,
		-0.053683, -0.765187, 0.641566,
		0.998425, -0.051593, 0.022009,
		36.787964, 35.721317, 35.997974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203938, 35.716896, 36.677315>,  <36.089066, 35.757431, 35.982567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203938, 35.716896, 36.677315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555485, 35.848377, 36.539013>,  <36.766411, 35.927265, 36.456032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555485, 35.848377, 36.539013>,  <36.203938, 35.716896, 36.677315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555485, 35.848377, 36.539013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018790, 0.700343, 0.713560,
		0.476699, -0.633620, 0.609331,
		0.878866, 0.328704, -0.345758,
		36.819145, 35.946987, 36.435284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707729, 35.656246, 37.218044>,  <36.203938, 35.716896, 36.677315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707729, 35.656246, 37.218044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846958, 35.927845, 36.959492>,  <36.930496, 36.090805, 36.804359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846958, 35.927845, 36.959492>,  <36.707729, 35.656246, 37.218044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846958, 35.927845, 36.959492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226128, 0.608324, 0.760794,
		0.909785, -0.410978, 0.058203,
		0.348076, 0.678998, -0.646378,
		36.951382, 36.131546, 36.765579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261227, 36.015816, 37.574574>,  <36.707729, 35.656246, 37.218044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261227, 36.015816, 37.574574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229420, 36.280209, 37.276104>,  <37.210335, 36.438847, 37.097023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229420, 36.280209, 37.276104>,  <37.261227, 36.015816, 37.574574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229420, 36.280209, 37.276104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162243, 0.747144, 0.644556,
		0.983542, -0.069811, -0.166648,
		-0.079513, 0.660986, -0.746174,
		37.205566, 36.478504, 37.052254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771511, 36.485863, 37.652718>,  <37.261227, 36.015816, 37.574574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771511, 36.485863, 37.652718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553322, 36.699375, 37.394249>,  <37.422409, 36.827484, 37.239170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553322, 36.699375, 37.394249>,  <37.771511, 36.485863, 37.652718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553322, 36.699375, 37.394249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188696, 0.829385, 0.525847,
		0.816610, 0.164906, -0.553130,
		-0.545473, 0.533786, -0.646167,
		37.389679, 36.859512, 37.200397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137486, 37.092281, 37.472820>,  <37.771511, 36.485863, 37.652718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137486, 37.092281, 37.472820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746918, 37.166100, 37.428024>,  <37.512577, 37.210392, 37.401146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746918, 37.166100, 37.428024>,  <38.137486, 37.092281, 37.472820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746918, 37.166100, 37.428024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076729, 0.781609, 0.619032,
		0.201775, 0.595843, -0.777340,
		-0.976422, 0.184549, -0.111991,
		37.453991, 37.221466, 37.394428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101677, 37.825779, 37.365658>,  <38.137486, 37.092281, 37.472820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101677, 37.825779, 37.365658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729324, 37.729374, 37.475479>,  <37.505913, 37.671532, 37.541370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729324, 37.729374, 37.475479>,  <38.101677, 37.825779, 37.365658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729324, 37.729374, 37.475479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060544, 0.842906, 0.534644,
		-0.360277, 0.481066, -0.799234,
		-0.930878, -0.241009, 0.274554,
		37.450062, 37.657070, 37.557846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676510, 38.501366, 37.336147>,  <38.101677, 37.825779, 37.365658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676510, 38.501366, 37.336147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512775, 38.216129, 37.563808>,  <37.414536, 38.044987, 37.700405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512775, 38.216129, 37.563808>,  <37.676510, 38.501366, 37.336147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512775, 38.216129, 37.563808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014593, 0.618615, 0.785558,
		-0.912267, 0.329864, -0.242815,
		-0.409336, -0.713096, 0.569156,
		37.389973, 38.002201, 37.734554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016396, 38.812313, 37.499302>,  <37.676510, 38.501366, 37.336147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016396, 38.812313, 37.499302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088669, 38.531822, 37.775166>,  <37.132030, 38.363529, 37.940685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088669, 38.531822, 37.775166>,  <37.016396, 38.812313, 37.499302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088669, 38.531822, 37.775166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182659, 0.665080, 0.724088,
		-0.966432, -0.256801, -0.007919,
		0.180680, -0.701228, 0.689662,
		37.142872, 38.321453, 37.982063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413757, 38.781178, 37.878487>,  <37.016396, 38.812313, 37.499302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413757, 38.781178, 37.878487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704796, 38.651718, 38.120430>,  <36.879421, 38.574043, 38.265594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704796, 38.651718, 38.120430>,  <36.413757, 38.781178, 37.878487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704796, 38.651718, 38.120430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437216, 0.460652, 0.772426,
		-0.528624, -0.826469, 0.193665,
		0.727598, -0.323650, 0.604857,
		36.923077, 38.554623, 38.301888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104332, 38.713932, 38.491879>,  <36.413757, 38.781178, 37.878487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104332, 38.713932, 38.491879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490707, 38.723778, 38.594921>,  <36.722530, 38.729687, 38.656746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490707, 38.723778, 38.594921>,  <36.104332, 38.713932, 38.491879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490707, 38.723778, 38.594921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248713, 0.363244, 0.897884,
		-0.071475, -0.931369, 0.356992,
		0.965937, 0.024613, 0.257607,
		36.780487, 38.731163, 38.672203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097691, 38.337582, 39.064075>,  <36.104332, 38.713932, 38.491879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097691, 38.337582, 39.064075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419403, 38.574677, 39.081024>,  <36.612431, 38.716934, 39.091194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419403, 38.574677, 39.081024>,  <36.097691, 38.337582, 39.064075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419403, 38.574677, 39.081024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357585, 0.425785, 0.831168,
		0.474622, -0.683644, 0.554404,
		0.804280, 0.592738, 0.042374,
		36.660686, 38.752499, 39.093739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971111, 37.718864, 39.379250>,  <36.097691, 38.337582, 39.064075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971111, 37.718864, 39.379250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584713, 37.682014, 39.475880>,  <35.352875, 37.659904, 39.533859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584713, 37.682014, 39.475880>,  <35.971111, 37.718864, 39.379250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584713, 37.682014, 39.475880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193019, -0.364702, -0.910899,
		0.172023, -0.926556, 0.334519,
		-0.965998, -0.092127, 0.241580,
		35.294914, 37.654377, 39.548355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820793, 37.081844, 39.270336>,  <35.971111, 37.718864, 39.379250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820793, 37.081844, 39.270336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454655, 37.241226, 39.247097>,  <35.234970, 37.336857, 39.233154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454655, 37.241226, 39.247097>,  <35.820793, 37.081844, 39.270336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454655, 37.241226, 39.247097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144325, -0.459330, -0.876462,
		-0.375915, -0.793882, 0.477953,
		-0.915346, 0.398456, -0.058092,
		35.180050, 37.360764, 39.229668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337719, 36.528320, 39.042809>,  <35.820793, 37.081844, 39.270336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337719, 36.528320, 39.042809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139713, 36.865208, 38.957363>,  <35.020908, 37.067341, 38.906097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139713, 36.865208, 38.957363>,  <35.337719, 36.528320, 39.042809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139713, 36.865208, 38.957363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370081, -0.426804, -0.825154,
		-0.786128, -0.329412, 0.522963,
		-0.495018, 0.842215, -0.213614,
		34.991207, 37.117870, 38.893280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725082, 36.264660, 38.916065>,  <35.337719, 36.528320, 39.042809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725082, 36.264660, 38.916065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725666, 36.617249, 38.727169>,  <34.726017, 36.828800, 38.613831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725666, 36.617249, 38.727169>,  <34.725082, 36.264660, 38.916065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725666, 36.617249, 38.727169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264503, -0.455078, -0.850260,
		-0.964384, 0.126146, 0.232489,
		0.001456, 0.881471, -0.472236,
		34.726105, 36.881691, 38.585499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046032, 36.370480, 38.616634>,  <34.725082, 36.264660, 38.916065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046032, 36.370480, 38.616634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208988, 36.667999, 38.404675>,  <34.306763, 36.846512, 38.277496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208988, 36.667999, 38.404675>,  <34.046032, 36.370480, 38.616634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208988, 36.667999, 38.404675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213619, -0.486528, -0.847147,
		-0.887920, 0.458315, -0.039316,
		0.407388, 0.743800, -0.529903,
		34.331203, 36.891140, 38.245705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562824, 36.602276, 38.158302>,  <34.046032, 36.370480, 38.616634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562824, 36.602276, 38.158302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920544, 36.695324, 38.005398>,  <34.135174, 36.751152, 37.913654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920544, 36.695324, 38.005398>,  <33.562824, 36.602276, 38.158302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920544, 36.695324, 38.005398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195366, -0.565565, -0.801230,
		-0.402577, 0.791216, -0.460335,
		0.894295, 0.232623, -0.382260,
		34.188831, 36.765110, 37.890720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471893, 36.615692, 37.378677>,  <33.562824, 36.602276, 38.158302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471893, 36.615692, 37.378677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870899, 36.618435, 37.406742>,  <34.110302, 36.620083, 37.423580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870899, 36.618435, 37.406742>,  <33.471893, 36.615692, 37.378677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870899, 36.618435, 37.406742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064204, -0.499370, -0.864007,
		0.029109, 0.866362, -0.498568,
		0.997512, 0.006860, 0.070160,
		34.170155, 36.620491, 37.427792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685978, 36.765839, 36.677917>,  <33.471893, 36.615692, 37.378677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685978, 36.765839, 36.677917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011871, 36.608150, 36.847996>,  <34.207409, 36.513538, 36.950043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011871, 36.608150, 36.847996>,  <33.685978, 36.765839, 36.677917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011871, 36.608150, 36.847996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132947, -0.586768, -0.798767,
		0.564386, 0.707312, -0.425650,
		0.814735, -0.394224, 0.425199,
		34.256290, 36.489883, 36.975555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153156, 36.920124, 36.245014>,  <33.685978, 36.765839, 36.677917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153156, 36.920124, 36.245014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266743, 36.608601, 36.468735>,  <34.334896, 36.421688, 36.602966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266743, 36.608601, 36.468735>,  <34.153156, 36.920124, 36.245014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266743, 36.608601, 36.468735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065025, -0.566328, -0.821610,
		0.956626, 0.269680, -0.110177,
		0.283969, -0.778810, 0.559300,
		34.351933, 36.374958, 36.636524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749664, 36.611359, 35.894779>,  <34.153156, 36.920124, 36.245014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749664, 36.611359, 35.894779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610748, 36.318119, 36.128689>,  <34.527397, 36.142178, 36.269035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610748, 36.318119, 36.128689>,  <34.749664, 36.611359, 35.894779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610748, 36.318119, 36.128689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288873, -0.676896, -0.677026,
		0.892156, -0.066200, 0.446851,
		-0.347291, -0.733096, 0.584773,
		34.506561, 36.098190, 36.304119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156639, 36.116390, 35.709255>,  <34.749664, 36.611359, 35.894779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156639, 36.116390, 35.709255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857170, 35.926361, 35.894207>,  <34.677490, 35.812344, 36.005177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857170, 35.926361, 35.894207>,  <35.156639, 36.116390, 35.709255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857170, 35.926361, 35.894207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036193, -0.725721, -0.687036,
		0.661950, -0.497631, 0.560523,
		-0.748674, -0.475070, 0.462381,
		34.632568, 35.783840, 36.032921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332951, 35.396965, 35.746014>,  <35.156639, 36.116390, 35.709255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332951, 35.396965, 35.746014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936295, 35.401402, 35.797432>,  <34.698299, 35.404064, 35.828285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936295, 35.401402, 35.797432>,  <35.332951, 35.396965, 35.746014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936295, 35.401402, 35.797432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095998, -0.729102, -0.677639,
		0.086211, -0.684315, 0.724072,
		-0.991641, 0.011090, 0.128550,
		34.638802, 35.404728, 35.835999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055550, 34.720497, 35.914955>,  <35.332951, 35.396965, 35.746014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055550, 34.720497, 35.914955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756470, 34.912861, 35.731796>,  <34.577023, 35.028278, 35.621899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756470, 34.912861, 35.731796>,  <35.055550, 34.720497, 35.914955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756470, 34.912861, 35.731796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121804, -0.578543, -0.806506,
		-0.652771, -0.658798, 0.374000,
		-0.747699, 0.480909, -0.457900,
		34.532158, 35.057133, 35.594425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730171, 34.115345, 35.577320>,  <35.055550, 34.720497, 35.914955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730171, 34.115345, 35.577320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593742, 34.467476, 35.445438>,  <34.511887, 34.678753, 35.366310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593742, 34.467476, 35.445438>,  <34.730171, 34.115345, 35.577320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593742, 34.467476, 35.445438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010864, -0.354399, -0.935031,
		-0.939975, -0.315329, 0.130439,
		-0.341070, 0.880323, -0.329701,
		34.491421, 34.731571, 35.346527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340984, 34.058586, 36.272659>,  <34.730171, 34.115345, 35.577320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340984, 34.058586, 36.272659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139191, 34.265850, 36.548920>,  <34.018112, 34.390209, 36.714676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139191, 34.265850, 36.548920>,  <34.340984, 34.058586, 36.272659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139191, 34.265850, 36.548920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602395, 0.361821, -0.711481,
		-0.618556, -0.774978, 0.129605,
		-0.504488, 0.518165, 0.690650,
		33.987843, 34.421299, 36.756115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058208, 33.419353, 36.707481>,  <34.340984, 34.058586, 36.272659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058208, 33.419353, 36.707481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429733, 33.328194, 36.590607>,  <34.652649, 33.273499, 36.520481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429733, 33.328194, 36.590607>,  <34.058208, 33.419353, 36.707481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429733, 33.328194, 36.590607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203089, 0.346465, -0.915815,
		0.309944, 0.909959, 0.275517,
		0.928811, -0.227896, -0.292187,
		34.708378, 33.259823, 36.502949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781174, 33.630726, 37.399235>,  <34.058208, 33.419353, 36.707481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781174, 33.630726, 37.399235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080963, 33.368500, 37.362293>,  <34.260838, 33.211166, 37.340126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080963, 33.368500, 37.362293>,  <33.781174, 33.630726, 37.399235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080963, 33.368500, 37.362293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073285, -0.056497, 0.995710,
		-0.657969, -0.753024, 0.005700,
		0.749471, -0.655563, -0.092358,
		34.305805, 33.171829, 37.334587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728130, 33.127949, 37.784321>,  <33.781174, 33.630726, 37.399235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728130, 33.127949, 37.784321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122952, 33.085491, 37.736233>,  <34.359844, 33.060017, 37.707378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122952, 33.085491, 37.736233>,  <33.728130, 33.127949, 37.784321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122952, 33.085491, 37.736233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107415, -0.119092, 0.987056,
		-0.119092, -0.987193, -0.106148,
		-0.987056, 0.106148, 0.120222,
		34.419067, 33.053646, 37.700165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008808, 32.455650, 38.094425>,  <33.728130, 33.127949, 37.784321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008808, 32.455650, 38.094425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313732, 32.713249, 38.068630>,  <34.496685, 32.867809, 38.053154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313732, 32.713249, 38.068630>,  <34.008808, 32.455650, 38.094425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313732, 32.713249, 38.068630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127999, -0.052342, 0.990392,
		0.634430, -0.763239, -0.122331,
		0.762308, 0.643993, -0.064487,
		34.542423, 32.906448, 38.049286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625168, 32.292042, 38.616341>,  <34.008808, 32.455650, 38.094425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625168, 32.292042, 38.616341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666725, 32.680275, 38.529457>,  <34.691658, 32.913216, 38.477325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666725, 32.680275, 38.529457>,  <34.625168, 32.292042, 38.616341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666725, 32.680275, 38.529457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242515, 0.187076, 0.951940,
		0.964569, -0.151576, -0.215944,
		0.103893, 0.970581, -0.217207,
		34.697891, 32.971451, 38.464294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133636, 32.519650, 38.994137>,  <34.625168, 32.292042, 38.616341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133636, 32.519650, 38.994137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972080, 32.869839, 38.887985>,  <34.875145, 33.079952, 38.824295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972080, 32.869839, 38.887985>,  <35.133636, 32.519650, 38.994137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972080, 32.869839, 38.887985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110802, 0.334772, 0.935762,
		0.908073, 0.348540, -0.232215,
		-0.403889, 0.875470, -0.265379,
		34.850914, 33.132481, 38.808372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542187, 33.070297, 39.333065>,  <35.133636, 32.519650, 38.994137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542187, 33.070297, 39.333065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170124, 33.205719, 39.276230>,  <34.946888, 33.286972, 39.242130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170124, 33.205719, 39.276230>,  <35.542187, 33.070297, 39.333065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170124, 33.205719, 39.276230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072225, 0.210708, 0.974877,
		0.359985, 0.917052, -0.171540,
		-0.930158, 0.338552, -0.142086,
		34.891075, 33.307285, 39.233604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519089, 33.370083, 39.825836>,  <35.542187, 33.070297, 39.333065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519089, 33.370083, 39.825836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133194, 33.399014, 39.724594>,  <34.901657, 33.416370, 39.663849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133194, 33.399014, 39.724594>,  <35.519089, 33.370083, 39.825836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133194, 33.399014, 39.724594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204143, 0.401447, 0.892841,
		0.166182, 0.913022, -0.372524,
		-0.964733, 0.072326, -0.253101,
		34.843773, 33.420712, 39.648663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393974, 34.058937, 39.929813>,  <35.519089, 33.370083, 39.825836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393974, 34.058937, 39.929813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046795, 33.861256, 39.949543>,  <34.838490, 33.742645, 39.961380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046795, 33.861256, 39.949543>,  <35.393974, 34.058937, 39.929813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046795, 33.861256, 39.949543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143989, 0.345439, 0.927329,
		-0.475330, 0.797768, -0.370982,
		-0.867945, -0.494204, 0.049327,
		34.786411, 33.712994, 39.964340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932095, 34.525562, 40.266712>,  <35.393974, 34.058937, 39.929813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932095, 34.525562, 40.266712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719543, 34.186970, 40.280029>,  <34.592010, 33.983814, 40.288021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719543, 34.186970, 40.280029>,  <34.932095, 34.525562, 40.266712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719543, 34.186970, 40.280029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325722, 0.240435, 0.914383,
		-0.782011, 0.475040, -0.403479,
		-0.531379, -0.846479, 0.033292,
		34.560131, 33.933025, 40.290016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199020, 34.801548, 40.469456>,  <34.932095, 34.525562, 40.266712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199020, 34.801548, 40.469456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240688, 34.415314, 40.564774>,  <34.265690, 34.183571, 40.621964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240688, 34.415314, 40.564774>,  <34.199020, 34.801548, 40.469456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240688, 34.415314, 40.564774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504911, 0.155080, 0.849126,
		-0.856862, -0.208774, -0.471382,
		0.104174, -0.965590, 0.238295,
		34.271942, 34.125637, 40.636261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495003, 34.535458, 40.706833>,  <34.199020, 34.801548, 40.469456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495003, 34.535458, 40.706833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795528, 34.324295, 40.865246>,  <33.975845, 34.197598, 40.960293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.795528, 34.324295, 40.865246>,  <33.495003, 34.535458, 40.706833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795528, 34.324295, 40.865246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478612, -0.022688, 0.877733,
		-0.454377, -0.848999, -0.269709,
		0.751313, -0.527908, 0.396032,
		34.020924, 34.165924, 40.984055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265553, 34.391659, 41.383675>,  <33.495003, 34.535458, 40.706833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265553, 34.391659, 41.383675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627014, 34.225777, 41.426418>,  <33.843891, 34.126247, 41.452065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627014, 34.225777, 41.426418>,  <33.265553, 34.391659, 41.383675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627014, 34.225777, 41.426418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023714, 0.200682, 0.979369,
		-0.427599, -0.887549, 0.171514,
		0.903657, -0.414710, 0.106858,
		33.898113, 34.101364, 41.458477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212379, 33.807720, 41.841648>,  <33.265553, 34.391659, 41.383675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212379, 33.807720, 41.841648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598186, 33.913120, 41.848335>,  <33.829670, 33.976360, 41.852348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598186, 33.913120, 41.848335>,  <33.212379, 33.807720, 41.841648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598186, 33.913120, 41.848335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016626, -0.002581, 0.999858,
		0.263503, -0.964657, 0.001891,
		0.964515, 0.263497, 0.016718,
		33.887543, 33.992168, 41.853352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620445, 33.278416, 42.272263>,  <33.212379, 33.807720, 41.841648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620445, 33.278416, 42.272263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802254, 33.634697, 42.275246>,  <33.911339, 33.848465, 42.277035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802254, 33.634697, 42.275246>,  <33.620445, 33.278416, 42.272263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802254, 33.634697, 42.275246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044689, 0.014446, 0.998897,
		0.889613, -0.454354, 0.046371,
		0.454523, 0.890704, 0.007453,
		33.938610, 33.901909, 42.277481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060234, 33.216141, 42.834862>,  <33.620445, 33.278416, 42.272263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060234, 33.216141, 42.834862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060852, 33.608543, 42.757271>,  <34.061222, 33.843983, 42.710716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060852, 33.608543, 42.757271>,  <34.060234, 33.216141, 42.834862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060852, 33.608543, 42.757271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086315, 0.193386, 0.977318,
		0.996267, 0.015237, 0.084974,
		0.001541, 0.981004, -0.193979,
		34.061314, 33.902843, 42.699078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551418, 33.525749, 43.252460>,  <34.060234, 33.216141, 42.834862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551418, 33.525749, 43.252460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307468, 33.835567, 43.185371>,  <34.161098, 34.021458, 43.145119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307468, 33.835567, 43.185371>,  <34.551418, 33.525749, 43.252460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307468, 33.835567, 43.185371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120603, 0.118463, 0.985607,
		0.783269, 0.621323, 0.021165,
		-0.609873, 0.774548, -0.167722,
		34.124508, 34.067932, 43.135056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687466, 33.958637, 43.795071>,  <34.551418, 33.525749, 43.252460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687466, 33.958637, 43.795071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348892, 34.133224, 43.673050>,  <34.145748, 34.237976, 43.599838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348892, 34.133224, 43.673050>,  <34.687466, 33.958637, 43.795071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348892, 34.133224, 43.673050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248991, 0.181978, 0.951256,
		0.470701, 0.881126, -0.045356,
		-0.846430, 0.436464, -0.305050,
		34.094963, 34.264164, 43.581535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689026, 34.598297, 44.157547>,  <34.687466, 33.958637, 43.795071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689026, 34.598297, 44.157547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310192, 34.503811, 44.070610>,  <34.082893, 34.447117, 44.018448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310192, 34.503811, 44.070610>,  <34.689026, 34.598297, 44.157547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310192, 34.503811, 44.070610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283056, 0.295279, 0.912518,
		-0.151380, 0.925749, -0.346517,
		-0.947082, -0.236220, -0.217339,
		34.026066, 34.432945, 44.005409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280300, 35.166695, 44.353260>,  <34.689026, 34.598297, 44.157547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280300, 35.166695, 44.353260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027679, 34.856564, 44.354652>,  <33.876106, 34.670486, 44.355488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027679, 34.856564, 44.354652>,  <34.280300, 35.166695, 44.353260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027679, 34.856564, 44.354652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217702, 0.181643, 0.958964,
		-0.744140, 0.604880, -0.283507,
		-0.631555, -0.775323, 0.003484,
		33.838211, 34.623966, 44.355698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648491, 35.435387, 44.615337>,  <34.280300, 35.166695, 44.353260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648491, 35.435387, 44.615337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596359, 35.041950, 44.665226>,  <33.565079, 34.805889, 44.695160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596359, 35.041950, 44.665226>,  <33.648491, 35.435387, 44.615337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596359, 35.041950, 44.665226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045476, 0.119735, 0.991764,
		-0.990427, 0.134928, 0.029125,
		-0.130330, -0.983595, 0.124724,
		33.557259, 34.746872, 44.702644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166508, 35.368526, 45.140511>,  <33.648491, 35.435387, 44.615337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166508, 35.368526, 45.140511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372852, 35.025970, 45.131718>,  <33.496658, 34.820438, 45.126442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372852, 35.025970, 45.131718>,  <33.166508, 35.368526, 45.140511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372852, 35.025970, 45.131718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181450, 0.084145, 0.979793,
		-0.837236, -0.509426, 0.198799,
		0.515860, -0.856390, -0.021986,
		33.527611, 34.769054, 45.125122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900333, 34.884388, 45.663921>,  <33.166508, 35.368526, 45.140511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900333, 34.884388, 45.663921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274330, 34.754753, 45.606300>,  <33.498730, 34.676971, 45.571728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274330, 34.754753, 45.606300>,  <32.900333, 34.884388, 45.663921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274330, 34.754753, 45.606300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197448, 0.138258, 0.970515,
		-0.294613, -0.935870, 0.193261,
		0.934996, -0.324085, -0.144053,
		33.554829, 34.657528, 45.563084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063248, 34.365444, 46.204273>,  <32.900333, 34.884388, 45.663921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063248, 34.365444, 46.204273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419765, 34.480442, 46.064018>,  <33.633675, 34.549442, 45.979866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419765, 34.480442, 46.064018>,  <33.063248, 34.365444, 46.204273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419765, 34.480442, 46.064018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355058, 0.038446, 0.934053,
		0.282018, -0.957010, -0.067811,
		0.891291, 0.287497, -0.350637,
		33.687153, 34.566692, 45.958828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568314, 33.919239, 46.472187>,  <33.063248, 34.365444, 46.204273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568314, 33.919239, 46.472187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764980, 34.255249, 46.380424>,  <33.882980, 34.456856, 46.325367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764980, 34.255249, 46.380424>,  <33.568314, 33.919239, 46.472187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764980, 34.255249, 46.380424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158900, 0.172478, 0.972112,
		0.856163, -0.514407, -0.048678,
		0.491666, 0.840021, -0.229409,
		33.912479, 34.507256, 46.311604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114826, 33.947548, 46.922161>,  <33.568314, 33.919239, 46.472187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114826, 33.947548, 46.922161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117550, 34.331154, 46.808846>,  <34.119183, 34.561317, 46.740856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117550, 34.331154, 46.808846>,  <34.114826, 33.947548, 46.922161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117550, 34.331154, 46.808846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006475, 0.283247, 0.959025,
		0.999956, -0.008363, -0.004281,
		0.006807, 0.959011, -0.283288,
		34.119591, 34.618858, 46.723858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718849, 34.195946, 47.347931>,  <34.114826, 33.947548, 46.922161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718849, 34.195946, 47.347931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473225, 34.487411, 47.226620>,  <34.325848, 34.662289, 47.153831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473225, 34.487411, 47.226620>,  <34.718849, 34.195946, 47.347931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473225, 34.487411, 47.226620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153216, 0.266892, 0.951469,
		0.774241, 0.630731, -0.052246,
		-0.614065, 0.728661, -0.303277,
		34.289005, 34.706009, 47.135635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302986, 34.675285, 47.560661>,  <34.718849, 34.195946, 47.347931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302986, 34.675285, 47.560661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659210, 34.515205, 47.647141>,  <35.872944, 34.419155, 47.699028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659210, 34.515205, 47.647141>,  <35.302986, 34.675285, 47.560661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659210, 34.515205, 47.647141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139194, -0.212731, -0.967145,
		0.433048, 0.891393, -0.133743,
		0.890559, -0.400204, 0.216199,
		35.926376, 34.395145, 47.712002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703083, 34.887592, 47.054077>,  <35.302986, 34.675285, 47.560661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703083, 34.887592, 47.054077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912136, 34.580204, 47.201756>,  <36.037567, 34.395771, 47.290363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912136, 34.580204, 47.201756>,  <35.703083, 34.887592, 47.054077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912136, 34.580204, 47.201756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326254, -0.219808, -0.919370,
		0.787664, 0.600943, 0.135839,
		0.522631, -0.768474, 0.369196,
		36.068924, 34.349663, 47.312515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382759, 34.925640, 46.785553>,  <35.703083, 34.887592, 47.054077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382759, 34.925640, 46.785553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350471, 34.542641, 46.896320>,  <36.331100, 34.312840, 46.962780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350471, 34.542641, 46.896320>,  <36.382759, 34.925640, 46.785553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350471, 34.542641, 46.896320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506832, -0.278651, -0.815766,
		0.858257, 0.074505, 0.507783,
		-0.080716, -0.957498, 0.276916,
		36.326256, 34.255390, 46.979397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067379, 34.648457, 46.662476>,  <36.382759, 34.925640, 46.785553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067379, 34.648457, 46.662476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814827, 34.338650, 46.677887>,  <36.663296, 34.152767, 46.687134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814827, 34.338650, 46.677887>,  <37.067379, 34.648457, 46.662476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814827, 34.338650, 46.677887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466145, -0.418767, -0.779322,
		0.619728, -0.474093, 0.625439,
		-0.631385, -0.774513, 0.038525,
		36.625412, 34.106297, 46.689445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505032, 34.004307, 46.720741>,  <37.067379, 34.648457, 46.662476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505032, 34.004307, 46.720741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137428, 33.911781, 46.593048>,  <36.916866, 33.856266, 46.516430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137428, 33.911781, 46.593048>,  <37.505032, 34.004307, 46.720741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137428, 33.911781, 46.593048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393383, -0.485043, -0.781014,
		0.025814, -0.843343, 0.536754,
		-0.919012, -0.231311, -0.319236,
		36.861725, 33.842388, 46.497276>
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
