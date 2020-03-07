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
	<1.257862, 0.861810, -0.820453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.335938, 1.238453, -0.710705>,  <1.382783, 1.464438, -0.644856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.335938, 1.238453, -0.710705>,  <1.257862, 0.861810, -0.820453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.335938, 1.238453, -0.710705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328105, -0.200941, 0.923022,
		0.924255, -0.270187, 0.269724,
		0.195189, 0.941606, 0.274370,
		1.394494, 1.520935, -0.628394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.818339, 0.905464, -0.358221>,  <1.257862, 0.861810, -0.820453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.818339, 0.905464, -0.358221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.523117, 1.167122, -0.292044>,  <1.345984, 1.324116, -0.252337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.523117, 1.167122, -0.292044>,  <1.818339, 0.905464, -0.358221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.523117, 1.167122, -0.292044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168087, -0.415713, 0.893828,
		0.653470, 0.631885, 0.416772,
		-0.738055, 0.654144, 0.165444,
		1.301701, 1.363365, -0.242410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.842780, 1.178160, 0.308734>,  <1.818339, 0.905464, -0.358221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.842780, 1.178160, 0.308734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.459579, 1.162533, 0.195099>,  <1.229659, 1.153157, 0.126918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.459579, 1.162533, 0.195099>,  <1.842780, 1.178160, 0.308734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.459579, 1.162533, 0.195099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245291, -0.401522, 0.882390,
		-0.148541, 0.915016, 0.375076,
		-0.958002, -0.039068, -0.284088,
		1.172179, 1.150812, 0.109873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.263314, 1.600378, 0.812368>,  <1.842780, 1.178160, 0.308734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.263314, 1.600378, 0.812368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.146469, 1.270016, 0.619474>,  <1.076362, 1.071798, 0.503738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.146469, 1.270016, 0.619474>,  <1.263314, 1.600378, 0.812368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.146469, 1.270016, 0.619474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326305, -0.387904, 0.862007,
		-0.898997, 0.409157, -0.156186,
		-0.292111, -0.825906, -0.482234,
		1.058836, 1.022244, 0.474804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.591545, 1.575431, 0.969516>,  <1.263314, 1.600378, 0.812368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.591545, 1.575431, 0.969516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.728706, 1.210583, 0.879669>,  <0.811003, 0.991674, 0.825761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.728706, 1.210583, 0.879669>,  <0.591545, 1.575431, 0.969516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.728706, 1.210583, 0.879669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442645, -0.367797, 0.817797,
		-0.828543, -0.181000, -0.529864,
		0.342904, -0.912121, -0.224617,
		0.831578, 0.936947, 0.812284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.077462, 1.075824, 1.234592>,  <0.591545, 1.575431, 0.969516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.077462, 1.075824, 1.234592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.402634, 0.854382, 1.162296>,  <0.597737, 0.721516, 1.118919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.402634, 0.854382, 1.162296>,  <0.077462, 1.075824, 1.234592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.402634, 0.854382, 1.162296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227963, -0.588093, 0.776002,
		-0.535889, -0.589634, -0.604280,
		0.812930, -0.553604, -0.180738,
		0.646513, 0.688300, 1.108075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.139584, 0.353499, 1.107017>,  <0.077462, 1.075824, 1.234592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.139584, 0.353499, 1.107017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.237656, 0.343361, 1.239635>,  <0.463999, 0.337278, 1.319206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.237656, 0.343361, 1.239635>,  <-0.139584, 0.353499, 1.107017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.237656, 0.343361, 1.239635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270512, -0.638305, 0.720688,
		0.193361, -0.769367, -0.608840,
		0.943098, -0.025345, 0.331546,
		0.520585, 0.335757, 1.339099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.020093, -0.312123, 1.177803>,  <-0.139584, 0.353499, 1.107017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.020093, -0.312123, 1.177803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.310936, -0.143978, 1.394915>,  <0.485442, -0.043091, 1.525182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.310936, -0.143978, 1.394915>,  <0.020093, -0.312123, 1.177803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.310936, -0.143978, 1.394915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248153, -0.576235, 0.778700,
		0.640105, -0.700891, -0.314671,
		0.727108, 0.420363, 0.542779,
		0.529068, -0.017869, 1.557748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.356448, -0.020615, 2.651565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.003807, -0.144505, 2.773499>,  <0.219960, -0.218839, 2.846658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.003807, -0.144505, 2.773499>,  <-0.356448, -0.020615, 2.651565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.003807, -0.144505, 2.773499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414947, 0.404492, -0.814988,
		0.129120, 0.860498, 0.492820,
		0.900637, -0.309725, 0.304833,
		0.273998, -0.237422, 2.864949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.163903, 0.567263, 2.841356>,  <-0.356448, -0.020615, 2.651565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.163903, 0.567263, 2.841356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.342239, 0.240410, 2.695194>,  <0.449241, 0.044298, 2.607497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.342239, 0.240410, 2.695194>,  <0.163903, 0.567263, 2.841356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.342239, 0.240410, 2.695194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417178, 0.550864, -0.722850,
		0.791952, 0.169837, 0.586487,
		0.445841, -0.817132, -0.365405,
		0.475992, -0.004730, 2.585573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.792367, 0.791315, 2.712876>,  <0.163903, 0.567263, 2.841356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.792367, 0.791315, 2.712876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.738457, 0.476486, 2.472094>,  <0.706111, 0.287589, 2.327624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.738457, 0.476486, 2.472094>,  <0.792367, 0.791315, 2.712876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.738457, 0.476486, 2.472094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314659, 0.542059, -0.779206,
		0.939588, -0.294429, 0.174604,
		-0.134775, -0.787073, -0.601957,
		0.698024, 0.240364, 2.291507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.375980, 0.608933, 2.240782>,  <0.792367, 0.791315, 2.712876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.375980, 0.608933, 2.240782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.096375, 0.401447, 2.043880>,  <0.928611, 0.276956, 1.925739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.096375, 0.401447, 2.043880>,  <1.375980, 0.608933, 2.240782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.096375, 0.401447, 2.043880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396102, 0.292267, -0.870450,
		0.595384, -0.803441, 0.001164,
		-0.699015, -0.518713, -0.492255,
		0.886670, 0.245833, 1.896204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.770906, 0.192614, 1.694802>,  <1.375980, 0.608933, 2.240782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.770906, 0.192614, 1.694802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.391724, 0.234646, 1.574577>,  <1.164214, 0.259865, 1.502442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.391724, 0.234646, 1.574577>,  <1.770906, 0.192614, 1.694802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.391724, 0.234646, 1.574577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317782, 0.371096, -0.872526,
		0.019852, -0.922630, -0.385176,
		-0.947956, 0.105081, -0.300562,
		1.107337, 0.266170, 1.484409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.795385, 0.022113, 1.046659>,  <1.770906, 0.192614, 1.694802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.795385, 0.022113, 1.046659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.441376, 0.207684, 1.062191>,  <1.228970, 0.319026, 1.071510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.441376, 0.207684, 1.062191>,  <1.795385, 0.022113, 1.046659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.441376, 0.207684, 1.062191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143042, 0.350353, -0.925630,
		-0.443028, -0.813650, -0.376432,
		-0.885023, 0.463925, 0.038830,
		1.175869, 0.346861, 1.073840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.422792, -0.251589, 0.506572>,  <1.795385, 0.022113, 1.046659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.422792, -0.251589, 0.506572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.282600, 0.111347, 0.599436>,  <1.198485, 0.329109, 0.655154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.282600, 0.111347, 0.599436>,  <1.422792, -0.251589, 0.506572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.282600, 0.111347, 0.599436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088235, 0.278767, -0.956297,
		-0.932405, -0.314678, -0.177761,
		-0.350480, 0.907340, 0.232158,
		1.177456, 0.383549, 0.669083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.910673, -0.124488, 0.030092>,  <1.422792, -0.251589, 0.506572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.910673, -0.124488, 0.030092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.998238, 0.247360, 0.148672>,  <1.050776, 0.470469, 0.219820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.998238, 0.247360, 0.148672>,  <0.910673, -0.124488, 0.030092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.998238, 0.247360, 0.148672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016828, 0.300177, -0.953735,
		-0.975600, 0.213772, 0.050069,
		0.218911, 0.929621, 0.296450,
		1.063911, 0.526247, 0.237607>
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
