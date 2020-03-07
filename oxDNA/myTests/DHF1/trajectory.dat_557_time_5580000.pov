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
	<6.000241, 3.842979, 4.299922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.782265, 3.666216, 4.584949>,  <5.651479, 3.560158, 4.755966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.782265, 3.666216, 4.584949>,  <6.000241, 3.842979, 4.299922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.782265, 3.666216, 4.584949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528420, -0.478832, -0.701065,
		0.651008, -0.758575, 0.027422,
		-0.544941, -0.441909, 0.712570,
		5.618783, 3.533643, 4.798720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.974141, 3.171283, 4.177230>,  <6.000241, 3.842979, 4.299922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.974141, 3.171283, 4.177230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.643654, 3.253834, 4.386906>,  <5.445362, 3.303364, 4.512711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.643654, 3.253834, 4.386906>,  <5.974141, 3.171283, 4.177230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.643654, 3.253834, 4.386906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545181, -0.527331, -0.651690,
		0.141928, -0.824215, 0.548203,
		-0.826217, 0.206376, 0.524189,
		5.395789, 3.315747, 4.544162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.526371, 2.595044, 4.501769>,  <5.974141, 3.171283, 4.177230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.526371, 2.595044, 4.501769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.299885, 2.898706, 4.373343>,  <5.163993, 3.080904, 4.296287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.299885, 2.898706, 4.373343>,  <5.526371, 2.595044, 4.501769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.299885, 2.898706, 4.373343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514732, -0.629892, -0.581624,
		-0.643787, -0.164052, 0.747412,
		-0.566206, 0.759160, -0.321074,
		5.130021, 3.126453, 4.277023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.761214, 2.605442, 4.721179>,  <5.526371, 2.595044, 4.501769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.761214, 2.605442, 4.721179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.826790, 2.762543, 4.359213>,  <4.866136, 2.856803, 4.142034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.826790, 2.762543, 4.359213>,  <4.761214, 2.605442, 4.721179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.826790, 2.762543, 4.359213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671890, -0.627196, -0.393940,
		-0.722279, 0.672585, 0.161063,
		0.163940, 0.392751, -0.904914,
		4.875972, 2.880368, 4.087739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.164900, 2.618875, 4.420873>,  <4.761214, 2.605442, 4.721179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.164900, 2.618875, 4.420873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.413116, 2.653473, 4.109118>,  <4.562046, 2.674232, 3.922064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.413116, 2.653473, 4.109118>,  <4.164900, 2.618875, 4.420873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.413116, 2.653473, 4.109118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656463, -0.486354, -0.576642,
		-0.428936, 0.869470, -0.245022,
		0.620541, 0.086495, -0.779389,
		4.599279, 2.679421, 3.875301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.702763, 2.695081, 3.905829>,  <4.164900, 2.618875, 4.420873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.702763, 2.695081, 3.905829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.042912, 2.596333, 3.719959>,  <4.247001, 2.537083, 3.608437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.042912, 2.596333, 3.719959>,  <3.702763, 2.695081, 3.905829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.042912, 2.596333, 3.719959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524849, -0.460801, -0.715679,
		-0.037441, 0.852477, -0.521422,
		0.850371, -0.246872, -0.464675,
		4.298023, 2.522271, 3.580557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.667296, 2.907070, 3.217983>,  <3.702763, 2.695081, 3.905829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.667296, 2.907070, 3.217983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.919006, 2.597027, 3.240673>,  <4.070033, 2.411001, 3.254287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.919006, 2.597027, 3.240673>,  <3.667296, 2.907070, 3.217983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.919006, 2.597027, 3.240673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577974, -0.515527, -0.632596,
		0.519574, 0.365293, -0.772401,
		0.629277, -0.775109, 0.056725,
		4.107790, 2.364494, 3.257690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.830105, 2.768367, 2.528685>,  <3.667296, 2.907070, 3.217983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.830105, 2.768367, 2.528685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.907509, 2.419472, 2.708353>,  <3.953951, 2.210135, 2.816154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.907509, 2.419472, 2.708353>,  <3.830105, 2.768367, 2.528685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.907509, 2.419472, 2.708353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441996, -0.486238, -0.753798,
		0.875896, -0.052664, -0.479618,
		0.193510, -0.872238, 0.449171,
		3.965562, 2.157800, 2.843104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.961548, 1.357441, 2.344459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.288658, 1.127342, 2.351776>,  <3.484924, 0.989283, 2.356167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.288658, 1.127342, 2.351776>,  <2.961548, 1.357441, 2.344459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.288658, 1.127342, 2.351776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473817, 0.690943, 0.545981,
		-0.326714, -0.437822, 0.837598,
		0.817775, -0.575248, 0.018293,
		3.533991, 0.954768, 2.357264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.094560, 1.231066, 3.006527>,  <2.961548, 1.357441, 2.344459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.094560, 1.231066, 3.006527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.433456, 1.224300, 2.794151>,  <3.636794, 1.220241, 2.666726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.433456, 1.224300, 2.794151>,  <3.094560, 1.231066, 3.006527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.433456, 1.224300, 2.794151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407703, 0.661427, 0.629518,
		0.340529, -0.749819, 0.567284,
		0.847242, -0.016914, -0.530938,
		3.687629, 1.219226, 2.634870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.554672, 1.193889, 3.479580>,  <3.094560, 1.231066, 3.006527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.554672, 1.193889, 3.479580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.730003, 1.339024, 3.150650>,  <3.835202, 1.426105, 2.953292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.730003, 1.339024, 3.150650>,  <3.554672, 1.193889, 3.479580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.730003, 1.339024, 3.150650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538470, 0.626537, 0.563473,
		0.719666, -0.689783, 0.079252,
		0.438328, 0.362837, -0.822324,
		3.861502, 1.447875, 2.903953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.274010, 1.034014, 3.392370>,  <3.554672, 1.193889, 3.479580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.274010, 1.034014, 3.392370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.227112, 1.393856, 3.224102>,  <4.198973, 1.609761, 3.123141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.227112, 1.393856, 3.224102>,  <4.274010, 1.034014, 3.392370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.227112, 1.393856, 3.224102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702043, 0.374684, 0.605597,
		0.702417, -0.224326, -0.675491,
		-0.117244, 0.899606, -0.420671,
		4.191938, 1.663738, 3.097901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.952051, 1.395756, 3.313473>,  <4.274010, 1.034014, 3.392370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.952051, 1.395756, 3.313473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.708168, 1.706299, 3.249561>,  <4.561838, 1.892624, 3.211214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.708168, 1.706299, 3.249561>,  <4.952051, 1.395756, 3.313473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.708168, 1.706299, 3.249561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633457, 0.598434, 0.490519,
		0.476434, 0.197860, -0.856658,
		-0.609707, 0.776356, -0.159779,
		4.525256, 1.939206, 3.201628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.388168, 1.919912, 3.102351>,  <4.952051, 1.395756, 3.313473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.388168, 1.919912, 3.102351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.059105, 2.101269, 3.239563>,  <4.861667, 2.210083, 3.321890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.059105, 2.101269, 3.239563>,  <5.388168, 1.919912, 3.102351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.059105, 2.101269, 3.239563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567094, 0.697339, 0.438318,
		-0.040479, 0.555117, -0.830787,
		-0.822658, 0.453392, 0.343031,
		4.812307, 2.237286, 3.342472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.223342, 2.618332, 2.720435>,  <5.388168, 1.919912, 3.102351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.223342, 2.618332, 2.720435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.067314, 2.653259, 3.087090>,  <4.973698, 2.674216, 3.307082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.067314, 2.653259, 3.087090>,  <5.223342, 2.618332, 2.720435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.067314, 2.653259, 3.087090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578417, 0.797800, 0.170143,
		-0.716436, 0.596565, -0.361704,
		-0.390069, 0.087319, 0.916636,
		4.950294, 2.679455, 3.362080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.070603, 3.313730, 2.892487>,  <5.223342, 2.618332, 2.720435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.070603, 3.313730, 2.892487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.057610, 3.176430, 3.267960>,  <5.049813, 3.094050, 3.493243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.057610, 3.176430, 3.267960>,  <5.070603, 3.313730, 2.892487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.057610, 3.176430, 3.267960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587481, 0.753249, 0.295772,
		-0.808586, 0.561066, 0.177184,
		-0.032484, -0.343249, 0.938682,
		5.047864, 3.073455, 3.549564>
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
