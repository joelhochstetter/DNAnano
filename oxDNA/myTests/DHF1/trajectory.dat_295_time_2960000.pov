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
	<3.381344, 3.705797, 2.975098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.105480, 3.890549, 3.198181>,  <2.939962, 4.001400, 3.332031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.105480, 3.890549, 3.198181>,  <3.381344, 3.705797, 2.975098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.105480, 3.890549, 3.198181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438297, -0.879324, 0.186237,
		0.576425, -0.116002, 0.808874,
		-0.689659, 0.461879, 0.557708,
		2.898582, 4.029112, 3.365494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.313335, 3.336447, 3.546285>,  <3.381344, 3.705797, 2.975098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.313335, 3.336447, 3.546285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.992477, 3.549713, 3.653839>,  <2.799963, 3.677673, 3.718371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.992477, 3.549713, 3.653839>,  <3.313335, 3.336447, 3.546285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.992477, 3.549713, 3.653839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448289, -0.835158, 0.318666,
		0.394463, 0.135078, 0.908930,
		-0.802145, 0.533165, 0.268885,
		2.751834, 3.709663, 3.734505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.151738, 3.172067, 4.253642>,  <3.313335, 3.336447, 3.546285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.151738, 3.172067, 4.253642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.826252, 3.325455, 4.078911>,  <2.630960, 3.417488, 3.974072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.826252, 3.325455, 4.078911>,  <3.151738, 3.172067, 4.253642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.826252, 3.325455, 4.078911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554664, -0.736997, 0.386242,
		-0.173829, 0.556584, 0.812402,
		-0.813715, 0.383470, -0.436829,
		2.582138, 3.440496, 3.947862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.666485, 3.183063, 4.790481>,  <3.151738, 3.172067, 4.253642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.666485, 3.183063, 4.790481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.526550, 3.112411, 4.422478>,  <2.442590, 3.070020, 4.201675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.526550, 3.112411, 4.422478>,  <2.666485, 3.183063, 4.790481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.526550, 3.112411, 4.422478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473454, -0.814080, 0.336325,
		-0.808366, 0.553241, 0.201169,
		-0.349836, -0.176630, -0.920009,
		2.421599, 3.059422, 4.146475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.889266, 3.218465, 4.856082>,  <2.666485, 3.183063, 4.790481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.889266, 3.218465, 4.856082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.080311, 2.995789, 4.584206>,  <2.194938, 2.862183, 4.421080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.080311, 2.995789, 4.584206>,  <1.889266, 3.218465, 4.856082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.080311, 2.995789, 4.584206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303042, -0.830541, 0.467298,
		-0.824645, -0.017221, -0.565388,
		0.477625, -0.556692, -0.679683,
		2.223595, 2.828781, 4.380298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.427149, 2.697530, 4.686727>,  <1.889266, 3.218465, 4.856082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.427149, 2.697530, 4.686727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.788017, 2.583832, 4.556931>,  <2.004538, 2.515613, 4.479053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.788017, 2.583832, 4.556931>,  <1.427149, 2.697530, 4.686727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.788017, 2.583832, 4.556931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165219, -0.922534, 0.348760,
		-0.398488, -0.261029, -0.879245,
		0.902169, -0.284245, -0.324492,
		2.058668, 2.498558, 4.459583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.361338, 2.054850, 4.272188>,  <1.427149, 2.697530, 4.686727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.361338, 2.054850, 4.272188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.737450, 2.042786, 4.407814>,  <1.963117, 2.035547, 4.489190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.737450, 2.042786, 4.407814>,  <1.361338, 2.054850, 4.272188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.737450, 2.042786, 4.407814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182329, -0.885757, 0.426839,
		0.287456, -0.463169, -0.838358,
		0.940279, -0.030160, 0.339065,
		2.019534, 2.033738, 4.509533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.665854, 1.426607, 4.070425>,  <1.361338, 2.054850, 4.272188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.665854, 1.426607, 4.070425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.864651, 1.537064, 4.399483>,  <1.983929, 1.603338, 4.596918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.864651, 1.537064, 4.399483>,  <1.665854, 1.426607, 4.070425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.864651, 1.537064, 4.399483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077487, -0.930105, 0.359027,
		0.864289, -0.242177, -0.440857,
		0.496992, 0.276142, 0.822645,
		2.013748, 1.619906, 4.646276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.746256, 0.068525, 0.676233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.894908, 0.359726, 0.906677>,  <1.984099, 0.534447, 1.044944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.894908, 0.359726, 0.906677>,  <1.746256, 0.068525, 0.676233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.894908, 0.359726, 0.906677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101182, 0.585096, -0.804627,
		-0.922850, 0.357316, 0.143779,
		0.371631, 0.728002, 0.576110,
		2.006397, 0.578127, 1.079510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.403324, 0.726476, 0.632814>,  <1.746256, 0.068525, 0.676233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.403324, 0.726476, 0.632814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.784939, 0.786331, 0.736679>,  <2.013907, 0.822244, 0.798998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.784939, 0.786331, 0.736679>,  <1.403324, 0.726476, 0.632814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.784939, 0.786331, 0.736679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117292, 0.610882, -0.782985,
		-0.275787, 0.777452, 0.565252,
		0.954036, 0.149637, 0.259662,
		2.071150, 0.831222, 0.814578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.547333, 1.472169, 0.818374>,  <1.403324, 0.726476, 0.632814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.547333, 1.472169, 0.818374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.863024, 1.292404, 0.650970>,  <2.052438, 1.184545, 0.550528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.863024, 1.292404, 0.650970>,  <1.547333, 1.472169, 0.818374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.863024, 1.292404, 0.650970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068004, 0.741264, -0.667759,
		0.610326, 0.498553, 0.615587,
		0.789226, -0.449413, -0.418509,
		2.099792, 1.157580, 0.525418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.140655, 1.860206, 0.851164>,  <1.547333, 1.472169, 0.818374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.140655, 1.860206, 0.851164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.200671, 1.636765, 0.524864>,  <2.236681, 1.502699, 0.329084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.200671, 1.636765, 0.524864>,  <2.140655, 1.860206, 0.851164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.200671, 1.636765, 0.524864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286031, 0.814332, -0.505024,
		0.946401, -0.157556, 0.281961,
		0.150040, -0.558604, -0.815751,
		2.245683, 1.469183, 0.280139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.942295, 1.883131, 0.544926>,  <2.140655, 1.860206, 0.851164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.942295, 1.883131, 0.544926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.659877, 1.819733, 0.268845>,  <2.490426, 1.781694, 0.103196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.659877, 1.819733, 0.268845>,  <2.942295, 1.883131, 0.544926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.659877, 1.819733, 0.268845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367693, 0.750915, -0.548569,
		0.605228, -0.641097, -0.471903,
		-0.706046, -0.158494, -0.690203,
		2.448063, 1.772184, 0.061784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.247802, 2.165188, -0.072182>,  <2.942295, 1.883131, 0.544926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.247802, 2.165188, -0.072182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.869428, 2.105438, -0.187347>,  <2.642403, 2.069589, -0.256446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.869428, 2.105438, -0.187347>,  <3.247802, 2.165188, -0.072182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.869428, 2.105438, -0.187347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073647, 0.765550, -0.639147,
		0.315883, -0.625796, -0.713160,
		-0.945935, -0.149374, -0.287912,
		2.585647, 2.060626, -0.273721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.394116, 2.083070, -0.764900>,  <3.247802, 2.165188, -0.072182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.394116, 2.083070, -0.764900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.014251, 2.178406, -0.683578>,  <2.786331, 2.235607, -0.634786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.014251, 2.178406, -0.683578>,  <3.394116, 2.083070, -0.764900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.014251, 2.178406, -0.683578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103817, 0.851739, -0.513579,
		-0.295567, -0.466621, -0.833609,
		-0.949664, 0.238340, 0.203303,
		2.729352, 2.249908, -0.622588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.859497, 2.248852, -1.324788>,  <3.394116, 2.083070, -0.764900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.859497, 2.248852, -1.324788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.727857, 2.466309, -1.015945>,  <2.648872, 2.596782, -0.830640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.727857, 2.466309, -1.015945>,  <2.859497, 2.248852, -1.324788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.727857, 2.466309, -1.015945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139975, 0.836705, -0.529463,
		-0.933862, -0.066172, -0.351457,
		-0.329102, 0.543641, 0.772105,
		2.629126, 2.629401, -0.784314>
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
