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
	<3.157246, -0.476354, 1.699058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.297302, -0.273254, 1.384201>,  <3.381336, -0.151394, 1.195287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.297302, -0.273254, 1.384201>,  <3.157246, -0.476354, 1.699058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.297302, -0.273254, 1.384201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328533, 0.853523, 0.404430,
		0.877193, 0.116995, 0.465666,
		0.350141, 0.507750, -0.787141,
		3.402344, -0.120929, 1.148059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.574528, 0.136184, 1.976393>,  <3.157246, -0.476354, 1.699058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.574528, 0.136184, 1.976393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.443611, 0.203514, 1.604469>,  <3.365061, 0.243912, 1.381315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.443611, 0.203514, 1.604469>,  <3.574528, 0.136184, 1.976393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.443611, 0.203514, 1.604469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398866, 0.867432, 0.297434,
		0.856613, 0.468218, -0.216765,
		-0.327293, 0.168325, -0.929810,
		3.345423, 0.254012, 1.325526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.814282, 0.795393, 1.832120>,  <3.574528, 0.136184, 1.976393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.814282, 0.795393, 1.832120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.500862, 0.733421, 1.591438>,  <3.312810, 0.696238, 1.447029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.500862, 0.733421, 1.591438>,  <3.814282, 0.795393, 1.832120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.500862, 0.733421, 1.591438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328108, 0.925549, 0.188954,
		0.527632, 0.345478, -0.776047,
		-0.783550, -0.154929, -0.601703,
		3.265797, 0.686943, 1.410927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.751843, 1.385954, 1.371199>,  <3.814282, 0.795393, 1.832120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.751843, 1.385954, 1.371199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.407288, 1.208229, 1.469666>,  <3.200554, 1.101594, 1.528745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.407288, 1.208229, 1.469666>,  <3.751843, 1.385954, 1.371199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.407288, 1.208229, 1.469666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336316, 0.862064, 0.379126,
		-0.380661, 0.243786, -0.892001,
		-0.861388, -0.444312, 0.246165,
		3.148871, 1.074935, 1.543515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.200136, 1.630343, 0.974198>,  <3.751843, 1.385954, 1.371199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.200136, 1.630343, 0.974198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.059059, 1.503738, 1.326431>,  <2.974413, 1.427776, 1.537771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.059059, 1.503738, 1.326431>,  <3.200136, 1.630343, 0.974198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.059059, 1.503738, 1.326431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389149, 0.905431, 0.169581,
		-0.850982, -0.282869, -0.442509,
		-0.352693, -0.316512, 0.880584,
		2.953251, 1.408785, 1.590606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.514630, 1.846453, 1.008635>,  <3.200136, 1.630343, 0.974198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.514630, 1.846453, 1.008635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.621231, 1.771027, 1.386719>,  <2.685192, 1.725771, 1.613569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.621231, 1.771027, 1.386719>,  <2.514630, 1.846453, 1.008635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.621231, 1.771027, 1.386719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486027, 0.820571, 0.300736,
		-0.832319, -0.539544, 0.127035,
		0.266502, -0.188565, 0.945209,
		2.701182, 1.714457, 1.670281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.883801, 1.929376, 1.280684>,  <2.514630, 1.846453, 1.008635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.883801, 1.929376, 1.280684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.161102, 1.988632, 1.562805>,  <2.327483, 2.024186, 1.732078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.161102, 1.988632, 1.562805>,  <1.883801, 1.929376, 1.280684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.161102, 1.988632, 1.562805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381196, 0.905916, 0.184408,
		-0.611627, -0.396701, 0.684501,
		0.693255, 0.148140, 0.705303,
		2.369079, 2.033074, 1.774396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.573493, 2.388121, 1.695398>,  <1.883801, 1.929376, 1.280684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.573493, 2.388121, 1.695398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.962051, 2.404701, 1.788925>,  <2.195187, 2.414649, 1.845042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.962051, 2.404701, 1.788925>,  <1.573493, 2.388121, 1.695398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.962051, 2.404701, 1.788925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100966, 0.963305, 0.248694,
		-0.214930, -0.265188, 0.939936,
		0.971396, 0.041450, 0.233819,
		2.253470, 2.417136, 1.859071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.764723, 3.740033, 1.527281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.158688, 3.793427, 1.483223>,  <2.395066, 3.825463, 1.456788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.158688, 3.793427, 1.483223>,  <1.764723, 3.740033, 1.527281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.158688, 3.793427, 1.483223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158540, -0.951130, 0.264985,
		-0.069391, -0.278449, -0.957941,
		0.984911, 0.133484, -0.110145,
		2.454161, 3.833472, 1.450179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.055963, 3.060165, 1.259440>,  <1.764723, 3.740033, 1.527281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.055963, 3.060165, 1.259440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.356415, 3.289505, 1.390327>,  <2.536686, 3.427109, 1.468860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.356415, 3.289505, 1.390327>,  <2.055963, 3.060165, 1.259440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.356415, 3.289505, 1.390327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518793, -0.819192, 0.244494,
		0.408236, -0.013888, -0.912771,
		0.751130, 0.573350, 0.327219,
		2.581754, 3.461510, 1.488493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.756267, 2.871837, 1.048788>,  <2.055963, 3.060165, 1.259440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.756267, 2.871837, 1.048788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.759918, 3.044373, 1.409645>,  <2.762109, 3.147894, 1.626160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.759918, 3.044373, 1.409645>,  <2.756267, 2.871837, 1.048788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.759918, 3.044373, 1.409645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309335, -0.859146, 0.407651,
		0.950909, 0.275344, -0.141270,
		0.009127, 0.431339, 0.902144,
		2.762656, 3.173774, 1.680288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.403571, 2.774109, 1.447111>,  <2.756267, 2.871837, 1.048788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.403571, 2.774109, 1.447111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.081940, 2.797478, 1.683769>,  <2.888961, 2.811499, 1.825764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.081940, 2.797478, 1.683769>,  <3.403571, 2.774109, 1.447111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.081940, 2.797478, 1.683769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244644, -0.874486, 0.418836,
		0.541854, 0.481520, 0.688864,
		-0.804079, 0.058422, 0.591645,
		2.840716, 2.815004, 1.861263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.527305, 2.542878, 2.132526>,  <3.403571, 2.774109, 1.447111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.527305, 2.542878, 2.132526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.131115, 2.502541, 2.095024>,  <2.893401, 2.478338, 2.072523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.131115, 2.502541, 2.095024>,  <3.527305, 2.542878, 2.132526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.131115, 2.502541, 2.095024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078143, -0.972302, 0.220279,
		-0.113372, 0.210855, 0.970921,
		-0.990475, -0.100844, -0.093755,
		2.833972, 2.472287, 2.066898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.242034, 2.191924, 2.725766>,  <3.527305, 2.542878, 2.132526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.242034, 2.191924, 2.725766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.997910, 2.136063, 2.413864>,  <2.851435, 2.102546, 2.226723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.997910, 2.136063, 2.413864>,  <3.242034, 2.191924, 2.725766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.997910, 2.136063, 2.413864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091929, -0.990173, 0.105387,
		-0.786810, -0.007364, 0.617151,
		-0.610311, -0.139654, -0.779755,
		2.814816, 2.094166, 2.179938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.047931, 1.562429, 2.919234>,  <3.242034, 2.191924, 2.725766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.047931, 1.562429, 2.919234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.937901, 1.610504, 2.537682>,  <2.871882, 1.639349, 2.308750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.937901, 1.610504, 2.537682>,  <3.047931, 1.562429, 2.919234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.937901, 1.610504, 2.537682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122625, -0.979666, -0.158798,
		-0.953571, -0.160651, 0.254744,
		-0.275075, 0.120188, -0.953881,
		2.855378, 1.646560, 2.251517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.664707, 1.000049, 2.729245>,  <3.047931, 1.562429, 2.919234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.664707, 1.000049, 2.729245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.796032, 1.137161, 2.377174>,  <2.874827, 1.219429, 2.165932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.796032, 1.137161, 2.377174>,  <2.664707, 1.000049, 2.729245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.796032, 1.137161, 2.377174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142222, -0.939146, -0.312696,
		-0.933801, -0.022518, -0.357083,
		0.328312, 0.342781, -0.880177,
		2.894526, 1.239996, 2.113121>
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
