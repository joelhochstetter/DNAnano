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
	<24.466776, 34.804855, 35.099998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326134, 35.160160, 34.981766>,  <24.241749, 35.373344, 34.910828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326134, 35.160160, 34.981766>,  <24.466776, 34.804855, 35.099998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326134, 35.160160, 34.981766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589645, -0.455373, -0.667050,
		-0.727114, -0.060248, 0.683868,
		-0.351603, 0.888261, -0.295583,
		24.220654, 35.426640, 34.893089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222195, 34.528149, 35.226948>,  <24.466776, 34.804855, 35.099998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222195, 34.528149, 35.226948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499739, 34.630169, 34.957577>,  <25.666265, 34.691380, 34.795956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.499739, 34.630169, 34.957577>,  <25.222195, 34.528149, 35.226948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499739, 34.630169, 34.957577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217999, -0.965691, -0.141129,
		-0.686319, -0.048883, -0.725656,
		0.693861, 0.255052, -0.673429,
		25.707897, 34.706684, 34.755547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.043240, 34.185059, 34.553036>,  <25.222195, 34.528149, 35.226948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.043240, 34.185059, 34.553036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425869, 34.250683, 34.649414>,  <25.655447, 34.290058, 34.707241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425869, 34.250683, 34.649414>,  <25.043240, 34.185059, 34.553036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425869, 34.250683, 34.649414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197688, -0.972566, -0.122618,
		0.214216, 0.164924, -0.962763,
		0.956573, 0.164060, 0.240943,
		25.712841, 34.299900, 34.721699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.476841, 33.822697, 34.037395>,  <25.043240, 34.185059, 34.553036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.476841, 33.822697, 34.037395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675964, 33.841846, 34.383781>,  <25.795439, 33.853336, 34.591614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675964, 33.841846, 34.383781>,  <25.476841, 33.822697, 34.037395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675964, 33.841846, 34.383781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162151, -0.986007, -0.038703,
		0.851995, 0.159684, -0.498604,
		0.497807, 0.047875, 0.865966,
		25.825306, 33.856209, 34.643570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960743, 33.376854, 33.977539>,  <25.476841, 33.822697, 34.037395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960743, 33.376854, 33.977539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003736, 33.414425, 34.373444>,  <26.029533, 33.436966, 34.610985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003736, 33.414425, 34.373444>,  <25.960743, 33.376854, 33.977539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003736, 33.414425, 34.373444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283817, -0.957000, 0.059995,
		0.952835, 0.274462, -0.129521,
		0.107485, 0.093926, 0.989760,
		26.035982, 33.442604, 34.670372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691906, 33.436943, 34.325321>,  <25.960743, 33.376854, 33.977539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691906, 33.436943, 34.325321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453959, 33.236511, 34.576733>,  <26.311190, 33.116253, 34.727581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.453959, 33.236511, 34.576733>,  <26.691906, 33.436943, 34.325321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.453959, 33.236511, 34.576733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566818, -0.815917, -0.114000,
		0.569954, 0.288449, 0.769383,
		-0.594870, -0.501075, 0.628533,
		26.275497, 33.086189, 34.765293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063477, 33.091816, 34.826099>,  <26.691906, 33.436943, 34.325321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063477, 33.091816, 34.826099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729593, 32.875095, 34.865520>,  <26.529264, 32.745064, 34.889172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729593, 32.875095, 34.865520>,  <27.063477, 33.091816, 34.826099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729593, 32.875095, 34.865520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537266, -0.840485, -0.070219,
		0.120874, -0.005665, 0.992652,
		-0.834706, -0.541806, 0.098549,
		26.479181, 32.712555, 34.895084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148504, 32.426224, 35.242851>,  <27.063477, 33.091816, 34.826099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148504, 32.426224, 35.242851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838680, 32.378273, 34.994434>,  <26.652786, 32.349503, 34.845387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838680, 32.378273, 34.994434>,  <27.148504, 32.426224, 35.242851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838680, 32.378273, 34.994434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280894, -0.944933, -0.167929,
		-0.566707, -0.304517, 0.765580,
		-0.774559, -0.119880, -0.621037,
		26.606312, 32.342308, 34.808125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891285, 31.655701, 35.424065>,  <27.148504, 32.426224, 35.242851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891285, 31.655701, 35.424065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754051, 31.777443, 35.068615>,  <26.671711, 31.850489, 34.855343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754051, 31.777443, 35.068615>,  <26.891285, 31.655701, 35.424065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754051, 31.777443, 35.068615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339695, -0.841813, -0.419473,
		-0.875729, -0.445777, 0.185423,
		-0.343083, 0.304358, -0.888629,
		26.651127, 31.868750, 34.802025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469786, 31.169481, 35.227360>,  <26.891285, 31.655701, 35.424065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469786, 31.169481, 35.227360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608927, 31.362967, 34.906109>,  <26.692411, 31.479057, 34.713356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608927, 31.362967, 34.906109>,  <26.469786, 31.169481, 35.227360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608927, 31.362967, 34.906109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432400, -0.842854, -0.320356,
		-0.831883, -0.235837, -0.502347,
		0.347853, 0.483714, -0.803131,
		26.713284, 31.508081, 34.665169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173168, 30.775009, 34.684029>,  <26.469786, 31.169481, 35.227360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173168, 30.775009, 34.684029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509174, 30.976833, 34.604229>,  <26.710777, 31.097927, 34.556351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509174, 30.976833, 34.604229>,  <26.173168, 30.775009, 34.684029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509174, 30.976833, 34.604229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479319, -0.862394, -0.162879,
		-0.254225, 0.041199, -0.966267,
		0.840014, 0.504558, -0.199495,
		26.761179, 31.128201, 34.544380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511456, 30.567038, 33.973141>,  <26.173168, 30.775009, 34.684029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511456, 30.567038, 33.973141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777630, 30.665859, 34.254894>,  <26.937334, 30.725153, 34.423946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777630, 30.665859, 34.254894>,  <26.511456, 30.567038, 33.973141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777630, 30.665859, 34.254894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396734, -0.916380, -0.053389,
		0.632296, 0.314981, -0.707806,
		0.665436, 0.247053, 0.704386,
		26.977261, 30.739975, 34.466209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175932, 30.347263, 33.688244>,  <26.511456, 30.567038, 33.973141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175932, 30.347263, 33.688244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208263, 30.395491, 34.084007>,  <27.227663, 30.424427, 34.321465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208263, 30.395491, 34.084007>,  <27.175932, 30.347263, 33.688244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208263, 30.395491, 34.084007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535710, -0.842346, 0.058884,
		0.840524, 0.525277, -0.132676,
		0.080829, 0.120570, 0.989409,
		27.232512, 30.431662, 34.380829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892387, 30.380302, 34.006195>,  <27.175932, 30.347263, 33.688244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892387, 30.380302, 34.006195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680269, 30.229822, 34.310108>,  <27.552999, 30.139534, 34.492455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680269, 30.229822, 34.310108>,  <27.892387, 30.380302, 34.006195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680269, 30.229822, 34.310108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666451, -0.738908, 0.099289,
		0.524054, 0.559007, 0.642556,
		-0.530293, -0.376200, 0.759778,
		27.521181, 30.116962, 34.538040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912252, 31.069950, 34.280159>,  <27.892387, 30.380302, 34.006195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912252, 31.069950, 34.280159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540501, 31.011652, 34.144508>,  <27.317450, 30.976673, 34.063118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540501, 31.011652, 34.144508>,  <27.912252, 31.069950, 34.280159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540501, 31.011652, 34.144508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230663, 0.946585, 0.225325,
		0.288175, 0.287638, -0.913356,
		-0.929381, -0.145744, -0.339130,
		27.261686, 30.967928, 34.042770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612822, 31.647631, 33.777649>,  <27.912252, 31.069950, 34.280159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612822, 31.647631, 33.777649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335135, 31.474506, 34.007687>,  <27.168522, 31.370632, 34.145710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335135, 31.474506, 34.007687>,  <27.612822, 31.647631, 33.777649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335135, 31.474506, 34.007687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414835, 0.893548, 0.171711,
		-0.588196, -0.119367, -0.799860,
		-0.694217, -0.432810, 0.575099,
		27.126869, 31.344664, 34.180218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344297, 31.609489, 33.000694>,  <27.612822, 31.647631, 33.777649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344297, 31.609489, 33.000694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403818, 31.923019, 32.759541>,  <27.439529, 32.111137, 32.614849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.403818, 31.923019, 32.759541>,  <27.344297, 31.609489, 33.000694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403818, 31.923019, 32.759541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282724, 0.617948, 0.733626,
		0.947589, 0.061287, 0.313557,
		0.148800, 0.783827, -0.602888,
		27.448458, 32.158169, 32.578674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071722, 32.064346, 33.532295>,  <27.344297, 31.609489, 33.000694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071722, 32.064346, 33.532295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975348, 31.893661, 33.880978>,  <26.917522, 31.791252, 34.090187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975348, 31.893661, 33.880978>,  <27.071722, 32.064346, 33.532295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975348, 31.893661, 33.880978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764159, 0.637125, 0.100666,
		-0.598339, -0.641866, -0.479580,
		-0.240938, -0.426708, 0.871704,
		26.903067, 31.765650, 34.142490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341280, 32.133461, 33.530342>,  <27.071722, 32.064346, 33.532295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341280, 32.133461, 33.530342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438705, 32.088543, 33.915688>,  <26.497160, 32.061592, 34.146896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438705, 32.088543, 33.915688>,  <26.341280, 32.133461, 33.530342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438705, 32.088543, 33.915688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750628, 0.607182, 0.260553,
		-0.614195, -0.786587, 0.063596,
		0.243562, -0.112294, 0.963363,
		26.511774, 32.054855, 34.204697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695894, 32.241390, 33.900612>,  <26.341280, 32.133461, 33.530342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695894, 32.241390, 33.900612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972836, 32.260330, 34.188614>,  <26.139000, 32.271694, 34.361416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.972836, 32.260330, 34.188614>,  <25.695894, 32.241390, 33.900612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.972836, 32.260330, 34.188614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654405, 0.461575, 0.598918,
		-0.303977, -0.885837, 0.350558,
		0.692352, 0.047350, 0.720004,
		26.180542, 32.274536, 34.404613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429676, 31.971251, 34.495918>,  <25.695894, 32.241390, 33.900612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429676, 31.971251, 34.495918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711712, 32.233295, 34.604488>,  <25.880934, 32.390522, 34.669632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.711712, 32.233295, 34.604488>,  <25.429676, 31.971251, 34.495918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711712, 32.233295, 34.604488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658675, 0.463269, 0.592899,
		0.262672, -0.596831, 0.758153,
		0.705089, 0.655114, 0.271430,
		25.923239, 32.429829, 34.685917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.340342, 32.222481, 35.067219>,  <25.429676, 31.971251, 34.495918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.340342, 32.222481, 35.067219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715082, 32.362068, 35.076420>,  <25.939926, 32.445820, 35.081940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.715082, 32.362068, 35.076420>,  <25.340342, 32.222481, 35.067219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.715082, 32.362068, 35.076420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346704, 0.918135, 0.191898,
		0.045850, -0.187754, 0.981146,
		0.936853, 0.348965, 0.022998,
		25.996138, 32.466759, 35.083321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564419, 32.407837, 35.734562>,  <25.340342, 32.222481, 35.067219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564419, 32.407837, 35.734562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736603, 32.616245, 35.439743>,  <25.839914, 32.741291, 35.262852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.736603, 32.616245, 35.439743>,  <25.564419, 32.407837, 35.734562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.736603, 32.616245, 35.439743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375890, 0.845874, 0.378422,
		0.820615, 0.114151, 0.559965,
		0.430463, 0.521024, -0.737045,
		25.865742, 32.772552, 35.218628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623898, 33.111835, 35.829277>,  <25.564419, 32.407837, 35.734562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623898, 33.111835, 35.829277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914846, 33.109039, 35.554794>,  <26.089417, 33.107361, 35.390106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914846, 33.109039, 35.554794>,  <25.623898, 33.111835, 35.829277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914846, 33.109039, 35.554794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027596, 0.998841, -0.039431,
		0.685686, 0.047617, 0.726338,
		0.727374, -0.006993, -0.686206,
		26.133059, 33.106941, 35.348934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140463, 33.619934, 35.950172>,  <25.623898, 33.111835, 35.829277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140463, 33.619934, 35.950172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110006, 33.544121, 35.558605>,  <26.091732, 33.498634, 35.323666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110006, 33.544121, 35.558605>,  <26.140463, 33.619934, 35.950172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110006, 33.544121, 35.558605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097198, 0.975680, -0.196468,
		0.992348, -0.110109, -0.055869,
		-0.076143, -0.189534, -0.978917,
		26.087164, 33.487259, 35.264931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681019, 34.027157, 35.636356>,  <26.140463, 33.619934, 35.950172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681019, 34.027157, 35.636356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414944, 33.972782, 35.342678>,  <26.255299, 33.940159, 35.166470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414944, 33.972782, 35.342678>,  <26.681019, 34.027157, 35.636356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414944, 33.972782, 35.342678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115220, 0.952824, -0.280805,
		0.737731, -0.271383, -0.618147,
		-0.665190, -0.135935, -0.734196,
		26.215387, 33.932003, 35.122417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.993568, 34.309166, 35.016476>,  <26.681019, 34.027157, 35.636356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.993568, 34.309166, 35.016476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605770, 34.333931, 34.921616>,  <26.373091, 34.348789, 34.864700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.605770, 34.333931, 34.921616>,  <26.993568, 34.309166, 35.016476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605770, 34.333931, 34.921616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092330, 0.988546, -0.119379,
		0.227043, -0.137633, -0.964110,
		-0.969498, 0.061912, -0.237150,
		26.314920, 34.352505, 34.850471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976944, 34.436661, 34.316952>,  <26.993568, 34.309166, 35.016476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976944, 34.436661, 34.316952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702137, 34.586937, 34.565746>,  <26.537252, 34.677105, 34.715023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702137, 34.586937, 34.565746>,  <26.976944, 34.436661, 34.316952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702137, 34.586937, 34.565746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297802, 0.926357, -0.230602,
		-0.662813, 0.026800, -0.748305,
		-0.687018, 0.375693, 0.621982,
		26.496031, 34.699646, 34.752342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706596, 35.103573, 34.028164>,  <26.976944, 34.436661, 34.316952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706596, 35.103573, 34.028164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669106, 35.132030, 34.425385>,  <26.646610, 35.149105, 34.663715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669106, 35.132030, 34.425385>,  <26.706596, 35.103573, 34.028164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669106, 35.132030, 34.425385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313749, 0.948731, -0.038352,
		-0.944869, 0.307974, -0.111243,
		-0.093729, 0.071140, 0.993053,
		26.640987, 35.153374, 34.723301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285727, 35.764050, 34.281277>,  <26.706596, 35.103573, 34.028164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285727, 35.764050, 34.281277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549391, 35.623138, 34.547031>,  <26.707590, 35.538593, 34.706486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549391, 35.623138, 34.547031>,  <26.285727, 35.764050, 34.281277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549391, 35.623138, 34.547031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408425, 0.909535, 0.077046,
		-0.631424, 0.220567, 0.743407,
		0.659160, -0.352274, 0.664387,
		26.747139, 35.517456, 34.746349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477924, 36.357822, 34.682274>,  <26.285727, 35.764050, 34.281277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477924, 36.357822, 34.682274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753609, 36.095253, 34.804977>,  <26.919020, 35.937714, 34.878597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753609, 36.095253, 34.804977>,  <26.477924, 36.357822, 34.682274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753609, 36.095253, 34.804977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633449, 0.751414, 0.184717,
		-0.351753, 0.067006, 0.933692,
		0.689211, -0.656421, 0.306757,
		26.960373, 35.898327, 34.897003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678793, 36.553642, 35.297401>,  <26.477924, 36.357822, 34.682274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678793, 36.553642, 35.297401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983374, 36.322281, 35.180344>,  <27.166122, 36.183464, 35.110107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983374, 36.322281, 35.180344>,  <26.678793, 36.553642, 35.297401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983374, 36.322281, 35.180344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647950, 0.692169, 0.317904,
		0.018685, -0.431689, 0.901829,
		0.761454, -0.578400, -0.292646,
		27.211809, 36.148762, 35.092548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090233, 36.691299, 35.737183>,  <26.678793, 36.553642, 35.297401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090233, 36.691299, 35.737183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322411, 36.518837, 35.460869>,  <27.461718, 36.415359, 35.295078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.322411, 36.518837, 35.460869>,  <27.090233, 36.691299, 35.737183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322411, 36.518837, 35.460869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705915, 0.689303, 0.162927,
		0.405914, -0.582207, 0.704464,
		0.580446, -0.431157, -0.690786,
		27.496544, 36.389488, 35.253632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678272, 36.593590, 36.065289>,  <27.090233, 36.691299, 35.737183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678272, 36.593590, 36.065289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766056, 36.599785, 35.675091>,  <27.818727, 36.603500, 35.440971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766056, 36.599785, 35.675091>,  <27.678272, 36.593590, 36.065289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766056, 36.599785, 35.675091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635830, 0.756096, 0.155048,
		0.739971, -0.654278, 0.156087,
		0.219462, 0.015486, -0.975498,
		27.831894, 36.604431, 35.382442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419142, 36.502323, 35.866100>,  <27.678272, 36.593590, 36.065289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419142, 36.502323, 35.866100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234188, 36.707531, 35.576820>,  <28.123217, 36.830654, 35.403252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234188, 36.707531, 35.576820>,  <28.419142, 36.502323, 35.866100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234188, 36.707531, 35.576820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564366, 0.799355, 0.206209,
		0.683880, -0.312799, -0.659140,
		-0.462385, 0.513018, -0.723196,
		28.095472, 36.861435, 35.359863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894732, 36.863113, 35.452770>,  <28.419142, 36.502323, 35.866100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894732, 36.863113, 35.452770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566210, 37.091145, 35.444107>,  <28.369097, 37.227962, 35.438911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566210, 37.091145, 35.444107>,  <28.894732, 36.863113, 35.452770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566210, 37.091145, 35.444107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568353, 0.820922, 0.055342,
		0.049327, 0.033144, -0.998232,
		-0.821305, 0.570078, -0.021656,
		28.319818, 37.262169, 35.437611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767277, 36.222034, 35.230328>,  <28.894732, 36.863113, 35.452770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767277, 36.222034, 35.230328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638470, 36.472488, 34.946281>,  <28.561186, 36.622761, 34.775852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638470, 36.472488, 34.946281>,  <28.767277, 36.222034, 35.230328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638470, 36.472488, 34.946281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812728, 0.567526, 0.131860,
		0.485570, -0.534669, -0.691629,
		-0.322016, 0.626134, -0.710114,
		28.541864, 36.660328, 34.733246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395145, 36.480679, 34.864113>,  <28.767277, 36.222034, 35.230328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395145, 36.480679, 34.864113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089777, 36.738792, 34.852840>,  <28.906555, 36.893661, 34.846077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089777, 36.738792, 34.852840>,  <29.395145, 36.480679, 34.864113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089777, 36.738792, 34.852840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613314, 0.737896, 0.281702,
		0.202570, 0.197776, -0.959088,
		-0.763421, 0.645286, -0.028177,
		28.860750, 36.932377, 34.844387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654232, 37.075043, 34.463242>,  <29.395145, 36.480679, 34.864113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654232, 37.075043, 34.463242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356323, 37.216347, 34.689701>,  <29.177578, 37.301128, 34.825577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.356323, 37.216347, 34.689701>,  <29.654232, 37.075043, 34.463242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356323, 37.216347, 34.689701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557861, 0.795164, 0.237708,
		-0.366204, 0.492868, -0.789288,
		-0.744772, 0.353264, 0.566144,
		29.132891, 37.322327, 34.859543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435871, 37.853603, 34.326862>,  <29.654232, 37.075043, 34.463242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435871, 37.853603, 34.326862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390009, 37.754478, 34.711662>,  <29.362492, 37.695004, 34.942543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390009, 37.754478, 34.711662>,  <29.435871, 37.853603, 34.326862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390009, 37.754478, 34.711662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505342, 0.819177, 0.271251,
		-0.855268, 0.517239, 0.031310,
		-0.114653, -0.247815, 0.961999,
		29.355614, 37.680134, 35.000263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657171, 38.285881, 35.043461>,  <29.435871, 37.853603, 34.326862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657171, 38.285881, 35.043461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332865, 38.482143, 35.171162>,  <29.138281, 38.599899, 35.247780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332865, 38.482143, 35.171162>,  <29.657171, 38.285881, 35.043461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332865, 38.482143, 35.171162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483518, -0.868742, 0.107227,
		0.329956, -0.067426, 0.941586,
		-0.810765, 0.490654, 0.319248,
		29.089636, 38.629341, 35.266937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434320, 37.939686, 35.590485>,  <29.657171, 38.285881, 35.043461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434320, 37.939686, 35.590485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111513, 38.101425, 35.418335>,  <28.917828, 38.198467, 35.315044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111513, 38.101425, 35.418335>,  <29.434320, 37.939686, 35.590485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111513, 38.101425, 35.418335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400806, -0.910280, -0.103657,
		-0.433675, 0.088843, 0.896679,
		-0.807020, 0.404348, -0.430374,
		28.869408, 38.222729, 35.289223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766115, 37.774315, 35.841232>,  <29.434320, 37.939686, 35.590485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766115, 37.774315, 35.841232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731426, 37.871441, 35.454758>,  <28.710613, 37.929714, 35.222874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731426, 37.871441, 35.454758>,  <28.766115, 37.774315, 35.841232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731426, 37.871441, 35.454758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445797, -0.876782, -0.180328,
		-0.890923, 0.415085, 0.184283,
		-0.086724, 0.242811, -0.966189,
		28.705410, 37.944283, 35.164902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010815, 37.793026, 35.396500>,  <28.766115, 37.774315, 35.841232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010815, 37.793026, 35.396500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346603, 37.673759, 35.214783>,  <28.548077, 37.602200, 35.105751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346603, 37.673759, 35.214783>,  <28.010815, 37.793026, 35.396500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346603, 37.673759, 35.214783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440631, -0.862761, -0.247966,
		-0.318013, 0.408337, -0.855645,
		0.839471, -0.298168, -0.454295,
		28.598444, 37.584309, 35.078495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840134, 37.751682, 34.727707>,  <28.010815, 37.793026, 35.396500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840134, 37.751682, 34.727707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130056, 37.495701, 34.829781>,  <28.304010, 37.342113, 34.891026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130056, 37.495701, 34.829781>,  <27.840134, 37.751682, 34.727707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130056, 37.495701, 34.829781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598537, -0.768327, -0.226774,
		0.341188, 0.011631, -0.939923,
		0.724806, -0.639952, 0.255182,
		28.347498, 37.303715, 34.906334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855373, 37.183487, 34.279594>,  <27.840134, 37.751682, 34.727707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855373, 37.183487, 34.279594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058966, 37.023731, 34.584599>,  <28.181122, 36.927879, 34.767601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058966, 37.023731, 34.584599>,  <27.855373, 37.183487, 34.279594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058966, 37.023731, 34.584599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612632, -0.790352, -0.005031,
		0.604664, -0.464580, -0.646952,
		0.508983, -0.399386, 0.762514,
		28.211660, 36.903915, 34.813354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105974, 36.565514, 34.130642>,  <27.855373, 37.183487, 34.279594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105974, 36.565514, 34.130642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033855, 36.576900, 34.523922>,  <27.990583, 36.583733, 34.759892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.033855, 36.576900, 34.523922>,  <28.105974, 36.565514, 34.130642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033855, 36.576900, 34.523922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472028, -0.879464, -0.061100,
		0.862950, -0.475114, 0.172001,
		-0.180298, 0.028463, 0.983200,
		27.979767, 36.585438, 34.818882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057566, 35.913097, 34.178463>,  <28.105974, 36.565514, 34.130642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057566, 35.913097, 34.178463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911648, 36.059185, 34.521049>,  <27.824097, 36.146835, 34.726601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911648, 36.059185, 34.521049>,  <28.057566, 35.913097, 34.178463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911648, 36.059185, 34.521049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734964, -0.677679, -0.024066,
		0.571623, -0.638253, 0.515636,
		-0.364796, 0.365217, 0.856470,
		27.802210, 36.168751, 34.777992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143747, 35.354202, 34.665588>,  <28.057566, 35.913097, 34.178463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143747, 35.354202, 34.665588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854761, 35.593697, 34.803898>,  <27.681370, 35.737392, 34.886883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854761, 35.593697, 34.803898>,  <28.143747, 35.354202, 34.665588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854761, 35.593697, 34.803898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514013, -0.799588, 0.310564,
		0.462423, 0.046638, 0.885432,
		-0.722465, 0.598735, 0.345775,
		27.638021, 35.773315, 34.907631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926598, 35.122185, 35.304874>,  <28.143747, 35.354202, 34.665588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926598, 35.122185, 35.304874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629274, 35.340641, 35.150352>,  <27.450880, 35.471714, 35.057640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.629274, 35.340641, 35.150352>,  <27.926598, 35.122185, 35.304874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.629274, 35.340641, 35.150352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657115, -0.704253, 0.268753,
		-0.125278, 0.453610, 0.882351,
		-0.743307, 0.546137, -0.386301,
		27.406282, 35.504482, 35.034462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391579, 35.123753, 35.756374>,  <27.926598, 35.122185, 35.304874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391579, 35.123753, 35.756374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202530, 35.230953, 35.420563>,  <27.089100, 35.295273, 35.219078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202530, 35.230953, 35.420563>,  <27.391579, 35.123753, 35.756374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202530, 35.230953, 35.420563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706248, -0.684980, 0.178930,
		-0.527105, 0.677480, 0.513011,
		-0.472624, 0.267998, -0.839526,
		27.060743, 35.311352, 35.168705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674362, 35.126297, 35.950947>,  <27.391579, 35.123753, 35.756374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674362, 35.126297, 35.950947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719419, 35.075943, 35.556694>,  <26.746454, 35.045731, 35.320145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719419, 35.075943, 35.556694>,  <26.674362, 35.126297, 35.950947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719419, 35.075943, 35.556694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624476, -0.780530, 0.028319,
		-0.772879, 0.612312, -0.166529,
		0.112641, -0.125881, -0.985630,
		26.753212, 35.038177, 35.261005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260534, 34.726082, 36.412170>,  <26.674362, 35.126297, 35.950947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260534, 34.726082, 36.412170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353546, 35.107960, 36.337883>,  <27.409353, 35.337086, 36.293312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353546, 35.107960, 36.337883>,  <27.260534, 34.726082, 36.412170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353546, 35.107960, 36.337883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599887, 0.009520, 0.800029,
		0.765549, -0.297441, -0.570494,
		0.232530, 0.954693, -0.185719,
		27.423306, 35.394367, 36.282166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582928, 35.054447, 37.048790>,  <27.260534, 34.726082, 36.412170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582928, 35.054447, 37.048790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658480, 35.339001, 36.778011>,  <27.703810, 35.509731, 36.615543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658480, 35.339001, 36.778011>,  <27.582928, 35.054447, 37.048790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658480, 35.339001, 36.778011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682976, 0.400162, 0.611076,
		0.705598, -0.577759, -0.410275,
		0.188878, 0.711382, -0.676949,
		27.715143, 35.552414, 36.574928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337877, 34.970901, 36.759430>,  <27.582928, 35.054447, 37.048790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337877, 34.970901, 36.759430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167355, 35.332314, 36.776825>,  <28.065041, 35.549160, 36.787262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167355, 35.332314, 36.776825>,  <28.337877, 34.970901, 36.759430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167355, 35.332314, 36.776825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666754, 0.281372, 0.690122,
		0.611310, 0.323204, -0.722385,
		-0.426309, 0.903531, 0.043492,
		28.039461, 35.603374, 36.789871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619530, 34.311054, 36.820076>,  <28.337877, 34.970901, 36.759430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619530, 34.311054, 36.820076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739658, 34.123283, 36.487946>,  <28.811735, 34.010620, 36.288666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739658, 34.123283, 36.487946>,  <28.619530, 34.311054, 36.820076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739658, 34.123283, 36.487946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940691, 0.289796, 0.176403,
		0.157819, -0.834063, 0.528614,
		0.300322, -0.469423, -0.830331,
		28.829756, 33.982456, 36.238846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259886, 34.036629, 36.896606>,  <28.619530, 34.311054, 36.820076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259886, 34.036629, 36.896606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204950, 34.099220, 36.505371>,  <29.171989, 34.136776, 36.270630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204950, 34.099220, 36.505371>,  <29.259886, 34.036629, 36.896606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204950, 34.099220, 36.505371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974191, 0.199920, -0.104805,
		0.179139, -0.967236, -0.179900,
		-0.137337, 0.156482, -0.978086,
		29.163750, 34.146164, 36.211945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899778, 33.918411, 36.620705>,  <29.259886, 34.036629, 36.896606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899778, 33.918411, 36.620705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707821, 34.162655, 36.368717>,  <29.592646, 34.309200, 36.217525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.707821, 34.162655, 36.368717>,  <29.899778, 33.918411, 36.620705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707821, 34.162655, 36.368717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877090, 0.317256, -0.360641,
		-0.020349, -0.725609, -0.687806,
		-0.479896, 0.610607, -0.629968,
		29.563852, 34.345837, 36.179726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093529, 33.758247, 35.857372>,  <29.899778, 33.918411, 36.620705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093529, 33.758247, 35.857372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046402, 34.147038, 35.938736>,  <30.018126, 34.380314, 35.987553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046402, 34.147038, 35.938736>,  <30.093529, 33.758247, 35.857372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046402, 34.147038, 35.938736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992749, 0.110361, 0.047652,
		0.023869, 0.207548, -0.977934,
		-0.117816, 0.971980, 0.203409,
		30.011057, 34.438633, 35.999760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507637, 34.143997, 35.488953>,  <30.093529, 33.758247, 35.857372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507637, 34.143997, 35.488953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451679, 34.400593, 35.790661>,  <30.418104, 34.554550, 35.971687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451679, 34.400593, 35.790661>,  <30.507637, 34.143997, 35.488953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451679, 34.400593, 35.790661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985581, 0.163438, 0.043798,
		-0.095181, 0.749524, -0.655099,
		-0.139896, 0.641484, 0.754273,
		30.409710, 34.593037, 36.016941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805029, 34.714554, 35.238823>,  <30.507637, 34.143997, 35.488953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805029, 34.714554, 35.238823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791765, 34.717415, 35.638592>,  <30.783808, 34.719131, 35.878452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791765, 34.717415, 35.638592>,  <30.805029, 34.714554, 35.238823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791765, 34.717415, 35.638592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832886, 0.552938, 0.023674,
		-0.552451, 0.833191, -0.024295,
		-0.033159, 0.007157, 0.999425,
		30.781818, 34.719563, 35.938419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613417, 35.346550, 35.651325>,  <30.805029, 34.714554, 35.238823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613417, 35.346550, 35.651325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974468, 35.464645, 35.776608>,  <31.191099, 35.535503, 35.851776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974468, 35.464645, 35.776608>,  <30.613417, 35.346550, 35.651325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974468, 35.464645, 35.776608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427366, -0.528245, -0.733700,
		-0.051166, 0.796112, -0.602983,
		0.902630, 0.295235, 0.313203,
		31.245256, 35.553215, 35.870567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940054, 35.663013, 35.100910>,  <30.613417, 35.346550, 35.651325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940054, 35.663013, 35.100910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219576, 35.509964, 35.342663>,  <31.387289, 35.418137, 35.487713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219576, 35.509964, 35.342663>,  <30.940054, 35.663013, 35.100910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219576, 35.509964, 35.342663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522557, -0.303910, -0.796601,
		0.488472, 0.872491, -0.012433,
		0.698806, -0.382620, 0.604378,
		31.429218, 35.395180, 35.523975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568077, 35.967327, 34.948017>,  <30.940054, 35.663013, 35.100910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568077, 35.967327, 34.948017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613823, 35.582932, 35.048756>,  <31.641270, 35.352295, 35.109200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613823, 35.582932, 35.048756>,  <31.568077, 35.967327, 34.948017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613823, 35.582932, 35.048756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463371, -0.172643, -0.869184,
		0.878754, 0.216100, 0.425550,
		0.114362, -0.960987, 0.251845,
		31.648132, 35.294636, 35.124310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306412, 35.742378, 35.121861>,  <31.568077, 35.967327, 34.948017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306412, 35.742378, 35.121861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095222, 35.436707, 34.973660>,  <31.968510, 35.253304, 34.884739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095222, 35.436707, 34.973660>,  <32.306412, 35.742378, 35.121861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095222, 35.436707, 34.973660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695016, -0.138078, -0.705611,
		0.488054, -0.630052, 0.604018,
		-0.527974, -0.764178, -0.370506,
		31.936831, 35.207455, 34.862507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725353, 35.037273, 35.094788>,  <32.306412, 35.742378, 35.121861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725353, 35.037273, 35.094788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437557, 35.071934, 34.819157>,  <32.264881, 35.092731, 34.653778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437557, 35.071934, 34.819157>,  <32.725353, 35.037273, 35.094788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437557, 35.071934, 34.819157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635717, -0.317324, -0.703683,
		-0.279633, -0.944350, 0.173228,
		-0.719492, 0.086649, -0.689074,
		32.221710, 35.097931, 34.612434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803192, 34.436806, 34.671387>,  <32.725353, 35.037273, 35.094788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803192, 34.436806, 34.671387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622089, 34.704391, 34.435589>,  <32.513428, 34.864944, 34.294109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622089, 34.704391, 34.435589>,  <32.803192, 34.436806, 34.671387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622089, 34.704391, 34.435589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592098, -0.268744, -0.759734,
		-0.666657, -0.693011, -0.274417,
		-0.452756, 0.668964, -0.589491,
		32.486263, 34.905079, 34.258743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687954, 34.127892, 34.065208>,  <32.803192, 34.436806, 34.671387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687954, 34.127892, 34.065208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692226, 34.519421, 33.983444>,  <32.694790, 34.754337, 33.934383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692226, 34.519421, 33.983444>,  <32.687954, 34.127892, 34.065208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692226, 34.519421, 33.983444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504872, -0.181736, -0.843846,
		-0.863128, -0.094187, -0.496123,
		0.010684, 0.978826, -0.204414,
		32.695431, 34.813068, 33.922119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496891, 34.270313, 33.409622>,  <32.687954, 34.127892, 34.065208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496891, 34.270313, 33.409622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734955, 34.573410, 33.516666>,  <32.877792, 34.755268, 33.580894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734955, 34.573410, 33.516666>,  <32.496891, 34.270313, 33.409622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734955, 34.573410, 33.516666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554089, -0.145748, -0.819600,
		-0.582038, 0.636075, -0.506597,
		0.595162, 0.757738, 0.267611,
		32.913502, 34.800732, 33.596951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725277, 34.476299, 32.785351>,  <32.496891, 34.270313, 33.409622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725277, 34.476299, 32.785351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975315, 34.696709, 33.006485>,  <33.125340, 34.828953, 33.139168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975315, 34.696709, 33.006485>,  <32.725277, 34.476299, 32.785351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975315, 34.696709, 33.006485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676819, -0.029831, -0.735545,
		-0.388810, 0.833956, -0.391591,
		0.625094, 0.551023, 0.552839,
		33.162842, 34.862015, 33.172337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948017, 35.026134, 32.302086>,  <32.725277, 34.476299, 32.785351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948017, 35.026134, 32.302086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222248, 35.021694, 32.593250>,  <33.386787, 35.019028, 32.767948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222248, 35.021694, 32.593250>,  <32.948017, 35.026134, 32.302086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222248, 35.021694, 32.593250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727450, 0.049304, -0.684388,
		-0.028289, 0.998722, 0.041879,
		0.685578, -0.011105, 0.727915,
		33.427921, 35.018364, 32.811626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431671, 35.429043, 31.937061>,  <32.948017, 35.026134, 32.302086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431671, 35.429043, 31.937061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637543, 35.275631, 32.243790>,  <33.761066, 35.183582, 32.427826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637543, 35.275631, 32.243790>,  <33.431671, 35.429043, 31.937061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637543, 35.275631, 32.243790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831607, 0.005645, -0.555335,
		0.208661, 0.923510, 0.321854,
		0.514674, -0.383533, 0.766820,
		33.791946, 35.160572, 32.473835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062557, 35.864441, 32.048534>,  <33.431671, 35.429043, 31.937061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062557, 35.864441, 32.048534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129814, 35.498344, 32.194992>,  <34.170166, 35.278687, 32.282867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129814, 35.498344, 32.194992>,  <34.062557, 35.864441, 32.048534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129814, 35.498344, 32.194992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758901, -0.116873, -0.640633,
		0.629126, 0.385585, 0.674926,
		0.168138, -0.915240, 0.366148,
		34.180256, 35.223774, 32.304836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768661, 35.777481, 32.239491>,  <34.062557, 35.864441, 32.048534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768661, 35.777481, 32.239491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626385, 35.408504, 32.179382>,  <34.541019, 35.187119, 32.143318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626385, 35.408504, 32.179382>,  <34.768661, 35.777481, 32.239491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626385, 35.408504, 32.179382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718727, -0.167200, -0.674889,
		0.597423, -0.348053, 0.722458,
		-0.355692, -0.922444, -0.150266,
		34.519676, 35.131771, 32.134304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398640, 35.317921, 32.161381>,  <34.768661, 35.777481, 32.239491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398640, 35.317921, 32.161381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096397, 35.105358, 32.008194>,  <34.915051, 34.977821, 31.916281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096397, 35.105358, 32.008194>,  <35.398640, 35.317921, 32.161381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096397, 35.105358, 32.008194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578197, -0.266367, -0.771192,
		0.307803, -0.804152, 0.508525,
		-0.755610, -0.531403, -0.382969,
		34.869713, 34.945938, 31.893303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676319, 34.548180, 32.040615>,  <35.398640, 35.317921, 32.161381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676319, 34.548180, 32.040615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369244, 34.629829, 31.797638>,  <35.184998, 34.678818, 31.651852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369244, 34.629829, 31.797638>,  <35.676319, 34.548180, 32.040615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369244, 34.629829, 31.797638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529394, -0.332132, -0.780660,
		-0.361101, -0.920882, 0.146913,
		-0.767690, 0.204122, -0.607443,
		35.138935, 34.691067, 31.615406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737438, 34.036110, 31.484901>,  <35.676319, 34.548180, 32.040615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737438, 34.036110, 31.484901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469360, 34.280350, 31.316139>,  <35.308514, 34.426895, 31.214882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469360, 34.280350, 31.316139>,  <35.737438, 34.036110, 31.484901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469360, 34.280350, 31.316139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337821, -0.255195, -0.905954,
		-0.660843, -0.749696, -0.035242,
		-0.670196, 0.610599, -0.421907,
		35.268303, 34.463528, 31.189568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350662, 33.657963, 30.889639>,  <35.737438, 34.036110, 31.484901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350662, 33.657963, 30.889639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307632, 34.048199, 30.813057>,  <35.281815, 34.282341, 30.767107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307632, 34.048199, 30.813057>,  <35.350662, 33.657963, 30.889639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307632, 34.048199, 30.813057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117940, -0.178691, -0.976811,
		-0.987177, -0.127659, -0.095839,
		-0.107573, 0.975588, -0.191456,
		35.275360, 34.340874, 30.755621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915966, 33.682205, 30.312334>,  <35.350662, 33.657963, 30.889639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915966, 33.682205, 30.312334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085377, 34.043308, 30.282263>,  <35.187023, 34.259972, 30.264219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085377, 34.043308, 30.282263>,  <34.915966, 33.682205, 30.312334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085377, 34.043308, 30.282263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028071, -0.069872, -0.997161,
		-0.905447, 0.424439, -0.004251,
		0.423531, 0.902757, -0.075180,
		35.212437, 34.314137, 30.259708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562805, 33.994904, 29.766491>,  <34.915966, 33.682205, 30.312334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562805, 33.994904, 29.766491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896484, 34.210644, 29.812475>,  <35.096691, 34.340088, 29.840065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896484, 34.210644, 29.812475>,  <34.562805, 33.994904, 29.766491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896484, 34.210644, 29.812475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059851, 0.118686, -0.991126,
		-0.548210, 0.833675, 0.066727,
		0.834197, 0.539351, 0.114961,
		35.146744, 34.372448, 29.846964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558910, 34.629715, 29.305296>,  <34.562805, 33.994904, 29.766491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558910, 34.629715, 29.305296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948471, 34.558220, 29.361238>,  <35.182209, 34.515324, 29.394804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948471, 34.558220, 29.361238>,  <34.558910, 34.629715, 29.305296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948471, 34.558220, 29.361238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174282, 0.194280, -0.965340,
		0.145370, 0.964525, 0.220362,
		0.973906, -0.178737, 0.139857,
		35.240643, 34.504601, 29.403196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894032, 35.039639, 28.730944>,  <34.558910, 34.629715, 29.305296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894032, 35.039639, 28.730944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207542, 34.849655, 28.891003>,  <35.395649, 34.735664, 28.987038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207542, 34.849655, 28.891003>,  <34.894032, 35.039639, 28.730944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207542, 34.849655, 28.891003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488754, 0.074199, -0.869261,
		0.383170, 0.876876, 0.290291,
		0.783773, -0.474956, 0.400146,
		35.442673, 34.707169, 29.011045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494564, 35.395134, 28.871635>,  <34.894032, 35.039639, 28.730944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494564, 35.395134, 28.871635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617718, 35.020786, 28.803112>,  <35.691608, 34.796177, 28.761997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617718, 35.020786, 28.803112>,  <35.494564, 35.395134, 28.871635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617718, 35.020786, 28.803112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360056, 0.281276, -0.889519,
		0.880662, 0.212189, 0.423568,
		0.307886, -0.935874, -0.171309,
		35.710083, 34.740025, 28.751719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110943, 35.485798, 28.636234>,  <35.494564, 35.395134, 28.871635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110943, 35.485798, 28.636234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992149, 35.126965, 28.505365>,  <35.920872, 34.911663, 28.426844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992149, 35.126965, 28.505365>,  <36.110943, 35.485798, 28.636234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992149, 35.126965, 28.505365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363703, 0.210532, -0.907412,
		0.882905, -0.388478, 0.263748,
		-0.296982, -0.897085, -0.327171,
		35.903053, 34.857838, 28.407213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691181, 35.373791, 28.246897>,  <36.110943, 35.485798, 28.636234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691181, 35.373791, 28.246897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402443, 35.117599, 28.142025>,  <36.229202, 34.963886, 28.079102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402443, 35.117599, 28.142025>,  <36.691181, 35.373791, 28.246897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402443, 35.117599, 28.142025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241708, 0.121663, -0.962692,
		0.648477, -0.758281, 0.066987,
		-0.721841, -0.640475, -0.262178,
		36.185890, 34.925457, 28.063372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967113, 35.060535, 27.775558>,  <36.691181, 35.373791, 28.246897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967113, 35.060535, 27.775558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585926, 34.965263, 27.700590>,  <36.357216, 34.908100, 27.655609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585926, 34.965263, 27.700590>,  <36.967113, 35.060535, 27.775558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585926, 34.965263, 27.700590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136367, 0.215294, -0.966981,
		0.270669, -0.947058, -0.172688,
		-0.952965, -0.238183, -0.187421,
		36.300037, 34.893810, 27.644363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087585, 34.628311, 27.237795>,  <36.967113, 35.060535, 27.775558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087585, 34.628311, 27.237795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709705, 34.757378, 27.214375>,  <36.482979, 34.834816, 27.200323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709705, 34.757378, 27.214375>,  <37.087585, 34.628311, 27.237795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709705, 34.757378, 27.214375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160355, 0.298778, -0.940754,
		-0.286058, -0.898119, -0.333997,
		-0.944700, 0.322668, -0.058550,
		36.426296, 34.854179, 27.196810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784573, 34.332848, 26.596966>,  <37.087585, 34.628311, 27.237795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784573, 34.332848, 26.596966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546623, 34.649509, 26.652699>,  <36.403854, 34.839508, 26.686138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546623, 34.649509, 26.652699>,  <36.784573, 34.332848, 26.596966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546623, 34.649509, 26.652699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007364, 0.178694, -0.983877,
		-0.803788, -0.584253, -0.112130,
		-0.594870, 0.791655, 0.139330,
		36.368164, 34.887005, 26.694498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322002, 34.226189, 26.140265>,  <36.784573, 34.332848, 26.596966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322002, 34.226189, 26.140265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298840, 34.612320, 26.242073>,  <36.284943, 34.843998, 26.303158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298840, 34.612320, 26.242073>,  <36.322002, 34.226189, 26.140265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298840, 34.612320, 26.242073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117188, 0.246616, -0.962002,
		-0.991420, -0.085530, 0.098846,
		-0.057903, 0.965332, 0.254523,
		36.281467, 34.901920, 26.318430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618641, 34.435238, 25.907980>,  <36.322002, 34.226189, 26.140265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618641, 34.435238, 25.907980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854610, 34.755714, 25.948153>,  <35.996193, 34.947998, 25.972256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854610, 34.755714, 25.948153>,  <35.618641, 34.435238, 25.907980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854610, 34.755714, 25.948153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367567, 0.377201, -0.850067,
		-0.718945, 0.464562, 0.517010,
		0.589926, 0.801188, 0.100429,
		36.031590, 34.996071, 25.978281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271477, 34.931973, 25.599897>,  <35.618641, 34.435238, 25.907980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271477, 34.931973, 25.599897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640423, 35.085682, 25.615782>,  <35.861790, 35.177910, 25.625313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640423, 35.085682, 25.615782>,  <35.271477, 34.931973, 25.599897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640423, 35.085682, 25.615782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117080, 0.376010, -0.919189,
		-0.368153, 0.843178, 0.391809,
		0.922364, 0.384276, 0.039710,
		35.917133, 35.200966, 25.627695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145798, 35.473541, 25.187258>,  <35.271477, 34.931973, 25.599897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145798, 35.473541, 25.187258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545319, 35.468872, 25.206261>,  <35.785030, 35.466068, 25.217663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545319, 35.468872, 25.206261>,  <35.145798, 35.473541, 25.187258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545319, 35.468872, 25.206261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048917, 0.229374, -0.972108,
		0.000453, 0.973268, 0.229670,
		0.998803, -0.011675, 0.047506,
		35.844959, 35.465370, 25.220512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321537, 36.054111, 24.863127>,  <35.145798, 35.473541, 25.187258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321537, 36.054111, 24.863127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661152, 35.842884, 24.869865>,  <35.864922, 35.716148, 24.873909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661152, 35.842884, 24.869865>,  <35.321537, 36.054111, 24.863127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661152, 35.842884, 24.869865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158319, 0.223864, -0.961676,
		0.504061, 0.819162, 0.273671,
		0.849034, -0.528070, 0.016848,
		35.915863, 35.684464, 24.874920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877232, 36.511215, 24.619059>,  <35.321537, 36.054111, 24.863127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877232, 36.511215, 24.619059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991161, 36.132710, 24.557802>,  <36.059521, 35.905605, 24.521048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991161, 36.132710, 24.557802>,  <35.877232, 36.511215, 24.619059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991161, 36.132710, 24.557802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114134, 0.192101, -0.974716,
		0.951761, 0.260143, 0.162716,
		0.284823, -0.946268, -0.153143,
		36.076607, 35.848827, 24.511860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589073, 36.478436, 24.251841>,  <35.877232, 36.511215, 24.619059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589073, 36.478436, 24.251841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432110, 36.120098, 24.168432>,  <36.337933, 35.905094, 24.118387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432110, 36.120098, 24.168432>,  <36.589073, 36.478436, 24.251841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432110, 36.120098, 24.168432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327382, 0.075826, -0.941845,
		0.859558, -0.437849, 0.263529,
		-0.392404, -0.895845, -0.208521,
		36.314388, 35.851345, 24.105877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104870, 36.077179, 23.855946>,  <36.589073, 36.478436, 24.251841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104870, 36.077179, 23.855946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747242, 35.912483, 23.785381>,  <36.532665, 35.813667, 23.743044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747242, 35.912483, 23.785381>,  <37.104870, 36.077179, 23.855946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747242, 35.912483, 23.785381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099972, 0.200478, -0.974584,
		0.436639, -0.888977, -0.138078,
		-0.894065, -0.411737, -0.176410,
		36.479023, 35.788963, 23.732458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246716, 35.633640, 23.420326>,  <37.104870, 36.077179, 23.855946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246716, 35.633640, 23.420326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862118, 35.696472, 23.330124>,  <36.631359, 35.734173, 23.276003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862118, 35.696472, 23.330124>,  <37.246716, 35.633640, 23.420326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862118, 35.696472, 23.330124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251558, 0.172642, -0.952320,
		-0.110662, -0.972378, -0.205509,
		-0.961495, 0.157083, -0.225505,
		36.573669, 35.743595, 23.262472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225010, 35.402565, 22.758883>,  <37.246716, 35.633640, 23.420326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225010, 35.402565, 22.758883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878883, 35.599564, 22.796144>,  <36.671207, 35.717766, 22.818501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878883, 35.599564, 22.796144>,  <37.225010, 35.402565, 22.758883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878883, 35.599564, 22.796144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086447, 0.329703, -0.940119,
		-0.493723, -0.805443, -0.327871,
		-0.865312, 0.492501, 0.093153,
		36.619289, 35.747314, 22.824091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626850, 35.130634, 22.234459>,  <37.225010, 35.402565, 22.758883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626850, 35.130634, 22.234459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553665, 35.513653, 22.323572>,  <36.509754, 35.743465, 22.377041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553665, 35.513653, 22.323572>,  <36.626850, 35.130634, 22.234459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553665, 35.513653, 22.323572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122751, 0.247086, -0.961187,
		-0.975427, -0.148513, -0.162746,
		-0.182961, 0.957545, 0.222784,
		36.498775, 35.800915, 22.390408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100861, 35.371670, 21.759111>,  <36.626850, 35.130634, 22.234459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100861, 35.371670, 21.759111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283100, 35.693542, 21.911379>,  <36.392445, 35.886665, 22.002739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.283100, 35.693542, 21.911379>,  <36.100861, 35.371670, 21.759111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283100, 35.693542, 21.911379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362297, 0.222996, -0.904994,
		-0.813122, 0.550234, -0.189936,
		0.455603, 0.804683, 0.380671,
		36.419781, 35.934948, 22.025579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067577, 35.771687, 21.192114>,  <36.100861, 35.371670, 21.759111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067577, 35.771687, 21.192114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325142, 35.969318, 21.425785>,  <36.479679, 36.087898, 21.565989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325142, 35.969318, 21.425785>,  <36.067577, 35.771687, 21.192114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325142, 35.969318, 21.425785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393791, 0.440617, -0.806713,
		-0.655977, 0.749497, 0.089155,
		0.643912, 0.494077, 0.584180,
		36.518314, 36.117542, 21.601040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219307, 36.217556, 20.748590>,  <36.067577, 35.771687, 21.192114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219307, 36.217556, 20.748590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472263, 36.305378, 21.045744>,  <36.624039, 36.358070, 21.224035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472263, 36.305378, 21.045744>,  <36.219307, 36.217556, 20.748590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472263, 36.305378, 21.045744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547976, 0.551054, -0.629335,
		-0.547544, 0.805068, 0.228169,
		0.632391, 0.219558, 0.742884,
		36.661980, 36.371246, 21.268610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104374, 36.928383, 21.016809>,  <36.219307, 36.217556, 20.748590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104374, 36.928383, 21.016809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470810, 36.768936, 21.034176>,  <36.690670, 36.673267, 21.044596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470810, 36.768936, 21.034176>,  <36.104374, 36.928383, 21.016809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470810, 36.768936, 21.034176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331565, 0.692164, -0.641072,
		0.225492, 0.601674, 0.766252,
		0.916088, -0.398619, 0.043416,
		36.745636, 36.649349, 21.047201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524765, 37.451118, 20.907337>,  <36.104374, 36.928383, 21.016809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524765, 37.451118, 20.907337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816471, 37.185009, 20.843365>,  <36.991493, 37.025341, 20.804981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816471, 37.185009, 20.843365>,  <36.524765, 37.451118, 20.907337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816471, 37.185009, 20.843365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446209, 0.639602, -0.625945,
		0.518719, 0.385118, 0.763292,
		0.729265, -0.665277, -0.159931,
		37.035252, 36.985424, 20.795385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217075, 37.771488, 21.089190>,  <36.524765, 37.451118, 20.907337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217075, 37.771488, 21.089190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283051, 37.489395, 20.813379>,  <37.322636, 37.320141, 20.647894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283051, 37.489395, 20.813379>,  <37.217075, 37.771488, 21.089190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283051, 37.489395, 20.813379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463171, 0.672601, -0.577131,
		0.870786, -0.224178, 0.437579,
		0.164936, -0.705232, -0.689524,
		37.332531, 37.277824, 20.606522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814980, 38.001781, 20.653793>,  <37.217075, 37.771488, 21.089190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814980, 38.001781, 20.653793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661655, 37.736771, 20.396379>,  <37.569660, 37.577766, 20.241930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661655, 37.736771, 20.396379>,  <37.814980, 38.001781, 20.653793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661655, 37.736771, 20.396379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130364, 0.650971, -0.747825,
		0.914375, -0.370539, -0.163152,
		-0.383306, -0.662523, -0.643537,
		37.546665, 37.538013, 20.203318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273731, 38.027512, 20.074068>,  <37.814980, 38.001781, 20.653793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273731, 38.027512, 20.074068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923534, 37.865181, 19.969133>,  <37.713417, 37.767784, 19.906174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923534, 37.865181, 19.969133>,  <38.273731, 38.027512, 20.074068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923534, 37.865181, 19.969133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039074, 0.481648, -0.875493,
		0.481648, -0.776739, -0.405822,
		0.875493, 0.405822, 0.262335,
		37.660885, 37.743435, 19.890432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342663, 37.818985, 19.388702>,  <38.273731, 38.027512, 20.074068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342663, 37.818985, 19.388702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943371, 37.839001, 19.401518>,  <37.703796, 37.851009, 19.409206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943371, 37.839001, 19.401518>,  <38.342663, 37.818985, 19.388702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943371, 37.839001, 19.401518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004581, 0.472780, -0.881169,
		-0.059242, -0.879758, -0.471716,
		-0.998233, 0.050041, 0.032039,
		37.643902, 37.854012, 19.411129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163559, 37.858498, 18.666906>,  <38.342663, 37.818985, 19.388702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163559, 37.858498, 18.666906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811222, 37.948936, 18.833279>,  <37.599819, 38.003201, 18.933102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811222, 37.948936, 18.833279>,  <38.163559, 37.858498, 18.666906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811222, 37.948936, 18.833279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302951, 0.405917, -0.862236,
		-0.363785, -0.885500, -0.289051,
		-0.880841, 0.226100, 0.415930,
		37.546970, 38.016766, 18.958057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647270, 37.693310, 18.157152>,  <38.163559, 37.858498, 18.666906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647270, 37.693310, 18.157152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523876, 37.975727, 18.412130>,  <37.449841, 38.145180, 18.565117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523876, 37.975727, 18.412130>,  <37.647270, 37.693310, 18.157152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523876, 37.975727, 18.412130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160711, 0.621808, -0.766503,
		-0.937555, -0.338899, -0.078349,
		-0.308485, 0.706047, 0.637443,
		37.431332, 38.187542, 18.603363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054901, 37.919132, 17.918613>,  <37.647270, 37.693310, 18.157152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054901, 37.919132, 17.918613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265369, 38.189869, 18.124537>,  <37.391651, 38.352310, 18.248091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265369, 38.189869, 18.124537>,  <37.054901, 37.919132, 17.918613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265369, 38.189869, 18.124537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151202, 0.670203, -0.726612,
		-0.836828, 0.304482, 0.454982,
		0.526171, 0.676844, 0.514807,
		37.423222, 38.392921, 18.278978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046356, 38.446442, 17.422310>,  <37.054901, 37.919132, 17.918613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046356, 38.446442, 17.422310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277420, 38.587910, 17.716583>,  <37.416058, 38.672791, 17.893147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277420, 38.587910, 17.716583>,  <37.046356, 38.446442, 17.422310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277420, 38.587910, 17.716583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170008, 0.829374, -0.532199,
		-0.798376, 0.432503, 0.418971,
		0.577662, 0.353667, 0.735681,
		37.450718, 38.694008, 17.937288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776974, 39.116234, 17.509216>,  <37.046356, 38.446442, 17.422310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776974, 39.116234, 17.509216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154003, 39.076229, 17.636688>,  <37.380219, 39.052227, 17.713171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154003, 39.076229, 17.636688>,  <36.776974, 39.116234, 17.509216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154003, 39.076229, 17.636688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256365, 0.828205, -0.498350,
		-0.214095, 0.551429, 0.806281,
		0.942571, -0.100008, 0.318681,
		37.436775, 39.046227, 17.732292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982376, 39.807243, 17.847610>,  <36.776974, 39.116234, 17.509216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982376, 39.807243, 17.847610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244984, 39.593128, 17.635023>,  <37.402546, 39.464661, 17.507471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244984, 39.593128, 17.635023>,  <36.982376, 39.807243, 17.847610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244984, 39.593128, 17.635023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124089, 0.771613, -0.623871,
		0.744036, 0.343632, 0.572999,
		0.656515, -0.535285, -0.531468,
		37.441936, 39.432541, 17.475582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724979, 40.567745, 17.674772>,  <36.982376, 39.807243, 17.847610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724979, 40.567745, 17.674772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087933, 40.664707, 17.812120>,  <37.305702, 40.722885, 17.894529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087933, 40.664707, 17.812120>,  <36.724979, 40.567745, 17.674772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087933, 40.664707, 17.812120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240192, 0.371356, -0.896885,
		-0.344919, 0.896290, 0.278738,
		0.907380, 0.242402, 0.343369,
		37.360146, 40.737427, 17.915131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904419, 41.357872, 17.841013>,  <36.724979, 40.567745, 17.674772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904419, 41.357872, 17.841013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220879, 41.151878, 17.709028>,  <37.410755, 41.028282, 17.629837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220879, 41.151878, 17.709028>,  <36.904419, 41.357872, 17.841013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220879, 41.151878, 17.709028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004596, 0.544476, -0.838764,
		0.611605, 0.662071, 0.433130,
		0.791150, -0.514982, -0.329961,
		37.458225, 40.997383, 17.610041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189751, 41.742443, 18.352949>,  <36.904419, 41.357872, 17.841013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189751, 41.742443, 18.352949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813389, 41.612473, 18.314734>,  <36.587574, 41.534489, 18.291803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813389, 41.612473, 18.314734>,  <37.189751, 41.742443, 18.352949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813389, 41.612473, 18.314734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103840, -0.545269, 0.831805,
		-0.322371, 0.772725, 0.546785,
		-0.940901, -0.324928, -0.095539,
		36.531120, 41.514996, 18.286072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606552, 41.958931, 18.888165>,  <37.189751, 41.742443, 18.352949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606552, 41.958931, 18.888165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532322, 41.591106, 18.749617>,  <36.487785, 41.370411, 18.666489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532322, 41.591106, 18.749617>,  <36.606552, 41.958931, 18.888165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532322, 41.591106, 18.749617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115371, -0.370443, 0.921662,
		-0.975833, 0.131077, 0.174836,
		-0.185576, -0.919560, -0.346368,
		36.476650, 41.315239, 18.645706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716949, 41.202366, 19.146969>,  <36.606552, 41.958931, 18.888165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716949, 41.202366, 19.146969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448883, 41.111515, 18.864328>,  <36.288044, 41.057007, 18.694744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448883, 41.111515, 18.864328>,  <36.716949, 41.202366, 19.146969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448883, 41.111515, 18.864328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441521, -0.643259, 0.625522,
		-0.596599, 0.731186, 0.330813,
		-0.670171, -0.227125, -0.706601,
		36.247833, 41.043377, 18.652348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986092, 41.299751, 19.379034>,  <36.716949, 41.202366, 19.146969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986092, 41.299751, 19.379034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007221, 41.001621, 19.113192>,  <36.019897, 40.822742, 18.953686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007221, 41.001621, 19.113192>,  <35.986092, 41.299751, 19.379034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007221, 41.001621, 19.113192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290135, -0.648283, 0.703954,
		-0.955527, 0.155640, -0.250490,
		0.052825, -0.745323, -0.664608,
		36.023067, 40.778023, 18.913809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367886, 40.940853, 19.344028>,  <35.986092, 41.299751, 19.379034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367886, 40.940853, 19.344028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652740, 40.687317, 19.223289>,  <35.823654, 40.535194, 19.150846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652740, 40.687317, 19.223289>,  <35.367886, 40.940853, 19.344028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652740, 40.687317, 19.223289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365325, -0.701731, 0.611646,
		-0.599501, -0.325302, -0.731284,
		0.712135, -0.633839, -0.301848,
		35.866383, 40.497166, 19.132734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968533, 40.307823, 19.343494>,  <35.367886, 40.940853, 19.344028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968533, 40.307823, 19.343494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361088, 40.240726, 19.380899>,  <35.596619, 40.200470, 19.403341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361088, 40.240726, 19.380899>,  <34.968533, 40.307823, 19.343494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361088, 40.240726, 19.380899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150174, -0.366790, 0.918103,
		-0.119704, -0.915056, -0.385153,
		0.981386, -0.167741, 0.093511,
		35.655502, 40.190403, 19.408953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983604, 39.620232, 19.513863>,  <34.968533, 40.307823, 19.343494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983604, 39.620232, 19.513863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331741, 39.785053, 19.621731>,  <35.540623, 39.883945, 19.686451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331741, 39.785053, 19.621731>,  <34.983604, 39.620232, 19.513863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331741, 39.785053, 19.621731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085260, -0.413253, 0.906616,
		0.485015, -0.812056, -0.324539,
		0.870339, 0.412053, 0.269670,
		35.592842, 39.908669, 19.702631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346611, 38.977646, 19.925276>,  <34.983604, 39.620232, 19.513863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346611, 38.977646, 19.925276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534355, 39.314686, 20.030891>,  <35.647003, 39.516911, 20.094261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534355, 39.314686, 20.030891>,  <35.346611, 38.977646, 19.925276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534355, 39.314686, 20.030891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061083, -0.329292, 0.942251,
		0.880891, -0.426127, -0.206026,
		0.469361, 0.842605, 0.264041,
		35.675163, 39.567467, 20.110104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034187, 38.864674, 20.401482>,  <35.346611, 38.977646, 19.925276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034187, 38.864674, 20.401482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905029, 39.236298, 20.473692>,  <35.827534, 39.459270, 20.517019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905029, 39.236298, 20.473692>,  <36.034187, 38.864674, 20.401482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905029, 39.236298, 20.473692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093531, -0.158486, 0.982921,
		0.941802, 0.334266, -0.035722,
		-0.322896, 0.929058, 0.180527,
		35.808159, 39.515015, 20.527849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348881, 39.038898, 20.997829>,  <36.034187, 38.864674, 20.401482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348881, 39.038898, 20.997829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067936, 39.320812, 20.957899>,  <35.899368, 39.489960, 20.933941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067936, 39.320812, 20.957899>,  <36.348881, 39.038898, 20.997829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067936, 39.320812, 20.957899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016424, 0.156247, 0.987581,
		0.711630, 0.692000, -0.121318,
		-0.702362, 0.704786, -0.099824,
		35.857227, 39.532249, 20.927952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575855, 39.685047, 21.342762>,  <36.348881, 39.038898, 20.997829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575855, 39.685047, 21.342762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176197, 39.677483, 21.328070>,  <35.936401, 39.672943, 21.319254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176197, 39.677483, 21.328070>,  <36.575855, 39.685047, 21.342762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176197, 39.677483, 21.328070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040116, 0.231571, 0.971990,
		-0.009873, 0.972634, -0.232132,
		-0.999146, -0.018909, -0.036731,
		35.876453, 39.671810, 21.317051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449310, 40.273617, 21.722277>,  <36.575855, 39.685047, 21.342762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449310, 40.273617, 21.722277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098816, 40.081158, 21.732941>,  <35.888519, 39.965683, 21.739340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098816, 40.081158, 21.732941>,  <36.449310, 40.273617, 21.722277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098816, 40.081158, 21.732941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049401, 0.144724, 0.988238,
		-0.479347, 0.864611, -0.150582,
		-0.876234, -0.481147, 0.026661,
		35.835945, 39.936813, 21.740938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032917, 40.527107, 22.383848>,  <36.449310, 40.273617, 21.722277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032917, 40.527107, 22.383848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868301, 40.182251, 22.265629>,  <35.769531, 39.975338, 22.194696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868301, 40.182251, 22.265629>,  <36.032917, 40.527107, 22.383848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868301, 40.182251, 22.265629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319601, -0.167174, 0.932689,
		-0.853516, 0.478297, -0.206742,
		-0.411540, -0.862140, -0.295550,
		35.744839, 39.923611, 22.176964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457741, 40.472641, 22.722757>,  <36.032917, 40.527107, 22.383848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457741, 40.472641, 22.722757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516567, 40.092430, 22.613310>,  <35.551865, 39.864304, 22.547642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516567, 40.092430, 22.613310>,  <35.457741, 40.472641, 22.722757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516567, 40.092430, 22.613310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446565, -0.310635, 0.839098,
		-0.882582, -0.001214, -0.470157,
		0.147065, -0.950529, -0.273618,
		35.560688, 39.807270, 22.531225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830193, 40.055088, 22.836714>,  <35.457741, 40.472641, 22.722757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830193, 40.055088, 22.836714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089138, 39.751312, 22.810856>,  <35.244503, 39.569046, 22.795341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089138, 39.751312, 22.810856>,  <34.830193, 40.055088, 22.836714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089138, 39.751312, 22.810856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470866, -0.465184, 0.749592,
		-0.599342, -0.454815, -0.658735,
		0.647359, -0.759438, -0.064647,
		35.283344, 39.523479, 22.791462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419628, 39.524025, 22.895473>,  <34.830193, 40.055088, 22.836714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419628, 39.524025, 22.895473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772964, 39.368969, 23.000885>,  <34.984966, 39.275936, 23.064133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772964, 39.368969, 23.000885>,  <34.419628, 39.524025, 22.895473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772964, 39.368969, 23.000885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428072, -0.438087, 0.790465,
		-0.190969, -0.811057, -0.552918,
		0.883338, -0.387643, 0.263529,
		35.037964, 39.252674, 23.079943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246132, 38.901985, 23.024485>,  <34.419628, 39.524025, 22.895473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246132, 38.901985, 23.024485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599499, 38.904881, 23.211897>,  <34.811520, 38.906616, 23.324345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599499, 38.904881, 23.211897>,  <34.246132, 38.901985, 23.024485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599499, 38.904881, 23.211897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428685, -0.391268, 0.814334,
		0.189214, -0.920248, -0.342550,
		0.883418, 0.007238, 0.468530,
		34.864525, 38.907051, 23.352455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287254, 38.254677, 23.302589>,  <34.246132, 38.901985, 23.024485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287254, 38.254677, 23.302589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530838, 38.502491, 23.500715>,  <34.676991, 38.651180, 23.619591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530838, 38.502491, 23.500715>,  <34.287254, 38.254677, 23.302589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530838, 38.502491, 23.500715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288168, -0.408985, 0.865847,
		0.739002, -0.670001, -0.070525,
		0.608962, 0.619540, 0.495313,
		34.713528, 38.688354, 23.649309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652740, 37.827438, 23.724575>,  <34.287254, 38.254677, 23.302589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652740, 37.827438, 23.724575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670639, 38.188068, 23.896692>,  <34.681377, 38.404446, 23.999964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670639, 38.188068, 23.896692>,  <34.652740, 37.827438, 23.724575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670639, 38.188068, 23.896692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104620, -0.424129, 0.899539,
		0.993505, -0.085265, 0.075347,
		0.044743, 0.901579, 0.430294,
		34.684063, 38.458542, 24.025780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080959, 37.727219, 24.214052>,  <34.652740, 37.827438, 23.724575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080959, 37.727219, 24.214052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869366, 38.049217, 24.321501>,  <34.742409, 38.242416, 24.385971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869366, 38.049217, 24.321501>,  <35.080959, 37.727219, 24.214052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869366, 38.049217, 24.321501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091908, -0.369020, 0.924866,
		0.843638, 0.464554, 0.269192,
		-0.528987, 0.804993, 0.268623,
		34.710670, 38.290714, 24.402088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351021, 37.888023, 24.870754>,  <35.080959, 37.727219, 24.214052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351021, 37.888023, 24.870754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990681, 38.058937, 24.840021>,  <34.774479, 38.161484, 24.821581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990681, 38.058937, 24.840021>,  <35.351021, 37.888023, 24.870754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990681, 38.058937, 24.840021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196542, -0.243587, 0.949756,
		0.387100, 0.870685, 0.303414,
		-0.900846, 0.427285, -0.076834,
		34.720428, 38.187122, 24.816971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277874, 38.314819, 25.470095>,  <35.351021, 37.888023, 24.870754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277874, 38.314819, 25.470095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907341, 38.245602, 25.336254>,  <34.685020, 38.204071, 25.255951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907341, 38.245602, 25.336254>,  <35.277874, 38.314819, 25.470095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907341, 38.245602, 25.336254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271092, -0.310500, 0.911098,
		-0.261555, 0.934690, 0.240716,
		-0.926336, -0.173046, -0.334599,
		34.629440, 38.193687, 25.235874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875130, 38.590427, 26.004618>,  <35.277874, 38.314819, 25.470095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875130, 38.590427, 26.004618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615364, 38.368721, 25.796370>,  <34.459503, 38.235699, 25.671421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615364, 38.368721, 25.796370>,  <34.875130, 38.590427, 26.004618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615364, 38.368721, 25.796370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522001, -0.172921, 0.835233,
		-0.552968, 0.814179, -0.177030,
		-0.649417, -0.554267, -0.520622,
		34.420540, 38.202442, 25.640182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135925, 38.807819, 26.094187>,  <34.875130, 38.590427, 26.004618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135925, 38.807819, 26.094187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099361, 38.427357, 25.976238>,  <34.077423, 38.199081, 25.905470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099361, 38.427357, 25.976238>,  <34.135925, 38.807819, 26.094187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099361, 38.427357, 25.976238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455438, -0.223393, 0.861784,
		-0.885562, 0.213072, -0.412772,
		-0.091412, -0.951155, -0.294870,
		34.071938, 38.142010, 25.887777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452919, 38.570469, 26.296791>,  <34.135925, 38.807819, 26.094187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452919, 38.570469, 26.296791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648899, 38.224674, 26.251850>,  <33.766487, 38.017197, 26.224886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648899, 38.224674, 26.251850>,  <33.452919, 38.570469, 26.296791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648899, 38.224674, 26.251850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391792, -0.333490, 0.857487,
		-0.778751, -0.376103, -0.502089,
		0.489945, -0.864483, -0.112352,
		33.795883, 37.965328, 26.218145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972054, 38.010281, 26.411686>,  <33.452919, 38.570469, 26.296791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972054, 38.010281, 26.411686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324551, 37.831867, 26.474247>,  <33.536049, 37.724819, 26.511784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.324551, 37.831867, 26.474247>,  <32.972054, 38.010281, 26.411686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324551, 37.831867, 26.474247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364096, -0.429583, 0.826373,
		-0.301404, -0.785181, -0.540968,
		0.881243, -0.446037, 0.156403,
		33.588924, 37.698055, 26.521168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801449, 37.458656, 26.717409>,  <32.972054, 38.010281, 26.411686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801449, 37.458656, 26.717409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191311, 37.473381, 26.805674>,  <33.425228, 37.482216, 26.858633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191311, 37.473381, 26.805674>,  <32.801449, 37.458656, 26.717409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191311, 37.473381, 26.805674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210281, -0.185851, 0.959813,
		0.076349, -0.981888, -0.173399,
		0.974655, 0.036818, 0.220662,
		33.483707, 37.484425, 26.871872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781136, 36.982441, 27.182076>,  <32.801449, 37.458656, 26.717409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781136, 36.982441, 27.182076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141335, 37.150139, 27.228268>,  <33.357456, 37.250755, 27.255983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141335, 37.150139, 27.228268>,  <32.781136, 36.982441, 27.182076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141335, 37.150139, 27.228268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064455, -0.133949, 0.988890,
		0.430054, -0.897938, -0.093599,
		0.900499, 0.419243, 0.115483,
		33.411484, 37.275913, 27.262913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136307, 36.543278, 27.574223>,  <32.781136, 36.982441, 27.182076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136307, 36.543278, 27.574223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292709, 36.906128, 27.636509>,  <33.386551, 37.123837, 27.673882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292709, 36.906128, 27.636509>,  <33.136307, 36.543278, 27.574223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292709, 36.906128, 27.636509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137122, -0.224711, 0.964729,
		0.910117, -0.355861, -0.212249,
		0.391004, 0.907121, 0.155717,
		33.410011, 37.178265, 27.683224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756500, 36.417149, 28.069143>,  <33.136307, 36.543278, 27.574223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756500, 36.417149, 28.069143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699558, 36.812645, 28.087557>,  <33.665394, 37.049942, 28.098606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699558, 36.812645, 28.087557>,  <33.756500, 36.417149, 28.069143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699558, 36.812645, 28.087557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023940, -0.043056, 0.998786,
		0.989525, 0.143289, -0.017541,
		-0.142359, 0.988744, 0.046035,
		33.656849, 37.109268, 28.101368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355492, 36.749481, 28.360319>,  <33.756500, 36.417149, 28.069143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355492, 36.749481, 28.360319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049763, 36.998447, 28.427731>,  <33.866325, 37.147827, 28.468178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049763, 36.998447, 28.427731>,  <34.355492, 36.749481, 28.360319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049763, 36.998447, 28.427731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262604, 0.061751, 0.962926,
		0.588938, 0.780243, -0.210648,
		-0.764324, 0.622420, 0.168527,
		33.820465, 37.185173, 28.478289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530975, 37.134476, 28.940924>,  <34.355492, 36.749481, 28.360319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530975, 37.134476, 28.940924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135601, 37.194328, 28.931017>,  <33.898376, 37.230240, 28.925074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135601, 37.194328, 28.931017>,  <34.530975, 37.134476, 28.940924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135601, 37.194328, 28.931017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020997, 0.026705, 0.999423,
		0.150207, 0.988381, -0.023254,
		-0.988432, 0.149632, -0.024765,
		33.839073, 37.239220, 28.923588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421951, 37.718132, 29.501040>,  <34.530975, 37.134476, 28.940924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421951, 37.718132, 29.501040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058681, 37.570229, 29.422564>,  <33.840717, 37.481483, 29.375479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058681, 37.570229, 29.422564>,  <34.421951, 37.718132, 29.501040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058681, 37.570229, 29.422564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256881, 0.122274, 0.958677,
		-0.330495, 0.921045, -0.206032,
		-0.908177, -0.369763, -0.196188,
		33.786228, 37.459301, 29.363707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043839, 38.054131, 29.948919>,  <34.421951, 37.718132, 29.501040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043839, 38.054131, 29.948919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804798, 37.758896, 29.823637>,  <33.661373, 37.581753, 29.748468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804798, 37.758896, 29.823637>,  <34.043839, 38.054131, 29.948919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804798, 37.758896, 29.823637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421274, -0.043328, 0.905898,
		-0.682206, 0.673308, -0.285046,
		-0.597598, -0.738091, -0.313206,
		33.625519, 37.537468, 29.729675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262234, 38.239803, 30.091825>,  <34.043839, 38.054131, 29.948919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262234, 38.239803, 30.091825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286865, 37.840591, 30.096512>,  <33.301643, 37.601063, 30.099323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286865, 37.840591, 30.096512>,  <33.262234, 38.239803, 30.091825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286865, 37.840591, 30.096512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392466, -0.013420, 0.919669,
		-0.917703, -0.061229, -0.392520,
		0.061578, -0.998034, 0.011714,
		33.305340, 37.541180, 30.100025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637810, 37.941765, 30.236498>,  <33.262234, 38.239803, 30.091825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637810, 37.941765, 30.236498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897091, 37.663864, 30.361172>,  <33.052658, 37.497124, 30.435976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897091, 37.663864, 30.361172>,  <32.637810, 37.941765, 30.236498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897091, 37.663864, 30.361172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472501, -0.045993, 0.880129,
		-0.597139, -0.717774, -0.358086,
		0.648203, -0.694755, 0.311685,
		33.091553, 37.455437, 30.454678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273258, 37.452583, 30.714268>,  <32.637810, 37.941765, 30.236498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273258, 37.452583, 30.714268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651024, 37.362991, 30.810530>,  <32.877682, 37.309235, 30.868286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651024, 37.362991, 30.810530>,  <32.273258, 37.452583, 30.714268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651024, 37.362991, 30.810530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281089, -0.170499, 0.944415,
		-0.170499, -0.959564, -0.223980,
		-0.944415, 0.223980, -0.240653,
		32.934349, 37.295799, 30.882725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177879, 36.929924, 31.220823>,  <32.273258, 37.452583, 30.714268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177879, 36.929924, 31.220823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546108, 37.074703, 31.279537>,  <32.767044, 37.161572, 31.314766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546108, 37.074703, 31.279537>,  <32.177879, 36.929924, 31.220823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546108, 37.074703, 31.279537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064104, -0.230699, 0.970911,
		0.385284, -0.903200, -0.189172,
		0.920569, 0.361950, 0.146783,
		32.822277, 37.183289, 31.323572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429302, 36.425278, 31.618900>,  <32.177879, 36.929924, 31.220823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429302, 36.425278, 31.618900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689400, 36.726391, 31.659904>,  <32.845459, 36.907059, 31.684507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689400, 36.726391, 31.659904>,  <32.429302, 36.425278, 31.618900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689400, 36.726391, 31.659904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115348, -0.231190, 0.966046,
		0.750921, -0.616338, -0.237161,
		0.650240, 0.752781, 0.102512,
		32.884472, 36.952225, 31.690659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972351, 36.085297, 31.994368>,  <32.429302, 36.425278, 31.618900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972351, 36.085297, 31.994368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947735, 36.482536, 32.034317>,  <32.932964, 36.720879, 32.058289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947735, 36.482536, 32.034317>,  <32.972351, 36.085297, 31.994368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947735, 36.482536, 32.034317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030246, -0.101873, 0.994337,
		0.997646, 0.058174, 0.036306,
		-0.061543, 0.993095, 0.099874,
		32.929272, 36.780464, 32.064278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470428, 36.347599, 32.446621>,  <32.972351, 36.085297, 31.994368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470428, 36.347599, 32.446621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184238, 36.626774, 32.459141>,  <33.012524, 36.794277, 32.466652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184238, 36.626774, 32.459141>,  <33.470428, 36.347599, 32.446621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184238, 36.626774, 32.459141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006414, -0.038237, 0.999248,
		0.698605, 0.715141, 0.022881,
		-0.715479, 0.697933, 0.031299,
		32.969593, 36.836155, 32.468529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586231, 36.763275, 33.008492>,  <33.470428, 36.347599, 32.446621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586231, 36.763275, 33.008492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199810, 36.849392, 32.951363>,  <32.967957, 36.901062, 32.917084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199810, 36.849392, 32.951363>,  <33.586231, 36.763275, 33.008492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199810, 36.849392, 32.951363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117217, 0.127401, 0.984901,
		0.230236, 0.968204, -0.097839,
		-0.966049, 0.215291, -0.142822,
		32.909996, 36.913979, 32.908516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499218, 37.331814, 33.428593>,  <33.586231, 36.763275, 33.008492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499218, 37.331814, 33.428593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118752, 37.218643, 33.379227>,  <32.890472, 37.150742, 33.349609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118752, 37.218643, 33.379227>,  <33.499218, 37.331814, 33.428593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118752, 37.218643, 33.379227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108601, -0.067507, 0.991791,
		-0.288933, 0.956763, 0.033484,
		-0.951169, -0.282925, -0.123410,
		32.833401, 37.133766, 33.342205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964600, 37.483463, 33.965488>,  <33.499218, 37.331814, 33.428593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964600, 37.483463, 33.965488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241985, 37.708828, 34.145119>,  <34.408417, 37.844048, 34.252895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241985, 37.708828, 34.145119>,  <33.964600, 37.483463, 33.965488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241985, 37.708828, 34.145119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258716, 0.386998, -0.885042,
		-0.672436, 0.729930, 0.122606,
		0.693467, 0.563414, 0.449076,
		34.450024, 37.877853, 34.279842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012341, 38.261650, 33.829746>,  <33.964600, 37.483463, 33.965488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012341, 38.261650, 33.829746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381901, 38.134121, 33.914375>,  <34.603638, 38.057602, 33.965153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381901, 38.134121, 33.914375>,  <34.012341, 38.261650, 33.829746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381901, 38.134121, 33.914375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335294, 0.408152, -0.849111,
		0.184365, 0.855431, 0.483991,
		0.923898, -0.318826, 0.211571,
		34.659069, 38.038475, 33.977848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467609, 38.808365, 33.798496>,  <34.012341, 38.261650, 33.829746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467609, 38.808365, 33.798496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665062, 38.470215, 33.716850>,  <34.783535, 38.267323, 33.667862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665062, 38.470215, 33.716850>,  <34.467609, 38.808365, 33.798496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665062, 38.470215, 33.716850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364403, 0.414171, -0.834070,
		0.789644, 0.337342, 0.512506,
		0.493632, -0.845377, -0.204119,
		34.813152, 38.216602, 33.655613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172421, 39.030598, 33.470543>,  <34.467609, 38.808365, 33.798496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172421, 39.030598, 33.470543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124348, 38.641457, 33.391441>,  <35.095505, 38.407970, 33.343979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124348, 38.641457, 33.391441>,  <35.172421, 39.030598, 33.470543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124348, 38.641457, 33.391441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513542, 0.109555, -0.851042,
		0.849607, -0.203831, 0.486437,
		-0.120177, -0.972857, -0.197754,
		35.088295, 38.349598, 33.332115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819199, 38.740688, 33.214226>,  <35.172421, 39.030598, 33.470543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819199, 38.740688, 33.214226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547775, 38.474846, 33.089096>,  <35.384922, 38.315342, 33.014019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547775, 38.474846, 33.089096>,  <35.819199, 38.740688, 33.214226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547775, 38.474846, 33.089096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544307, -0.168979, -0.821691,
		0.493238, -0.727838, 0.476412,
		-0.678561, -0.664603, -0.312820,
		35.344208, 38.275463, 32.995251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237892, 38.235191, 32.935532>,  <35.819199, 38.740688, 33.214226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237892, 38.235191, 32.935532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890602, 38.135601, 32.763863>,  <35.682228, 38.075848, 32.660862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890602, 38.135601, 32.763863>,  <36.237892, 38.235191, 32.935532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890602, 38.135601, 32.763863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459830, -0.078852, -0.884499,
		0.186376, -0.965295, 0.182947,
		-0.868229, -0.248974, -0.429175,
		35.630135, 38.060909, 32.635109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343639, 37.580502, 32.531700>,  <36.237892, 38.235191, 32.935532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343639, 37.580502, 32.531700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028938, 37.783791, 32.391571>,  <35.840118, 37.905762, 32.307491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028938, 37.783791, 32.391571>,  <36.343639, 37.580502, 32.531700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028938, 37.783791, 32.391571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419851, 0.024566, -0.907260,
		-0.452480, -0.860878, -0.232704,
		-0.786757, 0.508218, -0.350325,
		35.792912, 37.936256, 32.286472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175556, 37.342514, 31.840759>,  <36.343639, 37.580502, 32.531700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175556, 37.342514, 31.840759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998425, 37.701115, 31.835358>,  <35.892143, 37.916275, 31.832117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998425, 37.701115, 31.835358>,  <36.175556, 37.342514, 31.840759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998425, 37.701115, 31.835358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104868, 0.036832, -0.993804,
		-0.890451, -0.441504, -0.110325,
		-0.442832, 0.896503, -0.013503,
		35.865574, 37.970066, 31.831306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818989, 37.302864, 31.209723>,  <36.175556, 37.342514, 31.840759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818989, 37.302864, 31.209723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804535, 37.693554, 31.294289>,  <35.795860, 37.927967, 31.345028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.804535, 37.693554, 31.294289>,  <35.818989, 37.302864, 31.209723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804535, 37.693554, 31.294289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001503, 0.211605, -0.977354,
		-0.999346, -0.035000, -0.009115,
		-0.036136, 0.976728, 0.211414,
		35.793694, 37.986572, 31.357714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259186, 37.634277, 30.726387>,  <35.818989, 37.302864, 31.209723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259186, 37.634277, 30.726387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481064, 37.938198, 30.862045>,  <35.614189, 38.120552, 30.943439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481064, 37.938198, 30.862045>,  <35.259186, 37.634277, 30.726387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481064, 37.938198, 30.862045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063319, 0.444963, -0.893308,
		-0.829644, 0.474036, 0.294927,
		0.554691, 0.759802, 0.339145,
		35.647472, 38.166138, 30.963789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982639, 38.304714, 30.510706>,  <35.259186, 37.634277, 30.726387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982639, 38.304714, 30.510706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360817, 38.372303, 30.622118>,  <35.587723, 38.412857, 30.688965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360817, 38.372303, 30.622118>,  <34.982639, 38.304714, 30.510706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360817, 38.372303, 30.622118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143214, 0.552350, -0.821218,
		-0.292614, 0.816307, 0.498017,
		0.945445, 0.168977, 0.278532,
		35.644451, 38.422997, 30.705677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141464, 39.025146, 30.437780>,  <34.982639, 38.304714, 30.510706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141464, 39.025146, 30.437780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498653, 38.845585, 30.424677>,  <35.712967, 38.737846, 30.416815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498653, 38.845585, 30.424677>,  <35.141464, 39.025146, 30.437780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498653, 38.845585, 30.424677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230306, 0.518235, -0.823645,
		0.386719, 0.727952, 0.566158,
		0.892977, -0.448909, -0.032760,
		35.766548, 38.710911, 30.414848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597561, 39.510822, 30.236067>,  <35.141464, 39.025146, 30.437780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597561, 39.510822, 30.236067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761982, 39.160561, 30.134666>,  <35.860634, 38.950405, 30.073826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761982, 39.160561, 30.134666>,  <35.597561, 39.510822, 30.236067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761982, 39.160561, 30.134666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356747, 0.410419, -0.839219,
		0.838906, 0.254531, 0.481092,
		0.411057, -0.875654, -0.253500,
		35.885300, 38.897865, 30.058617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051590, 39.679924, 29.714495>,  <35.597561, 39.510822, 30.236067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051590, 39.679924, 29.714495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068504, 39.284248, 29.658329>,  <36.078651, 39.046844, 29.624630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068504, 39.284248, 29.658329>,  <36.051590, 39.679924, 29.714495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068504, 39.284248, 29.658329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201637, 0.146096, -0.968503,
		0.978547, 0.012643, 0.205635,
		0.042287, -0.989190, -0.140412,
		36.081192, 38.987492, 29.616205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658379, 39.628548, 29.346420>,  <36.051590, 39.679924, 29.714495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658379, 39.628548, 29.346420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444172, 39.302319, 29.258728>,  <36.315647, 39.106579, 29.206112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444172, 39.302319, 29.258728>,  <36.658379, 39.628548, 29.346420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444172, 39.302319, 29.258728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170992, 0.149505, -0.973863,
		0.827035, -0.559004, 0.059395,
		-0.535514, -0.815575, -0.219231,
		36.283516, 39.057648, 29.192959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994656, 39.321594, 28.835211>,  <36.658379, 39.628548, 29.346420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994656, 39.321594, 28.835211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626049, 39.180302, 28.770668>,  <36.404884, 39.095524, 28.731943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626049, 39.180302, 28.770668>,  <36.994656, 39.321594, 28.835211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626049, 39.180302, 28.770668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031441, 0.346277, -0.937606,
		0.387072, -0.869089, -0.307993,
		-0.921513, -0.353238, -0.161359,
		36.349594, 39.074333, 28.722261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002159, 38.978500, 28.128983>,  <36.994656, 39.321594, 28.835211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002159, 38.978500, 28.128983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611839, 39.025051, 28.203039>,  <36.377647, 39.052982, 28.247473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611839, 39.025051, 28.203039>,  <37.002159, 38.978500, 28.128983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611839, 39.025051, 28.203039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182274, 0.034918, -0.982628,
		-0.120827, -0.992590, -0.012859,
		-0.975796, 0.116384, 0.185142,
		36.319099, 39.059967, 28.258581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793415, 38.592358, 27.657967>,  <37.002159, 38.978500, 28.128983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793415, 38.592358, 27.657967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461540, 38.785454, 27.770094>,  <36.262417, 38.901314, 27.837370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461540, 38.785454, 27.770094>,  <36.793415, 38.592358, 27.657967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461540, 38.785454, 27.770094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319468, 0.001177, -0.947596,
		-0.457778, -0.875760, 0.153245,
		-0.829686, 0.482745, 0.280316,
		36.212635, 38.930279, 27.854189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188251, 38.327507, 27.306143>,  <36.793415, 38.592358, 27.657967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188251, 38.327507, 27.306143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094929, 38.704159, 27.403223>,  <36.038937, 38.930149, 27.461472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094929, 38.704159, 27.403223>,  <36.188251, 38.327507, 27.306143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094929, 38.704159, 27.403223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036615, 0.240903, -0.969858,
		-0.971714, -0.235160, -0.021727,
		-0.233306, 0.941629, 0.242699,
		36.024937, 38.986649, 27.476032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492332, 38.584202, 26.852711>,  <36.188251, 38.327507, 27.306143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492332, 38.584202, 26.852711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698307, 38.906036, 26.971024>,  <35.821892, 39.099136, 27.042011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698307, 38.906036, 26.971024>,  <35.492332, 38.584202, 26.852711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698307, 38.906036, 26.971024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114642, 0.277311, -0.953916,
		-0.849528, 0.525115, 0.050559,
		0.514936, 0.804582, 0.295784,
		35.852787, 39.147411, 27.059759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243740, 39.157402, 26.486601>,  <35.492332, 38.584202, 26.852711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243740, 39.157402, 26.486601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592632, 39.309654, 26.609449>,  <35.801968, 39.401005, 26.683159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592632, 39.309654, 26.609449>,  <35.243740, 39.157402, 26.486601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592632, 39.309654, 26.609449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207000, 0.281635, -0.936927,
		-0.443123, 0.880795, 0.166861,
		0.872235, 0.380634, 0.307123,
		35.854301, 39.423843, 26.701586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412773, 39.788628, 26.106249>,  <35.243740, 39.157402, 26.486601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412773, 39.788628, 26.106249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756664, 39.642784, 26.249315>,  <35.963001, 39.555279, 26.335155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756664, 39.642784, 26.249315>,  <35.412773, 39.788628, 26.106249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756664, 39.642784, 26.249315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472166, 0.300377, -0.828754,
		0.194738, 0.881382, 0.430399,
		0.859730, -0.364610, 0.357664,
		36.014584, 39.533401, 26.356615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960167, 40.315720, 25.925795>,  <35.412773, 39.788628, 26.106249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960167, 40.315720, 25.925795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148525, 39.973278, 26.010963>,  <36.261539, 39.767811, 26.062065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148525, 39.973278, 26.010963>,  <35.960167, 40.315720, 25.925795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148525, 39.973278, 26.010963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616486, 0.146698, -0.773579,
		0.631031, 0.495541, 0.596858,
		0.470898, -0.856107, 0.212923,
		36.289795, 39.716446, 26.074841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588692, 40.566425, 25.868265>,  <35.960167, 40.315720, 25.925795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588692, 40.566425, 25.868265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644863, 40.170391, 25.866907>,  <36.678566, 39.932770, 25.866093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644863, 40.170391, 25.866907>,  <36.588692, 40.566425, 25.868265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644863, 40.170391, 25.866907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595585, 0.087216, -0.798543,
		0.790922, 0.110119, 0.601928,
		0.140433, -0.990084, -0.003396,
		36.686993, 39.873367, 25.865889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330898, 40.492359, 25.814188>,  <36.588692, 40.566425, 25.868265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330898, 40.492359, 25.814188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156723, 40.155712, 25.686390>,  <37.052216, 39.953724, 25.609711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156723, 40.155712, 25.686390>,  <37.330898, 40.492359, 25.814188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156723, 40.155712, 25.686390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450413, 0.103607, -0.886788,
		0.779436, -0.530048, 0.333959,
		-0.435440, -0.841614, -0.319496,
		37.026093, 39.903229, 25.590542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851994, 39.991917, 25.520416>,  <37.330898, 40.492359, 25.814188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851994, 39.991917, 25.520416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511379, 39.863827, 25.354357>,  <37.307011, 39.786972, 25.254721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511379, 39.863827, 25.354357>,  <37.851994, 39.991917, 25.520416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511379, 39.863827, 25.354357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431056, 0.023159, -0.902028,
		0.298470, -0.947057, 0.118316,
		-0.851532, -0.320229, -0.415147,
		37.255920, 39.767757, 25.229813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045639, 39.469574, 25.075083>,  <37.851994, 39.991917, 25.520416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045639, 39.469574, 25.075083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688740, 39.557064, 24.917070>,  <37.474598, 39.609558, 24.822264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688740, 39.557064, 24.917070>,  <38.045639, 39.469574, 25.075083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688740, 39.557064, 24.917070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420524, 0.083868, -0.903397,
		-0.164462, -0.972177, -0.166809,
		-0.892251, 0.218721, -0.395030,
		37.421066, 39.622681, 24.798561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908634, 38.854557, 24.602875>,  <38.045639, 39.469574, 25.075083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908634, 38.854557, 24.602875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703793, 39.180237, 24.493454>,  <37.580887, 39.375645, 24.427801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703793, 39.180237, 24.493454>,  <37.908634, 38.854557, 24.602875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703793, 39.180237, 24.493454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291229, -0.135021, -0.947077,
		-0.808044, -0.564668, -0.167973,
		-0.512104, 0.814198, -0.273550,
		37.550159, 39.424496, 24.411388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516808, 38.617756, 23.968258>,  <37.908634, 38.854557, 24.602875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516808, 38.617756, 23.968258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521469, 39.017548, 23.980251>,  <37.524265, 39.257423, 23.987448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521469, 39.017548, 23.980251>,  <37.516808, 38.617756, 23.968258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521469, 39.017548, 23.980251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314509, 0.024801, -0.948930,
		-0.949183, 0.020486, -0.314057,
		0.011651, 0.999483, 0.029983,
		37.524963, 39.317394, 23.989246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116390, 38.813225, 23.388393>,  <37.516808, 38.617756, 23.968258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116390, 38.813225, 23.388393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343403, 39.132378, 23.469677>,  <37.479610, 39.323868, 23.518448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343403, 39.132378, 23.469677>,  <37.116390, 38.813225, 23.388393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343403, 39.132378, 23.469677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295584, 0.032912, -0.954750,
		-0.768462, 0.601920, -0.217161,
		0.567536, 0.797878, 0.203210,
		37.513664, 39.371742, 23.530640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899097, 39.367580, 22.851217>,  <37.116390, 38.813225, 23.388393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899097, 39.367580, 22.851217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253132, 39.489040, 22.992308>,  <37.465553, 39.561916, 23.076962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253132, 39.489040, 22.992308>,  <36.899097, 39.367580, 22.851217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253132, 39.489040, 22.992308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381192, -0.038107, -0.923710,
		-0.267042, 0.952022, -0.149476,
		0.885088, 0.303649, 0.352727,
		37.518658, 39.580135, 23.098125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001236, 40.055908, 22.600948>,  <36.899097, 39.367580, 22.851217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001236, 40.055908, 22.600948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339283, 39.862312, 22.691753>,  <37.542110, 39.746155, 22.746237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339283, 39.862312, 22.691753>,  <37.001236, 40.055908, 22.600948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339283, 39.862312, 22.691753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331702, 0.141730, -0.932677,
		0.419231, 0.863520, 0.280318,
		0.845115, -0.483989, 0.227014,
		37.592819, 39.717117, 22.759857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522701, 40.429653, 22.266214>,  <37.001236, 40.055908, 22.600948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522701, 40.429653, 22.266214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699692, 40.080261, 22.347446>,  <37.805885, 39.870625, 22.396185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699692, 40.080261, 22.347446>,  <37.522701, 40.429653, 22.266214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699692, 40.080261, 22.347446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416327, -0.000488, -0.909215,
		0.794283, 0.486855, 0.363438,
		0.442478, -0.873483, 0.203078,
		37.832436, 39.818218, 22.408369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221981, 40.586018, 22.149153>,  <37.522701, 40.429653, 22.266214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221981, 40.586018, 22.149153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210369, 40.186272, 22.157341>,  <38.203403, 39.946423, 22.162254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210369, 40.186272, 22.157341>,  <38.221981, 40.586018, 22.149153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210369, 40.186272, 22.157341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436808, -0.031103, -0.899017,
		0.899086, -0.017154, 0.437435,
		-0.029027, -0.999369, 0.020471,
		38.201660, 39.886459, 22.163483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857506, 40.384544, 22.105068>,  <38.221981, 40.586018, 22.149153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857506, 40.384544, 22.105068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645363, 40.069180, 21.980402>,  <38.518078, 39.879963, 21.905602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645363, 40.069180, 21.980402>,  <38.857506, 40.384544, 22.105068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645363, 40.069180, 21.980402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545331, -0.035784, -0.837456,
		0.649106, -0.614110, 0.448922,
		-0.530354, -0.788409, -0.311666,
		38.486256, 39.832657, 21.886902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412735, 39.946590, 21.812847>,  <38.857506, 40.384544, 22.105068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412735, 39.946590, 21.812847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076969, 39.791328, 21.660681>,  <38.875511, 39.698170, 21.569382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076969, 39.791328, 21.660681>,  <39.412735, 39.946590, 21.812847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076969, 39.791328, 21.660681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450353, -0.104937, -0.886663,
		0.304244, -0.915600, 0.262893,
		-0.839415, -0.388156, -0.380417,
		38.825146, 39.674881, 21.546556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638908, 39.447891, 21.276974>,  <39.412735, 39.946590, 21.812847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638908, 39.447891, 21.276974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258389, 39.508736, 21.169722>,  <39.030079, 39.545242, 21.105370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258389, 39.508736, 21.169722>,  <39.638908, 39.447891, 21.276974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258389, 39.508736, 21.169722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252868, -0.112453, -0.960943,
		-0.176329, -0.981944, 0.068510,
		-0.951297, 0.152118, -0.268131,
		38.973000, 39.554371, 21.089283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584526, 38.965252, 20.773846>,  <39.638908, 39.447891, 21.276974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584526, 38.965252, 20.773846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262142, 39.194599, 20.714951>,  <39.068714, 39.332207, 20.679613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262142, 39.194599, 20.714951>,  <39.584526, 38.965252, 20.773846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262142, 39.194599, 20.714951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042281, -0.303840, -0.951784,
		-0.590463, -0.760872, 0.269124,
		-0.805957, 0.573372, -0.147236,
		39.020355, 39.366611, 20.670780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085556, 38.544147, 20.368784>,  <39.584526, 38.965252, 20.773846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085556, 38.544147, 20.368784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473637, 38.491833, 20.450378>,  <40.706486, 38.460445, 20.499336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473637, 38.491833, 20.450378>,  <40.085556, 38.544147, 20.368784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473637, 38.491833, 20.450378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222489, -0.147327, 0.963739,
		-0.095980, -0.980404, -0.172033,
		0.970199, -0.130775, 0.203989,
		40.764698, 38.452599, 20.511576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173767, 38.108383, 20.923643>,  <40.085556, 38.544147, 20.368784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173767, 38.108383, 20.923643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543221, 38.261593, 20.929224>,  <40.764893, 38.353519, 20.932573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543221, 38.261593, 20.929224>,  <40.173767, 38.108383, 20.923643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543221, 38.261593, 20.929224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023401, -0.092693, 0.995420,
		0.382568, -0.919074, -0.094578,
		0.923631, 0.383029, 0.013954,
		40.820309, 38.376503, 20.933411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456360, 37.729481, 21.319916>,  <40.173767, 38.108383, 20.923643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456360, 37.729481, 21.319916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740097, 38.011150, 21.307516>,  <40.910339, 38.180153, 21.300077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740097, 38.011150, 21.307516>,  <40.456360, 37.729481, 21.319916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740097, 38.011150, 21.307516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233865, -0.193641, 0.952791,
		0.664933, -0.683107, -0.302041,
		0.709346, 0.704179, -0.030997,
		40.952900, 38.222404, 21.298218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999889, 37.382278, 21.560455>,  <40.456360, 37.729481, 21.319916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999889, 37.382278, 21.560455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069214, 37.770554, 21.627068>,  <41.110809, 38.003517, 21.667034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069214, 37.770554, 21.627068>,  <40.999889, 37.382278, 21.560455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069214, 37.770554, 21.627068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102567, -0.185960, 0.977189,
		0.979511, -0.152281, -0.131790,
		0.173315, 0.970685, 0.166531,
		41.121208, 38.061760, 21.677027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433289, 37.390827, 22.077824>,  <40.999889, 37.382278, 21.560455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433289, 37.390827, 22.077824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299442, 37.767750, 22.074097>,  <41.219135, 37.993904, 22.071861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299442, 37.767750, 22.074097>,  <41.433289, 37.390827, 22.077824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299442, 37.767750, 22.074097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164915, -0.048823, 0.985099,
		0.927812, 0.331167, 0.171738,
		-0.334617, 0.942308, -0.009316,
		41.199059, 38.050442, 22.071302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741268, 37.685036, 22.712854>,  <41.433289, 37.390827, 22.077824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741268, 37.685036, 22.712854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454208, 37.944950, 22.612646>,  <41.281971, 38.100899, 22.552521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454208, 37.944950, 22.612646>,  <41.741268, 37.685036, 22.712854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454208, 37.944950, 22.612646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323361, 0.007688, 0.946244,
		0.616780, 0.760081, 0.204597,
		-0.717649, 0.649783, -0.250522,
		41.238914, 38.139885, 22.537489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712269, 38.156273, 23.260056>,  <41.741268, 37.685036, 22.712854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712269, 38.156273, 23.260056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360764, 38.194645, 23.073050>,  <41.149860, 38.217667, 22.960846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360764, 38.194645, 23.073050>,  <41.712269, 38.156273, 23.260056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360764, 38.194645, 23.073050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466279, 0.036291, 0.883893,
		0.101756, 0.994726, 0.012838,
		-0.878766, 0.095927, -0.467513,
		41.097134, 38.223423, 22.932796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384132, 38.707478, 23.677601>,  <41.712269, 38.156273, 23.260056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384132, 38.707478, 23.677601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117825, 38.483601, 23.480221>,  <40.958038, 38.349274, 23.361792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.117825, 38.483601, 23.480221>,  <41.384132, 38.707478, 23.677601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117825, 38.483601, 23.480221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542803, -0.090470, 0.834973,
		-0.511967, 0.823750, -0.243568,
		-0.665773, -0.559688, -0.493452,
		40.918091, 38.315693, 23.332186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695930, 38.946785, 23.827766>,  <41.384132, 38.707478, 23.677601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695930, 38.946785, 23.827766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602985, 38.580322, 23.697134>,  <40.547218, 38.360443, 23.618753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602985, 38.580322, 23.697134>,  <40.695930, 38.946785, 23.827766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602985, 38.580322, 23.697134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586540, -0.135859, 0.798444,
		-0.775873, 0.377082, -0.505797,
		-0.232361, -0.916161, -0.326583,
		40.533276, 38.305473, 23.599159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912716, 38.862270, 23.949396>,  <40.695930, 38.946785, 23.827766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912716, 38.862270, 23.949396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074432, 38.499359, 23.903112>,  <40.171463, 38.281612, 23.875343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.074432, 38.499359, 23.903112>,  <39.912716, 38.862270, 23.949396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074432, 38.499359, 23.903112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391314, -0.285926, 0.874711,
		-0.826694, -0.308358, -0.470629,
		0.404289, -0.907282, -0.115709,
		40.195721, 38.227173, 23.868401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375408, 38.354752, 24.089403>,  <39.912716, 38.862270, 23.949396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375408, 38.354752, 24.089403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710629, 38.150040, 24.165037>,  <39.911758, 38.027210, 24.210419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710629, 38.150040, 24.165037>,  <39.375408, 38.354752, 24.089403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710629, 38.150040, 24.165037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460223, -0.476963, 0.748800,
		-0.293034, -0.714554, -0.635251,
		0.838049, -0.511781, 0.189088,
		39.962044, 37.996506, 24.221764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288551, 37.501026, 24.122059>,  <39.375408, 38.354752, 24.089403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288551, 37.501026, 24.122059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587799, 37.644012, 24.345678>,  <39.767349, 37.729805, 24.479849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587799, 37.644012, 24.345678>,  <39.288551, 37.501026, 24.122059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587799, 37.644012, 24.345678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438205, -0.366507, 0.820761,
		0.498286, -0.859007, -0.117550,
		0.748122, 0.357463, 0.559047,
		39.812237, 37.751251, 24.513391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515057, 37.042488, 24.670416>,  <39.288551, 37.501026, 24.122059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515057, 37.042488, 24.670416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616375, 37.406464, 24.801777>,  <39.677166, 37.624851, 24.880594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616375, 37.406464, 24.801777>,  <39.515057, 37.042488, 24.670416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616375, 37.406464, 24.801777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263929, -0.261593, 0.928392,
		0.930689, -0.321835, 0.173898,
		0.253298, 0.909941, 0.328403,
		39.692364, 37.679447, 24.900297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682625, 36.903461, 25.315752>,  <39.515057, 37.042488, 24.670416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682625, 36.903461, 25.315752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667210, 37.303165, 25.316128>,  <39.657963, 37.542988, 25.316353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667210, 37.303165, 25.316128>,  <39.682625, 36.903461, 25.315752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667210, 37.303165, 25.316128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242652, -0.010270, 0.970059,
		0.969348, 0.037154, 0.242868,
		-0.038536, 0.999257, 0.000939,
		39.655647, 37.602943, 25.316410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045479, 37.239056, 26.010389>,  <39.682625, 36.903461, 25.315752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045479, 37.239056, 26.010389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780514, 37.500786, 25.864479>,  <39.621536, 37.657825, 25.776934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780514, 37.500786, 25.864479>,  <40.045479, 37.239056, 26.010389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780514, 37.500786, 25.864479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247169, 0.268763, 0.930953,
		0.707188, 0.706837, -0.016302,
		-0.662414, 0.654330, -0.364774,
		39.581791, 37.697086, 25.755047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159756, 37.880939, 26.360895>,  <40.045479, 37.239056, 26.010389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159756, 37.880939, 26.360895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792667, 37.910751, 26.204824>,  <39.572414, 37.928638, 26.111183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792667, 37.910751, 26.204824>,  <40.159756, 37.880939, 26.360895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792667, 37.910751, 26.204824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339285, 0.363755, 0.867507,
		0.206584, 0.928508, -0.308538,
		-0.917719, 0.074531, -0.390175,
		39.517353, 37.933109, 26.087772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975220, 38.496826, 26.698063>,  <40.159756, 37.880939, 26.360895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975220, 38.496826, 26.698063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631218, 38.341331, 26.565836>,  <39.424816, 38.248035, 26.486500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631218, 38.341331, 26.565836>,  <39.975220, 38.496826, 26.698063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631218, 38.341331, 26.565836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433930, 0.216243, 0.874610,
		-0.268514, 0.895611, -0.354656,
		-0.860003, -0.388741, -0.330569,
		39.373219, 38.224709, 26.466665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507305, 39.087002, 26.718594>,  <39.975220, 38.496826, 26.698063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507305, 39.087002, 26.718594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327148, 38.729874, 26.719757>,  <39.219055, 38.515594, 26.720455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327148, 38.729874, 26.719757>,  <39.507305, 39.087002, 26.718594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327148, 38.729874, 26.719757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508492, 0.259187, 0.821132,
		-0.733881, 0.368355, -0.570731,
		-0.450394, -0.892825, 0.002907,
		39.192032, 38.462025, 26.720629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777706, 39.237385, 26.936485>,  <39.507305, 39.087002, 26.718594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777706, 39.237385, 26.936485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816063, 38.843487, 26.994574>,  <38.839077, 38.607147, 27.029427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816063, 38.843487, 26.994574>,  <38.777706, 39.237385, 26.936485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816063, 38.843487, 26.994574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535082, 0.072028, 0.841724,
		-0.839340, -0.158418, -0.520011,
		0.095888, -0.984742, 0.145223,
		38.844830, 38.548065, 27.038141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143326, 39.024002, 27.097832>,  <38.777706, 39.237385, 26.936485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143326, 39.024002, 27.097832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355381, 38.716511, 27.240948>,  <38.482613, 38.532017, 27.326817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355381, 38.716511, 27.240948>,  <38.143326, 39.024002, 27.097832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355381, 38.716511, 27.240948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458168, 0.095351, 0.883736,
		-0.713468, -0.632429, -0.301657,
		0.530137, -0.768728, 0.357789,
		38.514423, 38.485893, 27.348284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665993, 38.725925, 27.436571>,  <38.143326, 39.024002, 27.097832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665993, 38.725925, 27.436571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007893, 38.569588, 27.573183>,  <38.213032, 38.475784, 27.655149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007893, 38.569588, 27.573183>,  <37.665993, 38.725925, 27.436571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007893, 38.569588, 27.573183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370865, 0.000453, 0.928687,
		-0.363126, -0.920457, -0.144563,
		0.854751, -0.390843, 0.341529,
		38.264317, 38.452335, 27.675642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462791, 38.115932, 27.914099>,  <37.665993, 38.725925, 27.436571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462791, 38.115932, 27.914099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839161, 38.206863, 28.014481>,  <38.064983, 38.261421, 28.074709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839161, 38.206863, 28.014481>,  <37.462791, 38.115932, 27.914099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839161, 38.206863, 28.014481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160711, -0.352515, 0.921903,
		0.298038, -0.907775, -0.295158,
		0.940928, 0.227327, 0.250953,
		38.121441, 38.275063, 28.089766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865082, 37.486824, 28.219469>,  <37.462791, 38.115932, 27.914099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865082, 37.486824, 28.219469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032841, 37.816864, 28.370895>,  <38.133495, 38.014889, 28.461750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032841, 37.816864, 28.370895>,  <37.865082, 37.486824, 28.219469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032841, 37.816864, 28.370895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064184, -0.442920, 0.894261,
		0.905529, -0.350757, -0.238719,
		0.419401, 0.825101, 0.378564,
		38.158661, 38.064396, 28.484465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366539, 37.251999, 28.647425>,  <37.865082, 37.486824, 28.219469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366539, 37.251999, 28.647425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269276, 37.609112, 28.799118>,  <38.210918, 37.823380, 28.890135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269276, 37.609112, 28.799118>,  <38.366539, 37.251999, 28.647425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269276, 37.609112, 28.799118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078068, -0.407713, 0.909767,
		0.966839, 0.191614, 0.168838,
		-0.243162, 0.892779, 0.379233,
		38.196327, 37.876945, 28.912888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801083, 37.155483, 29.216261>,  <38.366539, 37.251999, 28.647425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801083, 37.155483, 29.216261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583042, 37.482815, 29.289139>,  <38.452217, 37.679214, 29.332867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583042, 37.482815, 29.289139>,  <38.801083, 37.155483, 29.216261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583042, 37.482815, 29.289139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053810, -0.182724, 0.981691,
		0.836641, 0.544926, 0.055569,
		-0.545103, 0.818332, 0.182196,
		38.419510, 37.728313, 29.343798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159309, 37.590847, 29.840912>,  <38.801083, 37.155483, 29.216261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159309, 37.590847, 29.840912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774403, 37.695694, 29.811684>,  <38.543457, 37.758602, 29.794146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774403, 37.695694, 29.811684>,  <39.159309, 37.590847, 29.840912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774403, 37.695694, 29.811684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064112, 0.042589, 0.997033,
		0.264449, 0.964097, -0.024177,
		-0.962266, 0.262114, -0.073073,
		38.485722, 37.774326, 29.789762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203331, 38.111629, 30.329020>,  <39.159309, 37.590847, 29.840912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203331, 38.111629, 30.329020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812805, 38.032101, 30.294899>,  <38.578487, 37.984383, 30.274426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812805, 38.032101, 30.294899>,  <39.203331, 38.111629, 30.329020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812805, 38.032101, 30.294899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138929, 0.273906, 0.951669,
		-0.165846, 0.940981, -0.295041,
		-0.976316, -0.198821, -0.085303,
		38.519909, 37.972454, 30.269308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847187, 38.539886, 30.828318>,  <39.203331, 38.111629, 30.329020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847187, 38.539886, 30.828318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547958, 38.286617, 30.748840>,  <38.368420, 38.134655, 30.701155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547958, 38.286617, 30.748840>,  <38.847187, 38.539886, 30.828318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547958, 38.286617, 30.748840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259648, 0.003728, 0.965696,
		-0.610711, 0.774002, -0.167191,
		-0.748074, -0.633172, -0.198691,
		38.323536, 38.096664, 30.689234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125107, 38.739502, 31.120056>,  <38.847187, 38.539886, 30.828318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125107, 38.739502, 31.120056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145493, 38.341232, 31.088959>,  <38.157726, 38.102272, 31.070301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145493, 38.341232, 31.088959>,  <38.125107, 38.739502, 31.120056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145493, 38.341232, 31.088959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283825, -0.089074, 0.954730,
		-0.957521, -0.026596, -0.287136,
		0.050968, -0.995670, -0.077742,
		38.160782, 38.042530, 31.065636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635517, 38.554131, 31.563305>,  <38.125107, 38.739502, 31.120056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635517, 38.554131, 31.563305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833565, 38.210110, 31.514042>,  <37.952393, 38.003696, 31.484484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833565, 38.210110, 31.514042>,  <37.635517, 38.554131, 31.563305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833565, 38.210110, 31.514042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213490, -0.257839, 0.942306,
		-0.842188, -0.440260, -0.311273,
		0.495118, -0.860053, -0.123158,
		37.982101, 37.952095, 31.477095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187004, 38.000412, 31.767679>,  <37.635517, 38.554131, 31.563305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187004, 38.000412, 31.767679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546803, 37.827629, 31.793991>,  <37.762680, 37.723961, 31.809778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546803, 37.827629, 31.793991>,  <37.187004, 38.000412, 31.767679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546803, 37.827629, 31.793991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287594, -0.471967, 0.833389,
		-0.328942, -0.768545, -0.548759,
		0.899493, -0.431956, 0.065779,
		37.816650, 37.698044, 31.813725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048916, 37.272469, 31.890907>,  <37.187004, 38.000412, 31.767679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048916, 37.272469, 31.890907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406769, 37.385391, 32.029434>,  <37.621483, 37.453144, 32.112549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406769, 37.385391, 32.029434>,  <37.048916, 37.272469, 31.890907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406769, 37.385391, 32.029434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201443, -0.437001, 0.876613,
		0.398812, -0.854011, -0.334088,
		0.894634, 0.282304, 0.346316,
		37.675159, 37.470081, 32.133327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125252, 36.698055, 32.372673>,  <37.048916, 37.272469, 31.890907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125252, 36.698055, 32.372673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427708, 36.949467, 32.445560>,  <37.609180, 37.100311, 32.489292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427708, 36.949467, 32.445560>,  <37.125252, 36.698055, 32.372673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427708, 36.949467, 32.445560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148778, -0.436269, 0.887431,
		0.637272, -0.643913, -0.423392,
		0.756141, 0.628527, 0.182222,
		37.654549, 37.138023, 32.500229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723480, 36.300961, 32.734402>,  <37.125252, 36.698055, 32.372673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723480, 36.300961, 32.734402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778126, 36.690384, 32.807632>,  <37.810913, 36.924038, 32.851570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778126, 36.690384, 32.807632>,  <37.723480, 36.300961, 32.734402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778126, 36.690384, 32.807632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318274, -0.218151, 0.922557,
		0.938104, -0.067763, -0.339661,
		0.136613, 0.973559, 0.183081,
		37.819111, 36.982452, 32.862556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389893, 36.256901, 32.983719>,  <37.723480, 36.300961, 32.734402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389893, 36.256901, 32.983719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171234, 36.563110, 33.119457>,  <38.040039, 36.746834, 33.200901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171234, 36.563110, 33.119457>,  <38.389893, 36.256901, 32.983719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171234, 36.563110, 33.119457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287631, -0.208932, 0.934674,
		0.786411, 0.608545, -0.105974,
		-0.546649, 0.765520, 0.339343,
		38.007240, 36.792767, 33.221260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907032, 36.509743, 33.380848>,  <38.389893, 36.256901, 32.983719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907032, 36.509743, 33.380848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558800, 36.660976, 33.506790>,  <38.349861, 36.751717, 33.582355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558800, 36.660976, 33.506790>,  <38.907032, 36.509743, 33.380848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558800, 36.660976, 33.506790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198039, -0.316527, 0.927681,
		0.450404, 0.869978, 0.200687,
		-0.870584, 0.378087, 0.314854,
		38.297623, 36.774403, 33.601246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066433, 36.620564, 34.104546>,  <38.907032, 36.509743, 33.380848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066433, 36.620564, 34.104546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667480, 36.640194, 34.083267>,  <38.428108, 36.651974, 34.070499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667480, 36.640194, 34.083267>,  <39.066433, 36.620564, 34.104546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667480, 36.640194, 34.083267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062233, -0.206183, 0.976532,
		0.036956, 0.977282, 0.208697,
		-0.997377, 0.049077, -0.053199,
		38.368267, 36.654919, 34.067307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869217, 36.889557, 34.747353>,  <39.066433, 36.620564, 34.104546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869217, 36.889557, 34.747353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530582, 36.710011, 34.632946>,  <38.327400, 36.602283, 34.564301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530582, 36.710011, 34.632946>,  <38.869217, 36.889557, 34.747353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530582, 36.710011, 34.632946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130591, -0.345780, 0.929184,
		-0.515978, 0.823988, 0.234116,
		-0.846589, -0.448865, -0.286020,
		38.276608, 36.575352, 34.547138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276730, 37.166908, 35.198074>,  <38.869217, 36.889557, 34.747353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276730, 37.166908, 35.198074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186817, 36.810051, 35.041332>,  <38.132870, 36.595936, 34.947289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186817, 36.810051, 35.041332>,  <38.276730, 37.166908, 35.198074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186817, 36.810051, 35.041332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261423, -0.332185, 0.906262,
		-0.938686, 0.306151, -0.158558,
		-0.224782, -0.892146, -0.391853,
		38.119381, 36.542408, 34.923775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725166, 36.954636, 35.560410>,  <38.276730, 37.166908, 35.198074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725166, 36.954636, 35.560410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863358, 36.614307, 35.402042>,  <37.946270, 36.410110, 35.307022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863358, 36.614307, 35.402042>,  <37.725166, 36.954636, 35.560410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863358, 36.614307, 35.402042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238766, -0.487701, 0.839725,
		-0.907545, -0.195573, -0.371635,
		0.345474, -0.850822, -0.395915,
		37.966999, 36.359062, 35.283268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285606, 36.486015, 35.820660>,  <37.725166, 36.954636, 35.560410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285606, 36.486015, 35.820660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577816, 36.244240, 35.693542>,  <37.753139, 36.099174, 35.617271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577816, 36.244240, 35.693542>,  <37.285606, 36.486015, 35.820660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577816, 36.244240, 35.693542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161637, -0.605184, 0.779503,
		-0.663487, -0.518075, -0.539799,
		0.730519, -0.604442, -0.317792,
		37.796970, 36.062908, 35.598206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015682, 35.742428, 35.851063>,  <37.285606, 36.486015, 35.820660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015682, 35.742428, 35.851063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414261, 35.733124, 35.883442>,  <37.653408, 35.727539, 35.902870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414261, 35.733124, 35.883442>,  <37.015682, 35.742428, 35.851063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414261, 35.733124, 35.883442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078617, -0.601782, 0.794782,
		0.030227, -0.798322, -0.601472,
		0.996446, -0.023262, 0.080952,
		37.713196, 35.726147, 35.907726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245312, 35.000690, 35.974365>,  <37.015682, 35.742428, 35.851063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245312, 35.000690, 35.974365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536831, 35.240292, 36.107059>,  <37.711742, 35.384052, 36.186676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536831, 35.240292, 36.107059>,  <37.245312, 35.000690, 35.974365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536831, 35.240292, 36.107059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143163, -0.607066, 0.781649,
		0.669596, -0.522171, -0.528183,
		0.728797, 0.599006, 0.331733,
		37.755470, 35.419994, 36.206581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754314, 34.508720, 36.199753>,  <37.245312, 35.000690, 35.974365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754314, 34.508720, 36.199753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842148, 34.851040, 36.387112>,  <37.894848, 35.056431, 36.499527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842148, 34.851040, 36.387112>,  <37.754314, 34.508720, 36.199753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842148, 34.851040, 36.387112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162710, -0.505514, 0.847338,
		0.961929, -0.109850, -0.250250,
		0.219585, 0.855797, 0.468395,
		37.908024, 35.107780, 36.527630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361248, 34.302570, 36.594479>,  <37.754314, 34.508720, 36.199753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361248, 34.302570, 36.594479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215725, 34.635124, 36.762501>,  <38.128410, 34.834656, 36.863316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215725, 34.635124, 36.762501>,  <38.361248, 34.302570, 36.594479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215725, 34.635124, 36.762501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096421, -0.414924, 0.904733,
		0.926469, 0.369654, 0.070792,
		-0.363811, 0.831381, 0.420056,
		38.106583, 34.884537, 36.888519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816467, 34.530514, 37.116520>,  <38.361248, 34.302570, 36.594479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816467, 34.530514, 37.116520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464821, 34.682762, 37.231266>,  <38.253834, 34.774109, 37.300114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464821, 34.682762, 37.231266>,  <38.816467, 34.530514, 37.116520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464821, 34.682762, 37.231266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172257, -0.307466, 0.935838,
		0.444398, 0.872121, 0.204733,
		-0.879112, 0.380618, 0.286866,
		38.201088, 34.796947, 37.317326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980453, 34.771324, 37.732822>,  <38.816467, 34.530514, 37.116520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980453, 34.771324, 37.732822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581577, 34.767246, 37.762531>,  <38.342251, 34.764801, 37.780357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581577, 34.767246, 37.762531>,  <38.980453, 34.771324, 37.732822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581577, 34.767246, 37.762531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074247, -0.271482, 0.959575,
		0.010379, 0.962389, 0.271475,
		-0.997186, -0.010196, 0.074272,
		38.282421, 34.764187, 37.784813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890316, 34.869011, 38.360504>,  <38.980453, 34.771324, 37.732822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890316, 34.869011, 38.360504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508610, 34.770409, 38.292843>,  <38.279587, 34.711246, 38.252247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508610, 34.770409, 38.292843>,  <38.890316, 34.869011, 38.360504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508610, 34.770409, 38.292843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099522, -0.271613, 0.957247,
		-0.281908, 0.930303, 0.234659,
		-0.954266, -0.246502, -0.169156,
		38.222328, 34.696457, 38.242096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433781, 35.251232, 38.893860>,  <38.890316, 34.869011, 38.360504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433781, 35.251232, 38.893860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211277, 34.952000, 38.749111>,  <38.077774, 34.772461, 38.662262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211277, 34.952000, 38.749111>,  <38.433781, 35.251232, 38.893860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211277, 34.952000, 38.749111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243257, -0.269803, 0.931683,
		-0.794611, 0.606280, -0.031898,
		-0.556255, -0.748085, -0.361870,
		38.044399, 34.727573, 38.640549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950233, 35.175743, 39.348072>,  <38.433781, 35.251232, 38.893860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950233, 35.175743, 39.348072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867233, 34.825268, 39.174068>,  <37.817432, 34.614983, 39.069668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867233, 34.825268, 39.174068>,  <37.950233, 35.175743, 39.348072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867233, 34.825268, 39.174068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234209, -0.387256, 0.891728,
		-0.949784, 0.286914, -0.124858,
		-0.207498, -0.876192, -0.435008,
		37.804985, 34.562408, 39.043568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308388, 34.930347, 39.593155>,  <37.950233, 35.175743, 39.348072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308388, 34.930347, 39.593155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491920, 34.602497, 39.455933>,  <37.602039, 34.405788, 39.373600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491920, 34.602497, 39.455933>,  <37.308388, 34.930347, 39.593155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491920, 34.602497, 39.455933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044778, -0.406934, 0.912359,
		-0.887393, -0.403259, -0.223416,
		0.458833, -0.819626, -0.343053,
		37.629570, 34.356609, 39.353016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852203, 34.330597, 39.669449>,  <37.308388, 34.930347, 39.593155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852203, 34.330597, 39.669449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215923, 34.177158, 39.604908>,  <37.434155, 34.085094, 39.566181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215923, 34.177158, 39.604908>,  <36.852203, 34.330597, 39.669449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215923, 34.177158, 39.604908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133099, -0.635445, 0.760588,
		-0.394288, -0.670125, -0.628864,
		0.909297, -0.383592, -0.161356,
		37.488712, 34.062080, 39.556499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663940, 33.704502, 39.858227>,  <36.852203, 34.330597, 39.669449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663940, 33.704502, 39.858227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061668, 33.742382, 39.877644>,  <37.300304, 33.765110, 39.889294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061668, 33.742382, 39.877644>,  <36.663940, 33.704502, 39.858227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061668, 33.742382, 39.877644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018212, -0.600829, 0.799170,
		0.104844, -0.793748, -0.599142,
		0.994322, 0.094700, 0.048538,
		37.359966, 33.770794, 39.892204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865669, 33.055141, 40.005650>,  <36.663940, 33.704502, 39.858227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865669, 33.055141, 40.005650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176155, 33.278687, 40.122375>,  <37.362446, 33.412815, 40.192410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176155, 33.278687, 40.122375>,  <36.865669, 33.055141, 40.005650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176155, 33.278687, 40.122375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116349, -0.581888, 0.804904,
		0.619635, -0.590828, -0.516695,
		0.776218, 0.558864, 0.291816,
		37.409019, 33.446346, 40.209919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517887, 32.623055, 40.171535>,  <36.865669, 33.055141, 40.005650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517887, 32.623055, 40.171535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482925, 32.957558, 40.388065>,  <37.461948, 33.158260, 40.517982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482925, 32.957558, 40.388065>,  <37.517887, 32.623055, 40.171535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482925, 32.957558, 40.388065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010261, -0.544134, 0.838935,
		0.996120, 0.067774, 0.056143,
		-0.087408, 0.836256, 0.541327,
		37.456703, 33.208435, 40.550465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894615, 32.552292, 40.704250>,  <37.517887, 32.623055, 40.171535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894615, 32.552292, 40.704250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620739, 32.821442, 40.816277>,  <37.456413, 32.982933, 40.883492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.620739, 32.821442, 40.816277>,  <37.894615, 32.552292, 40.704250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620739, 32.821442, 40.816277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074347, -0.446738, 0.891570,
		0.725033, 0.589627, 0.355903,
		-0.684690, 0.672878, 0.280063,
		37.415333, 33.023304, 40.900295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883041, 32.724281, 41.466152>,  <37.894615, 32.552292, 40.704250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883041, 32.724281, 41.466152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512611, 32.852097, 41.385872>,  <37.290352, 32.928783, 41.337704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512611, 32.852097, 41.385872>,  <37.883041, 32.724281, 41.466152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512611, 32.852097, 41.385872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309608, -0.339412, 0.888224,
		0.215698, 0.884702, 0.413252,
		-0.926076, 0.319534, -0.200700,
		37.234787, 32.947956, 41.325661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708191, 33.048828, 42.067345>,  <37.883041, 32.724281, 41.466152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708191, 33.048828, 42.067345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357639, 32.970295, 41.891426>,  <37.147308, 32.923176, 41.785877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357639, 32.970295, 41.891426>,  <37.708191, 33.048828, 42.067345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357639, 32.970295, 41.891426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350469, -0.366384, 0.861936,
		-0.330356, 0.909515, 0.252284,
		-0.876377, -0.196328, -0.439795,
		37.094727, 32.911396, 41.759487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077721, 33.416019, 42.488228>,  <37.708191, 33.048828, 42.067345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077721, 33.416019, 42.488228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939358, 33.107559, 42.274433>,  <36.856342, 32.922482, 42.146156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939358, 33.107559, 42.274433>,  <37.077721, 33.416019, 42.488228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939358, 33.107559, 42.274433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451619, -0.362481, 0.815259,
		-0.822429, 0.523386, -0.222883,
		-0.345904, -0.771152, -0.534486,
		36.835587, 32.876213, 42.114086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394619, 33.309822, 42.659439>,  <37.077721, 33.416019, 42.488228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394619, 33.309822, 42.659439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572800, 32.971622, 42.541653>,  <36.679707, 32.768703, 42.470982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572800, 32.971622, 42.541653>,  <36.394619, 33.309822, 42.659439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572800, 32.971622, 42.541653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395438, -0.480880, 0.782550,
		-0.803247, -0.232141, -0.548548,
		0.445448, -0.845497, -0.294468,
		36.706432, 32.717972, 42.453312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916683, 32.785088, 42.558922>,  <36.394619, 33.309822, 42.659439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916683, 32.785088, 42.558922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258911, 32.617790, 42.680954>,  <36.464249, 32.517410, 42.754173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258911, 32.617790, 42.680954>,  <35.916683, 32.785088, 42.558922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258911, 32.617790, 42.680954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497147, -0.499444, 0.709507,
		-0.144378, -0.758702, -0.635238,
		0.855570, -0.418244, 0.305078,
		36.515583, 32.492317, 42.772476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603191, 32.196354, 43.096218>,  <35.916683, 32.785088, 42.558922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603191, 32.196354, 43.096218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673870, 31.802711, 43.103336>,  <35.716278, 31.566526, 43.107605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673870, 31.802711, 43.103336>,  <35.603191, 32.196354, 43.096218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673870, 31.802711, 43.103336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773880, 0.127740, -0.620317,
		0.608183, 0.123379, 0.784150,
		0.176701, -0.984104, 0.017791,
		35.726879, 31.507481, 43.108673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382710, 32.089664, 43.231548>,  <35.603191, 32.196354, 43.096218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382710, 32.089664, 43.231548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216148, 31.763006, 43.071701>,  <36.116211, 31.567011, 42.975792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216148, 31.763006, 43.071701>,  <36.382710, 32.089664, 43.231548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216148, 31.763006, 43.071701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676111, 0.015720, -0.736632,
		0.607853, -0.576919, 0.545600,
		-0.416400, -0.816650, -0.399616,
		36.091228, 31.518011, 42.951817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049007, 31.897009, 43.235504>,  <36.382710, 32.089664, 43.231548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049007, 31.897009, 43.235504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727898, 31.832075, 43.006004>,  <36.535233, 31.793116, 42.868305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727898, 31.832075, 43.006004>,  <37.049007, 31.897009, 43.235504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727898, 31.832075, 43.006004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468871, 0.422612, -0.775602,
		0.368384, -0.891653, -0.263149,
		-0.802778, -0.162336, -0.573754,
		36.487064, 31.783375, 42.833878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153793, 31.630411, 42.458073>,  <37.049007, 31.897009, 43.235504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153793, 31.630411, 42.458073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811852, 31.835569, 42.426693>,  <36.606686, 31.958664, 42.407867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811852, 31.835569, 42.426693>,  <37.153793, 31.630411, 42.458073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811852, 31.835569, 42.426693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395976, 0.547199, -0.737412,
		-0.335291, -0.661445, -0.670873,
		-0.854858, 0.512897, -0.078445,
		36.555393, 31.989439, 42.403160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708469, 31.567932, 41.870541>,  <37.153793, 31.630411, 42.458073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708469, 31.567932, 41.870541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630463, 31.939867, 41.995358>,  <36.583660, 32.163029, 42.070248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630463, 31.939867, 41.995358>,  <36.708469, 31.567932, 41.870541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630463, 31.939867, 41.995358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331641, 0.361929, -0.871219,
		-0.923029, -0.066416, -0.378954,
		-0.195017, 0.929837, 0.312045,
		36.571957, 32.218819, 42.088970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293400, 31.976995, 41.352291>,  <36.708469, 31.567932, 41.870541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293400, 31.976995, 41.352291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465317, 32.256775, 41.580696>,  <36.568466, 32.424641, 41.717739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465317, 32.256775, 41.580696>,  <36.293400, 31.976995, 41.352291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465317, 32.256775, 41.580696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274931, 0.500995, -0.820620,
		-0.860053, 0.509684, 0.023024,
		0.429792, 0.699447, 0.571010,
		36.594254, 32.466610, 41.751999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989243, 32.612778, 41.172390>,  <36.293400, 31.976995, 41.352291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989243, 32.612778, 41.172390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332016, 32.721786, 41.347382>,  <36.537682, 32.787193, 41.452377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332016, 32.721786, 41.347382>,  <35.989243, 32.612778, 41.172390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332016, 32.721786, 41.347382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300108, 0.426240, -0.853379,
		-0.419039, 0.862583, 0.283474,
		0.856937, 0.272527, 0.437479,
		36.589096, 32.803543, 41.478626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062157, 33.359161, 41.033745>,  <35.989243, 32.612778, 41.172390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062157, 33.359161, 41.033745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434963, 33.246441, 41.124893>,  <36.658649, 33.178810, 41.179581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434963, 33.246441, 41.124893>,  <36.062157, 33.359161, 41.033745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434963, 33.246441, 41.124893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359009, 0.632065, -0.686736,
		0.049494, 0.721860, 0.690267,
		0.932021, -0.281802, 0.227871,
		36.714569, 33.161900, 41.193253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474789, 33.937737, 41.328213>,  <36.062157, 33.359161, 41.033745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474789, 33.937737, 41.328213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696259, 33.695976, 41.099079>,  <36.829140, 33.550919, 40.961597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696259, 33.695976, 41.099079>,  <36.474789, 33.937737, 41.328213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696259, 33.695976, 41.099079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413108, 0.796641, -0.441253,
		0.723039, 0.007669, 0.690765,
		0.553676, -0.604404, -0.572834,
		36.862362, 33.514656, 40.927227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192028, 33.988358, 41.472286>,  <36.474789, 33.937737, 41.328213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192028, 33.988358, 41.472286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093781, 33.883705, 41.098930>,  <37.034832, 33.820915, 40.874916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093781, 33.883705, 41.098930>,  <37.192028, 33.988358, 41.472286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093781, 33.883705, 41.098930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595394, 0.719139, -0.358253,
		0.764967, -0.643731, -0.020865,
		-0.245623, -0.261629, -0.933391,
		37.020092, 33.805218, 40.818913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880848, 34.246346, 41.199135>,  <37.192028, 33.988358, 41.472286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880848, 34.246346, 41.199135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773792, 33.923214, 40.989079>,  <37.709560, 33.729336, 40.863045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773792, 33.923214, 40.989079>,  <37.880848, 34.246346, 41.199135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773792, 33.923214, 40.989079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186402, 0.491320, -0.850799,
		0.945317, -0.325593, 0.019086,
		-0.267637, -0.807833, -0.525145,
		37.693501, 33.680862, 40.831535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376347, 34.184803, 40.726505>,  <37.880848, 34.246346, 41.199135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376347, 34.184803, 40.726505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079792, 33.966118, 40.570839>,  <37.901859, 33.834908, 40.477440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079792, 33.966118, 40.570839>,  <38.376347, 34.184803, 40.726505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079792, 33.966118, 40.570839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204386, 0.368409, -0.906918,
		0.639200, -0.751915, -0.161392,
		-0.741384, -0.546716, -0.389168,
		37.857376, 33.802105, 40.454090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617428, 33.837658, 40.159832>,  <38.376347, 34.184803, 40.726505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617428, 33.837658, 40.159832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224293, 33.863651, 40.090782>,  <37.988411, 33.879246, 40.049351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224293, 33.863651, 40.090782>,  <38.617428, 33.837658, 40.159832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224293, 33.863651, 40.090782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181842, 0.498223, -0.847766,
		0.030917, -0.864610, -0.501491,
		-0.982842, 0.064982, -0.172626,
		37.929440, 33.883144, 40.038994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601074, 33.620052, 39.396595>,  <38.617428, 33.837658, 40.159832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601074, 33.620052, 39.396595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254505, 33.797451, 39.488358>,  <38.046562, 33.903889, 39.543415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254505, 33.797451, 39.488358>,  <38.601074, 33.620052, 39.396595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254505, 33.797451, 39.488358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009999, 0.443946, -0.895998,
		-0.499214, -0.778605, -0.380210,
		-0.866421, 0.443493, 0.229409,
		37.994579, 33.930500, 39.557178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322578, 33.353134, 38.751026>,  <38.601074, 33.620052, 39.396595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322578, 33.353134, 38.751026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123074, 33.659977, 38.912415>,  <38.003368, 33.844082, 39.009247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.123074, 33.659977, 38.912415>,  <38.322578, 33.353134, 38.751026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123074, 33.659977, 38.912415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080726, 0.422364, -0.902825,
		-0.862969, -0.482869, -0.148736,
		-0.498767, 0.767103, 0.403467,
		37.973442, 33.890106, 39.033455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703049, 33.360954, 38.395863>,  <38.322578, 33.353134, 38.751026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703049, 33.360954, 38.395863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790878, 33.717754, 38.553913>,  <37.843578, 33.931835, 38.648743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790878, 33.717754, 38.553913>,  <37.703049, 33.360954, 38.395863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790878, 33.717754, 38.553913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258838, 0.443761, -0.857950,
		-0.940632, 0.086112, 0.328322,
		0.219576, 0.891998, 0.395128,
		37.856750, 33.985355, 38.672451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281403, 33.791431, 38.236168>,  <37.703049, 33.360954, 38.395863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281403, 33.791431, 38.236168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580532, 34.045280, 38.314159>,  <37.760010, 34.197590, 38.360954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580532, 34.045280, 38.314159>,  <37.281403, 33.791431, 38.236168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580532, 34.045280, 38.314159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233340, 0.526195, -0.817724,
		-0.621545, 0.566013, 0.541582,
		0.747820, 0.634625, 0.194980,
		37.804878, 34.235668, 38.372654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046219, 34.318031, 37.975391>,  <37.281403, 33.791431, 38.236168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046219, 34.318031, 37.975391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405739, 34.467735, 38.066689>,  <37.621449, 34.557556, 38.121468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405739, 34.467735, 38.066689>,  <37.046219, 34.318031, 37.975391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405739, 34.467735, 38.066689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046440, 0.599025, -0.799383,
		-0.435897, 0.707884, 0.555783,
		0.898797, 0.374259, 0.228239,
		37.675377, 34.580013, 38.135159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017570, 34.956970, 37.911068>,  <37.046219, 34.318031, 37.975391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017570, 34.956970, 37.911068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413052, 34.909786, 37.874088>,  <37.650341, 34.881474, 37.851898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.413052, 34.909786, 37.874088>,  <37.017570, 34.956970, 37.911068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413052, 34.909786, 37.874088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002386, 0.604385, -0.796689,
		0.149857, 0.787911, 0.597277,
		0.988705, -0.117964, -0.092452,
		37.709663, 34.874397, 37.846352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255180, 35.549343, 37.608013>,  <37.017570, 34.956970, 37.911068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255180, 35.549343, 37.608013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577816, 35.331741, 37.515522>,  <37.771397, 35.201180, 37.460026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577816, 35.331741, 37.515522>,  <37.255180, 35.549343, 37.608013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577816, 35.331741, 37.515522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116594, 0.529914, -0.839998,
		0.579495, 0.650577, 0.490853,
		0.806593, -0.544005, -0.231229,
		37.819794, 35.168541, 37.446152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799469, 35.997326, 37.588230>,  <37.255180, 35.549343, 37.608013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799469, 35.997326, 37.588230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896244, 35.679848, 37.364979>,  <37.954308, 35.489361, 37.231026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896244, 35.679848, 37.364979>,  <37.799469, 35.997326, 37.588230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896244, 35.679848, 37.364979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130030, 0.596552, -0.791971,
		0.961541, 0.119031, 0.247531,
		0.241934, -0.793699, -0.558131,
		37.968822, 35.441738, 37.197540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325302, 36.152130, 37.124092>,  <37.799469, 35.997326, 37.588230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325302, 36.152130, 37.124092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198715, 35.832294, 36.919933>,  <38.122761, 35.640392, 36.797440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198715, 35.832294, 36.919933>,  <38.325302, 36.152130, 37.124092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198715, 35.832294, 36.919933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089266, 0.510563, -0.855194,
		0.944393, -0.316206, -0.090203,
		-0.316472, -0.799587, -0.510399,
		38.103775, 35.592419, 36.766815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746231, 36.143196, 36.639679>,  <38.325302, 36.152130, 37.124092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746231, 36.143196, 36.639679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444920, 35.928337, 36.487873>,  <38.264133, 35.799419, 36.396790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444920, 35.928337, 36.487873>,  <38.746231, 36.143196, 36.639679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444920, 35.928337, 36.487873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241484, 0.310848, -0.919271,
		0.611760, -0.784118, -0.104443,
		-0.753283, -0.537152, -0.379517,
		38.218933, 35.767193, 36.374020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974899, 35.832939, 36.031284>,  <38.746231, 36.143196, 36.639679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974899, 35.832939, 36.031284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578732, 35.788258, 35.998817>,  <38.341030, 35.761448, 35.979336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578732, 35.788258, 35.998817>,  <38.974899, 35.832939, 36.031284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578732, 35.788258, 35.998817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055274, 0.217957, -0.974392,
		0.126534, -0.969545, -0.209695,
		-0.990422, -0.111703, -0.081170,
		38.281605, 35.754745, 35.974468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925056, 35.384167, 35.450779>,  <38.974899, 35.832939, 36.031284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925056, 35.384167, 35.450779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589325, 35.599358, 35.482059>,  <38.387886, 35.728474, 35.500828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589325, 35.599358, 35.482059>,  <38.925056, 35.384167, 35.450779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589325, 35.599358, 35.482059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012072, 0.162265, -0.986673,
		-0.543497, -0.827195, -0.142687,
		-0.839324, 0.537977, 0.078205,
		38.337528, 35.760750, 35.505520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371696, 35.900517, 35.082638>,  <38.925056, 35.384167, 35.450779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371696, 35.900517, 35.082638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739281, 35.825947, 35.221634>,  <39.959831, 35.781204, 35.305031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739281, 35.825947, 35.221634>,  <39.371696, 35.900517, 35.082638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739281, 35.825947, 35.221634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076765, -0.779765, -0.621348,
		0.386795, 0.597672, -0.702266,
		0.918965, -0.186425, 0.347490,
		40.014969, 35.770020, 35.325882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945908, 35.931412, 34.653469>,  <39.371696, 35.900517, 35.082638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945908, 35.931412, 34.653469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049477, 35.653847, 34.922226>,  <40.111618, 35.487309, 35.083481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049477, 35.653847, 34.922226>,  <39.945908, 35.931412, 34.653469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049477, 35.653847, 34.922226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086551, -0.676151, -0.731662,
		0.962013, 0.247596, -0.115011,
		0.258922, -0.693914, 0.671896,
		40.127151, 35.445671, 35.123795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489048, 35.710529, 34.352638>,  <39.945908, 35.931412, 34.653469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489048, 35.710529, 34.352638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281231, 35.452988, 34.577324>,  <40.156540, 35.298462, 34.712135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281231, 35.452988, 34.577324>,  <40.489048, 35.710529, 34.352638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281231, 35.452988, 34.577324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032839, -0.641878, -0.766104,
		0.853810, -0.416473, 0.312342,
		-0.519547, -0.643850, 0.561718,
		40.125366, 35.259834, 34.745838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701721, 35.162994, 34.022583>,  <40.489048, 35.710529, 34.352638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701721, 35.162994, 34.022583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373531, 35.070332, 34.231636>,  <40.176617, 35.014732, 34.357067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373531, 35.070332, 34.231636>,  <40.701721, 35.162994, 34.022583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373531, 35.070332, 34.231636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218825, -0.717325, -0.661484,
		0.528139, -0.657099, 0.537857,
		-0.820479, -0.231659, 0.522637,
		40.127388, 35.000835, 34.388428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356487, 34.699413, 33.998547>,  <40.701721, 35.162994, 34.022583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356487, 34.699413, 33.998547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376762, 34.306843, 33.924530>,  <41.388927, 34.071301, 33.880119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376762, 34.306843, 33.924530>,  <41.356487, 34.699413, 33.998547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376762, 34.306843, 33.924530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100026, 0.179355, -0.978686,
		0.993693, 0.068115, -0.089076,
		0.050687, -0.981423, -0.185037,
		41.391968, 34.012417, 33.869019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057030, 34.479286, 33.581512>,  <41.356487, 34.699413, 33.998547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.057030, 34.479286, 33.581512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715885, 34.297092, 33.479404>,  <41.511200, 34.187775, 33.418140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715885, 34.297092, 33.479404>,  <42.057030, 34.479286, 33.581512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715885, 34.297092, 33.479404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158316, 0.240293, -0.957703,
		0.497562, -0.857199, -0.132824,
		-0.852859, -0.455488, -0.255269,
		41.460026, 34.160446, 33.402824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119144, 33.930954, 33.096497>,  <42.057030, 34.479286, 33.581512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119144, 33.930954, 33.096497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740429, 34.053307, 33.056454>,  <41.513199, 34.126717, 33.032429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740429, 34.053307, 33.056454>,  <42.119144, 33.930954, 33.096497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740429, 34.053307, 33.056454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221757, 0.394571, -0.891705,
		-0.233258, -0.866458, -0.441408,
		-0.946792, 0.305883, -0.100107,
		41.456390, 34.145073, 33.026421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.725430, 34.273804, 33.296432>,  <42.119144, 33.930954, 33.096497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.725430, 34.273804, 33.296432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519547, 34.133816, 33.609509>,  <42.396015, 34.049824, 33.797356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519547, 34.133816, 33.609509>,  <42.725430, 34.273804, 33.296432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519547, 34.133816, 33.609509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571972, 0.539899, 0.617542,
		-0.638691, 0.765528, -0.077719,
		-0.514706, -0.349966, 0.782689,
		42.365135, 34.028828, 33.844315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235497, 34.672398, 33.501835>,  <42.725430, 34.273804, 33.296432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235497, 34.672398, 33.501835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283321, 34.816441, 33.131748>,  <43.312016, 34.902866, 32.909695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283321, 34.816441, 33.131748>,  <43.235497, 34.672398, 33.501835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283321, 34.816441, 33.131748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952896, 0.303254, -0.005111,
		0.278735, 0.882247, 0.379403,
		0.119564, 0.360107, -0.925218,
		43.319191, 34.924473, 32.854183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.998833, 34.459545, 33.388508>,  <43.235497, 34.672398, 33.501835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.998833, 34.459545, 33.388508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237339, 34.659969, 33.639393>,  <44.380444, 34.780224, 33.789925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237339, 34.659969, 33.639393>,  <43.998833, 34.459545, 33.388508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237339, 34.659969, 33.639393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564176, 0.817374, -0.116637,
		-0.571113, -0.284313, 0.770063,
		0.596268, 0.501064, 0.627215,
		44.416218, 34.810287, 33.827557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682095, 34.322071, 33.191494>,  <43.998833, 34.459545, 33.388508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682095, 34.322071, 33.191494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511063, 34.670177, 33.093666>,  <44.408443, 34.879040, 33.034969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511063, 34.670177, 33.093666>,  <44.682095, 34.322071, 33.191494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511063, 34.670177, 33.093666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823750, 0.263671, -0.501910,
		-0.372308, -0.416071, -0.829621,
		-0.427577, 0.870266, -0.244572,
		44.382790, 34.931255, 33.020294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.886677, 34.338474, 32.412987>,  <44.682095, 34.322071, 33.191494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.886677, 34.338474, 32.412987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834011, 34.633568, 32.677837>,  <44.802410, 34.810623, 32.836746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.834011, 34.633568, 32.677837>,  <44.886677, 34.338474, 32.412987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834011, 34.633568, 32.677837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955983, 0.271184, -0.112055,
		-0.262225, 0.618227, -0.740968,
		-0.131663, 0.737736, 0.662126,
		44.794514, 34.854889, 32.876476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226643, 34.855572, 32.255527>,  <44.886677, 34.338474, 32.412987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226643, 34.855572, 32.255527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195408, 34.893623, 32.652485>,  <45.176666, 34.916454, 32.890659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.195408, 34.893623, 32.652485>,  <45.226643, 34.855572, 32.255527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195408, 34.893623, 32.652485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965882, 0.253774, 0.051680,
		-0.246928, 0.962575, -0.111697,
		-0.078091, 0.095125, 0.992398,
		45.171982, 34.922161, 32.950203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363346, 35.532761, 32.375786>,  <45.226643, 34.855572, 32.255527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363346, 35.532761, 32.375786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483273, 35.262901, 32.645592>,  <45.555229, 35.100986, 32.807476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483273, 35.262901, 32.645592>,  <45.363346, 35.532761, 32.375786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483273, 35.262901, 32.645592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953954, 0.218778, -0.205201,
		-0.009130, 0.704974, 0.709175,
		0.299813, -0.674647, 0.674510,
		45.573215, 35.060509, 32.847946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850121, 35.927853, 32.602749>,  <45.363346, 35.532761, 32.375786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850121, 35.927853, 32.602749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930748, 35.549713, 32.705265>,  <45.979126, 35.322830, 32.766773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.930748, 35.549713, 32.705265>,  <45.850121, 35.927853, 32.602749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930748, 35.549713, 32.705265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974113, 0.220823, 0.048393,
		-0.102342, 0.239897, 0.965389,
		0.201571, -0.945350, 0.256286,
		45.991219, 35.266109, 32.782150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221325, 35.992859, 33.316650>,  <45.850121, 35.927853, 32.602749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.221325, 35.992859, 33.316650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364651, 35.694252, 33.092392>,  <46.450645, 35.515087, 32.957836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364651, 35.694252, 33.092392>,  <46.221325, 35.992859, 33.316650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364651, 35.694252, 33.092392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900995, 0.433825, -0.001813,
		0.244576, -0.504490, 0.828053,
		0.358316, -0.746515, -0.560647,
		46.472145, 35.470299, 32.924198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.770416, 35.681328, 33.777756>,  <46.221325, 35.992859, 33.316650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.770416, 35.681328, 33.777756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788986, 35.640488, 33.380280>,  <46.800129, 35.615982, 33.141792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788986, 35.640488, 33.380280>,  <46.770416, 35.681328, 33.777756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788986, 35.640488, 33.380280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874111, 0.485642, -0.009063,
		0.483503, -0.868175, 0.111792,
		0.046422, -0.102100, -0.993690,
		46.802914, 35.609859, 33.082172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.479240, 35.548935, 33.648380>,  <46.770416, 35.681328, 33.777756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.479240, 35.548935, 33.648380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.307331, 35.726379, 33.333797>,  <47.204185, 35.832844, 33.145050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.307331, 35.726379, 33.333797>,  <47.479240, 35.548935, 33.648380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.307331, 35.726379, 33.333797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707432, 0.706679, 0.012023,
		0.561104, -0.551196, -0.617532,
		-0.429770, 0.443608, -0.786454,
		47.178402, 35.859463, 33.097862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.699661, 35.875862, 34.297504>,  <47.479240, 35.548935, 33.648380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.699661, 35.875862, 34.297504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436962, 35.599636, 34.418701>,  <47.279343, 35.433899, 34.491417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.436962, 35.599636, 34.418701>,  <47.699661, 35.875862, 34.297504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.436962, 35.599636, 34.418701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753134, -0.621082, 0.216903,
		0.038394, 0.370640, 0.927983,
		-0.656746, -0.690567, 0.302988,
		47.239937, 35.392467, 34.509598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.896957, 35.586884, 34.937004>,  <47.699661, 35.875862, 34.297504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.896957, 35.586884, 34.937004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.705791, 35.340981, 34.686035>,  <47.591091, 35.193439, 34.535454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.705791, 35.340981, 34.686035>,  <47.896957, 35.586884, 34.937004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.705791, 35.340981, 34.686035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725222, -0.679170, 0.113053,
		-0.495631, -0.400994, 0.770425,
		-0.477916, -0.614761, -0.627427,
		47.562416, 35.156551, 34.497807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.664547, 34.941982, 35.343494>,  <47.896957, 35.586884, 34.937004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.664547, 34.941982, 35.343494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780087, 34.946632, 34.960571>,  <47.849411, 34.949421, 34.730820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780087, 34.946632, 34.960571>,  <47.664547, 34.941982, 35.343494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.780087, 34.946632, 34.960571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766293, -0.602215, 0.223903,
		-0.573901, -0.798249, -0.182855,
		0.288849, 0.011622, -0.957304,
		47.866741, 34.950119, 34.673382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.159981, 32.994499, 25.641687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788631, 33.135841, 25.687746>,  <38.565823, 33.220646, 25.715382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788631, 33.135841, 25.687746>,  <39.159981, 32.994499, 25.641687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788631, 33.135841, 25.687746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059588, -0.164296, 0.984610,
		0.366834, 0.920949, 0.131473,
		-0.928376, 0.353354, 0.115147,
		38.510120, 33.241848, 25.722290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162281, 33.225872, 26.374887>,  <39.159981, 32.994499, 25.641687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162281, 33.225872, 26.374887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773983, 33.256153, 26.283733>,  <38.541004, 33.274323, 26.229042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773983, 33.256153, 26.283733>,  <39.162281, 33.225872, 26.374887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773983, 33.256153, 26.283733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219089, 0.109241, 0.969570,
		0.098295, 0.991128, -0.089458,
		-0.970741, 0.075704, -0.227883,
		38.482761, 33.278866, 26.215368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808929, 33.929409, 26.673567>,  <39.162281, 33.225872, 26.374887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808929, 33.929409, 26.673567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519428, 33.658539, 26.620478>,  <38.345730, 33.496017, 26.588623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.519428, 33.658539, 26.620478>,  <38.808929, 33.929409, 26.673567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519428, 33.658539, 26.620478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206856, 0.029411, 0.977929,
		-0.658330, 0.735230, -0.161364,
		-0.723748, -0.677180, -0.132725,
		38.302303, 33.455383, 26.580660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130493, 34.209808, 26.885221>,  <38.808929, 33.929409, 26.673567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130493, 34.209808, 26.885221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.108009, 33.810497, 26.892010>,  <38.094521, 33.570911, 26.896082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.108009, 33.810497, 26.892010>,  <38.130493, 34.209808, 26.885221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108009, 33.810497, 26.892010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305594, 0.033383, 0.951576,
		-0.950502, 0.048298, -0.306943,
		-0.056205, -0.998275, 0.016971,
		38.091148, 33.511013, 26.897100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633533, 34.160908, 27.304445>,  <38.130493, 34.209808, 26.885221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633533, 34.160908, 27.304445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768997, 33.784779, 27.291153>,  <37.850277, 33.559101, 27.283176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768997, 33.784779, 27.291153>,  <37.633533, 34.160908, 27.304445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768997, 33.784779, 27.291153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459792, -0.196206, 0.866080,
		-0.820914, -0.278027, -0.498799,
		0.338661, -0.940321, -0.033233,
		37.870594, 33.502682, 27.281183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057411, 33.692883, 27.528185>,  <37.633533, 34.160908, 27.304445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057411, 33.692883, 27.528185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408764, 33.508442, 27.578499>,  <37.619576, 33.397778, 27.608686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.408764, 33.508442, 27.578499>,  <37.057411, 33.692883, 27.528185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408764, 33.508442, 27.578499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250099, -0.219166, 0.943089,
		-0.407297, -0.859853, -0.307835,
		0.878385, -0.461106, 0.125782,
		37.672279, 33.370110, 27.616234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900467, 33.077255, 27.878643>,  <37.057411, 33.692883, 27.528185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900467, 33.077255, 27.878643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292099, 33.096493, 27.957720>,  <37.527081, 33.108036, 28.005165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292099, 33.096493, 27.957720>,  <36.900467, 33.077255, 27.878643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292099, 33.096493, 27.957720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173192, -0.312890, 0.933865,
		0.106766, -0.948571, -0.298017,
		0.979084, 0.048091, 0.197691,
		37.585823, 33.110920, 28.017027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121311, 32.440399, 28.187405>,  <36.900467, 33.077255, 27.878643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121311, 32.440399, 28.187405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.378613, 32.724186, 28.302563>,  <37.532993, 32.894459, 28.371656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.378613, 32.724186, 28.302563>,  <37.121311, 32.440399, 28.187405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378613, 32.724186, 28.302563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138451, -0.262029, 0.955077,
		0.753032, -0.654215, -0.070325,
		0.643253, 0.709467, 0.287893,
		37.571590, 32.937027, 28.388931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488548, 32.155186, 28.717003>,  <37.121311, 32.440399, 28.187405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488548, 32.155186, 28.717003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.588146, 32.539127, 28.768660>,  <37.647907, 32.769493, 28.799654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.588146, 32.539127, 28.768660>,  <37.488548, 32.155186, 28.717003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588146, 32.539127, 28.768660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050744, -0.120230, 0.991448,
		0.967174, -0.253421, 0.018770,
		0.248997, 0.959856, 0.129143,
		37.662846, 32.827084, 28.807402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771183, 32.137005, 29.357796>,  <37.488548, 32.155186, 28.717003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771183, 32.137005, 29.357796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694847, 32.527924, 29.320967>,  <37.649044, 32.762474, 29.298870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.694847, 32.527924, 29.320967>,  <37.771183, 32.137005, 29.357796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694847, 32.527924, 29.320967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009055, 0.092037, 0.995714,
		0.981579, 0.190858, -0.008715,
		-0.190842, 0.977293, -0.092070,
		37.637596, 32.821110, 29.293346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283039, 32.569344, 29.643333>,  <37.771183, 32.137005, 29.357796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283039, 32.569344, 29.643333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954945, 32.797405, 29.661818>,  <37.758087, 32.934242, 29.672909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.954945, 32.797405, 29.661818>,  <38.283039, 32.569344, 29.643333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954945, 32.797405, 29.661818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088186, 0.046217, 0.995031,
		0.565186, 0.820236, -0.088188,
		-0.820237, 0.570155, 0.046212,
		37.708874, 32.968452, 29.675680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474274, 33.202984, 30.094175>,  <38.283039, 32.569344, 29.643333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474274, 33.202984, 30.094175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078323, 33.148693, 30.110811>,  <37.840755, 33.116119, 30.120792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.078323, 33.148693, 30.110811>,  <38.474274, 33.202984, 30.094175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078323, 33.148693, 30.110811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008994, 0.232419, 0.972574,
		-0.141675, 0.963098, -0.228844,
		-0.989872, -0.135731, 0.041590,
		37.781361, 33.107975, 30.123289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244137, 33.721329, 30.488312>,  <38.474274, 33.202984, 30.094175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244137, 33.721329, 30.488312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947559, 33.453632, 30.507839>,  <37.769611, 33.293015, 30.519556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947559, 33.453632, 30.507839>,  <38.244137, 33.721329, 30.488312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947559, 33.453632, 30.507839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092650, 0.174159, 0.980349,
		-0.664589, 0.722350, -0.191134,
		-0.741443, -0.669237, 0.048818,
		37.725128, 33.252861, 30.522484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785526, 34.117386, 30.921825>,  <38.244137, 33.721329, 30.488312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785526, 34.117386, 30.921825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677479, 33.732441, 30.933805>,  <37.612652, 33.501472, 30.940992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677479, 33.732441, 30.933805>,  <37.785526, 34.117386, 30.921825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677479, 33.732441, 30.933805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104108, 0.060116, 0.992747,
		-0.957183, 0.265039, -0.116428,
		-0.270116, -0.962362, 0.029949,
		37.596443, 33.443733, 30.942791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291134, 34.079720, 31.455791>,  <37.785526, 34.117386, 30.921825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291134, 34.079720, 31.455791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356804, 33.687359, 31.414074>,  <37.396206, 33.451942, 31.389044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356804, 33.687359, 31.414074>,  <37.291134, 34.079720, 31.455791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356804, 33.687359, 31.414074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289309, -0.148960, 0.945575,
		-0.943051, -0.125069, -0.308240,
		0.164177, -0.980902, -0.104294,
		37.406055, 33.393089, 31.382786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640762, 33.707577, 31.716282>,  <37.291134, 34.079720, 31.455791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640762, 33.707577, 31.716282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954853, 33.459923, 31.720196>,  <37.143307, 33.311329, 31.722544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954853, 33.459923, 31.720196>,  <36.640762, 33.707577, 31.716282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954853, 33.459923, 31.720196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132323, -0.152339, 0.979430,
		-0.604908, -0.770367, -0.201546,
		0.785224, -0.619134, 0.009786,
		37.190422, 33.274181, 31.723131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438965, 33.098747, 32.206161>,  <36.640762, 33.707577, 31.716282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438965, 33.098747, 32.206161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837654, 33.069717, 32.191910>,  <37.076870, 33.052299, 32.183357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.837654, 33.069717, 32.191910>,  <36.438965, 33.098747, 32.206161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837654, 33.069717, 32.191910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018328, -0.226441, 0.973852,
		-0.078745, -0.971317, -0.224370,
		0.996726, -0.072574, -0.035634,
		37.136673, 33.047947, 32.181221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626892, 32.438858, 32.472576>,  <36.438965, 33.098747, 32.206161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626892, 32.438858, 32.472576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972801, 32.633713, 32.521351>,  <37.180347, 32.750626, 32.550617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972801, 32.633713, 32.521351>,  <36.626892, 32.438858, 32.472576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972801, 32.633713, 32.521351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060529, -0.342167, 0.937687,
		0.498509, -0.803502, -0.325382,
		0.864769, 0.487141, 0.121939,
		37.232231, 32.779854, 32.557934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051163, 32.030708, 32.800068>,  <36.626892, 32.438858, 32.472576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051163, 32.030708, 32.800068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185360, 32.393311, 32.902592>,  <37.265881, 32.610870, 32.964108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185360, 32.393311, 32.902592>,  <37.051163, 32.030708, 32.800068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185360, 32.393311, 32.902592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017575, -0.266010, 0.963810,
		0.941878, -0.327859, -0.073313,
		0.335496, 0.906503, 0.256311,
		37.286007, 32.665260, 32.979485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666454, 31.971024, 33.300549>,  <37.051163, 32.030708, 32.800068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666454, 31.971024, 33.300549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532116, 32.342701, 33.362263>,  <37.451515, 32.565708, 33.399292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.532116, 32.342701, 33.362263>,  <37.666454, 31.971024, 33.300549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532116, 32.342701, 33.362263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137103, -0.113835, 0.983994,
		0.931887, 0.351620, -0.089165,
		-0.335842, 0.929196, 0.154289,
		37.431362, 32.621460, 33.408550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930294, 32.184353, 33.963234>,  <37.666454, 31.971024, 33.300549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930294, 32.184353, 33.963234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.647205, 32.462635, 33.914040>,  <37.477352, 32.629604, 33.884525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.647205, 32.462635, 33.914040>,  <37.930294, 32.184353, 33.963234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647205, 32.462635, 33.914040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075665, 0.098435, 0.992263,
		0.702429, 0.711550, -0.017023,
		-0.707720, 0.695706, -0.122983,
		37.434891, 32.671349, 33.877144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027756, 32.733772, 34.378334>,  <37.930294, 32.184353, 33.963234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027756, 32.733772, 34.378334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631958, 32.707973, 34.326588>,  <37.394478, 32.692493, 34.295540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631958, 32.707973, 34.326588>,  <38.027756, 32.733772, 34.378334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631958, 32.707973, 34.326588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127690, -0.029517, 0.991375,
		-0.067761, 0.997481, 0.020971,
		-0.989497, -0.064499, -0.129369,
		37.335110, 32.688625, 34.287777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351562, 33.153423, 33.863853>,  <38.027756, 32.733772, 34.378334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351562, 33.153423, 33.863853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.579670, 33.449684, 34.005966>,  <38.716534, 33.627441, 34.091236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.579670, 33.449684, 34.005966>,  <38.351562, 33.153423, 33.863853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579670, 33.449684, 34.005966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426103, 0.103057, -0.898786,
		-0.702301, 0.663940, -0.256823,
		0.570272, 0.740650, 0.355284,
		38.750751, 33.671879, 34.112553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244022, 33.814045, 33.487122>,  <38.351562, 33.153423, 33.863853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244022, 33.814045, 33.487122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612717, 33.832947, 33.641094>,  <38.833935, 33.844288, 33.733479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.612717, 33.832947, 33.641094>,  <38.244022, 33.814045, 33.487122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612717, 33.832947, 33.641094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372311, 0.170046, -0.912397,
		-0.108572, 0.984302, 0.139144,
		0.921736, 0.047256, 0.384928,
		38.889236, 33.847122, 33.756573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636341, 34.278595, 33.026142>,  <38.244022, 33.814045, 33.487122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636341, 34.278595, 33.026142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941826, 34.122234, 33.231640>,  <39.125118, 34.028416, 33.354939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941826, 34.122234, 33.231640>,  <38.636341, 34.278595, 33.026142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941826, 34.122234, 33.231640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598255, 0.129554, -0.790764,
		0.242555, 0.911268, 0.332802,
		0.763714, -0.390904, 0.513747,
		39.170940, 34.004963, 33.385765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129612, 34.716415, 33.030018>,  <38.636341, 34.278595, 33.026142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129612, 34.716415, 33.030018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.326000, 34.372696, 33.087368>,  <39.443832, 34.166466, 33.121780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.326000, 34.372696, 33.087368>,  <39.129612, 34.716415, 33.030018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326000, 34.372696, 33.087368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501959, 0.144516, -0.852732,
		0.712030, 0.490636, 0.502285,
		0.490969, -0.859297, 0.143380,
		39.473289, 34.114906, 33.130383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849388, 34.840923, 32.975327>,  <39.129612, 34.716415, 33.030018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849388, 34.840923, 32.975327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.817665, 34.447212, 32.912209>,  <39.798634, 34.210983, 32.874336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.817665, 34.447212, 32.912209>,  <39.849388, 34.840923, 32.975327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817665, 34.447212, 32.912209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479791, 0.101064, -0.871542,
		0.873791, -0.144825, 0.464236,
		-0.079304, -0.984282, -0.157794,
		39.793873, 34.151928, 32.864872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557316, 34.632668, 32.670326>,  <39.849388, 34.840923, 32.975327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557316, 34.632668, 32.670326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.286251, 34.347622, 32.597710>,  <40.123611, 34.176594, 32.554138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.286251, 34.347622, 32.597710>,  <40.557316, 34.632668, 32.670326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286251, 34.347622, 32.597710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392089, -0.141284, -0.909013,
		0.622125, -0.687184, 0.375151,
		-0.677662, -0.712613, -0.181541,
		40.082951, 34.133839, 32.543247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939777, 34.208374, 32.206379>,  <40.557316, 34.632668, 32.670326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939777, 34.208374, 32.206379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.570427, 34.064117, 32.153744>,  <40.348816, 33.977562, 32.122162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.570427, 34.064117, 32.153744>,  <40.939777, 34.208374, 32.206379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570427, 34.064117, 32.153744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189864, -0.131105, -0.973018,
		0.333660, -0.923444, 0.189532,
		-0.923376, -0.360642, -0.131584,
		40.293415, 33.955925, 32.114269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009697, 33.698189, 31.717930>,  <40.939777, 34.208374, 32.206379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009697, 33.698189, 31.717930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.612900, 33.745716, 31.700788>,  <40.374821, 33.774231, 31.690504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.612900, 33.745716, 31.700788>,  <41.009697, 33.698189, 31.717930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612900, 33.745716, 31.700788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012558, -0.244815, -0.969489,
		-0.125679, -0.962263, 0.241362,
		-0.991991, 0.118813, -0.042852,
		40.315304, 33.781361, 31.687933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802948, 33.105453, 31.361925>,  <41.009697, 33.698189, 31.717930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802948, 33.105453, 31.361925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.567078, 33.427471, 31.336058>,  <40.425552, 33.620682, 31.320538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.567078, 33.427471, 31.336058>,  <40.802948, 33.105453, 31.361925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567078, 33.427471, 31.336058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047987, -0.045006, -0.997834,
		-0.806210, -0.591506, -0.012092,
		-0.589680, 0.805043, -0.064669,
		40.390175, 33.668983, 31.316656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431190, 33.019135, 30.884924>,  <40.802948, 33.105453, 31.361925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431190, 33.019135, 30.884924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.384182, 33.416004, 30.901815>,  <40.355976, 33.654125, 30.911949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.384182, 33.416004, 30.901815>,  <40.431190, 33.019135, 30.884924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384182, 33.416004, 30.901815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052203, 0.036291, -0.997977,
		-0.991697, -0.119488, 0.047529,
		-0.117521, 0.992172, 0.042227,
		40.348927, 33.713657, 30.914484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973122, 33.100555, 30.378164>,  <40.431190, 33.019135, 30.884924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973122, 33.100555, 30.378164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139427, 33.455814, 30.456482>,  <40.239212, 33.668968, 30.503473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.139427, 33.455814, 30.456482>,  <39.973122, 33.100555, 30.378164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139427, 33.455814, 30.456482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019441, 0.206557, -0.978242,
		-0.909265, 0.410524, 0.068613,
		0.415764, 0.888147, 0.195796,
		40.264156, 33.722260, 30.515221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744961, 33.504383, 29.774099>,  <39.973122, 33.100555, 30.378164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744961, 33.504383, 29.774099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.035461, 33.739971, 29.915903>,  <40.209763, 33.881325, 30.000986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.035461, 33.739971, 29.915903>,  <39.744961, 33.504383, 29.774099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035461, 33.739971, 29.915903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147367, 0.370322, -0.917140,
		-0.671452, 0.718313, 0.182150,
		0.726248, 0.588972, 0.354509,
		40.253334, 33.916664, 30.022255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576164, 34.116116, 29.510157>,  <39.744961, 33.504383, 29.774099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576164, 34.116116, 29.510157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.968430, 34.110588, 29.588247>,  <40.203789, 34.107273, 29.635101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.968430, 34.110588, 29.588247>,  <39.576164, 34.116116, 29.510157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968430, 34.110588, 29.588247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185987, 0.376365, -0.907611,
		-0.060933, 0.926368, 0.371657,
		0.980661, -0.013820, 0.195225,
		40.262627, 34.106441, 29.646814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815105, 34.770519, 29.328783>,  <39.576164, 34.116116, 29.510157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815105, 34.770519, 29.328783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.101181, 34.493069, 29.294411>,  <40.272827, 34.326599, 29.273787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.101181, 34.493069, 29.294411>,  <39.815105, 34.770519, 29.328783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101181, 34.493069, 29.294411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279468, 0.396494, -0.874465,
		0.640624, 0.601395, 0.477416,
		0.715191, -0.693626, -0.085933,
		40.315739, 34.284981, 29.268631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288727, 35.147446, 29.135248>,  <39.815105, 34.770519, 29.328783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288727, 35.147446, 29.135248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.408863, 34.779190, 29.035471>,  <40.480946, 34.558235, 28.975605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.408863, 34.779190, 29.035471>,  <40.288727, 35.147446, 29.135248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408863, 34.779190, 29.035471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255030, 0.329504, -0.909058,
		0.919105, 0.209412, 0.333754,
		0.300341, -0.920637, -0.249443,
		40.498966, 34.502998, 28.960638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940960, 35.273125, 28.709448>,  <40.288727, 35.147446, 29.135248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940960, 35.273125, 28.709448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.788845, 34.914360, 28.619179>,  <40.697578, 34.699100, 28.565018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.788845, 34.914360, 28.619179>,  <40.940960, 35.273125, 28.709448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788845, 34.914360, 28.619179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223157, 0.147812, -0.963510,
		0.897545, -0.416767, 0.143942,
		-0.380283, -0.896915, -0.225673,
		40.674759, 34.645287, 28.551477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338833, 35.032192, 28.242342>,  <40.940960, 35.273125, 28.709448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338833, 35.032192, 28.242342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.033386, 34.784088, 28.170599>,  <40.850121, 34.635227, 28.127552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.033386, 34.784088, 28.170599>,  <41.338833, 35.032192, 28.242342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033386, 34.784088, 28.170599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307208, -0.104695, -0.945866,
		0.567905, -0.777377, 0.270495,
		-0.763615, -0.620261, -0.179360,
		40.804302, 34.598011, 28.116791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623703, 34.458290, 27.838301>,  <41.338833, 35.032192, 28.242342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623703, 34.458290, 27.838301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.226467, 34.446743, 27.792810>,  <40.988125, 34.439816, 27.765516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.226467, 34.446743, 27.792810>,  <41.623703, 34.458290, 27.838301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226467, 34.446743, 27.792810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117151, -0.298067, -0.947329,
		-0.006550, -0.954108, 0.299390,
		-0.993092, -0.028869, -0.113727,
		40.928539, 34.438084, 27.758692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.390934, 33.762424, 27.442131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.105675, 34.036018, 27.380707>,  <40.934517, 34.200176, 27.343853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.105675, 34.036018, 27.380707>,  <41.390934, 33.762424, 27.442131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105675, 34.036018, 27.380707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044464, -0.262749, -0.963839,
		-0.699599, -0.680535, 0.217792,
		-0.713151, 0.683985, -0.153560,
		40.891731, 34.241215, 27.334639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844643, 33.486542, 26.896538>,  <41.390934, 33.762424, 27.442131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844643, 33.486542, 26.896538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.792629, 33.883144, 26.897524>,  <40.761421, 34.121105, 26.898115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.792629, 33.883144, 26.897524>,  <40.844643, 33.486542, 26.896538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792629, 33.883144, 26.897524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056214, -0.004890, -0.998407,
		-0.989915, -0.129960, 0.056372,
		-0.130029, 0.991507, 0.002464,
		40.753620, 34.180595, 26.898264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215145, 33.580849, 26.484142>,  <40.844643, 33.486542, 26.896538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215145, 33.580849, 26.484142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425243, 33.921185, 26.489668>,  <40.551304, 34.125385, 26.492983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425243, 33.921185, 26.489668>,  <40.215145, 33.580849, 26.484142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425243, 33.921185, 26.489668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051702, 0.048113, -0.997503,
		-0.849379, 0.523219, 0.069262,
		0.525245, 0.850839, 0.013815,
		40.582817, 34.176437, 26.493813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663746, 34.187450, 26.116198>,  <40.215145, 33.580849, 26.484142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663746, 34.187450, 26.116198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021706, 34.364731, 26.095301>,  <40.236481, 34.471100, 26.082762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.021706, 34.364731, 26.095301>,  <39.663746, 34.187450, 26.116198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021706, 34.364731, 26.095301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151153, 0.190873, -0.969908,
		-0.419892, 0.875866, 0.237803,
		0.894899, 0.443201, -0.052244,
		40.290176, 34.497692, 26.079628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605873, 34.831135, 25.752939>,  <39.663746, 34.187450, 26.116198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605873, 34.831135, 25.752939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.991589, 34.725998, 25.739956>,  <40.223019, 34.662914, 25.732166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.991589, 34.725998, 25.739956>,  <39.605873, 34.831135, 25.752939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991589, 34.725998, 25.739956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013152, 0.169925, -0.985369,
		0.264514, 0.949757, 0.167314,
		0.964292, -0.262845, -0.032456,
		40.280876, 34.647144, 25.730219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935581, 35.362709, 25.483654>,  <39.605873, 34.831135, 25.752939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935581, 35.362709, 25.483654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.200897, 35.067032, 25.436949>,  <40.360088, 34.889626, 25.408926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.200897, 35.067032, 25.436949>,  <39.935581, 35.362709, 25.483654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200897, 35.067032, 25.436949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096517, 0.239220, -0.966156,
		0.742112, 0.629573, 0.230018,
		0.663291, -0.739197, -0.116763,
		40.399883, 34.845272, 25.401920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430721, 35.677086, 25.143038>,  <39.935581, 35.362709, 25.483654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430721, 35.677086, 25.143038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.501419, 35.286808, 25.091208>,  <40.543839, 35.052643, 25.060108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.501419, 35.286808, 25.091208>,  <40.430721, 35.677086, 25.143038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501419, 35.286808, 25.091208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314761, 0.180765, -0.931799,
		0.932571, 0.123902, 0.339059,
		0.176742, -0.975691, -0.129577,
		40.554443, 34.994102, 25.052334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079350, 35.579674, 24.834681>,  <40.430721, 35.677086, 25.143038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079350, 35.579674, 24.834681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.913475, 35.240002, 24.703880>,  <40.813950, 35.036198, 24.625401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.913475, 35.240002, 24.703880>,  <41.079350, 35.579674, 24.834681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913475, 35.240002, 24.703880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373657, 0.168757, -0.912086,
		0.829710, -0.500413, 0.247322,
		-0.414683, -0.849181, -0.327002,
		40.789070, 34.985249, 24.605780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494144, 35.297726, 24.368229>,  <41.079350, 35.579674, 24.834681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494144, 35.297726, 24.368229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163715, 35.095825, 24.267965>,  <40.965458, 34.974686, 24.207808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.163715, 35.095825, 24.267965>,  <41.494144, 35.297726, 24.368229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163715, 35.095825, 24.267965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234701, 0.096245, -0.967291,
		0.512367, -0.857882, 0.038961,
		-0.826072, -0.504752, -0.250659,
		40.915894, 34.944401, 24.192768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611122, 34.772381, 24.038906>,  <41.494144, 35.297726, 24.368229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611122, 34.772381, 24.038906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242416, 34.834641, 23.896847>,  <41.021194, 34.871994, 23.811611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.242416, 34.834641, 23.896847>,  <41.611122, 34.772381, 24.038906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242416, 34.834641, 23.896847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364871, 0.038158, -0.930276,
		-0.131242, -0.987075, -0.091963,
		-0.921762, 0.155646, -0.355147,
		40.965889, 34.881332, 23.790302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522469, 34.230499, 23.490408>,  <41.611122, 34.772381, 24.038906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522469, 34.230499, 23.490408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.265205, 34.529987, 23.426197>,  <41.110847, 34.709682, 23.387671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.265205, 34.529987, 23.426197>,  <41.522469, 34.230499, 23.490408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265205, 34.529987, 23.426197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408758, 0.158423, -0.898787,
		-0.647511, -0.643675, -0.407937,
		-0.643153, 0.748722, -0.160527,
		41.072258, 34.754604, 23.378038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367546, 34.118996, 22.732082>,  <41.522469, 34.230499, 23.490408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367546, 34.118996, 22.732082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.237045, 34.483372, 22.833080>,  <41.158745, 34.701996, 22.893679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.237045, 34.483372, 22.833080>,  <41.367546, 34.118996, 22.732082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237045, 34.483372, 22.833080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282886, 0.348955, -0.893423,
		-0.901961, -0.220055, -0.371539,
		-0.326253, 0.910937, 0.252494,
		41.139168, 34.756653, 22.908829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838490, 34.279549, 22.190916>,  <41.367546, 34.118996, 22.732082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838490, 34.279549, 22.190916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980995, 34.619762, 22.345661>,  <41.066498, 34.823891, 22.438507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.980995, 34.619762, 22.345661>,  <40.838490, 34.279549, 22.190916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980995, 34.619762, 22.345661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177148, 0.345036, -0.921721,
		-0.917439, 0.396907, -0.027747,
		0.356264, 0.850538, 0.386861,
		41.087875, 34.874924, 22.461720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428421, 34.841984, 21.938353>,  <40.838490, 34.279549, 22.190916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428421, 34.841984, 21.938353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.754463, 35.037090, 22.063372>,  <40.950089, 35.154152, 22.138384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.754463, 35.037090, 22.063372>,  <40.428421, 34.841984, 21.938353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754463, 35.037090, 22.063372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153805, 0.337947, -0.928513,
		-0.558520, 0.804909, 0.200442,
		0.815107, 0.487764, 0.312550,
		40.998997, 35.183418, 22.157137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348606, 35.537724, 21.842012>,  <40.428421, 34.841984, 21.938353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348606, 35.537724, 21.842012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.743122, 35.474186, 21.824144>,  <40.979832, 35.436062, 21.813423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.743122, 35.474186, 21.824144>,  <40.348606, 35.537724, 21.842012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743122, 35.474186, 21.824144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045711, 0.523136, -0.851022,
		0.158551, 0.837315, 0.523226,
		0.986292, -0.158848, -0.044669,
		41.039009, 35.426533, 21.810743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687656, 36.171093, 21.616064>,  <40.348606, 35.537724, 21.842012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687656, 36.171093, 21.616064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.988026, 35.912132, 21.563931>,  <41.168247, 35.756756, 21.532650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.988026, 35.912132, 21.563931>,  <40.687656, 36.171093, 21.616064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988026, 35.912132, 21.563931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330862, 0.539624, -0.774168,
		0.571529, 0.538218, 0.619416,
		0.750923, -0.647401, -0.130335,
		41.213303, 35.717911, 21.524830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193779, 36.584843, 21.389137>,  <40.687656, 36.171093, 21.616064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193779, 36.584843, 21.389137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.328720, 36.223412, 21.283495>,  <41.409683, 36.006554, 21.220110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.328720, 36.223412, 21.283495>,  <41.193779, 36.584843, 21.389137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328720, 36.223412, 21.283495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265259, 0.360421, -0.894278,
		0.903235, 0.231627, 0.361268,
		0.337348, -0.903574, -0.264104,
		41.429924, 35.952339, 21.204264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850460, 36.679150, 21.197350>,  <41.193779, 36.584843, 21.389137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850460, 36.679150, 21.197350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.747025, 36.328827, 21.034328>,  <41.684963, 36.118633, 20.936516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.747025, 36.328827, 21.034328>,  <41.850460, 36.679150, 21.197350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747025, 36.328827, 21.034328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117343, 0.390299, -0.913180,
		0.958834, -0.283962, 0.001843,
		-0.258589, -0.875804, -0.407553,
		41.669449, 36.066086, 20.912064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358479, 36.613941, 20.831564>,  <41.850460, 36.679150, 21.197350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358479, 36.613941, 20.831564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078999, 36.365047, 20.690348>,  <41.911308, 36.215710, 20.605618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078999, 36.365047, 20.690348>,  <42.358479, 36.613941, 20.831564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078999, 36.365047, 20.690348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285707, 0.209725, -0.935087,
		0.655886, -0.754213, 0.031242,
		-0.698703, -0.622236, -0.353040,
		41.869389, 36.178375, 20.584436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747078, 36.272671, 20.303999>,  <42.358479, 36.613941, 20.831564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747078, 36.272671, 20.303999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.354244, 36.246300, 20.233393>,  <42.118542, 36.230476, 20.191029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.354244, 36.246300, 20.233393>,  <42.747078, 36.272671, 20.303999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354244, 36.246300, 20.233393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157584, 0.226214, -0.961246,
		0.103298, -0.971844, -0.211774,
		-0.982088, -0.065923, -0.176515,
		42.059616, 36.226521, 20.180439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729977, 36.094246, 19.660038>,  <42.747078, 36.272671, 20.303999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729977, 36.094246, 19.660038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.349903, 36.194031, 19.734787>,  <42.121861, 36.253902, 19.779636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.349903, 36.194031, 19.734787>,  <42.729977, 36.094246, 19.660038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349903, 36.194031, 19.734787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102910, 0.314840, -0.943549,
		-0.294214, -0.915776, -0.273484,
		-0.950183, 0.249461, 0.186872,
		42.064850, 36.268867, 19.790848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355053, 35.902370, 18.976891>,  <42.729977, 36.094246, 19.660038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355053, 35.902370, 18.976891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124596, 36.170055, 19.164598>,  <41.986320, 36.330666, 19.277224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124596, 36.170055, 19.164598>,  <42.355053, 35.902370, 18.976891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124596, 36.170055, 19.164598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436800, 0.233179, -0.868811,
		-0.690841, -0.705539, 0.157966,
		-0.576146, 0.669210, 0.469269,
		41.951752, 36.370819, 19.305380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626896, 35.681850, 18.867275>,  <42.355053, 35.902370, 18.976891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626896, 35.681850, 18.867275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681694, 36.076065, 18.907183>,  <41.714573, 36.312595, 18.931128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.681694, 36.076065, 18.907183>,  <41.626896, 35.681850, 18.867275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681694, 36.076065, 18.907183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248928, 0.131736, -0.959521,
		-0.958785, 0.106612, 0.263374,
		0.136992, 0.985535, 0.099768,
		41.722790, 36.371727, 18.937113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006691, 36.089397, 18.741520>,  <41.626896, 35.681850, 18.867275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006691, 36.089397, 18.741520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345837, 36.270912, 18.631823>,  <41.549324, 36.379822, 18.566004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.345837, 36.270912, 18.631823>,  <41.006691, 36.089397, 18.741520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345837, 36.270912, 18.631823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356779, 0.105666, -0.928194,
		-0.392221, 0.884825, 0.251491,
		0.847863, 0.453783, -0.274243,
		41.600197, 36.407047, 18.549549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873428, 35.394894, 18.945751>,  <41.006691, 36.089397, 18.741520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873428, 35.394894, 18.945751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.536472, 35.466923, 18.742598>,  <40.334297, 35.510139, 18.620705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.536472, 35.466923, 18.742598>,  <40.873428, 35.394894, 18.945751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536472, 35.466923, 18.742598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535277, -0.171097, 0.827166,
		0.062054, 0.968658, 0.240521,
		-0.842394, 0.180074, -0.507883,
		40.283752, 35.520947, 18.590233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494133, 35.766438, 19.362244>,  <40.873428, 35.394894, 18.945751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494133, 35.766438, 19.362244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.226055, 35.632534, 19.097281>,  <40.065208, 35.552193, 18.938303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.226055, 35.632534, 19.097281>,  <40.494133, 35.766438, 19.362244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226055, 35.632534, 19.097281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688966, -0.051279, 0.722977,
		-0.275988, 0.940909, -0.196268,
		-0.670191, -0.334755, -0.662407,
		40.024998, 35.532108, 18.898558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838390, 36.130863, 19.454403>,  <40.494133, 35.766438, 19.362244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838390, 36.130863, 19.454403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729267, 35.802357, 19.253965>,  <39.663792, 35.605251, 19.133703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729267, 35.802357, 19.253965>,  <39.838390, 36.130863, 19.454403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729267, 35.802357, 19.253965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637043, -0.236103, 0.733780,
		-0.720938, 0.519401, -0.458770,
		-0.272809, -0.821266, -0.501096,
		39.647423, 35.555977, 19.103636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100979, 36.104359, 19.321405>,  <39.838390, 36.130863, 19.454403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100979, 36.104359, 19.321405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211689, 35.721188, 19.291012>,  <39.278114, 35.491287, 19.272776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211689, 35.721188, 19.291012>,  <39.100979, 36.104359, 19.321405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211689, 35.721188, 19.291012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708697, -0.256887, 0.657082,
		-0.648955, -0.128016, -0.749979,
		0.276777, -0.957925, -0.075983,
		39.294724, 35.433811, 19.268217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500675, 35.856674, 19.585321>,  <39.100979, 36.104359, 19.321405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500675, 35.856674, 19.585321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.791294, 35.582729, 19.607595>,  <38.965664, 35.418362, 19.620960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.791294, 35.582729, 19.607595>,  <38.500675, 35.856674, 19.585321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791294, 35.582729, 19.607595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417633, -0.375793, 0.827262,
		-0.545632, -0.624298, -0.559050,
		0.726545, -0.684859, 0.055683,
		39.009258, 35.377274, 19.624300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103592, 35.256142, 19.816353>,  <38.500675, 35.856674, 19.585321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103592, 35.256142, 19.816353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.487869, 35.159817, 19.871592>,  <38.718437, 35.102020, 19.904734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.487869, 35.159817, 19.871592>,  <38.103592, 35.256142, 19.816353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487869, 35.159817, 19.871592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255189, -0.570290, 0.780800,
		-0.109274, -0.785352, -0.609329,
		0.960696, -0.240815, 0.138095,
		38.776077, 35.087570, 19.913019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046089, 34.627590, 20.003826>,  <38.103592, 35.256142, 19.816353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046089, 34.627590, 20.003826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400826, 34.757687, 20.135115>,  <38.613667, 34.835747, 20.213888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.400826, 34.757687, 20.135115>,  <38.046089, 34.627590, 20.003826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400826, 34.757687, 20.135115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225644, -0.315045, 0.921863,
		0.403236, -0.891607, -0.206005,
		0.886840, 0.325245, 0.328223,
		38.666878, 34.855259, 20.233582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344643, 34.080135, 20.369057>,  <38.046089, 34.627590, 20.003826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344643, 34.080135, 20.369057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527851, 34.397575, 20.529263>,  <38.637775, 34.588039, 20.625387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.527851, 34.397575, 20.529263>,  <38.344643, 34.080135, 20.369057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527851, 34.397575, 20.529263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113318, -0.394753, 0.911773,
		0.881690, -0.462995, -0.090875,
		0.458019, 0.793603, 0.400516,
		38.665257, 34.635654, 20.649418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651928, 33.799053, 21.014454>,  <38.344643, 34.080135, 20.369057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651928, 33.799053, 21.014454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671978, 34.195255, 21.065647>,  <38.684010, 34.432976, 21.096363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.671978, 34.195255, 21.065647>,  <38.651928, 33.799053, 21.014454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671978, 34.195255, 21.065647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025460, -0.129368, 0.991270,
		0.998418, -0.046432, -0.031703,
		0.050128, 0.990509, 0.127982,
		38.687016, 34.492409, 21.104042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142963, 33.951763, 21.507751>,  <38.651928, 33.799053, 21.014454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142963, 33.951763, 21.507751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.921574, 34.284523, 21.523758>,  <38.788738, 34.484180, 21.533361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.921574, 34.284523, 21.523758>,  <39.142963, 33.951763, 21.507751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921574, 34.284523, 21.523758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000828, -0.048595, 0.998818,
		0.832866, 0.552787, 0.027585,
		-0.553474, 0.831904, 0.040016,
		38.755531, 34.534096, 21.535763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416687, 34.351078, 22.082413>,  <39.142963, 33.951763, 21.507751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416687, 34.351078, 22.082413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.048325, 34.491871, 22.015429>,  <38.827309, 34.576347, 21.975237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.048325, 34.491871, 22.015429>,  <39.416687, 34.351078, 22.082413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048325, 34.491871, 22.015429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171484, 0.019964, 0.984985,
		0.350039, 0.935794, 0.041974,
		-0.920905, 0.351981, -0.167462,
		38.772053, 34.597466, 21.965191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282207, 34.982719, 22.534523>,  <39.416687, 34.351078, 22.082413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282207, 34.982719, 22.534523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909279, 34.866238, 22.448746>,  <38.685524, 34.796349, 22.397280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.909279, 34.866238, 22.448746>,  <39.282207, 34.982719, 22.534523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909279, 34.866238, 22.448746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226458, 0.007775, 0.973990,
		-0.281961, 0.956630, -0.073194,
		-0.932317, -0.291203, -0.214444,
		38.629585, 34.778877, 22.384413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891518, 35.405827, 23.045376>,  <39.282207, 34.982719, 22.534523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891518, 35.405827, 23.045376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655701, 35.115868, 22.902853>,  <38.514210, 34.941891, 22.817339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655701, 35.115868, 22.902853>,  <38.891518, 35.405827, 23.045376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655701, 35.115868, 22.902853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289463, -0.222212, 0.931039,
		-0.754087, 0.652027, -0.078828,
		-0.589546, -0.724902, -0.356305,
		38.478836, 34.898396, 22.795961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202675, 35.471657, 23.384359>,  <38.891518, 35.405827, 23.045376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202675, 35.471657, 23.384359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254322, 35.091240, 23.272038>,  <38.285313, 34.862991, 23.204643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.254322, 35.091240, 23.272038>,  <38.202675, 35.471657, 23.384359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254322, 35.091240, 23.272038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315521, -0.307862, 0.897590,
		-0.940093, -0.027297, -0.339825,
		0.129121, -0.951039, -0.280805,
		38.293056, 34.805927, 23.187796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712048, 35.014465, 23.782200>,  <38.202675, 35.471657, 23.384359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712048, 35.014465, 23.782200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944073, 34.717999, 23.647032>,  <38.083290, 34.540119, 23.565931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.944073, 34.717999, 23.647032>,  <37.712048, 35.014465, 23.782200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944073, 34.717999, 23.647032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011824, -0.422464, 0.906303,
		-0.814483, -0.521721, -0.253821,
		0.580067, -0.741169, -0.337921,
		38.118092, 34.495647, 23.545656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349987, 34.398357, 23.901415>,  <37.712048, 35.014465, 23.782200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349987, 34.398357, 23.901415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732304, 34.283951, 23.874128>,  <37.961693, 34.215305, 23.857758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.732304, 34.283951, 23.874128>,  <37.349987, 34.398357, 23.901415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732304, 34.283951, 23.874128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128416, -0.614737, 0.778208,
		-0.264514, -0.735047, -0.624290,
		0.955794, -0.286016, -0.068215,
		38.019043, 34.198147, 23.853664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341900, 33.703484, 24.013861>,  <37.349987, 34.398357, 23.901415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341900, 33.703484, 24.013861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718773, 33.818573, 24.082567>,  <37.944897, 33.887627, 24.123791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.718773, 33.818573, 24.082567>,  <37.341900, 33.703484, 24.013861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718773, 33.818573, 24.082567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058827, -0.646655, 0.760511,
		0.329887, -0.706438, -0.626195,
		0.942185, 0.287720, 0.171765,
		38.001431, 33.904888, 24.134096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685238, 33.127567, 24.205185>,  <37.341900, 33.703484, 24.013861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685238, 33.127567, 24.205185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920593, 33.424667, 24.333012>,  <38.061806, 33.602928, 24.409708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920593, 33.424667, 24.333012>,  <37.685238, 33.127567, 24.205185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920593, 33.424667, 24.333012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200596, -0.516954, 0.832178,
		0.783300, -0.425541, -0.453163,
		0.588390, 0.742748, 0.319568,
		38.097111, 33.647491, 24.428883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342228, 32.903885, 24.439806>,  <37.685238, 33.127567, 24.205185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342228, 32.903885, 24.439806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271465, 33.224918, 24.667686>,  <38.229008, 33.417538, 24.804415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271465, 33.224918, 24.667686>,  <38.342228, 32.903885, 24.439806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271465, 33.224918, 24.667686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179216, -0.542887, 0.820460,
		0.967774, 0.247243, -0.047797,
		-0.176905, 0.802586, 0.569701,
		38.218395, 33.465694, 24.838596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674126, 32.614914, 25.037153>,  <38.342228, 32.903885, 24.439806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674126, 32.614914, 25.037153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.548042, 32.968266, 25.175879>,  <38.472393, 33.180279, 25.259113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.548042, 32.968266, 25.175879>,  <38.674126, 32.614914, 25.037153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548042, 32.968266, 25.175879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148376, -0.315074, 0.937397,
		0.937352, 0.346932, -0.031760,
		-0.315206, 0.883384, 0.346812,
		38.453480, 33.233280, 25.279922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.334423, 34.552853, 30.352003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.982986, 34.376289, 30.279081>,  <40.772125, 34.270351, 30.235329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.982986, 34.376289, 30.279081>,  <41.334423, 34.552853, 30.352003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982986, 34.376289, 30.279081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129389, -0.147438, 0.980572,
		-0.459710, 0.885111, 0.072425,
		-0.878593, -0.441407, -0.182302,
		40.719410, 34.243866, 30.224390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894508, 34.861897, 30.725010>,  <41.334423, 34.552853, 30.352003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894508, 34.861897, 30.725010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704063, 34.518906, 30.646978>,  <40.589798, 34.313110, 30.600161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.704063, 34.518906, 30.646978>,  <40.894508, 34.861897, 30.725010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704063, 34.518906, 30.646978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224998, -0.095668, 0.969651,
		-0.850113, 0.505555, -0.147381,
		-0.476112, -0.857474, -0.195078,
		40.561230, 34.261662, 30.588455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252651, 34.993565, 31.059855>,  <40.894508, 34.861897, 30.725010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252651, 34.993565, 31.059855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.281639, 34.597416, 31.012686>,  <40.299034, 34.359726, 30.984385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.281639, 34.597416, 31.012686>,  <40.252651, 34.993565, 31.059855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281639, 34.597416, 31.012686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446026, -0.137934, 0.884328,
		-0.892081, -0.011495, -0.451729,
		0.072474, -0.990375, -0.117921,
		40.303383, 34.300304, 30.977310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690075, 34.788692, 31.390900>,  <40.252651, 34.993565, 31.059855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690075, 34.788692, 31.390900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.888153, 34.443962, 31.347033>,  <40.007000, 34.237122, 31.320713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.888153, 34.443962, 31.347033>,  <39.690075, 34.788692, 31.390900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888153, 34.443962, 31.347033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504788, -0.388161, 0.771051,
		-0.707083, -0.326466, -0.627259,
		0.495200, -0.861830, -0.109666,
		40.036713, 34.185413, 31.314133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153809, 34.205933, 31.461849>,  <39.690075, 34.788692, 31.390900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153809, 34.205933, 31.461849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524395, 34.071564, 31.529755>,  <39.746746, 33.990944, 31.570498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524395, 34.071564, 31.529755>,  <39.153809, 34.205933, 31.461849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524395, 34.071564, 31.529755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276778, -0.302388, 0.912116,
		-0.255059, -0.892032, -0.373127,
		0.926466, -0.335916, 0.169768,
		39.802334, 33.970787, 31.580685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998714, 33.785080, 32.031342>,  <39.153809, 34.205933, 31.461849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998714, 33.785080, 32.031342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.393394, 33.832661, 31.987020>,  <39.630203, 33.861210, 31.960428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.393394, 33.832661, 31.987020>,  <38.998714, 33.785080, 32.031342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393394, 33.832661, 31.987020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136166, -0.232439, 0.963032,
		0.088800, -0.965310, -0.245545,
		0.986698, 0.118952, -0.110802,
		39.689404, 33.868347, 31.953779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322029, 33.105255, 32.208832>,  <38.998714, 33.785080, 32.031342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322029, 33.105255, 32.208832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525806, 33.434742, 32.308399>,  <39.648071, 33.632435, 32.368137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525806, 33.434742, 32.308399>,  <39.322029, 33.105255, 32.208832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525806, 33.434742, 32.308399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108999, -0.225166, 0.968204,
		0.853575, -0.520374, -0.024925,
		0.509440, 0.823718, 0.248916,
		39.678638, 33.681858, 32.383076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839329, 32.875843, 32.690338>,  <39.322029, 33.105255, 32.208832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839329, 32.875843, 32.690338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.817581, 33.269829, 32.755920>,  <39.804531, 33.506222, 32.795269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.817581, 33.269829, 32.755920>,  <39.839329, 32.875843, 32.690338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817581, 33.269829, 32.755920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216602, -0.171919, 0.961004,
		0.974745, 0.016739, 0.222693,
		-0.054371, 0.984969, 0.163951,
		39.801270, 33.565319, 32.805107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981823, 32.943687, 33.389496>,  <39.839329, 32.875843, 32.690338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981823, 32.943687, 33.389496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.841938, 33.307480, 33.299568>,  <39.758007, 33.525757, 33.245613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.841938, 33.307480, 33.299568>,  <39.981823, 32.943687, 33.389496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841938, 33.307480, 33.299568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346785, 0.097260, 0.932888,
		0.870311, 0.404207, 0.281381,
		-0.349712, 0.909482, -0.224819,
		39.737022, 33.580326, 33.232121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192390, 33.486813, 33.934868>,  <39.981823, 32.943687, 33.389496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192390, 33.486813, 33.934868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881054, 33.661903, 33.754833>,  <39.694252, 33.766956, 33.646812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881054, 33.661903, 33.754833>,  <40.192390, 33.486813, 33.934868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881054, 33.661903, 33.754833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396244, 0.213589, 0.892956,
		0.487005, 0.873370, 0.007201,
		-0.778342, 0.437727, -0.450087,
		39.647552, 33.793221, 33.619808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990753, 33.919617, 34.421661>,  <40.192390, 33.486813, 33.934868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990753, 33.919617, 34.421661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.654099, 33.918476, 34.205643>,  <39.452106, 33.917793, 34.076031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.654099, 33.918476, 34.205643>,  <39.990753, 33.919617, 34.421661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654099, 33.918476, 34.205643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529842, 0.197872, 0.824690,
		0.104508, 0.980223, -0.168047,
		-0.841632, -0.002851, -0.540043,
		39.401608, 33.917622, 34.043629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627609, 34.569317, 34.568703>,  <39.990753, 33.919617, 34.421661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627609, 34.569317, 34.568703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403923, 34.255413, 34.461803>,  <39.269711, 34.067070, 34.397663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403923, 34.255413, 34.461803>,  <39.627609, 34.569317, 34.568703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403923, 34.255413, 34.461803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518299, 0.079356, 0.851510,
		-0.647025, 0.614696, -0.451119,
		-0.559218, -0.784762, -0.267251,
		39.236156, 34.019985, 34.381630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991474, 34.785202, 34.403770>,  <39.627609, 34.569317, 34.568703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991474, 34.785202, 34.403770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953648, 34.399498, 34.502777>,  <38.930950, 34.168076, 34.562183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.953648, 34.399498, 34.502777>,  <38.991474, 34.785202, 34.403770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953648, 34.399498, 34.502777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573156, 0.256028, 0.778422,
		-0.813971, -0.068253, -0.576882,
		-0.094569, -0.964257, 0.247519,
		38.925278, 34.110222, 34.577034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799072, 35.487171, 34.107277>,  <38.991474, 34.785202, 34.403770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799072, 35.487171, 34.107277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.593830, 35.731392, 33.865963>,  <38.470684, 35.877926, 33.721176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.593830, 35.731392, 33.865963>,  <38.799072, 35.487171, 34.107277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593830, 35.731392, 33.865963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054137, -0.724479, -0.687168,
		-0.856617, -0.319929, 0.404788,
		-0.513105, 0.610554, -0.603280,
		38.439899, 35.914558, 33.684978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479710, 35.302921, 34.749470>,  <38.799072, 35.487171, 34.107277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479710, 35.302921, 34.749470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.325203, 35.625237, 34.929028>,  <38.232498, 35.818626, 35.036762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.325203, 35.625237, 34.929028>,  <38.479710, 35.302921, 34.749470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325203, 35.625237, 34.929028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020099, 0.493905, -0.869283,
		-0.922168, -0.326753, -0.206974,
		-0.386266, 0.805785, 0.448896,
		38.209324, 35.866974, 35.063698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843071, 35.423721, 34.408157>,  <38.479710, 35.302921, 34.749470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843071, 35.423721, 34.408157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965698, 35.760635, 34.585499>,  <38.039276, 35.962784, 34.691906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965698, 35.760635, 34.585499>,  <37.843071, 35.423721, 34.408157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965698, 35.760635, 34.585499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187921, 0.510175, -0.839289,
		-0.933114, 0.173983, 0.314687,
		0.306567, 0.842289, 0.443357,
		38.057667, 36.013321, 34.718506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403198, 35.844276, 34.013805>,  <37.843071, 35.423721, 34.408157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403198, 35.844276, 34.013805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.648758, 36.086506, 34.216358>,  <37.796093, 36.231842, 34.337891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.648758, 36.086506, 34.216358>,  <37.403198, 35.844276, 34.013805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648758, 36.086506, 34.216358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209642, 0.743517, -0.635006,
		-0.761040, 0.283669, 0.583394,
		0.613895, 0.605569, 0.506377,
		37.832928, 36.268177, 34.368271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062096, 36.585388, 34.070824>,  <37.403198, 35.844276, 34.013805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062096, 36.585388, 34.070824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457504, 36.644867, 34.081486>,  <37.694752, 36.680553, 34.087883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457504, 36.644867, 34.081486>,  <37.062096, 36.585388, 34.070824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457504, 36.644867, 34.081486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078612, 0.657025, -0.749758,
		-0.128996, 0.739059, 0.661175,
		0.988524, 0.148693, 0.026655,
		37.754063, 36.689476, 34.089481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109718, 37.315239, 33.956078>,  <37.062096, 36.585388, 34.070824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109718, 37.315239, 33.956078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457729, 37.139614, 33.866390>,  <37.666538, 37.034241, 33.812580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457729, 37.139614, 33.866390>,  <37.109718, 37.315239, 33.956078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457729, 37.139614, 33.866390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021989, 0.488905, -0.872060,
		0.492509, 0.753788, 0.435017,
		0.870030, -0.439063, -0.224215,
		37.718739, 37.007896, 33.799126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369637, 37.786873, 33.531921>,  <37.109718, 37.315239, 33.956078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369637, 37.786873, 33.531921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.623611, 37.486042, 33.461227>,  <37.775997, 37.305542, 33.418812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.623611, 37.486042, 33.461227>,  <37.369637, 37.786873, 33.531921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623611, 37.486042, 33.461227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223930, 0.398101, -0.889590,
		0.739398, 0.525258, 0.421182,
		0.634937, -0.752077, -0.176734,
		37.814095, 37.260418, 33.408207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033916, 38.144821, 33.241825>,  <37.369637, 37.786873, 33.531921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033916, 38.144821, 33.241825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997246, 37.766991, 33.115730>,  <37.975243, 37.540295, 33.040073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.997246, 37.766991, 33.115730>,  <38.033916, 38.144821, 33.241825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997246, 37.766991, 33.115730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152144, 0.299566, -0.941866,
		0.984097, -0.134312, 0.116247,
		-0.091680, -0.944574, -0.315237,
		37.969742, 37.483620, 33.021160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520012, 38.059235, 32.840569>,  <38.033916, 38.144821, 33.241825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520012, 38.059235, 32.840569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297421, 37.747334, 32.725800>,  <38.163864, 37.560192, 32.656937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297421, 37.747334, 32.725800>,  <38.520012, 38.059235, 32.840569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297421, 37.747334, 32.725800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117413, 0.268064, -0.956220,
		0.822524, -0.565805, -0.057619,
		-0.556479, -0.779748, -0.286921,
		38.130478, 37.513409, 32.639725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858665, 37.650681, 32.363293>,  <38.520012, 38.059235, 32.840569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858665, 37.650681, 32.363293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476307, 37.555065, 32.295029>,  <38.246891, 37.497696, 32.254070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.476307, 37.555065, 32.295029>,  <38.858665, 37.650681, 32.363293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476307, 37.555065, 32.295029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152693, 0.091896, -0.983992,
		0.250895, -0.966652, -0.051343,
		-0.955895, -0.239039, -0.170657,
		38.189537, 37.483353, 32.243832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933876, 37.099018, 31.858372>,  <38.858665, 37.650681, 32.363293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933876, 37.099018, 31.858372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582428, 37.289352, 31.842361>,  <38.371559, 37.403553, 31.832756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582428, 37.289352, 31.842361>,  <38.933876, 37.099018, 31.858372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582428, 37.289352, 31.842361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150217, 0.195858, -0.969058,
		-0.453274, -0.857449, -0.243564,
		-0.878622, 0.475836, -0.040026,
		38.318840, 37.432102, 31.830353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755585, 36.889313, 31.285210>,  <38.933876, 37.099018, 31.858372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755585, 36.889313, 31.285210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511486, 37.198662, 31.353912>,  <38.365028, 37.384270, 31.395134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.511486, 37.198662, 31.353912>,  <38.755585, 36.889313, 31.285210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511486, 37.198662, 31.353912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062820, 0.168886, -0.983632,
		-0.789718, -0.611046, -0.054479,
		-0.610245, 0.773370, 0.171758,
		38.328411, 37.430672, 31.405439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253517, 36.810463, 30.785677>,  <38.755585, 36.889313, 31.285210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253517, 36.810463, 30.785677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.207989, 37.193977, 30.889809>,  <38.180672, 37.424088, 30.952288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.207989, 37.193977, 30.889809>,  <38.253517, 36.810463, 30.785677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207989, 37.193977, 30.889809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056306, 0.255384, -0.965199,
		-0.991905, -0.124514, 0.024918,
		-0.113817, 0.958788, 0.260327,
		38.173843, 37.481613, 30.967907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596588, 37.032715, 30.438831>,  <38.253517, 36.810463, 30.785677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596588, 37.032715, 30.438831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.824841, 37.352371, 30.514477>,  <37.961792, 37.544163, 30.559864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.824841, 37.352371, 30.514477>,  <37.596588, 37.032715, 30.438831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824841, 37.352371, 30.514477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084016, 0.285890, -0.954572,
		-0.816901, 0.528815, 0.230277,
		0.570626, 0.799138, 0.189115,
		37.996029, 37.592113, 30.571211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285618, 37.546902, 30.123266>,  <37.596588, 37.032715, 30.438831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285618, 37.546902, 30.123266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.664131, 37.665821, 30.174122>,  <37.891239, 37.737171, 30.204636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.664131, 37.665821, 30.174122>,  <37.285618, 37.546902, 30.123266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664131, 37.665821, 30.174122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054539, 0.240816, -0.969037,
		-0.318709, 0.923917, 0.211665,
		0.946282, 0.297297, 0.127140,
		37.948017, 37.755009, 30.212263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899933, 38.138546, 30.388231>,  <37.285618, 37.546902, 30.123266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899933, 38.138546, 30.388231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.538834, 38.310123, 30.401224>,  <36.322174, 38.413071, 30.409019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.538834, 38.310123, 30.401224>,  <36.899933, 38.138546, 30.388231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538834, 38.310123, 30.401224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015306, -0.043430, 0.998939,
		0.429901, 0.902286, 0.032641,
		-0.902746, 0.428945, 0.032481,
		36.268009, 38.438808, 30.410969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915493, 38.621799, 30.981300>,  <36.899933, 38.138546, 30.388231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915493, 38.621799, 30.981300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.530853, 38.535690, 30.913200>,  <36.300068, 38.484024, 30.872339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.530853, 38.535690, 30.913200>,  <36.915493, 38.621799, 30.981300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530853, 38.535690, 30.913200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187577, 0.062644, 0.980250,
		-0.200355, 0.974543, -0.100618,
		-0.961599, -0.215271, -0.170251,
		36.242374, 38.471107, 30.862125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482491, 39.073711, 31.466282>,  <36.915493, 38.621799, 30.981300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482491, 39.073711, 31.466282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.244431, 38.787117, 31.320711>,  <36.101593, 38.615162, 31.233370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.244431, 38.787117, 31.320711>,  <36.482491, 39.073711, 31.466282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244431, 38.787117, 31.320711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372935, -0.154893, 0.914837,
		-0.711836, 0.680190, -0.175017,
		-0.595154, -0.716484, -0.363925,
		36.065884, 38.572170, 31.211535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746590, 39.275223, 31.601233>,  <36.482491, 39.073711, 31.466282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746590, 39.275223, 31.601233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.768608, 38.879128, 31.550007>,  <35.781818, 38.641472, 31.519272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.768608, 38.879128, 31.550007>,  <35.746590, 39.275223, 31.601233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768608, 38.879128, 31.550007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458197, -0.139006, 0.877914,
		-0.887145, 0.010356, -0.461375,
		0.055042, -0.990237, -0.128064,
		35.785122, 38.582058, 31.511587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127445, 39.060944, 31.869724>,  <35.746590, 39.275223, 31.601233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127445, 39.060944, 31.869724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.328754, 38.716591, 31.839766>,  <35.449539, 38.509979, 31.821791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.328754, 38.716591, 31.839766>,  <35.127445, 39.060944, 31.869724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328754, 38.716591, 31.839766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511487, -0.366630, 0.777151,
		-0.696491, -0.352808, -0.624841,
		0.503270, -0.860877, -0.074898,
		35.479736, 38.458328, 31.817297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695274, 38.476688, 31.843700>,  <35.127445, 39.060944, 31.869724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695274, 38.476688, 31.843700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030872, 38.305866, 31.978590>,  <35.232231, 38.203373, 32.059525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030872, 38.305866, 31.978590>,  <34.695274, 38.476688, 31.843700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030872, 38.305866, 31.978590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468183, -0.250705, 0.847321,
		-0.277316, -0.868772, -0.410281,
		0.838988, -0.427062, 0.337220,
		35.282570, 38.177750, 32.079758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440197, 37.888500, 32.142166>,  <34.695274, 38.476688, 31.843700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440197, 37.888500, 32.142166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.805134, 37.960060, 32.289471>,  <35.024097, 38.002995, 32.377853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.805134, 37.960060, 32.289471>,  <34.440197, 37.888500, 32.142166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805134, 37.960060, 32.289471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309850, -0.286237, 0.906676,
		0.267616, -0.941309, -0.205714,
		0.912346, 0.178901, 0.368266,
		35.078838, 38.013729, 32.399952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513622, 37.381691, 32.566330>,  <34.440197, 37.888500, 32.142166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513622, 37.381691, 32.566330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.774796, 37.648930, 32.709057>,  <34.931499, 37.809273, 32.794693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.774796, 37.648930, 32.709057>,  <34.513622, 37.381691, 32.566330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774796, 37.648930, 32.709057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264972, -0.239846, 0.933950,
		0.709551, -0.704358, 0.020422,
		0.652937, 0.668097, 0.356819,
		34.970676, 37.849358, 32.816101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952740, 37.039310, 33.036369>,  <34.513622, 37.381691, 32.566330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952740, 37.039310, 33.036369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.992802, 37.424625, 33.136005>,  <35.016838, 37.655815, 33.195789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.992802, 37.424625, 33.136005>,  <34.952740, 37.039310, 33.036369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992802, 37.424625, 33.136005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092407, -0.240263, 0.966299,
		0.990671, -0.119798, 0.064950,
		0.100156, 0.963287, 0.249092,
		35.022850, 37.713612, 33.210732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564980, 37.180542, 33.461662>,  <34.952740, 37.039310, 33.036369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564980, 37.180542, 33.461662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.326347, 37.494663, 33.527866>,  <35.183167, 37.683136, 33.567589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.326347, 37.494663, 33.527866>,  <35.564980, 37.180542, 33.461662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326347, 37.494663, 33.527866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043938, -0.237884, 0.970299,
		0.801349, 0.571591, 0.176422,
		-0.596582, 0.785300, 0.165513,
		35.147373, 37.730251, 33.577518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837410, 37.560307, 34.089294>,  <35.564980, 37.180542, 33.461662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837410, 37.560307, 34.089294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.458797, 37.684391, 34.053879>,  <35.231628, 37.758842, 34.032627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.458797, 37.684391, 34.053879>,  <35.837410, 37.560307, 34.089294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458797, 37.684391, 34.053879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167368, -0.237572, 0.956842,
		0.275789, 0.920504, 0.276790,
		-0.946535, 0.310213, -0.088544,
		35.174835, 37.777454, 34.027317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737465, 37.986317, 34.722527>,  <35.837410, 37.560307, 34.089294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737465, 37.986317, 34.722527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.379158, 37.874977, 34.583893>,  <35.164173, 37.808174, 34.500713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.379158, 37.874977, 34.583893>,  <35.737465, 37.986317, 34.722527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379158, 37.874977, 34.583893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374609, 0.052948, 0.925670,
		-0.239306, 0.959020, -0.151700,
		-0.895768, -0.278346, -0.346587,
		35.110428, 37.791473, 34.479916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.940086, 39.784748, 27.200359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582615, 39.698227, 27.043108>,  <36.368134, 39.646313, 26.948757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582615, 39.698227, 27.043108>,  <36.940086, 39.784748, 27.200359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582615, 39.698227, 27.043108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392102, -0.049515, 0.918588,
		-0.218161, 0.975070, -0.040563,
		-0.893679, -0.216305, -0.393129,
		36.314510, 39.633335, 26.925169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380096, 40.247395, 27.509445>,  <36.940086, 39.784748, 27.200359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380096, 40.247395, 27.509445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204731, 39.916153, 27.369709>,  <36.099510, 39.717407, 27.285868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204731, 39.916153, 27.369709>,  <36.380096, 40.247395, 27.509445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204731, 39.916153, 27.369709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522229, -0.081629, 0.848889,
		-0.731482, 0.554604, -0.396670,
		-0.438417, -0.828101, -0.349341,
		36.073204, 39.667725, 27.264906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809254, 40.203598, 27.907761>,  <36.380096, 40.247395, 27.509445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809254, 40.203598, 27.907761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861340, 39.828716, 27.778337>,  <35.892590, 39.603786, 27.700684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861340, 39.828716, 27.778337>,  <35.809254, 40.203598, 27.907761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861340, 39.828716, 27.778337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371393, -0.348680, 0.860517,
		-0.919300, 0.008116, -0.393474,
		0.130213, -0.937207, -0.323556,
		35.900402, 39.547554, 27.681271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243069, 39.800411, 28.142826>,  <35.809254, 40.203598, 27.907761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243069, 39.800411, 28.142826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513237, 39.517590, 28.059040>,  <35.675339, 39.347897, 28.008768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513237, 39.517590, 28.059040>,  <35.243069, 39.800411, 28.142826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513237, 39.517590, 28.059040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103429, -0.372067, 0.922426,
		-0.730142, -0.601362, -0.324432,
		0.675422, -0.707057, -0.209463,
		35.715862, 39.305473, 27.996201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006741, 39.192486, 28.494015>,  <35.243069, 39.800411, 28.142826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006741, 39.192486, 28.494015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396698, 39.131668, 28.428953>,  <35.630672, 39.095177, 28.389917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396698, 39.131668, 28.428953>,  <35.006741, 39.192486, 28.494015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396698, 39.131668, 28.428953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092606, -0.387438, 0.917233,
		-0.202478, -0.909271, -0.363632,
		0.974899, -0.152045, -0.162652,
		35.689167, 39.086056, 28.380157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134602, 38.593674, 28.721552>,  <35.006741, 39.192486, 28.494015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134602, 38.593674, 28.721552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504383, 38.745979, 28.713552>,  <35.726254, 38.837364, 28.708754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504383, 38.745979, 28.713552>,  <35.134602, 38.593674, 28.721552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504383, 38.745979, 28.713552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233998, -0.525146, 0.818209,
		0.301043, -0.761078, -0.574573,
		0.924456, 0.380765, -0.019999,
		35.781719, 38.860210, 28.707552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594616, 38.001995, 28.831514>,  <35.134602, 38.593674, 28.721552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594616, 38.001995, 28.831514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814415, 38.313934, 28.951439>,  <35.946293, 38.501099, 29.023394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814415, 38.313934, 28.951439>,  <35.594616, 38.001995, 28.831514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814415, 38.313934, 28.951439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130239, -0.434409, 0.891250,
		0.825282, -0.450692, -0.340273,
		0.549497, 0.779850, 0.299812,
		35.979263, 38.547890, 29.041382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080284, 37.741913, 29.307833>,  <35.594616, 38.001995, 28.831514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080284, 37.741913, 29.307833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079712, 38.132717, 29.393103>,  <36.079369, 38.367199, 29.444265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079712, 38.132717, 29.393103>,  <36.080284, 37.741913, 29.307833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079712, 38.132717, 29.393103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091951, -0.212402, 0.972847,
		0.995763, -0.018212, 0.090140,
		-0.001428, 0.977013, 0.213176,
		36.079285, 38.425819, 29.457056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621803, 37.877438, 29.747980>,  <36.080284, 37.741913, 29.307833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621803, 37.877438, 29.747980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393501, 38.192467, 29.840902>,  <36.256519, 38.381485, 29.896656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393501, 38.192467, 29.840902>,  <36.621803, 37.877438, 29.747980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393501, 38.192467, 29.840902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024929, -0.299400, 0.953802,
		0.820744, 0.538593, 0.190517,
		-0.570752, 0.787577, 0.232304,
		36.222275, 38.428741, 29.910593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264862, 38.218998, 29.768372>,  <36.621803, 37.877438, 29.747980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264862, 38.218998, 29.768372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638783, 38.078217, 29.787466>,  <37.863136, 37.993748, 29.798923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638783, 38.078217, 29.787466>,  <37.264862, 38.218998, 29.768372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638783, 38.078217, 29.787466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155601, 0.284998, -0.945814,
		0.319273, 0.891576, 0.321180,
		0.934801, -0.351949, 0.047738,
		37.919224, 37.972633, 29.801786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641212, 38.813992, 29.486841>,  <37.264862, 38.218998, 29.768372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641212, 38.813992, 29.486841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861862, 38.481136, 29.464025>,  <37.994251, 38.281422, 29.450336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861862, 38.481136, 29.464025>,  <37.641212, 38.813992, 29.486841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861862, 38.481136, 29.464025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257090, 0.234683, -0.937458,
		0.793483, 0.502461, 0.343392,
		0.551625, -0.832140, -0.057039,
		38.027351, 38.231495, 29.446915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332558, 38.963390, 29.466097>,  <37.641212, 38.813992, 29.486841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332558, 38.963390, 29.466097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256268, 38.626194, 29.264904>,  <38.210491, 38.423878, 29.144188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256268, 38.626194, 29.264904>,  <38.332558, 38.963390, 29.466097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256268, 38.626194, 29.264904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354267, 0.418745, -0.836150,
		0.915488, -0.337666, 0.218778,
		-0.190727, -0.842991, -0.502980,
		38.199051, 38.373295, 29.114010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932411, 38.916214, 29.069658>,  <38.332558, 38.963390, 29.466097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932411, 38.916214, 29.069658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665897, 38.677589, 28.890696>,  <38.505989, 38.534412, 28.783318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665897, 38.677589, 28.890696>,  <38.932411, 38.916214, 29.069658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665897, 38.677589, 28.890696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326951, 0.305532, -0.894289,
		0.670201, -0.742131, -0.008523,
		-0.666284, -0.596566, -0.447409,
		38.466011, 38.498619, 28.756474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284943, 38.661400, 28.462502>,  <38.932411, 38.916214, 29.069658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284943, 38.661400, 28.462502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919868, 38.552830, 28.340302>,  <38.700825, 38.487686, 28.266981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919868, 38.552830, 28.340302>,  <39.284943, 38.661400, 28.462502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919868, 38.552830, 28.340302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324419, -0.026642, -0.945538,
		0.248506, -0.962090, 0.112372,
		-0.912686, -0.271428, -0.305500,
		38.646061, 38.471401, 28.248652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442207, 38.056915, 28.098463>,  <39.284943, 38.661400, 28.462502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442207, 38.056915, 28.098463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081970, 38.173714, 27.969675>,  <38.865826, 38.243793, 27.892403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081970, 38.173714, 27.969675>,  <39.442207, 38.056915, 28.098463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081970, 38.173714, 27.969675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278061, -0.182298, -0.943106,
		-0.334079, -0.938885, 0.082984,
		-0.900596, 0.291998, -0.321969,
		38.811790, 38.261314, 27.873085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277954, 37.473206, 27.678766>,  <39.442207, 38.056915, 28.098463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277954, 37.473206, 27.678766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040493, 37.780262, 27.582182>,  <38.898014, 37.964497, 27.524231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040493, 37.780262, 27.582182>,  <39.277954, 37.473206, 27.678766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040493, 37.780262, 27.582182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124160, -0.209088, -0.969983,
		-0.795084, -0.605815, 0.028816,
		-0.593655, 0.767640, -0.241460,
		38.862396, 38.010555, 27.509745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804146, 37.231209, 27.232285>,  <39.277954, 37.473206, 27.678766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804146, 37.231209, 27.232285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833096, 37.626015, 27.174917>,  <38.850464, 37.862896, 27.140497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833096, 37.626015, 27.174917>,  <38.804146, 37.231209, 27.232285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833096, 37.626015, 27.174917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253865, -0.157288, -0.954365,
		-0.964528, 0.032663, -0.261952,
		0.072374, 0.987012, -0.143416,
		38.854809, 37.922119, 27.131893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360077, 37.400166, 26.691092>,  <38.804146, 37.231209, 27.232285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360077, 37.400166, 26.691092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608845, 37.713150, 26.703529>,  <38.758106, 37.900940, 26.710991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608845, 37.713150, 26.703529>,  <38.360077, 37.400166, 26.691092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608845, 37.713150, 26.703529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304417, -0.204995, -0.930219,
		-0.721487, 0.587988, -0.365686,
		0.621922, 0.782462, 0.031092,
		38.795422, 37.947887, 26.712856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239868, 37.653728, 26.082096>,  <38.360077, 37.400166, 26.691092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239868, 37.653728, 26.082096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589291, 37.809479, 26.198917>,  <38.798943, 37.902927, 26.269011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589291, 37.809479, 26.198917>,  <38.239868, 37.653728, 26.082096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589291, 37.809479, 26.198917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338731, -0.055448, -0.939248,
		-0.349524, 0.919410, -0.180329,
		0.873553, 0.389373, 0.292052,
		38.851357, 37.926292, 26.286533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367458, 38.093895, 25.541405>,  <38.239868, 37.653728, 26.082096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367458, 38.093895, 25.541405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720905, 38.067780, 25.726860>,  <38.932972, 38.052109, 25.838133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720905, 38.067780, 25.726860>,  <38.367458, 38.093895, 25.541405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720905, 38.067780, 25.726860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467690, 0.169860, -0.867418,
		-0.022117, 0.983303, 0.180628,
		0.883616, -0.065293, 0.463637,
		38.985989, 38.048191, 25.865952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761238, 38.614628, 25.347458>,  <38.367458, 38.093895, 25.541405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761238, 38.614628, 25.347458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029999, 38.347443, 25.475445>,  <39.191254, 38.187130, 25.552237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029999, 38.347443, 25.475445>,  <38.761238, 38.614628, 25.347458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029999, 38.347443, 25.475445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529828, 0.131614, -0.837831,
		0.517528, 0.732463, 0.442337,
		0.671898, -0.667964, 0.319965,
		39.231567, 38.147053, 25.571434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429115, 38.964085, 25.326170>,  <38.761238, 38.614628, 25.347458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429115, 38.964085, 25.326170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506901, 38.572792, 25.355164>,  <39.553570, 38.338017, 25.372561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506901, 38.572792, 25.355164>,  <39.429115, 38.964085, 25.326170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506901, 38.572792, 25.355164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572544, 0.053192, -0.818147,
		0.796479, 0.200597, 0.570422,
		0.194460, -0.978229, 0.072485,
		39.565239, 38.279324, 25.376909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192272, 38.827843, 25.445526>,  <39.429115, 38.964085, 25.326170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192272, 38.827843, 25.445526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030022, 38.517853, 25.251667>,  <39.932671, 38.331860, 25.135351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030022, 38.517853, 25.251667>,  <40.192272, 38.827843, 25.445526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030022, 38.517853, 25.251667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629855, 0.147254, -0.762627,
		0.662380, -0.614603, 0.428388,
		-0.405630, -0.774971, -0.484649,
		39.908333, 38.285362, 25.106272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.720833, 34.726631, 24.015135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920147, 35.073334, 24.023663>,  <36.039734, 35.281353, 24.028780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920147, 35.073334, 24.023663>,  <35.720833, 34.726631, 24.015135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920147, 35.073334, 24.023663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092176, -0.077409, 0.992729,
		0.862100, -0.492696, -0.118465,
		0.498284, 0.866752, 0.021319,
		36.069633, 35.333359, 24.030058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328388, 34.611958, 24.293116>,  <35.720833, 34.726631, 24.015135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328388, 34.611958, 24.293116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257195, 35.000778, 24.354353>,  <36.214478, 35.234070, 24.391096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257195, 35.000778, 24.354353>,  <36.328388, 34.611958, 24.293116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257195, 35.000778, 24.354353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131261, -0.130735, 0.982690,
		0.975239, 0.195001, -0.104324,
		-0.177986, 0.972051, 0.153094,
		36.203800, 35.292393, 24.400282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816555, 34.792072, 24.818146>,  <36.328388, 34.611958, 24.293116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816555, 34.792072, 24.818146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540150, 35.080879, 24.831964>,  <36.374306, 35.254162, 24.840256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540150, 35.080879, 24.831964>,  <36.816555, 34.792072, 24.818146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540150, 35.080879, 24.831964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153344, 0.099719, 0.983128,
		0.706390, 0.684651, -0.179624,
		-0.691012, 0.722017, 0.034547,
		36.332848, 35.297485, 24.842329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090584, 35.338825, 25.207069>,  <36.816555, 34.792072, 24.818146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090584, 35.338825, 25.207069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.692673, 35.378948, 25.214674>,  <36.453926, 35.403023, 25.219236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.692673, 35.378948, 25.214674>,  <37.090584, 35.338825, 25.207069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692673, 35.378948, 25.214674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023682, 0.045582, 0.998680,
		0.099310, 0.993912, -0.047719,
		-0.994775, 0.100309, 0.019011,
		36.394241, 35.409042, 25.220377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043182, 35.817509, 25.704988>,  <37.090584, 35.338825, 25.207069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043182, 35.817509, 25.704988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695477, 35.622002, 25.675383>,  <36.486851, 35.504696, 25.657619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.695477, 35.622002, 25.675383>,  <37.043182, 35.817509, 25.704988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695477, 35.622002, 25.675383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048643, -0.064426, 0.996736,
		-0.491941, 0.870032, 0.032228,
		-0.869269, -0.488768, -0.074015,
		36.434696, 35.475372, 25.653179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664238, 36.132568, 26.111185>,  <37.043182, 35.817509, 25.704988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664238, 36.132568, 26.111185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.508163, 35.769096, 26.051779>,  <36.414516, 35.551014, 26.016134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.508163, 35.769096, 26.051779>,  <36.664238, 36.132568, 26.111185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508163, 35.769096, 26.051779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083296, -0.125804, 0.988552,
		-0.916959, 0.398093, -0.026602,
		-0.390189, -0.908678, -0.148517,
		36.391106, 35.496494, 26.007223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209255, 36.134426, 26.616442>,  <36.664238, 36.132568, 26.111185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209255, 36.134426, 26.616442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.214825, 35.744377, 26.527943>,  <36.218166, 35.510349, 26.474844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.214825, 35.744377, 26.527943>,  <36.209255, 36.134426, 26.616442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214825, 35.744377, 26.527943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113812, -0.221374, 0.968525,
		-0.993405, 0.011698, -0.114062,
		0.013921, -0.975119, -0.221246,
		36.219002, 35.451843, 26.461569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653053, 35.931328, 26.922592>,  <36.209255, 36.134426, 26.616442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653053, 35.931328, 26.922592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.856846, 35.591549, 26.867645>,  <35.979122, 35.387684, 26.834677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.856846, 35.591549, 26.867645>,  <35.653053, 35.931328, 26.922592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856846, 35.591549, 26.867645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187079, -0.265168, 0.945879,
		-0.839896, -0.456214, -0.294013,
		0.509486, -0.849444, -0.137366,
		36.009693, 35.336716, 26.826435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229515, 35.401501, 27.204325>,  <35.653053, 35.931328, 26.922592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229515, 35.401501, 27.204325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574150, 35.198746, 27.193466>,  <35.780930, 35.077091, 27.186951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.574150, 35.198746, 27.193466>,  <35.229515, 35.401501, 27.204325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574150, 35.198746, 27.193466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212071, -0.408026, 0.887998,
		-0.461196, -0.759326, -0.459044,
		0.861582, -0.506891, -0.027149,
		35.832626, 35.046680, 27.185322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123920, 34.659420, 27.261824>,  <35.229515, 35.401501, 27.204325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123920, 34.659420, 27.261824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497482, 34.727097, 27.387800>,  <35.721619, 34.767704, 27.463387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497482, 34.727097, 27.387800>,  <35.123920, 34.659420, 27.261824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497482, 34.727097, 27.387800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227352, -0.398790, 0.888413,
		0.275909, -0.901299, -0.333967,
		0.933908, 0.169194, 0.314942,
		35.777657, 34.777855, 27.482283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221508, 34.089115, 27.718288>,  <35.123920, 34.659420, 27.261824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221508, 34.089115, 27.718288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516090, 34.344284, 27.808346>,  <35.692841, 34.497387, 27.862381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516090, 34.344284, 27.808346>,  <35.221508, 34.089115, 27.718288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516090, 34.344284, 27.808346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115345, -0.209530, 0.970975,
		0.666583, -0.741046, -0.080728,
		0.736452, 0.637924, 0.225145,
		35.737026, 34.535660, 27.875889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564777, 33.622143, 28.128300>,  <35.221508, 34.089115, 27.718288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564777, 33.622143, 28.128300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.656376, 34.003269, 28.208008>,  <35.711334, 34.231945, 28.255833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.656376, 34.003269, 28.208008>,  <35.564777, 33.622143, 28.128300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656376, 34.003269, 28.208008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112110, -0.177530, 0.977709,
		0.966949, -0.246235, 0.066165,
		0.229000, 0.952812, 0.199268,
		35.725075, 34.289112, 28.267788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082153, 33.570782, 28.584032>,  <35.564777, 33.622143, 28.128300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082153, 33.570782, 28.584032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.946117, 33.941536, 28.647549>,  <35.864494, 34.163990, 28.685659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.946117, 33.941536, 28.647549>,  <36.082153, 33.570782, 28.584032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946117, 33.941536, 28.647549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126986, -0.122045, 0.984367,
		0.931780, 0.354937, -0.076196,
		-0.340089, 0.926890, 0.158791,
		35.844090, 34.219604, 28.695187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394646, 33.755566, 29.218475>,  <36.082153, 33.570782, 28.584032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394646, 33.755566, 29.218475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.097038, 34.022350, 29.202465>,  <35.918476, 34.182423, 29.192860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.097038, 34.022350, 29.202465>,  <36.394646, 33.755566, 29.218475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097038, 34.022350, 29.202465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084546, 0.153393, 0.984542,
		0.662793, 0.729129, -0.170516,
		-0.744014, 0.666964, -0.040023,
		35.873833, 34.222439, 29.190458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143650, 34.018116, 29.337358>,  <36.394646, 33.755566, 29.218475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143650, 34.018116, 29.337358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.331783, 33.665451, 29.322071>,  <37.444664, 33.453854, 29.312899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.331783, 33.665451, 29.322071>,  <37.143650, 34.018116, 29.337358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331783, 33.665451, 29.322071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183780, 0.140212, -0.972916,
		0.863140, 0.450573, 0.227979,
		0.470335, -0.881660, -0.038216,
		37.472885, 33.400951, 29.310606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813160, 34.085030, 28.883894>,  <37.143650, 34.018116, 29.337358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813160, 34.085030, 28.883894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754589, 33.689354, 28.880472>,  <37.719448, 33.451950, 28.878418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754589, 33.689354, 28.880472>,  <37.813160, 34.085030, 28.883894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754589, 33.689354, 28.880472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237544, -0.026763, -0.971008,
		0.960278, -0.144210, 0.238894,
		-0.146423, -0.989185, -0.008556,
		37.710663, 33.392597, 28.877905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467628, 33.844593, 28.593256>,  <37.813160, 34.085030, 28.883894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467628, 33.844593, 28.593256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.201923, 33.548786, 28.549675>,  <38.042500, 33.371304, 28.523527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.201923, 33.548786, 28.549675>,  <38.467628, 33.844593, 28.593256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201923, 33.548786, 28.549675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193640, -0.029462, -0.980630,
		0.721981, -0.672495, 0.162770,
		-0.664265, -0.739515, -0.108951,
		38.002644, 33.326931, 28.516989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870522, 33.263172, 28.295679>,  <38.467628, 33.844593, 28.593256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870522, 33.263172, 28.295679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486874, 33.208157, 28.196741>,  <38.256687, 33.175148, 28.137379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486874, 33.208157, 28.196741>,  <38.870522, 33.263172, 28.295679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486874, 33.208157, 28.196741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250081, -0.002706, -0.968221,
		0.132503, -0.990492, 0.036992,
		-0.959115, -0.137543, -0.247345,
		38.199139, 33.166893, 28.122538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868309, 32.769699, 27.748940>,  <38.870522, 33.263172, 28.295679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868309, 32.769699, 27.748940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508896, 32.941071, 27.710796>,  <38.293247, 33.043892, 27.687910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508896, 32.941071, 27.710796>,  <38.868309, 32.769699, 27.748940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508896, 32.941071, 27.710796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160261, 0.117983, -0.979998,
		-0.408610, -0.895839, -0.174671,
		-0.898529, 0.428430, -0.095359,
		38.239338, 33.069599, 27.682188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392525, 32.373096, 27.379524>,  <38.868309, 32.769699, 27.748940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392525, 32.373096, 27.379524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.227936, 32.734230, 27.329586>,  <38.129181, 32.950909, 27.299623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.227936, 32.734230, 27.329586>,  <38.392525, 32.373096, 27.379524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227936, 32.734230, 27.329586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134239, -0.195520, -0.971469,
		-0.901481, -0.382976, 0.201647,
		-0.411475, 0.902830, -0.124848,
		38.104492, 33.005077, 27.292131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955986, 32.231335, 26.779114>,  <38.392525, 32.373096, 27.379524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955986, 32.231335, 26.779114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.995270, 32.627556, 26.817398>,  <38.018841, 32.865288, 26.840368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.995270, 32.627556, 26.817398>,  <37.955986, 32.231335, 26.779114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995270, 32.627556, 26.817398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008217, 0.095367, -0.995408,
		-0.995132, 0.098542, 0.001226,
		0.098207, 0.990553, 0.095713,
		38.024731, 32.924721, 26.846111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510292, 32.443184, 26.348007>,  <37.955986, 32.231335, 26.779114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510292, 32.443184, 26.348007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752895, 32.751797, 26.424839>,  <37.898457, 32.936962, 26.470938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.752895, 32.751797, 26.424839>,  <37.510292, 32.443184, 26.348007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752895, 32.751797, 26.424839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051481, 0.202969, -0.977831,
		-0.793410, 0.602949, 0.083383,
		0.606507, 0.771528, 0.192079,
		37.934849, 32.983253, 26.482462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266411, 32.959049, 26.018684>,  <37.510292, 32.443184, 26.348007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266411, 32.959049, 26.018684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648159, 33.067574, 26.068581>,  <37.877209, 33.132687, 26.098518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648159, 33.067574, 26.068581>,  <37.266411, 32.959049, 26.018684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648159, 33.067574, 26.068581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024032, 0.486163, -0.873538,
		-0.297641, 0.830685, 0.470502,
		0.954375, 0.271308, 0.124739,
		37.934471, 33.148968, 26.106003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283077, 33.654305, 25.817533>,  <37.266411, 32.959049, 26.018684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283077, 33.654305, 25.817533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666134, 33.544186, 25.783751>,  <37.895969, 33.478115, 25.763481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666134, 33.544186, 25.783751>,  <37.283077, 33.654305, 25.817533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666134, 33.544186, 25.783751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074527, 0.520243, -0.850760,
		0.278152, 0.808429, 0.518724,
		0.957642, -0.275299, -0.084457,
		37.953426, 33.461597, 25.758413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702061, 34.240856, 25.544361>,  <37.283077, 33.654305, 25.817533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702061, 34.240856, 25.544361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.956150, 33.941883, 25.466560>,  <38.108604, 33.762501, 25.419880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.956150, 33.941883, 25.466560>,  <37.702061, 34.240856, 25.544361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956150, 33.941883, 25.466560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204366, 0.405535, -0.890941,
		0.744796, 0.526200, 0.410357,
		0.635227, -0.747432, -0.194503,
		38.146717, 33.717655, 25.408209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256630, 34.612999, 25.393553>,  <37.702061, 34.240856, 25.544361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256630, 34.612999, 25.393553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280392, 34.255356, 25.215996>,  <38.294647, 34.040771, 25.109461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280392, 34.255356, 25.215996>,  <38.256630, 34.612999, 25.393553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280392, 34.255356, 25.215996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103691, 0.447800, -0.888101,
		0.992834, 0.006729, 0.119313,
		0.059405, -0.894108, -0.443893,
		38.298214, 33.987122, 25.082829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849052, 34.511635, 25.012110>,  <38.256630, 34.612999, 25.393553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849052, 34.511635, 25.012110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592976, 34.263618, 24.830690>,  <38.439331, 34.114807, 24.721840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.592976, 34.263618, 24.830690>,  <38.849052, 34.511635, 25.012110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592976, 34.263618, 24.830690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256357, 0.384118, -0.886981,
		0.724179, -0.684108, -0.086958,
		-0.640192, -0.620040, -0.453546,
		38.400917, 34.077606, 24.694626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208435, 34.108555, 24.491436>,  <38.849052, 34.511635, 25.012110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208435, 34.108555, 24.491436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.824501, 34.084824, 24.381744>,  <38.594143, 34.070583, 24.315929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.824501, 34.084824, 24.381744>,  <39.208435, 34.108555, 24.491436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824501, 34.084824, 24.381744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257619, 0.200834, -0.945145,
		0.111150, -0.977827, -0.177482,
		-0.959832, -0.059330, -0.274229,
		38.536552, 34.067024, 24.299475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001934, 33.904076, 24.445549>,  <39.208435, 34.108555, 24.491436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001934, 33.904076, 24.445549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.232700, 34.228622, 24.483202>,  <40.371159, 34.423351, 24.505795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.232700, 34.228622, 24.483202>,  <40.001934, 33.904076, 24.445549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232700, 34.228622, 24.483202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233079, -0.273981, 0.933064,
		0.782845, -0.516355, -0.347175,
		0.576912, 0.811364, 0.094133,
		40.405773, 34.472031, 24.511442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560692, 33.717266, 24.709852>,  <40.001934, 33.904076, 24.445549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560692, 33.717266, 24.709852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.538780, 34.100178, 24.823420>,  <40.525635, 34.329926, 24.891560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.538780, 34.100178, 24.823420>,  <40.560692, 33.717266, 24.709852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538780, 34.100178, 24.823420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347335, -0.248318, 0.904266,
		0.936140, 0.148148, -0.318896,
		-0.054777, 0.957283, 0.283917,
		40.522346, 34.387363, 24.908594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086849, 33.798351, 25.119461>,  <40.560692, 33.717266, 24.709852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086849, 33.798351, 25.119461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861980, 34.114292, 25.217520>,  <40.727058, 34.303856, 25.276354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.861980, 34.114292, 25.217520>,  <41.086849, 33.798351, 25.119461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861980, 34.114292, 25.217520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261836, -0.111187, 0.958686,
		0.784479, 0.603133, -0.144305,
		-0.562170, 0.789853, 0.245146,
		40.693329, 34.351250, 25.291063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498817, 34.365528, 25.530355>,  <41.086849, 33.798351, 25.119461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498817, 34.365528, 25.530355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.112759, 34.440407, 25.603504>,  <40.881123, 34.485332, 25.647394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.112759, 34.440407, 25.603504>,  <41.498817, 34.365528, 25.530355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112759, 34.440407, 25.603504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229106, 0.266717, 0.936148,
		0.126466, 0.945421, -0.300309,
		-0.965151, 0.187193, 0.182871,
		40.823212, 34.496563, 25.658365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522118, 34.841347, 26.082956>,  <41.498817, 34.365528, 25.530355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522118, 34.841347, 26.082956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.138496, 34.728222, 26.089096>,  <40.908325, 34.660347, 26.092779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.138496, 34.728222, 26.089096>,  <41.522118, 34.841347, 26.082956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138496, 34.728222, 26.089096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013864, 0.100999, 0.994790,
		-0.282887, 0.953844, -0.100785,
		-0.959053, -0.282810, 0.015347,
		40.850780, 34.643379, 26.093700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148518, 35.381035, 26.438089>,  <41.522118, 34.841347, 26.082956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148518, 35.381035, 26.438089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.941521, 35.039143, 26.454290>,  <40.817322, 34.834007, 26.464010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.941521, 35.039143, 26.454290>,  <41.148518, 35.381035, 26.438089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941521, 35.039143, 26.454290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047683, 0.076062, 0.995962,
		-0.854361, 0.513467, -0.080118,
		-0.517488, -0.854731, 0.040501,
		40.786274, 34.782722, 26.466440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551369, 35.460228, 26.863941>,  <41.148518, 35.381035, 26.438089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551369, 35.460228, 26.863941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.622208, 35.066608, 26.870573>,  <40.664711, 34.830437, 26.874552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.622208, 35.066608, 26.870573>,  <40.551369, 35.460228, 26.863941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622208, 35.066608, 26.870573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089673, 0.000641, 0.995971,
		-0.980099, -0.177875, -0.088129,
		0.177102, -0.984053, 0.016579,
		40.675339, 34.771393, 26.875547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937241, 35.131283, 27.156668>,  <40.551369, 35.460228, 26.863941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937241, 35.131283, 27.156668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220428, 34.852131, 27.200012>,  <40.390343, 34.684639, 27.226019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.220428, 34.852131, 27.200012>,  <39.937241, 35.131283, 27.156668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220428, 34.852131, 27.200012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261778, -0.116808, 0.958034,
		-0.655936, -0.706625, -0.265386,
		0.707970, -0.697880, 0.108361,
		40.432819, 34.642765, 27.232521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626652, 34.553738, 27.643356>,  <39.937241, 35.131283, 27.156668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626652, 34.553738, 27.643356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.024422, 34.517757, 27.665375>,  <40.263084, 34.496170, 27.678585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.024422, 34.517757, 27.665375>,  <39.626652, 34.553738, 27.643356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024422, 34.517757, 27.665375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076914, -0.261518, 0.962129,
		-0.072147, -0.960998, -0.266978,
		0.994424, -0.089949, 0.055046,
		40.322750, 34.490772, 27.681889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717236, 33.870987, 27.921371>,  <39.626652, 34.553738, 27.643356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717236, 33.870987, 27.921371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049751, 34.082081, 27.991171>,  <40.249260, 34.208736, 28.033051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049751, 34.082081, 27.991171>,  <39.717236, 33.870987, 27.921371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049751, 34.082081, 27.991171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075553, -0.203744, 0.976104,
		0.550677, -0.824612, -0.129499,
		0.831292, 0.527734, 0.174500,
		40.299141, 34.240402, 28.043520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146729, 33.493416, 28.337831>,  <39.717236, 33.870987, 27.921371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146729, 33.493416, 28.337831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.308907, 33.854759, 28.393768>,  <40.406212, 34.071568, 28.427330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.308907, 33.854759, 28.393768>,  <40.146729, 33.493416, 28.337831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308907, 33.854759, 28.393768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053381, -0.176118, 0.982921,
		0.912562, -0.391051, -0.119627,
		0.405440, 0.903361, 0.139844,
		40.430538, 34.125767, 28.435722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922306, 33.342442, 28.557236>,  <40.146729, 33.493416, 28.337831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922306, 33.342442, 28.557236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.785748, 33.697220, 28.681667>,  <40.703812, 33.910088, 28.756327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.785748, 33.697220, 28.681667>,  <40.922306, 33.342442, 28.557236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785748, 33.697220, 28.681667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217742, -0.247331, 0.944148,
		0.914350, 0.390065, -0.108688,
		-0.341397, 0.886948, 0.311081,
		40.683327, 33.963303, 28.774992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309250, 33.497002, 29.154884>,  <40.922306, 33.342442, 28.557236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309250, 33.497002, 29.154884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.982578, 33.726879, 29.175886>,  <40.786575, 33.864807, 29.188488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.982578, 33.726879, 29.175886>,  <41.309250, 33.497002, 29.154884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982578, 33.726879, 29.175886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023796, -0.057371, 0.998069,
		0.576595, 0.816356, 0.033178,
		-0.816683, 0.574692, 0.052506,
		40.737572, 33.899288, 29.191637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463791, 33.822681, 29.809855>,  <41.309250, 33.497002, 29.154884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463791, 33.822681, 29.809855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.087624, 33.953152, 29.771427>,  <40.861923, 34.031433, 29.748371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.087624, 33.953152, 29.771427>,  <41.463791, 33.822681, 29.809855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087624, 33.953152, 29.771427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118703, -0.050164, 0.991662,
		0.318639, 0.943977, 0.085893,
		-0.940414, 0.326177, -0.096069,
		40.805500, 34.051006, 29.742607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.804142, 37.783829, 24.925995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.482174, 37.655315, 24.726444>,  <40.288994, 37.578205, 24.606714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.482174, 37.655315, 24.726444>,  <40.804142, 37.783829, 24.925995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482174, 37.655315, 24.726444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415913, 0.294174, -0.860511,
		0.423230, -0.900131, -0.103158,
		-0.804918, -0.321289, -0.498879,
		40.240700, 37.558929, 24.576780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992180, 37.284836, 24.333893>,  <40.804142, 37.783829, 24.925995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992180, 37.284836, 24.333893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.652836, 37.488007, 24.274157>,  <40.449230, 37.609909, 24.238316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.652836, 37.488007, 24.274157>,  <40.992180, 37.284836, 24.333893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652836, 37.488007, 24.274157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324786, 0.276542, -0.904455,
		-0.418099, -0.815803, -0.399574,
		-0.848356, 0.507928, -0.149339,
		40.398331, 37.640385, 24.229355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611156, 37.009724, 23.750366>,  <40.992180, 37.284836, 24.333893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611156, 37.009724, 23.750366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.504845, 37.392139, 23.799927>,  <40.441059, 37.621590, 23.829664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.504845, 37.392139, 23.799927>,  <40.611156, 37.009724, 23.750366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504845, 37.392139, 23.799927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352798, 0.216067, -0.910411,
		-0.897160, -0.198254, -0.394714,
		-0.265778, 0.956039, 0.123903,
		40.425110, 37.678951, 23.837097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245842, 37.132332, 23.118387>,  <40.611156, 37.009724, 23.750366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245842, 37.132332, 23.118387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.349636, 37.485298, 23.275368>,  <40.411911, 37.697079, 23.369556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.349636, 37.485298, 23.275368>,  <40.245842, 37.132332, 23.118387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349636, 37.485298, 23.275368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308030, 0.309524, -0.899618,
		-0.915307, 0.354322, -0.191494,
		0.259483, 0.882412, 0.392452,
		40.427483, 37.750023, 23.393103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995186, 37.601692, 22.726217>,  <40.245842, 37.132332, 23.118387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995186, 37.601692, 22.726217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.278484, 37.813938, 22.912479>,  <40.448463, 37.941284, 23.024237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.278484, 37.813938, 22.912479>,  <39.995186, 37.601692, 22.726217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278484, 37.813938, 22.912479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353579, 0.304293, -0.884527,
		-0.611039, 0.791108, 0.027900,
		0.708246, 0.530616, 0.465655,
		40.490959, 37.973122, 23.052176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925621, 38.200165, 22.497997>,  <39.995186, 37.601692, 22.726217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925621, 38.200165, 22.497997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.300072, 38.203693, 22.638617>,  <40.524742, 38.205811, 22.722988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.300072, 38.203693, 22.638617>,  <39.925621, 38.200165, 22.497997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300072, 38.203693, 22.638617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326982, 0.346053, -0.879392,
		-0.129414, 0.938173, 0.321065,
		0.936128, 0.008823, 0.351550,
		40.580910, 38.206341, 22.744081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205894, 38.867039, 22.266417>,  <39.925621, 38.200165, 22.497997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205894, 38.867039, 22.266417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.521286, 38.629723, 22.331293>,  <40.710522, 38.487335, 22.370220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.521286, 38.629723, 22.331293>,  <40.205894, 38.867039, 22.266417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521286, 38.629723, 22.331293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422365, 0.330597, -0.843987,
		0.447105, 0.733974, 0.511253,
		0.788483, -0.593286, 0.162193,
		40.757832, 38.451736, 22.379951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700432, 39.259747, 22.105844>,  <40.205894, 38.867039, 22.266417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700432, 39.259747, 22.105844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.837364, 38.884384, 22.087023>,  <40.919521, 38.659168, 22.075729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.837364, 38.884384, 22.087023>,  <40.700432, 39.259747, 22.105844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837364, 38.884384, 22.087023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308533, 0.159573, -0.937733,
		0.887479, 0.306495, 0.344154,
		0.342328, -0.938402, -0.047054,
		40.940063, 38.602863, 22.072906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411896, 39.328327, 21.889416>,  <40.700432, 39.259747, 22.105844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411896, 39.328327, 21.889416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.279690, 38.960674, 21.803669>,  <41.200367, 38.740082, 21.752220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.279690, 38.960674, 21.803669>,  <41.411896, 39.328327, 21.889416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279690, 38.960674, 21.803669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396945, 0.070693, -0.915116,
		0.856268, -0.387553, 0.341480,
		-0.330516, -0.919133, -0.214369,
		41.180534, 38.684933, 21.739359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817245, 39.207729, 21.330362>,  <41.411896, 39.328327, 21.889416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817245, 39.207729, 21.330362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.527348, 38.932529, 21.315363>,  <41.353409, 38.767410, 21.306362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.527348, 38.932529, 21.315363>,  <41.817245, 39.207729, 21.330362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527348, 38.932529, 21.315363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009473, 0.064368, -0.997881,
		0.688957, -0.722850, -0.053167,
		-0.724740, -0.688001, -0.037499,
		41.309925, 38.726128, 21.304113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028580, 38.754810, 20.828222>,  <41.817245, 39.207729, 21.330362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028580, 38.754810, 20.828222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.632812, 38.708229, 20.862822>,  <41.395351, 38.680279, 20.883581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.632812, 38.708229, 20.862822>,  <42.028580, 38.754810, 20.828222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.632812, 38.708229, 20.862822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081268, -0.048932, -0.995490,
		0.120160, -0.991990, 0.038951,
		-0.989423, -0.116452, 0.086497,
		41.335987, 38.673294, 20.888771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833176, 38.128532, 20.422779>,  <42.028580, 38.754810, 20.828222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833176, 38.128532, 20.422779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.525883, 38.381527, 20.462315>,  <41.341507, 38.533325, 20.486036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.525883, 38.381527, 20.462315>,  <41.833176, 38.128532, 20.422779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525883, 38.381527, 20.462315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172551, -0.055905, -0.983413,
		-0.616474, -0.772548, 0.152086,
		-0.768236, 0.632491, 0.098840,
		41.295410, 38.571274, 20.491966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.770962, 38.153091, 19.790632>,  <41.833176, 38.128532, 20.422779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.770962, 38.153091, 19.790632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.452019, 38.329254, 19.955681>,  <41.260651, 38.434952, 20.054710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.452019, 38.329254, 19.955681>,  <41.770962, 38.153091, 19.790632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452019, 38.329254, 19.955681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426913, 0.071651, -0.901450,
		-0.426567, -0.894936, 0.130883,
		-0.797362, 0.440404, 0.412624,
		41.212811, 38.461376, 20.079468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154289, 37.485691, 19.728956>,  <41.770962, 38.153091, 19.790632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154289, 37.485691, 19.728956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.015274, 37.219353, 19.464874>,  <41.931866, 37.059551, 19.306425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.015274, 37.219353, 19.464874>,  <42.154289, 37.485691, 19.728956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015274, 37.219353, 19.464874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430547, -0.512164, 0.743180,
		-0.832974, 0.542534, -0.108679,
		-0.347539, -0.665842, -0.660206,
		41.911011, 37.019600, 19.266813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415222, 37.436031, 19.840216>,  <42.154289, 37.485691, 19.728956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415222, 37.436031, 19.840216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557068, 37.099487, 19.677061>,  <41.642174, 36.897560, 19.579168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.557068, 37.099487, 19.677061>,  <41.415222, 37.436031, 19.840216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557068, 37.099487, 19.677061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301814, -0.515883, 0.801731,
		-0.884962, -0.161198, -0.436871,
		0.354612, -0.841356, -0.407885,
		41.663452, 36.847080, 19.554695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946796, 36.897991, 19.933525>,  <41.415222, 37.436031, 19.840216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946796, 36.897991, 19.933525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.278114, 36.676514, 19.899202>,  <41.476906, 36.543629, 19.878609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.278114, 36.676514, 19.899202>,  <40.946796, 36.897991, 19.933525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278114, 36.676514, 19.899202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225055, -0.469020, 0.854032,
		-0.513118, -0.688072, -0.513095,
		0.828287, -0.553694, -0.085809,
		41.526600, 36.510406, 19.873461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780449, 36.135883, 19.993383>,  <40.946796, 36.897991, 19.933525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780449, 36.135883, 19.993383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.173138, 36.165142, 20.063665>,  <41.408752, 36.182697, 20.105835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.173138, 36.165142, 20.063665>,  <40.780449, 36.135883, 19.993383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173138, 36.165142, 20.063665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086248, -0.651982, 0.753313,
		0.169656, -0.754698, -0.633757,
		0.981722, 0.073144, 0.175704,
		41.467655, 36.187084, 20.116377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941875, 35.455132, 20.042568>,  <40.780449, 36.135883, 19.993383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941875, 35.455132, 20.042568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.220589, 35.685131, 20.214092>,  <41.387817, 35.823132, 20.317007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.220589, 35.685131, 20.214092>,  <40.941875, 35.455132, 20.042568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220589, 35.685131, 20.214092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060234, -0.548809, 0.833775,
		0.714753, -0.606785, -0.347765,
		0.696778, 0.574996, 0.428812,
		41.429623, 35.857632, 20.342735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410202, 34.963207, 20.283306>,  <40.941875, 35.455132, 20.042568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410202, 34.963207, 20.283306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.493813, 35.299080, 20.483801>,  <41.543980, 35.500603, 20.604097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.493813, 35.299080, 20.483801>,  <41.410202, 34.963207, 20.283306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493813, 35.299080, 20.483801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200047, -0.465005, 0.862410,
		0.957230, -0.280536, 0.070779,
		0.209025, 0.839685, 0.501237,
		41.556519, 35.550983, 20.634172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927830, 34.828499, 20.836885>,  <41.410202, 34.963207, 20.283306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927830, 34.828499, 20.836885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.761562, 35.167515, 20.968878>,  <41.661800, 35.370926, 21.048073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.761562, 35.167515, 20.968878>,  <41.927830, 34.828499, 20.836885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761562, 35.167515, 20.968878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102518, -0.404156, 0.908927,
		0.903719, 0.343986, 0.254884,
		-0.415671, 0.847545, 0.329979,
		41.636860, 35.421780, 21.067871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086140, 34.814198, 21.594963>,  <41.927830, 34.828499, 20.836885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086140, 34.814198, 21.594963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.832420, 35.121437, 21.559864>,  <41.680191, 35.305779, 21.538805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.832420, 35.121437, 21.559864>,  <42.086140, 34.814198, 21.594963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832420, 35.121437, 21.559864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352618, -0.186434, 0.917008,
		0.687989, 0.612596, 0.389098,
		-0.634296, 0.768094, -0.087748,
		41.642132, 35.351864, 21.533539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289959, 35.297337, 22.143837>,  <42.086140, 34.814198, 21.594963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289959, 35.297337, 22.143837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.906319, 35.325932, 22.034283>,  <41.676136, 35.343086, 21.968550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.906319, 35.325932, 22.034283>,  <42.289959, 35.297337, 22.143837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906319, 35.325932, 22.034283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275885, -0.019597, 0.960991,
		0.063330, 0.997249, 0.038517,
		-0.959102, 0.071486, -0.273885,
		41.618587, 35.347378, 21.952118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988510, 35.796425, 22.590712>,  <42.289959, 35.297337, 22.143837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988510, 35.796425, 22.590712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.700153, 35.563362, 22.440605>,  <41.527138, 35.423523, 22.350542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.700153, 35.563362, 22.440605>,  <41.988510, 35.796425, 22.590712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700153, 35.563362, 22.440605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392654, -0.102807, 0.913922,
		-0.571086, 0.806187, -0.154671,
		-0.720891, -0.582660, -0.375264,
		41.483887, 35.388565, 22.328026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398251, 36.034393, 23.040461>,  <41.988510, 35.796425, 22.590712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398251, 36.034393, 23.040461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.292007, 35.684990, 22.877274>,  <41.228260, 35.475349, 22.779362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.292007, 35.684990, 22.877274>,  <41.398251, 36.034393, 23.040461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292007, 35.684990, 22.877274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615115, -0.172296, 0.769381,
		-0.742351, 0.455303, -0.491543,
		-0.265611, -0.873506, -0.407968,
		41.212326, 35.422939, 22.754883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742741, 35.937634, 23.139233>,  <41.398251, 36.034393, 23.040461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742741, 35.937634, 23.139233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.858566, 35.563519, 23.057848>,  <40.928062, 35.339050, 23.009018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.858566, 35.563519, 23.057848>,  <40.742741, 35.937634, 23.139233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858566, 35.563519, 23.057848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521929, -0.332471, 0.785528,
		-0.802337, -0.121268, -0.584423,
		0.289563, -0.935285, -0.203460,
		40.945435, 35.282932, 22.996809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135941, 35.580921, 23.049566>,  <40.742741, 35.937634, 23.139233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135941, 35.580921, 23.049566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.421864, 35.319408, 23.148867>,  <40.593418, 35.162502, 23.208447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.421864, 35.319408, 23.148867>,  <40.135941, 35.580921, 23.049566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421864, 35.319408, 23.148867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498656, -0.227611, 0.836382,
		-0.490304, -0.721642, -0.488707,
		0.714804, -0.653778, 0.248253,
		40.636307, 35.123276, 23.223343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704563, 34.949688, 23.445107>,  <40.135941, 35.580921, 23.049566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704563, 34.949688, 23.445107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.090534, 34.942142, 23.549843>,  <40.322117, 34.937614, 23.612684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.090534, 34.942142, 23.549843>,  <39.704563, 34.949688, 23.445107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090534, 34.942142, 23.549843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256416, -0.281591, 0.924639,
		0.056287, -0.959349, -0.276553,
		0.964927, -0.018868, 0.261842,
		40.380013, 34.936481, 23.628395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731670, 34.436790, 23.985023>,  <39.704563, 34.949688, 23.445107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731670, 34.436790, 23.985023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102440, 34.573589, 24.046799>,  <40.324902, 34.655666, 24.083864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102440, 34.573589, 24.046799>,  <39.731670, 34.436790, 23.985023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102440, 34.573589, 24.046799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057783, -0.276567, 0.959256,
		0.370773, -0.898081, -0.236595,
		0.926924, 0.341995, 0.154437,
		40.380516, 34.676189, 24.093130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239716, 33.834377, 23.815079>,  <39.731670, 34.436790, 23.985023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239716, 33.834377, 23.815079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.858253, 33.953766, 23.830341>,  <38.629375, 34.025398, 23.839499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.858253, 33.953766, 23.830341>,  <39.239716, 33.834377, 23.815079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858253, 33.953766, 23.830341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054171, 0.295034, -0.953950,
		-0.295981, -0.907673, -0.297529,
		-0.953656, 0.298469, 0.038155,
		38.572155, 34.043308, 23.841787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960579, 33.555302, 23.194527>,  <39.239716, 33.834377, 23.815079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960579, 33.555302, 23.194527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717514, 33.850636, 23.311567>,  <38.571674, 34.027836, 23.381792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.717514, 33.850636, 23.311567>,  <38.960579, 33.555302, 23.194527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717514, 33.850636, 23.311567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192550, 0.220468, -0.956200,
		-0.770501, -0.637386, 0.008196,
		-0.607662, 0.738331, 0.292599,
		38.535217, 34.072136, 23.399347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275234, 33.535477, 22.869795>,  <38.960579, 33.555302, 23.194527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275234, 33.535477, 22.869795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299805, 33.924736, 22.958534>,  <38.314548, 34.158291, 23.011778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.299805, 33.924736, 22.958534>,  <38.275234, 33.535477, 22.869795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299805, 33.924736, 22.958534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192975, 0.229652, -0.953950,
		-0.979279, 0.015786, 0.201900,
		0.061425, 0.973145, 0.221848,
		38.318233, 34.216679, 23.025089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775452, 33.879715, 22.428947>,  <38.275234, 33.535477, 22.869795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775452, 33.879715, 22.428947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.984467, 34.198627, 22.549812>,  <38.109875, 34.389973, 22.622332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.984467, 34.198627, 22.549812>,  <37.775452, 33.879715, 22.428947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984467, 34.198627, 22.549812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127399, 0.277404, -0.952269,
		-0.843044, 0.536092, 0.043382,
		0.522538, 0.797278, 0.302162,
		38.141228, 34.437813, 22.640461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443726, 34.374725, 22.147131>,  <37.775452, 33.879715, 22.428947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443726, 34.374725, 22.147131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812138, 34.516361, 22.212027>,  <38.033184, 34.601341, 22.250963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.812138, 34.516361, 22.212027>,  <37.443726, 34.374725, 22.147131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812138, 34.516361, 22.212027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061850, 0.278294, -0.958502,
		-0.384546, 0.892846, 0.234417,
		0.921032, 0.354089, 0.162239,
		38.088448, 34.622589, 22.260698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518814, 34.989040, 21.799118>,  <37.443726, 34.374725, 22.147131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518814, 34.989040, 21.799118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.903065, 34.894676, 21.857821>,  <38.133617, 34.838058, 21.893042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.903065, 34.894676, 21.857821>,  <37.518814, 34.989040, 21.799118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903065, 34.894676, 21.857821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225347, 0.352616, -0.908229,
		0.162508, 0.905544, 0.391894,
		0.960630, -0.235907, 0.146758,
		38.191254, 34.823906, 21.901848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995991, 35.563259, 21.591654>,  <37.518814, 34.989040, 21.799118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995991, 35.563259, 21.591654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248428, 35.253151, 21.581213>,  <38.399891, 35.067085, 21.574947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.248428, 35.253151, 21.581213>,  <37.995991, 35.563259, 21.591654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248428, 35.253151, 21.581213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316613, 0.288162, -0.903725,
		0.708150, 0.562071, 0.427317,
		0.631094, -0.775267, -0.026103,
		38.437756, 35.020573, 21.573381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847561, 36.302086, 21.886314>,  <37.995991, 35.563259, 21.591654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847561, 36.302086, 21.886314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.487934, 36.358452, 21.720509>,  <37.272160, 36.392269, 21.621025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.487934, 36.358452, 21.720509>,  <37.847561, 36.302086, 21.886314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487934, 36.358452, 21.720509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430834, -0.116383, 0.894895,
		0.077857, 0.983158, 0.165345,
		-0.899066, 0.140910, -0.414517,
		37.218216, 36.400726, 21.596153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443413, 36.763973, 22.307333>,  <37.847561, 36.302086, 21.886314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443413, 36.763973, 22.307333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172371, 36.555794, 22.099489>,  <37.009747, 36.430885, 21.974783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.172371, 36.555794, 22.099489>,  <37.443413, 36.763973, 22.307333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172371, 36.555794, 22.099489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580257, -0.055748, 0.812523,
		-0.451840, 0.852074, -0.264216,
		-0.677601, -0.520444, -0.519611,
		36.969090, 36.399662, 21.943605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730450, 37.140816, 22.359596>,  <37.443413, 36.763973, 22.307333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730450, 37.140816, 22.359596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692066, 36.748596, 22.291101>,  <36.669037, 36.513264, 22.250004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692066, 36.748596, 22.291101>,  <36.730450, 37.140816, 22.359596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692066, 36.748596, 22.291101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604194, -0.079338, 0.792878,
		-0.791039, 0.179542, -0.584827,
		-0.095956, -0.980546, -0.171238,
		36.663280, 36.454433, 22.239731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116962, 36.995941, 22.684090>,  <36.730450, 37.140816, 22.359596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116962, 36.995941, 22.684090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.236427, 36.622276, 22.605965>,  <36.308105, 36.398079, 22.559090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.236427, 36.622276, 22.605965>,  <36.116962, 36.995941, 22.684090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236427, 36.622276, 22.605965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554667, -0.336446, 0.761018,
		-0.776626, -0.118951, -0.618630,
		0.298660, -0.934160, -0.195314,
		36.326027, 36.342030, 22.547371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548809, 36.541126, 22.886454>,  <36.116962, 36.995941, 22.684090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548809, 36.541126, 22.886454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870327, 36.303474, 22.874241>,  <36.063236, 36.160885, 22.866913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.870327, 36.303474, 22.874241>,  <35.548809, 36.541126, 22.886454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870327, 36.303474, 22.874241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209871, -0.331208, 0.919921,
		-0.556663, -0.733017, -0.390912,
		0.803791, -0.594127, -0.030533,
		36.111465, 36.125237, 22.865082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295513, 35.771053, 23.025267>,  <35.548809, 36.541126, 22.886454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295513, 35.771053, 23.025267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689983, 35.767513, 23.091450>,  <35.926666, 35.765388, 23.131159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689983, 35.767513, 23.091450>,  <35.295513, 35.771053, 23.025267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689983, 35.767513, 23.091450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149929, -0.472728, 0.868360,
		0.070535, -0.881164, -0.467520,
		0.986177, -0.008845, 0.165456,
		35.985836, 35.764858, 23.141087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383987, 35.171856, 23.355938>,  <35.295513, 35.771053, 23.025267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383987, 35.171856, 23.355938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.720360, 35.348618, 23.480869>,  <35.922184, 35.454674, 23.555828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.720360, 35.348618, 23.480869>,  <35.383987, 35.171856, 23.355938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720360, 35.348618, 23.480869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171892, -0.329141, 0.928504,
		0.513112, -0.834497, -0.200826,
		0.840933, 0.441906, 0.312330,
		35.972641, 35.481190, 23.574568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.290638, 40.453911, 20.529816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.456295, 40.091133, 20.560619>,  <38.555691, 39.873466, 20.579102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.456295, 40.091133, 20.560619>,  <38.290638, 40.453911, 20.529816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456295, 40.091133, 20.560619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287739, -0.050185, 0.956393,
		-0.863533, -0.418244, -0.281748,
		0.414145, -0.906947, 0.077008,
		38.580540, 39.819050, 20.583721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771023, 39.953201, 20.716335>,  <38.290638, 40.453911, 20.529816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771023, 39.953201, 20.716335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.126637, 39.828114, 20.850092>,  <38.340004, 39.753063, 20.930346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.126637, 39.828114, 20.850092>,  <37.771023, 39.953201, 20.716335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126637, 39.828114, 20.850092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396726, -0.161649, 0.903592,
		-0.228518, -0.935989, -0.267776,
		0.889038, -0.312721, 0.334392,
		38.393349, 39.734299, 20.950409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672920, 39.305119, 21.096497>,  <37.771023, 39.953201, 20.716335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672920, 39.305119, 21.096497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031815, 39.428352, 21.223015>,  <38.247150, 39.502293, 21.298925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031815, 39.428352, 21.223015>,  <37.672920, 39.305119, 21.096497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031815, 39.428352, 21.223015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245276, -0.247876, 0.937228,
		0.367151, -0.918498, -0.146837,
		0.897240, 0.308089, 0.316294,
		38.300987, 39.520779, 21.317904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818974, 38.784061, 21.601276>,  <37.672920, 39.305119, 21.096497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818974, 38.784061, 21.601276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031124, 39.113148, 21.683098>,  <38.158413, 39.310600, 21.732191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.031124, 39.113148, 21.683098>,  <37.818974, 38.784061, 21.601276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031124, 39.113148, 21.683098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182637, -0.124736, 0.975236,
		0.827855, -0.554602, 0.084101,
		0.530377, 0.822713, 0.204554,
		38.190239, 39.359962, 21.744465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328743, 38.602520, 22.083590>,  <37.818974, 38.784061, 21.601276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328743, 38.602520, 22.083590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.266621, 38.995811, 22.121815>,  <38.229347, 39.231789, 22.144749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.266621, 38.995811, 22.121815>,  <38.328743, 38.602520, 22.083590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266621, 38.995811, 22.121815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173211, -0.122341, 0.977257,
		0.972562, 0.135226, 0.189308,
		-0.155310, 0.983233, 0.095562,
		38.220028, 39.290783, 22.150484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422096, 38.658001, 22.749693>,  <38.328743, 38.602520, 22.083590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422096, 38.658001, 22.749693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.274181, 39.012383, 22.637730>,  <38.185432, 39.225010, 22.570551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.274181, 39.012383, 22.637730>,  <38.422096, 38.658001, 22.749693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274181, 39.012383, 22.637730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320865, 0.160959, 0.933348,
		0.871954, 0.434952, 0.224750,
		-0.369786, 0.885951, -0.279910,
		38.163246, 39.278168, 22.553757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731647, 39.201473, 23.101492>,  <38.422096, 38.658001, 22.749693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731647, 39.201473, 23.101492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.378609, 39.354774, 22.992575>,  <38.166786, 39.446754, 22.927225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.378609, 39.354774, 22.992575>,  <38.731647, 39.201473, 23.101492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378609, 39.354774, 22.992575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266587, 0.069081, 0.961332,
		0.387242, 0.921057, 0.041199,
		-0.882595, 0.383252, -0.272293,
		38.113831, 39.469749, 22.910887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725292, 39.908642, 23.483534>,  <38.731647, 39.201473, 23.101492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725292, 39.908642, 23.483534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359463, 39.796604, 23.366840>,  <38.139965, 39.729382, 23.296824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.359463, 39.796604, 23.366840>,  <38.725292, 39.908642, 23.483534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359463, 39.796604, 23.366840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358768, 0.228938, 0.904916,
		-0.186671, 0.932275, -0.309868,
		-0.914571, -0.280092, -0.291734,
		38.085091, 39.712578, 23.279320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251648, 40.393669, 23.812086>,  <38.725292, 39.908642, 23.483534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251648, 40.393669, 23.812086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.018585, 40.083523, 23.714664>,  <37.878750, 39.897434, 23.656212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.018585, 40.083523, 23.714664>,  <38.251648, 40.393669, 23.812086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018585, 40.083523, 23.714664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441305, 0.050191, 0.895953,
		-0.682470, 0.629511, -0.371418,
		-0.582654, -0.775369, -0.243552,
		37.843788, 39.850914, 23.641600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570042, 40.609936, 23.978493>,  <38.251648, 40.393669, 23.812086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570042, 40.609936, 23.978493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.537426, 40.211906, 23.955959>,  <37.517857, 39.973087, 23.942440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.537426, 40.211906, 23.955959>,  <37.570042, 40.609936, 23.978493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537426, 40.211906, 23.955959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681795, 0.014466, 0.731400,
		-0.726985, 0.098048, -0.679617,
		-0.081543, -0.995076, -0.056332,
		37.512962, 39.913383, 23.939060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889400, 40.463581, 23.969263>,  <37.570042, 40.609936, 23.978493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889400, 40.463581, 23.969263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.078945, 40.143372, 24.116024>,  <37.192673, 39.951248, 24.204081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.078945, 40.143372, 24.116024>,  <36.889400, 40.463581, 23.969263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078945, 40.143372, 24.116024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613066, -0.000809, 0.790031,
		-0.632141, -0.599303, -0.491156,
		0.473865, -0.800522, 0.366901,
		37.221104, 39.903214, 24.226095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324966, 39.957027, 24.167507>,  <36.889400, 40.463581, 23.969263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324966, 39.957027, 24.167507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.651020, 39.883411, 24.387209>,  <36.846653, 39.839241, 24.519030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.651020, 39.883411, 24.387209>,  <36.324966, 39.957027, 24.167507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651020, 39.883411, 24.387209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574888, -0.140608, 0.806060,
		-0.071118, -0.972809, -0.220418,
		0.815136, -0.184041, 0.549256,
		36.895561, 39.828197, 24.551985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971851, 39.376228, 23.913651>,  <36.324966, 39.957027, 24.167507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971851, 39.376228, 23.913651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.638588, 39.215965, 23.761166>,  <35.438629, 39.119808, 23.669676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.638588, 39.215965, 23.761166>,  <35.971851, 39.376228, 23.913651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638588, 39.215965, 23.761166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302243, 0.247384, -0.920571,
		0.463139, -0.882199, -0.085014,
		-0.833157, -0.400658, -0.381211,
		35.388641, 39.095768, 23.646803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203098, 38.881042, 23.497240>,  <35.971851, 39.376228, 23.913651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203098, 38.881042, 23.497240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.843906, 38.987854, 23.357336>,  <35.628391, 39.051941, 23.273394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.843906, 38.987854, 23.357336>,  <36.203098, 38.881042, 23.497240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843906, 38.987854, 23.357336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438209, 0.470240, -0.766060,
		-0.040087, -0.841173, -0.539279,
		-0.897979, 0.267026, -0.349759,
		35.574512, 39.067963, 23.252409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150635, 38.550999, 22.801891>,  <36.203098, 38.881042, 23.497240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150635, 38.550999, 22.801891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.886456, 38.851185, 22.792048>,  <35.727947, 39.031296, 22.786142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.886456, 38.851185, 22.792048>,  <36.150635, 38.550999, 22.801891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886456, 38.851185, 22.792048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327849, 0.258732, -0.908610,
		-0.675513, -0.608162, -0.416919,
		-0.660452, 0.750464, -0.024608,
		35.688320, 39.076324, 22.784664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821541, 38.528522, 22.157669>,  <36.150635, 38.550999, 22.801891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821541, 38.528522, 22.157669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.733768, 38.900932, 22.274321>,  <35.681107, 39.124378, 22.344311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.733768, 38.900932, 22.274321>,  <35.821541, 38.528522, 22.157669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733768, 38.900932, 22.274321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025101, 0.304201, -0.952277,
		-0.975306, -0.201636, -0.090120,
		-0.219428, 0.931024, 0.291627,
		35.667938, 39.180241, 22.361809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225067, 38.754288, 21.910465>,  <35.821541, 38.528522, 22.157669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225067, 38.754288, 21.910465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.394272, 39.109852, 21.980782>,  <35.495796, 39.323189, 22.022972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.394272, 39.109852, 21.980782>,  <35.225067, 38.754288, 21.910465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394272, 39.109852, 21.980782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226761, 0.291678, -0.929249,
		-0.877292, 0.353220, 0.324953,
		0.423011, 0.888909, 0.175790,
		35.521175, 39.376526, 22.033518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702934, 39.297649, 21.722582>,  <35.225067, 38.754288, 21.910465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702934, 39.297649, 21.722582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.053448, 39.490250, 21.715832>,  <35.263756, 39.605808, 21.711782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.053448, 39.490250, 21.715832>,  <34.702934, 39.297649, 21.722582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053448, 39.490250, 21.715832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138228, 0.217703, -0.966177,
		-0.461539, 0.848979, 0.257326,
		0.876285, 0.481498, -0.016874,
		35.316334, 39.634701, 21.710770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567265, 39.868835, 21.331520>,  <34.702934, 39.297649, 21.722582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567265, 39.868835, 21.331520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.964989, 39.831135, 21.311699>,  <35.203625, 39.808514, 21.299807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.964989, 39.831135, 21.311699>,  <34.567265, 39.868835, 21.331520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964989, 39.831135, 21.311699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017126, 0.317732, -0.948026,
		0.105100, 0.943484, 0.314312,
		0.994314, -0.094255, -0.049551,
		35.263283, 39.802860, 21.296833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804756, 40.307915, 20.944216>,  <34.567265, 39.868835, 21.331520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804756, 40.307915, 20.944216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.132282, 40.078449, 20.935658>,  <35.328796, 39.940769, 20.930523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.132282, 40.078449, 20.935658>,  <34.804756, 40.307915, 20.944216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132282, 40.078449, 20.935658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161402, 0.265819, -0.950415,
		0.550907, 0.774757, 0.310246,
		0.818811, -0.573665, -0.021395,
		35.377926, 39.906349, 20.929239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373966, 40.721504, 20.672516>,  <34.804756, 40.307915, 20.944216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373966, 40.721504, 20.672516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.486656, 40.339935, 20.631208>,  <35.554268, 40.110992, 20.606424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.486656, 40.339935, 20.631208>,  <35.373966, 40.721504, 20.672516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486656, 40.339935, 20.631208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422538, 0.219973, -0.879246,
		0.861449, 0.204068, 0.465040,
		0.281723, -0.953922, -0.103269,
		35.571175, 40.053757, 20.600227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134209, 40.704941, 20.568665>,  <35.373966, 40.721504, 20.672516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134209, 40.704941, 20.568665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.015686, 40.351833, 20.422827>,  <35.944572, 40.139969, 20.335325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.015686, 40.351833, 20.422827>,  <36.134209, 40.704941, 20.568665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015686, 40.351833, 20.422827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346233, 0.256489, -0.902406,
		0.890125, -0.393626, 0.229642,
		-0.296310, -0.882764, -0.364593,
		35.926792, 40.087006, 20.313448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695297, 40.326855, 20.276855>,  <36.134209, 40.704941, 20.568665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695297, 40.326855, 20.276855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.357204, 40.224030, 20.089453>,  <36.154350, 40.162334, 19.977011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.357204, 40.224030, 20.089453>,  <36.695297, 40.326855, 20.276855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357204, 40.224030, 20.089453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344172, 0.408814, -0.845232,
		0.408814, -0.875664, -0.257067,
		0.845232, 0.257067, 0.468507,
		36.103634, 40.146908, 19.948900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924664, 40.022118, 19.687603>,  <36.695297, 40.326855, 20.276855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924664, 40.022118, 19.687603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.536964, 40.062534, 19.597847>,  <36.304344, 40.086784, 19.543993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.536964, 40.062534, 19.597847>,  <36.924664, 40.022118, 19.687603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536964, 40.062534, 19.597847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239662, 0.180510, -0.953928,
		-0.055879, -0.978370, -0.199174,
		-0.969247, 0.101039, -0.224392,
		36.246189, 40.092846, 19.530529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815113, 39.639420, 19.101593>,  <36.924664, 40.022118, 19.687603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815113, 39.639420, 19.101593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.534588, 39.922466, 19.136106>,  <36.366272, 40.092293, 19.156815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.534588, 39.922466, 19.136106>,  <36.815113, 39.639420, 19.101593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534588, 39.922466, 19.136106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219026, 0.329077, -0.918551,
		-0.678372, -0.625293, -0.385772,
		-0.701312, 0.707614, 0.086281,
		36.324196, 40.134750, 19.161991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086464, 39.015442, 19.473528>,  <36.815113, 39.639420, 19.101593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086464, 39.015442, 19.473528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.170662, 38.750500, 19.185923>,  <37.221180, 38.591534, 19.013359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.170662, 38.750500, 19.185923>,  <37.086464, 39.015442, 19.473528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170662, 38.750500, 19.185923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012381, -0.733627, 0.679439,
		-0.977516, -0.151922, -0.146226,
		0.210497, -0.662352, -0.719014,
		37.233810, 38.551796, 18.970219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519318, 38.551266, 19.468712>,  <37.086464, 39.015442, 19.473528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519318, 38.551266, 19.468712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.834541, 38.365437, 19.307148>,  <37.023674, 38.253941, 19.210209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.834541, 38.365437, 19.307148>,  <36.519318, 38.551266, 19.468712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834541, 38.365437, 19.307148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157610, -0.786514, 0.597122,
		-0.595086, -0.406905, -0.693038,
		0.788056, -0.464569, -0.403911,
		37.070957, 38.226067, 19.185974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309803, 37.836311, 19.401974>,  <36.519318, 38.551266, 19.468712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309803, 37.836311, 19.401974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.708622, 37.847267, 19.430679>,  <36.947914, 37.853840, 19.447903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.708622, 37.847267, 19.430679>,  <36.309803, 37.836311, 19.401974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708622, 37.847267, 19.430679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019823, -0.810868, 0.584894,
		0.074212, -0.584588, -0.807929,
		0.997045, 0.027391, 0.071764,
		37.007736, 37.855484, 19.452208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666126, 37.157787, 19.175404>,  <36.309803, 37.836311, 19.401974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666126, 37.157787, 19.175404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.947567, 37.333431, 19.398880>,  <37.116432, 37.438816, 19.532965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.947567, 37.333431, 19.398880>,  <36.666126, 37.157787, 19.175404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947567, 37.333431, 19.398880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057116, -0.818627, 0.571478,
		0.708299, -0.370181, -0.601065,
		0.703598, 0.439108, 0.558689,
		37.158646, 37.465164, 19.566486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082546, 36.674774, 19.340147>,  <36.666126, 37.157787, 19.175404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082546, 36.674774, 19.340147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.218513, 36.936211, 19.610636>,  <37.300095, 37.093071, 19.772928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.218513, 36.936211, 19.610636>,  <37.082546, 36.674774, 19.340147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218513, 36.936211, 19.610636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175410, -0.750481, 0.637189,
		0.923952, -0.097976, -0.369748,
		0.339918, 0.653590, 0.676222,
		37.320488, 37.132286, 19.813503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387962, 36.215286, 19.768927>,  <37.082546, 36.674774, 19.340147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387962, 36.215286, 19.768927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.387001, 36.535450, 20.008707>,  <37.386425, 36.727547, 20.152575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.387001, 36.535450, 20.008707>,  <37.387962, 36.215286, 19.768927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387001, 36.535450, 20.008707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107463, -0.596187, 0.795621,
		0.994206, -0.062509, 0.087445,
		-0.002400, 0.800408, 0.599450,
		37.386280, 36.775574, 20.188541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905830, 36.119148, 20.298630>,  <37.387962, 36.215286, 19.768927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905830, 36.119148, 20.298630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.630329, 36.372890, 20.439035>,  <37.465027, 36.525135, 20.523279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.630329, 36.372890, 20.439035>,  <37.905830, 36.119148, 20.298630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630329, 36.372890, 20.439035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085239, -0.551657, 0.829704,
		0.719965, 0.541544, 0.434029,
		-0.688756, 0.634354, 0.351013,
		37.423702, 36.563198, 20.544340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039013, 36.295620, 21.089993>,  <37.905830, 36.119148, 20.298630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039013, 36.295620, 21.089993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.649265, 36.384193, 21.074181>,  <37.415417, 36.437340, 21.064693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.649265, 36.384193, 21.074181>,  <38.039013, 36.295620, 21.089993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649265, 36.384193, 21.074181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163781, -0.577959, 0.799462,
		0.154183, 0.785449, 0.599414,
		-0.974373, 0.221436, -0.039530,
		37.356953, 36.450623, 21.062321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536407, 35.799618, 21.131037>,  <38.039013, 36.295620, 21.089993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536407, 35.799618, 21.131037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632641, 35.411671, 21.146370>,  <38.690380, 35.178902, 21.155569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.632641, 35.411671, 21.146370>,  <38.536407, 35.799618, 21.131037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632641, 35.411671, 21.146370> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245397, 0.022569, -0.969160,
		0.939095, 0.242571, 0.243434,
		0.240585, -0.969871, 0.038332,
		38.704815, 35.120708, 21.157869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259556, 35.703362, 20.951666>,  <38.536407, 35.799618, 21.131037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259556, 35.703362, 20.951666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.087894, 35.350826, 20.872597>,  <38.984898, 35.139305, 20.825155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.087894, 35.350826, 20.872597>,  <39.259556, 35.703362, 20.951666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087894, 35.350826, 20.872597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232947, 0.103447, -0.966972,
		0.872676, -0.461026, 0.160910,
		-0.429153, -0.881336, -0.197671,
		38.959148, 35.086426, 20.813295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786541, 35.224369, 20.747297>,  <39.259556, 35.703362, 20.951666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786541, 35.224369, 20.747297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.428177, 35.138321, 20.591827>,  <39.213158, 35.086693, 20.498545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.428177, 35.138321, 20.591827>,  <39.786541, 35.224369, 20.747297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428177, 35.138321, 20.591827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400734, -0.013755, -0.916091,
		0.191729, -0.976489, 0.098532,
		-0.895909, -0.215126, -0.388676,
		39.159405, 35.073784, 20.475225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020241, 34.918877, 20.212524>,  <39.786541, 35.224369, 20.747297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020241, 34.918877, 20.212524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.629810, 34.960041, 20.135914>,  <39.395554, 34.984737, 20.089947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.629810, 34.960041, 20.135914>,  <40.020241, 34.918877, 20.212524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629810, 34.960041, 20.135914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180222, -0.109821, -0.977476,
		-0.121637, -0.988608, 0.088645,
		-0.976076, 0.102921, -0.191527,
		39.336987, 34.990913, 20.078457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864922, 34.435501, 19.785917>,  <40.020241, 34.918877, 20.212524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864922, 34.435501, 19.785917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.605408, 34.730541, 19.711060>,  <39.449699, 34.907566, 19.666145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.605408, 34.730541, 19.711060>,  <39.864922, 34.435501, 19.785917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605408, 34.730541, 19.711060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257460, -0.018660, -0.966109,
		-0.716092, -0.674982, -0.177796,
		-0.648789, 0.737598, -0.187143,
		39.410770, 34.951820, 19.654917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545742, 34.172924, 19.173763>,  <39.864922, 34.435501, 19.785917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545742, 34.172924, 19.173763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.477005, 34.566185, 19.198677>,  <39.435764, 34.802143, 19.213625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.477005, 34.566185, 19.198677>,  <39.545742, 34.172924, 19.173763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477005, 34.566185, 19.198677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184048, 0.094153, -0.978397,
		-0.967779, -0.156666, -0.197127,
		-0.171842, 0.983153, 0.062285,
		39.425453, 34.861130, 19.217363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543064, 34.431850, 18.547550>,  <39.545742, 34.172924, 19.173763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543064, 34.431850, 18.547550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.557201, 34.791889, 18.721251>,  <39.565681, 35.007912, 18.825470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.557201, 34.791889, 18.721251>,  <39.543064, 34.431850, 18.547550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557201, 34.791889, 18.721251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250393, 0.412688, -0.875781,
		-0.967499, 0.139684, -0.210793,
		0.035341, 0.900098, 0.434251,
		39.567802, 35.061920, 18.851526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121635, 34.875576, 18.143696>,  <39.543064, 34.431850, 18.547550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121635, 34.875576, 18.143696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.390312, 35.090691, 18.347507>,  <39.551517, 35.219757, 18.469795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.390312, 35.090691, 18.347507>,  <39.121635, 34.875576, 18.143696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390312, 35.090691, 18.347507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332503, 0.395773, -0.856041,
		-0.662022, 0.744415, 0.087022,
		0.671690, 0.537783, 0.509531,
		39.591820, 35.252026, 18.500366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230591, 35.471024, 17.824068>,  <39.121635, 34.875576, 18.143696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230591, 35.471024, 17.824068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.540623, 35.497566, 18.075415>,  <39.726643, 35.513493, 18.226223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.540623, 35.497566, 18.075415>,  <39.230591, 35.471024, 17.824068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540623, 35.497566, 18.075415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484019, 0.576906, -0.657955,
		-0.406172, 0.814110, 0.415029,
		0.775081, 0.066361, 0.628368,
		39.773148, 35.517475, 18.263926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.264832, 32.953091, 33.728046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590992, 32.987217, 33.957073>,  <36.786690, 33.007690, 34.094490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590992, 32.987217, 33.957073>,  <36.264832, 32.953091, 33.728046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590992, 32.987217, 33.957073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545078, 0.219936, -0.809023,
		-0.194947, 0.971777, 0.132836,
		0.815405, 0.085311, 0.572570,
		36.835613, 33.012810, 34.128845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540585, 33.644844, 33.699474>,  <36.264832, 32.953091, 33.728046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540585, 33.644844, 33.699474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819645, 33.364719, 33.759918>,  <36.987083, 33.196644, 33.796185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.819645, 33.364719, 33.759918>,  <36.540585, 33.644844, 33.699474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819645, 33.364719, 33.759918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483583, 0.304690, -0.820555,
		0.528605, 0.645540, 0.551230,
		0.697656, -0.700316, 0.151111,
		37.028942, 33.154625, 33.805252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137459, 33.883114, 33.514301>,  <36.540585, 33.644844, 33.699474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137459, 33.883114, 33.514301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.227375, 33.495602, 33.472485>,  <37.281322, 33.263092, 33.447395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.227375, 33.495602, 33.472485>,  <37.137459, 33.883114, 33.514301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227375, 33.495602, 33.472485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301549, 0.171186, -0.937957,
		0.926573, 0.179317, 0.330617,
		0.224789, -0.968783, -0.104543,
		37.294811, 33.204967, 33.441120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667862, 33.891911, 33.075508>,  <37.137459, 33.883114, 33.514301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667862, 33.891911, 33.075508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587540, 33.500332, 33.060879>,  <37.539345, 33.265385, 33.052101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.587540, 33.500332, 33.060879>,  <37.667862, 33.891911, 33.075508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587540, 33.500332, 33.060879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190560, -0.002408, -0.981673,
		0.960919, -0.204094, 0.187032,
		-0.200804, -0.978948, -0.036578,
		37.527298, 33.206646, 33.049904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141197, 33.661064, 32.507679>,  <37.667862, 33.891911, 33.075508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141197, 33.661064, 32.507679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.874996, 33.365341, 32.548717>,  <37.715275, 33.187908, 32.573341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.874996, 33.365341, 32.548717>,  <38.141197, 33.661064, 32.507679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874996, 33.365341, 32.548717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049970, -0.181284, -0.982161,
		0.744722, -0.648503, 0.157588,
		-0.665502, -0.739311, 0.102600,
		37.675346, 33.143547, 32.579498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407982, 33.168781, 32.096691>,  <38.141197, 33.661064, 32.507679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407982, 33.168781, 32.096691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.017609, 33.091343, 32.136845>,  <37.783386, 33.044880, 32.160938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.017609, 33.091343, 32.136845>,  <38.407982, 33.168781, 32.096691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017609, 33.091343, 32.136845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051755, -0.241560, -0.969005,
		0.211848, -0.950878, 0.225726,
		-0.975931, -0.193599, 0.100387,
		37.724831, 33.033264, 32.166962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188457, 32.486523, 31.835419>,  <38.407982, 33.168781, 32.096691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188457, 32.486523, 31.835419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895126, 32.755447, 31.794952>,  <37.719128, 32.916801, 31.770672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.895126, 32.755447, 31.794952>,  <38.188457, 32.486523, 31.835419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895126, 32.755447, 31.794952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051882, -0.203706, -0.977656,
		-0.677897, -0.711690, 0.184263,
		-0.733324, 0.672310, -0.101168,
		37.675129, 32.957142, 31.764603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743973, 32.156445, 31.443445>,  <38.188457, 32.486523, 31.835419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743973, 32.156445, 31.443445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651291, 32.544907, 31.420952>,  <37.595680, 32.777985, 31.407455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.651291, 32.544907, 31.420952>,  <37.743973, 32.156445, 31.443445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651291, 32.544907, 31.420952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120858, -0.086097, -0.988929,
		-0.965249, -0.222346, 0.137321,
		-0.231707, 0.971159, -0.056233,
		37.581779, 32.836254, 31.404081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104309, 32.217216, 31.103146>,  <37.743973, 32.156445, 31.443445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104309, 32.217216, 31.103146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240658, 32.587337, 31.036663>,  <37.322468, 32.809410, 30.996773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.240658, 32.587337, 31.036663>,  <37.104309, 32.217216, 31.103146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240658, 32.587337, 31.036663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273827, -0.071405, -0.959125,
		-0.899345, 0.372455, 0.229032,
		0.340877, 0.925299, -0.166206,
		37.342922, 32.864925, 30.986801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668571, 32.498318, 30.583933>,  <37.104309, 32.217216, 31.103146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668571, 32.498318, 30.583933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997684, 32.725304, 30.571209>,  <37.195152, 32.861496, 30.563574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997684, 32.725304, 30.571209>,  <36.668571, 32.498318, 30.583933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997684, 32.725304, 30.571209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087530, 0.071214, -0.993613,
		-0.561571, 0.820315, 0.108264,
		0.822786, 0.567461, -0.031811,
		37.244518, 32.895542, 30.561666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466534, 33.094166, 30.148266>,  <36.668571, 32.498318, 30.583933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466534, 33.094166, 30.148266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866272, 33.094551, 30.133783>,  <37.106113, 33.094784, 30.125093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.866272, 33.094551, 30.133783>,  <36.466534, 33.094166, 30.148266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866272, 33.094551, 30.133783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036214, 0.011937, -0.999273,
		-0.000532, 0.999928, 0.011964,
		0.999344, 0.000965, -0.036205,
		37.166077, 33.094841, 30.122921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698772, 33.702885, 29.861568>,  <36.466534, 33.094166, 30.148266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698772, 33.702885, 29.861568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002743, 33.449947, 29.801376>,  <37.185127, 33.298183, 29.765261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002743, 33.449947, 29.801376>,  <36.698772, 33.702885, 29.861568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002743, 33.449947, 29.801376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006741, 0.223830, -0.974605,
		0.649971, 0.741645, 0.165833,
		0.759929, -0.632347, -0.150482,
		37.230721, 33.260242, 29.756231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537010, 34.351280, 29.709875>,  <36.698772, 33.702885, 29.861568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537010, 34.351280, 29.709875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153301, 34.400768, 29.608301>,  <35.923077, 34.430462, 29.547358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153301, 34.400768, 29.608301>,  <36.537010, 34.351280, 29.709875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153301, 34.400768, 29.608301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221439, 0.228734, 0.947969,
		0.175368, 0.965595, -0.192022,
		-0.959276, 0.123722, -0.253933,
		35.865517, 34.437885, 29.532122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234623, 35.041504, 30.093334>,  <36.537010, 34.351280, 29.709875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234623, 35.041504, 30.093334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897446, 34.851673, 29.991959>,  <35.695141, 34.737774, 29.931133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897446, 34.851673, 29.991959>,  <36.234623, 35.041504, 30.093334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897446, 34.851673, 29.991959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366528, 0.161721, 0.916244,
		-0.393839, 0.865232, -0.310265,
		-0.842940, -0.474574, -0.253440,
		35.644562, 34.709301, 29.915926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707985, 35.523121, 30.342392>,  <36.234623, 35.041504, 30.093334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707985, 35.523121, 30.342392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576641, 35.146744, 30.309402>,  <35.497837, 34.920918, 30.289608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576641, 35.146744, 30.309402>,  <35.707985, 35.523121, 30.342392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576641, 35.146744, 30.309402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465012, 0.085035, 0.881211,
		-0.822159, 0.327704, -0.465473,
		-0.328358, -0.940946, -0.082474,
		35.478134, 34.864460, 30.284660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024330, 35.542797, 30.512917>,  <35.707985, 35.523121, 30.342392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024330, 35.542797, 30.512917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140263, 35.166729, 30.584555>,  <35.209824, 34.941090, 30.627537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.140263, 35.166729, 30.584555>,  <35.024330, 35.542797, 30.512917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140263, 35.166729, 30.584555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531893, -0.002662, 0.846807,
		-0.795667, -0.340691, -0.500842,
		0.289833, -0.940171, 0.179093,
		35.227211, 34.884678, 30.638283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383396, 35.151173, 30.607164>,  <35.024330, 35.542797, 30.512917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383396, 35.151173, 30.607164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.674931, 34.954140, 30.797390>,  <34.849850, 34.835922, 30.911526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.674931, 34.954140, 30.797390>,  <34.383396, 35.151173, 30.607164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674931, 34.954140, 30.797390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453668, 0.172800, 0.874257,
		-0.512820, -0.852939, -0.097526,
		0.728836, -0.492581, 0.475566,
		34.893581, 34.806366, 30.940060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953987, 34.748783, 30.973688>,  <34.383396, 35.151173, 30.607164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953987, 34.748783, 30.973688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308521, 34.743412, 31.158825>,  <34.521244, 34.740189, 31.269907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308521, 34.743412, 31.158825>,  <33.953987, 34.748783, 30.973688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308521, 34.743412, 31.158825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462249, 0.032643, 0.886149,
		-0.027006, -0.999377, 0.022727,
		0.886339, -0.013426, 0.462842,
		34.574425, 34.739384, 31.297678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917252, 34.241245, 31.520821>,  <33.953987, 34.748783, 30.973688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917252, 34.241245, 31.520821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234669, 34.468220, 31.608732>,  <34.425121, 34.604404, 31.661478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234669, 34.468220, 31.608732>,  <33.917252, 34.241245, 31.520821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234669, 34.468220, 31.608732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315468, 0.074778, 0.945985,
		0.520350, -0.820016, 0.238347,
		0.793547, 0.567434, 0.219778,
		34.472733, 34.638451, 31.674665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248215, 33.878422, 32.057495>,  <33.917252, 34.241245, 31.520821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248215, 33.878422, 32.057495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320942, 34.271488, 32.071949>,  <34.364578, 34.507328, 32.080624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.320942, 34.271488, 32.071949>,  <34.248215, 33.878422, 32.057495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320942, 34.271488, 32.071949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450141, 0.050500, 0.891528,
		0.874252, -0.178360, 0.451521,
		0.181815, 0.982669, 0.036137,
		34.375488, 34.566288, 32.082790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406960, 34.020920, 32.735931>,  <34.248215, 33.878422, 32.057495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406960, 34.020920, 32.735931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311157, 34.384411, 32.599194>,  <34.253677, 34.602505, 32.517151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311157, 34.384411, 32.599194>,  <34.406960, 34.020920, 32.735931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311157, 34.384411, 32.599194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528513, 0.173329, 0.831042,
		0.814440, 0.379707, 0.438760,
		-0.239503, 0.908724, -0.341846,
		34.239307, 34.657028, 32.496639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283794, 34.339691, 33.341984>,  <34.406960, 34.020920, 32.735931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283794, 34.339691, 33.341984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137367, 34.600372, 33.076271>,  <34.049511, 34.756783, 32.916843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137367, 34.600372, 33.076271>,  <34.283794, 34.339691, 33.341984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137367, 34.600372, 33.076271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666987, 0.314035, 0.675655,
		0.648937, 0.690405, 0.319721,
		-0.366072, 0.651707, -0.664281,
		34.027546, 34.795883, 32.876987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304298, 34.933891, 33.722557>,  <34.283794, 34.339691, 33.341984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304298, 34.933891, 33.722557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025608, 34.966286, 33.437454>,  <33.858395, 34.985722, 33.266392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.025608, 34.966286, 33.437454>,  <34.304298, 34.933891, 33.722557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025608, 34.966286, 33.437454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692864, 0.181362, 0.697888,
		0.185783, 0.980076, -0.070250,
		-0.696724, 0.080982, -0.712753,
		33.816589, 34.990582, 33.223629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007648, 35.570938, 33.888008>,  <34.304298, 34.933891, 33.722557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007648, 35.570938, 33.888008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745800, 35.358303, 33.673016>,  <33.588692, 35.230721, 33.544018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745800, 35.358303, 33.673016>,  <34.007648, 35.570938, 33.888008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745800, 35.358303, 33.673016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734019, 0.276910, 0.620111,
		-0.180808, 0.800460, -0.571465,
		-0.654618, -0.531587, -0.537485,
		33.549416, 35.198826, 33.511768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461487, 35.985344, 33.836147>,  <34.007648, 35.570938, 33.888008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461487, 35.985344, 33.836147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281898, 35.642044, 33.736679>,  <33.174145, 35.436066, 33.676998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.281898, 35.642044, 33.736679>,  <33.461487, 35.985344, 33.836147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281898, 35.642044, 33.736679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681986, 0.149322, 0.715960,
		-0.577339, 0.491032, -0.652355,
		-0.448970, -0.858248, -0.248667,
		33.147209, 35.384571, 33.662079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774292, 36.122959, 33.817322>,  <33.461487, 35.985344, 33.836147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774292, 36.122959, 33.817322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797295, 35.727253, 33.871052>,  <32.811096, 35.489830, 33.903290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.797295, 35.727253, 33.871052>,  <32.774292, 36.122959, 33.817322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797295, 35.727253, 33.871052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641804, 0.066424, 0.763986,
		-0.764709, -0.130146, -0.631096,
		0.057510, -0.989267, 0.134324,
		32.814548, 35.430473, 33.911350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481159, 36.441410, 34.264854>,  <32.774292, 36.122959, 33.817322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481159, 36.441410, 34.264854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364021, 36.813789, 34.177597>,  <32.293739, 37.037216, 34.125244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.364021, 36.813789, 34.177597>,  <32.481159, 36.441410, 34.264854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364021, 36.813789, 34.177597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093502, -0.254933, -0.962427,
		-0.951578, -0.261443, 0.161701,
		-0.292843, 0.930944, -0.218143,
		32.276169, 37.093071, 34.112156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926464, 36.369625, 33.769321>,  <32.481159, 36.441410, 34.264854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926464, 36.369625, 33.769321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.126308, 36.713562, 33.727249>,  <32.246216, 36.919922, 33.702003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.126308, 36.713562, 33.727249>,  <31.926464, 36.369625, 33.769321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126308, 36.713562, 33.727249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073994, -0.163341, -0.983791,
		-0.863083, 0.483732, -0.145231,
		0.499613, 0.859839, -0.105184,
		32.276192, 36.971512, 33.695694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658533, 36.658165, 33.141064>,  <31.926464, 36.369625, 33.769321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658533, 36.658165, 33.141064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011692, 36.830528, 33.215698>,  <32.223587, 36.933945, 33.260479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.011692, 36.830528, 33.215698>,  <31.658533, 36.658165, 33.141064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011692, 36.830528, 33.215698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190866, 0.033726, -0.981036,
		-0.429025, 0.901767, -0.052468,
		0.882897, 0.430904, 0.186586,
		32.276562, 36.959801, 33.271675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727634, 37.347340, 32.701981>,  <31.658533, 36.658165, 33.141064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727634, 37.347340, 32.701981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101120, 37.231133, 32.785675>,  <32.325211, 37.161407, 32.835892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101120, 37.231133, 32.785675>,  <31.727634, 37.347340, 32.701981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101120, 37.231133, 32.785675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240999, 0.077837, -0.967399,
		0.264761, 0.953698, 0.142692,
		0.933714, -0.290518, 0.209232,
		32.381233, 37.143978, 32.848446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144646, 37.842018, 32.451111>,  <31.727634, 37.347340, 32.701981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144646, 37.842018, 32.451111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391289, 37.527176, 32.457546>,  <32.539276, 37.338268, 32.461407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391289, 37.527176, 32.457546>,  <32.144646, 37.842018, 32.451111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391289, 37.527176, 32.457546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340981, 0.248593, -0.906605,
		0.709597, 0.564503, 0.421673,
		0.616606, -0.787107, 0.016084,
		32.576271, 37.291042, 32.462372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849529, 38.092262, 32.359459>,  <32.144646, 37.842018, 32.451111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849529, 38.092262, 32.359459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844215, 37.705746, 32.256611>,  <32.841026, 37.473835, 32.194901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844215, 37.705746, 32.256611>,  <32.849529, 38.092262, 32.359459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844215, 37.705746, 32.256611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454935, 0.223150, -0.862113,
		0.890426, -0.128427, 0.436633,
		-0.013284, -0.966287, -0.257124,
		32.840229, 37.415859, 32.179474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537670, 38.006443, 32.057171>,  <32.849529, 38.092262, 32.359459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537670, 38.006443, 32.057171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342022, 37.677807, 31.940035>,  <33.224632, 37.480625, 31.869753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.342022, 37.677807, 31.940035>,  <33.537670, 38.006443, 32.057171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342022, 37.677807, 31.940035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386035, 0.097157, -0.917354,
		0.782140, -0.561739, 0.269642,
		-0.489116, -0.821590, -0.292841,
		33.195286, 37.431332, 31.852182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025692, 37.588058, 31.637953>,  <33.537670, 38.006443, 32.057171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025692, 37.588058, 31.637953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666199, 37.470673, 31.507624>,  <33.450504, 37.400242, 31.429426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666199, 37.470673, 31.507624>,  <34.025692, 37.588058, 31.637953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666199, 37.470673, 31.507624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347183, -0.022339, -0.937531,
		0.267853, -0.955709, 0.121963,
		-0.898732, -0.293464, -0.325822,
		33.396580, 37.382633, 31.409878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169788, 37.065067, 31.211479>,  <34.025692, 37.588058, 31.637953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169788, 37.065067, 31.211479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794678, 37.160267, 31.110336>,  <33.569611, 37.217384, 31.049650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794678, 37.160267, 31.110336>,  <34.169788, 37.065067, 31.211479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794678, 37.160267, 31.110336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249329, -0.045329, -0.967357,
		-0.241688, -0.970208, -0.016831,
		-0.937775, 0.237995, -0.252857,
		33.513344, 37.231667, 31.034479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029892, 36.623428, 30.651501>,  <34.169788, 37.065067, 31.211479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029892, 36.623428, 30.651501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727726, 36.882156, 30.609589>,  <33.546429, 37.037392, 30.584440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727726, 36.882156, 30.609589>,  <34.029892, 36.623428, 30.651501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727726, 36.882156, 30.609589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035626, -0.119131, -0.992239,
		-0.654280, -0.753284, 0.066950,
		-0.755413, 0.646816, -0.104781,
		33.501102, 37.076202, 30.578154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648632, 36.321102, 30.075621>,  <34.029892, 36.623428, 30.651501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648632, 36.321102, 30.075621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497978, 36.691631, 30.078997>,  <33.407585, 36.913948, 30.081022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497978, 36.691631, 30.078997>,  <33.648632, 36.321102, 30.075621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497978, 36.691631, 30.078997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093425, 0.047046, -0.994514,
		-0.921640, -0.373778, -0.104261,
		-0.376632, 0.926324, 0.008440,
		33.384987, 36.969528, 30.081528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998264, 36.411232, 29.504070>,  <33.648632, 36.321102, 30.075621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998264, 36.411232, 29.504070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157166, 36.773060, 29.565973>,  <33.252506, 36.990154, 29.603115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.157166, 36.773060, 29.565973>,  <32.998264, 36.411232, 29.504070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157166, 36.773060, 29.565973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032054, 0.154856, -0.987417,
		-0.917151, 0.397211, 0.032521,
		0.397249, 0.904568, 0.154759,
		33.276340, 37.044430, 29.612400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667870, 36.832497, 29.065023>,  <32.998264, 36.411232, 29.504070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667870, 36.832497, 29.065023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997829, 37.040592, 29.153473>,  <33.195805, 37.165451, 29.206543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997829, 37.040592, 29.153473>,  <32.667870, 36.832497, 29.065023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997829, 37.040592, 29.153473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169531, 0.145487, -0.974727,
		-0.539263, 0.841537, 0.031815,
		0.824897, 0.520240, 0.221122,
		33.245300, 37.196663, 29.219809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609699, 37.456520, 28.697966>,  <32.667870, 36.832497, 29.065023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609699, 37.456520, 28.697966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.992641, 37.402485, 28.800114>,  <33.222408, 37.370064, 28.861403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.992641, 37.402485, 28.800114>,  <32.609699, 37.456520, 28.697966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992641, 37.402485, 28.800114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269175, 0.096075, -0.958287,
		0.104916, 0.986165, 0.128340,
		0.957359, -0.135086, 0.255372,
		33.279850, 37.361958, 28.876724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890083, 38.006931, 28.505465>,  <32.609699, 37.456520, 28.697966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890083, 38.006931, 28.505465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178738, 37.730541, 28.488529>,  <33.351933, 37.564709, 28.478369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178738, 37.730541, 28.488529>,  <32.890083, 38.006931, 28.505465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178738, 37.730541, 28.488529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144304, 0.209959, -0.967002,
		0.677064, 0.691716, 0.251225,
		0.721638, -0.690975, -0.042338,
		33.395229, 37.523251, 28.475828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367905, 38.390411, 28.084492>,  <32.890083, 38.006931, 28.505465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367905, 38.390411, 28.084492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454365, 37.999943, 28.092146>,  <33.506241, 37.765663, 28.096739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454365, 37.999943, 28.092146>,  <33.367905, 38.390411, 28.084492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454365, 37.999943, 28.092146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210628, 0.027482, -0.977180,
		0.953369, 0.215253, 0.211550,
		0.216154, -0.976172, 0.019137,
		33.519211, 37.707092, 28.097887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002388, 38.298641, 27.781487>,  <33.367905, 38.390411, 28.084492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002388, 38.298641, 27.781487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817181, 37.944454, 27.765654>,  <33.706055, 37.731941, 27.756153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817181, 37.944454, 27.765654>,  <34.002388, 38.298641, 27.781487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817181, 37.944454, 27.765654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169308, -0.044521, -0.984557,
		0.870028, -0.462570, 0.170530,
		-0.463019, -0.885464, -0.039582,
		33.678276, 37.678814, 27.753778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494518, 37.881538, 27.535265>,  <34.002388, 38.298641, 27.781487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494518, 37.881538, 27.535265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139023, 37.716690, 27.454977>,  <33.925724, 37.617779, 27.406805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139023, 37.716690, 27.454977>,  <34.494518, 37.881538, 27.535265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139023, 37.716690, 27.454977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239467, -0.044031, -0.969905,
		0.390885, -0.910062, 0.137823,
		-0.888743, -0.412126, -0.200719,
		33.872398, 37.593052, 27.394762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763405, 37.398701, 27.120302>,  <34.494518, 37.881538, 27.535265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763405, 37.398701, 27.120302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374702, 37.453354, 27.043341>,  <34.141479, 37.486145, 26.997164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.374702, 37.453354, 27.043341>,  <34.763405, 37.398701, 27.120302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374702, 37.453354, 27.043341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162237, -0.205254, -0.965168,
		-0.171363, -0.969125, 0.177291,
		-0.971758, 0.136631, -0.192401,
		34.083176, 37.494343, 26.985620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706718, 36.948627, 26.649754>,  <34.763405, 37.398701, 27.120302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706718, 36.948627, 26.649754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391678, 37.191952, 26.610474>,  <34.202652, 37.337944, 26.586906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391678, 37.191952, 26.610474>,  <34.706718, 36.948627, 26.649754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391678, 37.191952, 26.610474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030531, -0.120646, -0.992226,
		-0.615427, -0.784478, 0.076449,
		-0.787603, 0.608308, -0.098200,
		34.155396, 37.374443, 26.581013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324039, 36.743130, 26.065323>,  <34.706718, 36.948627, 26.649754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324039, 36.743130, 26.065323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.207829, 37.123722, 26.105856>,  <34.138100, 37.352077, 26.130177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.207829, 37.123722, 26.105856>,  <34.324039, 36.743130, 26.065323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207829, 37.123722, 26.105856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089927, 0.132585, -0.987084,
		-0.952630, -0.277666, -0.124085,
		-0.290531, 0.951485, 0.101335,
		34.120670, 37.409168, 26.136257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926765, 36.937801, 25.431196>,  <34.324039, 36.743130, 26.065323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926765, 36.937801, 25.431196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985317, 37.304512, 25.579838>,  <34.020447, 37.524540, 25.669024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985317, 37.304512, 25.579838>,  <33.926765, 36.937801, 25.431196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985317, 37.304512, 25.579838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119821, 0.356454, -0.926598,
		-0.981945, 0.180160, -0.057673,
		0.146378, 0.916779, 0.371605,
		34.029232, 37.579544, 25.691319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706318, 37.348782, 24.893261>,  <33.926765, 36.937801, 25.431196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706318, 37.348782, 24.893261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909401, 37.606853, 25.121639>,  <34.031250, 37.761696, 25.258665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909401, 37.606853, 25.121639>,  <33.706318, 37.348782, 24.893261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909401, 37.606853, 25.121639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246710, 0.526078, -0.813865,
		-0.825449, 0.554064, 0.107923,
		0.507710, 0.645178, 0.570943,
		34.061714, 37.800407, 25.292923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427715, 38.096191, 24.784449>,  <33.706318, 37.348782, 24.893261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427715, 38.096191, 24.784449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794876, 38.123852, 24.940742>,  <34.015171, 38.140450, 25.034519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.794876, 38.123852, 24.940742>,  <33.427715, 38.096191, 24.784449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794876, 38.123852, 24.940742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242557, 0.681530, -0.690422,
		-0.314039, 0.728516, 0.608806,
		0.917903, 0.069149, 0.390734,
		34.070248, 38.144596, 25.057962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569641, 38.796524, 24.725863>,  <33.427715, 38.096191, 24.784449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569641, 38.796524, 24.725863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916378, 38.597313, 24.735281>,  <34.124420, 38.477787, 24.740932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916378, 38.597313, 24.735281>,  <33.569641, 38.796524, 24.725863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916378, 38.597313, 24.735281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265869, 0.421777, -0.866843,
		0.421777, 0.757678, 0.498024,
		0.866843, -0.498024, 0.023547,
		34.176430, 38.447906, 24.742346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053047, 39.336037, 24.722935>,  <33.569641, 38.796524, 24.725863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053047, 39.336037, 24.722935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257839, 39.010704, 24.612398>,  <34.380714, 38.815506, 24.546076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257839, 39.010704, 24.612398>,  <34.053047, 39.336037, 24.722935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257839, 39.010704, 24.612398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453838, 0.529254, -0.716883,
		0.729319, 0.241617, 0.640090,
		0.511982, -0.813333, -0.276340,
		34.411434, 38.766705, 24.529495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744514, 39.642281, 24.510088>,  <34.053047, 39.336037, 24.722935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744514, 39.642281, 24.510088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739162, 39.265694, 24.375357>,  <34.735950, 39.039742, 24.294518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739162, 39.265694, 24.375357>,  <34.744514, 39.642281, 24.510088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739162, 39.265694, 24.375357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598001, 0.262442, -0.757311,
		0.801384, -0.211559, 0.559488,
		-0.013384, -0.941471, -0.336829,
		34.735146, 38.983253, 24.274307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441330, 39.426548, 24.371065>,  <34.744514, 39.642281, 24.510088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441330, 39.426548, 24.371065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.206772, 39.193581, 24.145876>,  <35.066036, 39.053802, 24.010763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.206772, 39.193581, 24.145876>,  <35.441330, 39.426548, 24.371065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206772, 39.193581, 24.145876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561716, 0.208378, -0.800659,
		0.583626, -0.785730, 0.204961,
		-0.586392, -0.582415, -0.562972,
		35.030853, 39.018856, 23.976984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079544, 39.432903, 24.759159>,  <35.441330, 39.426548, 24.371065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079544, 39.432903, 24.759159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442066, 39.532097, 24.896044>,  <36.659580, 39.591614, 24.978174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442066, 39.532097, 24.896044>,  <36.079544, 39.432903, 24.759159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442066, 39.532097, 24.896044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301401, -0.188342, 0.934711,
		0.296243, -0.950280, -0.095955,
		0.906310, 0.247981, 0.342210,
		36.713959, 39.606491, 24.998707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360382, 38.834835, 25.103586>,  <36.079544, 39.432903, 24.759159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360382, 38.834835, 25.103586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.555714, 39.144341, 25.264994>,  <36.672913, 39.330044, 25.361839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.555714, 39.144341, 25.264994>,  <36.360382, 38.834835, 25.103586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555714, 39.144341, 25.264994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345603, -0.253117, 0.903599,
		0.801306, -0.580712, 0.143810,
		0.488330, 0.773761, 0.403520,
		36.702213, 39.376469, 25.386049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766800, 38.530357, 25.681547>,  <36.360382, 38.834835, 25.103586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766800, 38.530357, 25.681547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.721992, 38.921509, 25.752205>,  <36.695107, 39.156200, 25.794600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.721992, 38.921509, 25.752205>,  <36.766800, 38.530357, 25.681547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721992, 38.921509, 25.752205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214637, -0.197376, 0.956543,
		0.970249, 0.069240, 0.231999,
		-0.112022, 0.977880, 0.176643,
		36.688385, 39.214874, 25.805197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027615, 38.711861, 26.370728>,  <36.766800, 38.530357, 25.681547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027615, 38.711861, 26.370728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.807976, 39.036251, 26.289913>,  <36.676193, 39.230885, 26.241425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.807976, 39.036251, 26.289913>,  <37.027615, 38.711861, 26.370728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807976, 39.036251, 26.289913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310227, 0.026695, 0.950288,
		0.776050, 0.584476, 0.236927,
		-0.549096, 0.810972, -0.202037,
		36.643246, 39.279541, 26.229301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130299, 39.108639, 26.929873>,  <37.027615, 38.711861, 26.370728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130299, 39.108639, 26.929873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.800602, 39.241547, 26.746475>,  <36.602783, 39.321293, 26.636436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.800602, 39.241547, 26.746475>,  <37.130299, 39.108639, 26.929873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800602, 39.241547, 26.746475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439253, 0.135760, 0.888046,
		0.357319, 0.933361, 0.034052,
		-0.824245, 0.332273, -0.458492,
		36.553329, 39.341228, 26.608927>
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
