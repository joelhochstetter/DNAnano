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
	<3.588555, 0.084067, 0.874717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.813993, 0.386169, 1.008553>,  <3.949256, 0.567431, 1.088854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.813993, 0.386169, 1.008553>,  <3.588555, 0.084067, 0.874717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.813993, 0.386169, 1.008553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764208, 0.630486, -0.135912,
		-0.313603, -0.179097, 0.932511,
		0.563594, 0.755255, 0.334590,
		3.983072, 0.612746, 1.108930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.341192, 0.336854, 1.480693>,  <3.588555, 0.084067, 0.874717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.341192, 0.336854, 1.480693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.534327, 0.618744, 1.272758>,  <3.650208, 0.787878, 1.147998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.534327, 0.618744, 1.272758>,  <3.341192, 0.336854, 1.480693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.534327, 0.618744, 1.272758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818824, 0.573783, 0.017314,
		0.310475, 0.417295, 0.854091,
		0.482837, 0.704726, -0.519836,
		3.679178, 0.830162, 1.116808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.292579, 1.060382, 1.808185>,  <3.341192, 0.336854, 1.480693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.292579, 1.060382, 1.808185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.340241, 1.089474, 1.412102>,  <3.368838, 1.106929, 1.174452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.340241, 1.089474, 1.412102>,  <3.292579, 1.060382, 1.808185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.340241, 1.089474, 1.412102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879910, 0.469748, -0.071380,
		0.459957, 0.879799, 0.119968,
		0.119155, 0.072729, -0.990208,
		3.375987, 1.111292, 1.115039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.314142, 1.707655, 1.629459>,  <3.292579, 1.060382, 1.808185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.314142, 1.707655, 1.629459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193532, 1.526119, 1.294052>,  <3.121165, 1.417198, 1.092808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.193532, 1.526119, 1.294052>,  <3.314142, 1.707655, 1.629459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.193532, 1.526119, 1.294052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840661, 0.541483, 0.009226,
		0.449856, 0.707690, -0.544798,
		-0.301528, -0.453840, -0.838517,
		3.103073, 1.389967, 1.042497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.438328, 2.095770, 1.097559>,  <3.314142, 1.707655, 1.629459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.438328, 2.095770, 1.097559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.127897, 1.851669, 1.033943>,  <2.941638, 1.705209, 0.995774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.127897, 1.851669, 1.033943>,  <3.438328, 2.095770, 1.097559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.127897, 1.851669, 1.033943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601155, 0.792093, -0.105839,
		0.190563, 0.013469, -0.981582,
		-0.776079, -0.610252, -0.159040,
		2.895073, 1.668594, 0.986231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.132278, 2.199404, 0.426444>,  <3.438328, 2.095770, 1.097559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.132278, 2.199404, 0.426444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.832503, 2.024273, 0.625099>,  <2.652637, 1.919194, 0.744292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.832503, 2.024273, 0.625099>,  <3.132278, 2.199404, 0.426444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.832503, 2.024273, 0.625099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613327, 0.741616, -0.271727,
		-0.249344, -0.508244, -0.824327,
		-0.749438, -0.437828, 0.496637,
		2.607671, 1.892924, 0.774090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.508328, 2.186642, -0.002279>,  <3.132278, 2.199404, 0.426444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.508328, 2.186642, -0.002279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.311642, 2.107471, 0.336906>,  <2.193630, 2.059969, 0.540417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.311642, 2.107471, 0.336906>,  <2.508328, 2.186642, -0.002279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.311642, 2.107471, 0.336906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587310, 0.794352, -0.155154,
		-0.642871, -0.574308, -0.506839,
		-0.491715, -0.197927, 0.847963,
		2.164127, 2.048093, 0.591295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.750965, 2.268593, -0.153675>,  <2.508328, 2.186642, -0.002279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.750965, 2.268593, -0.153675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.795559, 2.303856, 0.242264>,  <1.822316, 2.325013, 0.479827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.795559, 2.303856, 0.242264>,  <1.750965, 2.268593, -0.153675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.795559, 2.303856, 0.242264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525062, 0.850901, -0.016644,
		-0.843730, -0.517876, 0.141152,
		0.111487, 0.088157, 0.989848,
		1.829005, 2.330303, 0.539218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.504946, 3.205508, 0.196436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.594116, 3.365746, 0.551926>,  <1.647618, 3.461888, 0.765219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.594116, 3.365746, 0.551926>,  <1.504946, 3.205508, 0.196436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.594116, 3.365746, 0.551926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424983, -0.860407, 0.281228,
		0.877322, 0.314999, -0.362052,
		0.222926, 0.400593, 0.888723,
		1.660994, 3.485924, 0.818543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.265497, 3.086572, 0.571418>,  <1.504946, 3.205508, 0.196436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.265497, 3.086572, 0.571418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.971439, 3.136875, 0.837875>,  <1.795004, 3.167057, 0.997750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.971439, 3.136875, 0.837875>,  <2.265497, 3.086572, 0.571418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.971439, 3.136875, 0.837875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224583, -0.881974, 0.414348,
		0.639628, 0.454210, 0.620136,
		-0.735145, 0.125757, 0.666143,
		1.750896, 3.174602, 1.037718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.525496, 2.932339, 1.295190>,  <2.265497, 3.086572, 0.571418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.525496, 2.932339, 1.295190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.147392, 2.851448, 1.192749>,  <1.920530, 2.802913, 1.131284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.147392, 2.851448, 1.192749>,  <2.525496, 2.932339, 1.295190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.147392, 2.851448, 1.192749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159514, -0.971017, 0.177995,
		-0.284675, 0.127399, 0.950121,
		-0.945259, -0.202228, -0.256103,
		1.863814, 2.790780, 1.115918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.092314, 2.485239, 1.791024>,  <2.525496, 2.932339, 1.295190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.092314, 2.485239, 1.791024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.963970, 2.421154, 1.417633>,  <1.886964, 2.382703, 1.193598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.963970, 2.421154, 1.417633>,  <2.092314, 2.485239, 1.791024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.963970, 2.421154, 1.417633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204128, -0.974124, 0.097025,
		-0.924868, -0.159418, 0.345261,
		-0.320860, -0.160213, -0.933478,
		1.867712, 2.373090, 1.137590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.623429, 1.893751, 1.792465>,  <2.092314, 2.485239, 1.791024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.623429, 1.893751, 1.792465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.811100, 1.930046, 1.441093>,  <1.923703, 1.951823, 1.230270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.811100, 1.930046, 1.441093>,  <1.623429, 1.893751, 1.792465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.811100, 1.930046, 1.441093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190841, -0.981621, 0.000532,
		-0.862237, -0.167890, -0.477871,
		0.469177, 0.090738, -0.878430,
		1.951853, 1.957268, 1.177564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.681980, 1.238279, 1.466889>,  <1.623429, 1.893751, 1.792465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.681980, 1.238279, 1.466889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.966743, 1.446510, 1.278343>,  <2.137602, 1.571449, 1.165216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.966743, 1.446510, 1.278343>,  <1.681980, 1.238279, 1.466889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.966743, 1.446510, 1.278343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503963, -0.846150, -0.173352,
		-0.489088, -0.114138, -0.864735,
		0.711909, 0.520578, -0.471363,
		2.180316, 1.602684, 1.136934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.920517, 0.832892, 0.894566>,  <1.681980, 1.238279, 1.466889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.920517, 0.832892, 0.894566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.229210, 1.084694, 0.930679>,  <2.414426, 1.235775, 0.952348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.229210, 1.084694, 0.930679>,  <1.920517, 0.832892, 0.894566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.229210, 1.084694, 0.930679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634579, -0.752968, -0.174210,
		-0.041685, 0.191736, -0.980561,
		0.771733, 0.629505, 0.090284,
		2.460730, 1.273545, 0.957765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.389283, 0.759026, 0.319738>,  <1.920517, 0.832892, 0.894566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.389283, 0.759026, 0.319738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.585056, 0.898094, 0.639633>,  <2.702520, 0.981535, 0.831570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.585056, 0.898094, 0.639633>,  <2.389283, 0.759026, 0.319738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.585056, 0.898094, 0.639633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659756, -0.747329, -0.078880,
		0.570243, 0.566238, -0.595145,
		0.489434, 0.347670, 0.799738,
		2.731886, 1.002395, 0.879555>
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
