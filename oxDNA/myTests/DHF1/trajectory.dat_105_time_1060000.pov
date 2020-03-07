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
	<2.137353, 1.471494, 1.492950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.338062, 1.126152, 1.471619>,  <2.458487, 0.918947, 1.458820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.338062, 1.126152, 1.471619>,  <2.137353, 1.471494, 1.492950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.338062, 1.126152, 1.471619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513068, -0.346691, 0.785218,
		-0.696409, -0.366640, -0.616919,
		0.501772, -0.863354, -0.053328,
		2.488594, 0.867146, 1.455620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.589278, 0.840759, 1.437843>,  <2.137353, 1.471494, 1.492950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.589278, 0.840759, 1.437843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.943061, 0.738266, 1.593832>,  <2.155331, 0.676770, 1.687425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.943061, 0.738266, 1.593832>,  <1.589278, 0.840759, 1.437843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.943061, 0.738266, 1.593832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456210, -0.299306, 0.838026,
		-0.098008, -0.919109, -0.381619,
		0.884458, -0.256232, 0.389973,
		2.208398, 0.661396, 1.710824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.633783, 0.091956, 1.716454>,  <1.589278, 0.840759, 1.437843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.633783, 0.091956, 1.716454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.901514, 0.329895, 1.894514>,  <2.062153, 0.472658, 2.001350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.901514, 0.329895, 1.894514>,  <1.633783, 0.091956, 1.716454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.901514, 0.329895, 1.894514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288200, -0.344364, 0.893507,
		0.684793, -0.726340, -0.059058,
		0.669327, 0.594847, 0.445150,
		2.102312, 0.508349, 2.028059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.268190, -0.211876, 2.082687>,  <1.633783, 0.091956, 1.716454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.268190, -0.211876, 2.082687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.124321, 0.119812, 2.253815>,  <2.038000, 0.318825, 2.356491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.124321, 0.119812, 2.253815>,  <2.268190, -0.211876, 2.082687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.124321, 0.119812, 2.253815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159555, -0.506406, 0.847405,
		0.919336, 0.236528, 0.314446,
		-0.359672, 0.829221, 0.427818,
		2.016420, 0.368578, 2.382160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.509450, -0.314127, 2.773875>,  <2.268190, -0.211876, 2.082687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.509450, -0.314127, 2.773875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.200288, -0.060326, 2.775763>,  <2.014791, 0.091955, 2.776896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.200288, -0.060326, 2.775763>,  <2.509450, -0.314127, 2.773875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.200288, -0.060326, 2.775763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220254, -0.275259, 0.935800,
		0.595067, 0.722245, 0.352501,
		-0.772906, 0.634503, 0.004720,
		1.968417, 0.130025, 2.777179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.507572, 0.171966, 3.387391>,  <2.509450, -0.314127, 2.773875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.507572, 0.171966, 3.387391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.126292, 0.145775, 3.269325>,  <1.897524, 0.130060, 3.198486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.126292, 0.145775, 3.269325>,  <2.507572, 0.171966, 3.387391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.126292, 0.145775, 3.269325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289847, -0.079819, 0.953739,
		-0.086009, 0.994656, 0.057105,
		-0.953200, -0.065478, -0.295164,
		1.840332, 0.126131, 3.180776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.125234, 0.576971, 3.875780>,  <2.507572, 0.171966, 3.387391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.125234, 0.576971, 3.875780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.863214, 0.330261, 3.701197>,  <1.706001, 0.182235, 3.596447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.863214, 0.330261, 3.701197>,  <2.125234, 0.576971, 3.875780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.863214, 0.330261, 3.701197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343675, -0.271219, 0.899071,
		-0.672900, 0.738938, -0.034308,
		-0.655052, -0.616775, -0.436458,
		1.666698, 0.145229, 3.570259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.588932, 0.691861, 4.296958>,  <2.125234, 0.576971, 3.875780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.588932, 0.691861, 4.296958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.470344, 0.374290, 4.084623>,  <1.399192, 0.183748, 3.957222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.470344, 0.374290, 4.084623>,  <1.588932, 0.691861, 4.296958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.470344, 0.374290, 4.084623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325084, -0.438745, 0.837749,
		-0.898012, 0.420933, -0.128019,
		-0.296469, -0.793926, -0.530837,
		1.381403, 0.136113, 3.925372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.319446, 4.650633, 5.422041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.272364, 4.280830, 5.277027>,  <1.244114, 4.058949, 5.190019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.272364, 4.280830, 5.277027>,  <1.319446, 4.650633, 5.422041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.272364, 4.280830, 5.277027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211625, 0.333334, -0.918751,
		0.970237, -0.184864, 0.156413,
		-0.117706, -0.924507, -0.362534,
		1.237052, 4.003478, 5.168267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.895752, 4.455461, 5.119927>,  <1.319446, 4.650633, 5.422041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.895752, 4.455461, 5.119927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.589027, 4.263748, 4.949146>,  <1.404993, 4.148720, 4.846678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.589027, 4.263748, 4.949146>,  <1.895752, 4.455461, 5.119927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.589027, 4.263748, 4.949146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102229, 0.565485, -0.818398,
		0.633679, -0.671204, -0.384624,
		-0.766811, -0.479282, -0.426953,
		1.358984, 4.119964, 4.821061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.060519, 4.107326, 4.538531>,  <1.895752, 4.455461, 5.119927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.060519, 4.107326, 4.538531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.669683, 4.178268, 4.491470>,  <1.435182, 4.220834, 4.463234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.669683, 4.178268, 4.491470>,  <2.060519, 4.107326, 4.538531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.669683, 4.178268, 4.491470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185480, 0.438490, -0.879388,
		-0.104376, -0.881063, -0.461339,
		-0.977089, 0.177356, -0.117652,
		1.376557, 4.231475, 4.456175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.908462, 4.103512, 3.823965>,  <2.060519, 4.107326, 4.538531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.908462, 4.103512, 3.823965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.587162, 4.313606, 3.936333>,  <1.394382, 4.439662, 4.003754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.587162, 4.313606, 3.936333>,  <1.908462, 4.103512, 3.823965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.587162, 4.313606, 3.936333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030086, 0.435248, -0.899808,
		-0.594881, -0.731223, -0.333811,
		-0.803251, 0.525235, 0.280920,
		1.346187, 4.471177, 4.020609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.263432, 4.055875, 3.344526>,  <1.908462, 4.103512, 3.823965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.263432, 4.055875, 3.344526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.256296, 4.400352, 3.547710>,  <1.252015, 4.607039, 3.669621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.256296, 4.400352, 3.547710>,  <1.263432, 4.055875, 3.344526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.256296, 4.400352, 3.547710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093680, 0.507248, -0.856693,
		-0.995442, 0.032303, -0.089726,
		-0.017840, 0.861194, 0.507962,
		1.250944, 4.658711, 3.700099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.778404, 4.381524, 3.000930>,  <1.263432, 4.055875, 3.344526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.778404, 4.381524, 3.000930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.027206, 4.633232, 3.187317>,  <1.176488, 4.784257, 3.299149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.027206, 4.633232, 3.187317>,  <0.778404, 4.381524, 3.000930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.027206, 4.633232, 3.187317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101810, 0.525050, -0.844960,
		-0.776365, 0.573011, 0.262518,
		0.622006, 0.629271, 0.465969,
		1.213808, 4.822013, 3.327107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.597609, 5.145480, 2.875076>,  <0.778404, 4.381524, 3.000930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.597609, 5.145480, 2.875076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.984926, 5.174004, 2.970844>,  <1.217317, 5.191118, 3.028306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.984926, 5.174004, 2.970844>,  <0.597609, 5.145480, 2.875076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.984926, 5.174004, 2.970844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181880, 0.455763, -0.871320,
		-0.171253, 0.887240, 0.428343,
		0.968293, 0.071309, 0.239422,
		1.275414, 5.195396, 3.042671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.806269, 5.808703, 2.704244>,  <0.597609, 5.145480, 2.875076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.806269, 5.808703, 2.704244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.146776, 5.599030, 2.713852>,  <1.351080, 5.473226, 2.719617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.146776, 5.599030, 2.713852>,  <0.806269, 5.808703, 2.704244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.146776, 5.599030, 2.713852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362522, 0.554402, -0.749144,
		0.379372, 0.646430, 0.661971,
		0.851267, -0.524183, 0.024020,
		1.402156, 5.441775, 2.721058>
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
