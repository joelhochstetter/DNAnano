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
	<24.017361, 34.415730, 34.896305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203556, 34.746021, 35.023735>,  <24.315273, 34.944195, 35.100193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.203556, 34.746021, 35.023735>,  <24.017361, 34.415730, 34.896305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.203556, 34.746021, 35.023735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825504, -0.534870, 0.180159,
		0.319158, 0.179122, -0.930620,
		0.465491, 0.825729, 0.318574,
		24.343203, 34.993740, 35.119308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.710337, 34.211514, 34.642071>,  <24.017361, 34.415730, 34.896305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.710337, 34.211514, 34.642071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733767, 34.507214, 34.910423>,  <24.747826, 34.684635, 35.071434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733767, 34.507214, 34.910423>,  <24.710337, 34.211514, 34.642071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733767, 34.507214, 34.910423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692798, -0.513955, 0.505846,
		0.718748, 0.435152, -0.542258,
		0.058577, 0.739251, 0.670877,
		24.751339, 34.728989, 35.111687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.410076, 34.402149, 34.796223>,  <24.710337, 34.211514, 34.642071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.410076, 34.402149, 34.796223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223066, 34.508690, 35.133381>,  <25.110861, 34.572613, 35.335678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223066, 34.508690, 35.133381>,  <25.410076, 34.402149, 34.796223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223066, 34.508690, 35.133381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795617, -0.288764, 0.532550,
		0.385244, 0.919604, -0.076909,
		-0.467526, 0.266351, 0.842897,
		25.082808, 34.588596, 35.386250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946735, 34.362755, 35.298717>,  <25.410076, 34.402149, 34.796223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946735, 34.362755, 35.298717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666622, 34.466480, 35.564758>,  <25.498554, 34.528717, 35.724384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666622, 34.466480, 35.564758>,  <25.946735, 34.362755, 35.298717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666622, 34.466480, 35.564758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490792, -0.501679, 0.712350,
		0.518390, 0.825273, 0.224047,
		-0.700282, 0.259314, 0.665102,
		25.456537, 34.544273, 35.764290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277126, 34.550110, 35.875942>,  <25.946735, 34.362755, 35.298717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277126, 34.550110, 35.875942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912907, 34.449230, 36.006969>,  <25.694376, 34.388702, 36.085587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.912907, 34.449230, 36.006969>,  <26.277126, 34.550110, 35.875942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.912907, 34.449230, 36.006969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402369, -0.358786, 0.842242,
		-0.094889, 0.898703, 0.428169,
		-0.910547, -0.252202, 0.327565,
		25.639742, 34.373569, 36.105240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909410, 34.822540, 36.443745>,  <26.277126, 34.550110, 35.875942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909410, 34.822540, 36.443745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845457, 34.427910, 36.457062>,  <25.807085, 34.191132, 36.465054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.845457, 34.427910, 36.457062>,  <25.909410, 34.822540, 36.443745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.845457, 34.427910, 36.457062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533588, -0.057996, 0.843754,
		-0.830495, 0.152667, 0.535697,
		-0.159882, -0.986575, 0.033296,
		25.797493, 34.131939, 36.467049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523191, 34.536293, 37.123188>,  <25.909410, 34.822540, 36.443745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523191, 34.536293, 37.123188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762609, 34.245495, 36.988594>,  <25.906260, 34.071014, 36.907837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762609, 34.245495, 36.988594>,  <25.523191, 34.536293, 37.123188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762609, 34.245495, 36.988594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224784, -0.250744, 0.941595,
		-0.768906, -0.639223, 0.013335,
		0.598545, -0.726995, -0.336485,
		25.942173, 34.027397, 36.887650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.301331, 33.880894, 37.356037>,  <25.523191, 34.536293, 37.123188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.301331, 33.880894, 37.356037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698256, 33.889759, 37.307331>,  <25.936411, 33.895081, 37.278107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698256, 33.889759, 37.307331>,  <25.301331, 33.880894, 37.356037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698256, 33.889759, 37.307331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123592, -0.229168, 0.965509,
		-0.006501, -0.973134, -0.230145,
		0.992312, 0.022168, -0.121761,
		25.995949, 33.896408, 37.270802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470980, 33.197819, 37.625786>,  <25.301331, 33.880894, 37.356037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470980, 33.197819, 37.625786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772676, 33.460453, 37.624638>,  <25.953695, 33.618034, 37.623951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772676, 33.460453, 37.624638>,  <25.470980, 33.197819, 37.625786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772676, 33.460453, 37.624638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071787, -0.078119, 0.994356,
		0.652661, -0.750191, -0.106055,
		0.754242, 0.656590, -0.002869,
		25.998949, 33.657429, 37.623775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002975, 32.818848, 37.910603>,  <25.470980, 33.197819, 37.625786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002975, 32.818848, 37.910603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101999, 33.205341, 37.939194>,  <26.161413, 33.437237, 37.956348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101999, 33.205341, 37.939194>,  <26.002975, 32.818848, 37.910603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101999, 33.205341, 37.939194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299960, -0.146586, 0.942622,
		0.921271, -0.211912, -0.326120,
		0.247557, 0.966233, 0.071480,
		26.176266, 33.495213, 37.960636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681965, 32.914249, 38.262794>,  <26.002975, 32.818848, 37.910603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681965, 32.914249, 38.262794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493711, 33.260189, 38.332699>,  <26.380760, 33.467754, 38.374641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493711, 33.260189, 38.332699>,  <26.681965, 32.914249, 38.262794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493711, 33.260189, 38.332699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155410, -0.113719, 0.981283,
		0.868534, 0.488984, -0.080886,
		-0.470633, 0.864848, 0.174762,
		26.352522, 33.519642, 38.385128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845814, 32.907001, 38.970398>,  <26.681965, 32.914249, 38.262794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845814, 32.907001, 38.970398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579409, 33.192970, 38.885254>,  <26.419565, 33.364552, 38.834167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579409, 33.192970, 38.885254>,  <26.845814, 32.907001, 38.970398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579409, 33.192970, 38.885254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171656, 0.130807, 0.976434,
		0.725922, 0.686855, 0.035602,
		-0.666012, 0.714926, -0.212858,
		26.379604, 33.407448, 38.821396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948479, 33.509827, 39.468658>,  <26.845814, 32.907001, 38.970398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948479, 33.509827, 39.468658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574623, 33.523842, 39.327110>,  <26.350309, 33.532249, 39.242180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.574623, 33.523842, 39.327110>,  <26.948479, 33.509827, 39.468658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574623, 33.523842, 39.327110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313444, 0.388818, 0.866356,
		0.167943, 0.920648, -0.352423,
		-0.934638, 0.035034, -0.353871,
		26.294231, 33.534351, 39.220947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616768, 34.224144, 39.490707>,  <26.948479, 33.509827, 39.468658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616768, 34.224144, 39.490707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349596, 33.926464, 39.492931>,  <26.189293, 33.747856, 39.494267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349596, 33.926464, 39.492931>,  <26.616768, 34.224144, 39.490707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349596, 33.926464, 39.492931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593013, 0.536722, 0.600221,
		-0.449670, 0.397608, -0.799815,
		-0.667931, -0.744202, 0.005561,
		26.149216, 33.703205, 39.494598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987570, 34.435291, 39.103981>,  <26.616768, 34.224144, 39.490707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987570, 34.435291, 39.103981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996475, 34.186829, 39.417328>,  <26.001818, 34.037750, 39.605335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996475, 34.186829, 39.417328>,  <25.987570, 34.435291, 39.103981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996475, 34.186829, 39.417328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477271, 0.681908, 0.554268,
		-0.878474, -0.386220, -0.281279,
		0.022263, -0.621156, 0.783371,
		26.003155, 34.000481, 39.652340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445049, 34.120399, 38.772007>,  <25.987570, 34.435291, 39.103981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445049, 34.120399, 38.772007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838120, 34.070496, 38.826824>,  <26.073961, 34.040554, 38.859715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838120, 34.070496, 38.826824>,  <25.445049, 34.120399, 38.772007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838120, 34.070496, 38.826824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163355, 0.233842, -0.958454,
		0.087531, 0.964237, 0.250171,
		0.982677, -0.124761, 0.137044,
		26.132923, 34.033066, 38.867939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921638, 34.786713, 38.461212>,  <25.445049, 34.120399, 38.772007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921638, 34.786713, 38.461212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078463, 34.419460, 38.438126>,  <26.172558, 34.199108, 38.424274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.078463, 34.419460, 38.438126>,  <25.921638, 34.786713, 38.461212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078463, 34.419460, 38.438126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102569, 0.105972, -0.989065,
		0.914203, 0.381854, 0.135719,
		0.392061, -0.918127, -0.057714,
		26.196081, 34.144024, 38.420811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525299, 34.829075, 38.014980>,  <25.921638, 34.786713, 38.461212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525299, 34.829075, 38.014980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423239, 34.442497, 38.003059>,  <26.362001, 34.210552, 37.995907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423239, 34.442497, 38.003059>,  <26.525299, 34.829075, 38.014980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423239, 34.442497, 38.003059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103179, 0.003427, -0.994657,
		0.961380, -0.256864, 0.098842,
		-0.255153, -0.966442, -0.029798,
		26.346693, 34.152565, 37.994122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981232, 34.498844, 37.581341>,  <26.525299, 34.829075, 38.014980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981232, 34.498844, 37.581341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690624, 34.226456, 37.618114>,  <26.516260, 34.063023, 37.640179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690624, 34.226456, 37.618114>,  <26.981232, 34.498844, 37.581341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690624, 34.226456, 37.618114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104035, -0.241252, -0.964870,
		0.679224, -0.691433, 0.246119,
		-0.726520, -0.680968, 0.091930,
		26.472668, 34.022163, 37.645695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300816, 33.993767, 37.153812>,  <26.981232, 34.498844, 37.581341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300816, 33.993767, 37.153812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905569, 33.943047, 37.188568>,  <26.668421, 33.912617, 37.209419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905569, 33.943047, 37.188568>,  <27.300816, 33.993767, 37.153812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905569, 33.943047, 37.188568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084132, -0.026926, -0.996091,
		0.128642, -0.991563, 0.015938,
		-0.988116, -0.126799, 0.086886,
		26.609135, 33.905006, 37.214634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972099, 33.366531, 36.798729>,  <27.300816, 33.993767, 37.153812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972099, 33.366531, 36.798729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673355, 33.630920, 36.827885>,  <26.494108, 33.789555, 36.845379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673355, 33.630920, 36.827885>,  <26.972099, 33.366531, 36.798729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673355, 33.630920, 36.827885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146712, -0.056867, -0.987543,
		-0.648595, -0.748251, 0.139444,
		-0.746860, 0.660974, 0.072894,
		26.449297, 33.829212, 36.849754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352245, 33.048389, 36.589554>,  <26.972099, 33.366531, 36.798729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352245, 33.048389, 36.589554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391462, 33.439392, 36.514862>,  <26.414991, 33.673992, 36.470047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391462, 33.439392, 36.514862>,  <26.352245, 33.048389, 36.589554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391462, 33.439392, 36.514862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171518, -0.168229, -0.970711,
		-0.980291, 0.127197, 0.151167,
		0.098040, 0.977507, -0.186730,
		26.420874, 33.732643, 36.458843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724014, 33.249275, 36.152576>,  <26.352245, 33.048389, 36.589554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724014, 33.249275, 36.152576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034069, 33.484138, 36.059273>,  <26.220102, 33.625057, 36.003292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034069, 33.484138, 36.059273>,  <25.724014, 33.249275, 36.152576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034069, 33.484138, 36.059273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188315, -0.137704, -0.972407,
		-0.603077, 0.797674, 0.003832,
		0.775136, 0.587158, -0.233260,
		26.266609, 33.660286, 35.989296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.951916, 33.570957, 36.307781>,  <25.724014, 33.249275, 36.152576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.951916, 33.570957, 36.307781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104839, 33.864410, 36.532505>,  <25.196594, 34.040482, 36.667339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104839, 33.864410, 36.532505>,  <24.951916, 33.570957, 36.307781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104839, 33.864410, 36.532505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311325, 0.674713, -0.669208,
		-0.870009, 0.080941, 0.486347,
		0.382311, 0.733629, 0.561807,
		25.219532, 34.084499, 36.701046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.419266, 34.119061, 36.432690>,  <24.951916, 33.570957, 36.307781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.419266, 34.119061, 36.432690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802120, 34.217609, 36.371773>,  <25.031832, 34.276737, 36.335220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.802120, 34.217609, 36.371773>,  <24.419266, 34.119061, 36.432690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802120, 34.217609, 36.371773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261188, 0.506886, -0.821491,
		-0.125195, 0.826055, 0.549508,
		0.957135, 0.246371, -0.152296,
		25.089260, 34.291519, 36.326084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430021, 34.772629, 36.512478>,  <24.419266, 34.119061, 36.432690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430021, 34.772629, 36.512478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737951, 34.696774, 36.268707>,  <24.922709, 34.651260, 36.122444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.737951, 34.696774, 36.268707>,  <24.430021, 34.772629, 36.512478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.737951, 34.696774, 36.268707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390822, 0.614840, -0.685004,
		0.504607, 0.765512, 0.399204,
		0.769825, -0.189640, -0.609431,
		24.968899, 34.639881, 36.085876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.571470, 35.369129, 36.293022>,  <24.430021, 34.772629, 36.512478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.571470, 35.369129, 36.293022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707569, 35.091282, 36.039490>,  <24.789228, 34.924572, 35.887371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707569, 35.091282, 36.039490>,  <24.571470, 35.369129, 36.293022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707569, 35.091282, 36.039490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430710, 0.484058, -0.761693,
		0.835896, 0.532159, -0.134481,
		0.340245, -0.694619, -0.633828,
		24.809643, 34.882896, 35.849342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.171753, 35.668736, 36.436443>,  <24.571470, 35.369129, 36.293022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.171753, 35.668736, 36.436443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096252, 35.302261, 36.295036>,  <25.050953, 35.082375, 36.210194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.096252, 35.302261, 36.295036>,  <25.171753, 35.668736, 36.436443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.096252, 35.302261, 36.295036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405489, -0.400574, 0.821656,
		-0.894400, 0.011742, 0.447113,
		-0.188749, -0.916189, -0.353513,
		25.039627, 35.027405, 36.188984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.146065, 35.875378, 35.784431>,  <25.171753, 35.668736, 36.436443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.146065, 35.875378, 35.784431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240417, 36.084190, 35.456566>,  <25.297029, 36.209476, 35.259846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240417, 36.084190, 35.456566>,  <25.146065, 35.875378, 35.784431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240417, 36.084190, 35.456566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155145, 0.812414, 0.562062,
		0.959317, -0.259746, 0.110643,
		0.235882, 0.522031, -0.819661,
		25.311182, 36.240799, 35.210667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740829, 36.214123, 35.881897>,  <25.146065, 35.875378, 35.784431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740829, 36.214123, 35.881897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503353, 36.405849, 35.623352>,  <25.360867, 36.520885, 35.468224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503353, 36.405849, 35.623352>,  <25.740829, 36.214123, 35.881897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503353, 36.405849, 35.623352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163439, 0.858328, 0.486375,
		0.787919, 0.183115, -0.587922,
		-0.593692, 0.479314, -0.646365,
		25.325245, 36.549644, 35.429443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061676, 36.842907, 35.827854>,  <25.740829, 36.214123, 35.881897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061676, 36.842907, 35.827854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707386, 36.911892, 35.655460>,  <25.494812, 36.953281, 35.552025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707386, 36.911892, 35.655460>,  <26.061676, 36.842907, 35.827854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707386, 36.911892, 35.655460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095905, 0.976379, 0.193611,
		0.454196, 0.130153, -0.881343,
		-0.885725, 0.172463, -0.430985,
		25.441669, 36.963631, 35.526165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228497, 37.271240, 35.227367>,  <26.061676, 36.842907, 35.827854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228497, 37.271240, 35.227367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863079, 37.308090, 35.385838>,  <25.643829, 37.330200, 35.480919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863079, 37.308090, 35.385838>,  <26.228497, 37.271240, 35.227367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863079, 37.308090, 35.385838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139239, 0.985996, 0.091785,
		-0.382170, 0.139012, -0.913576,
		-0.913542, 0.092128, 0.396174,
		25.589016, 37.335728, 35.504688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988249, 37.825562, 34.892677>,  <26.228497, 37.271240, 35.227367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988249, 37.825562, 34.892677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729994, 37.799469, 35.197018>,  <25.575041, 37.783813, 35.379623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729994, 37.799469, 35.197018>,  <25.988249, 37.825562, 34.892677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729994, 37.799469, 35.197018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024952, 0.997615, 0.064362,
		-0.763235, 0.022570, -0.645727,
		-0.645639, -0.065236, 0.760851,
		25.536303, 37.779900, 35.425274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481852, 38.475891, 34.827579>,  <25.988249, 37.825562, 34.892677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481852, 38.475891, 34.827579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483374, 38.369919, 35.213284>,  <25.484287, 38.306335, 35.444706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483374, 38.369919, 35.213284>,  <25.481852, 38.475891, 34.827579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483374, 38.369919, 35.213284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048733, 0.963072, 0.264797,
		-0.998805, -0.047999, -0.009244,
		0.003807, -0.264931, 0.964260,
		25.484516, 38.290440, 35.502560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767887, 38.663303, 35.217731>,  <25.481852, 38.475891, 34.827579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767887, 38.663303, 35.217731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092981, 38.660370, 35.450768>,  <25.288038, 38.658611, 35.590588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.092981, 38.660370, 35.450768>,  <24.767887, 38.663303, 35.217731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092981, 38.660370, 35.450768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170396, 0.953210, 0.249711,
		-0.557158, -0.302219, 0.773458,
		0.812736, -0.007334, 0.582586,
		25.336802, 38.658169, 35.625542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.350803, 38.452347, 35.790283>,  <24.767887, 38.663303, 35.217731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.350803, 38.452347, 35.790283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686735, 38.444218, 36.007271>,  <24.888294, 38.439339, 36.137463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686735, 38.444218, 36.007271>,  <24.350803, 38.452347, 35.790283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686735, 38.444218, 36.007271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124672, 0.965366, 0.229185,
		-0.528338, -0.260107, 0.808209,
		0.839831, -0.020326, 0.542468,
		24.938684, 38.438122, 36.170010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.342907, 38.743565, 36.468529>,  <24.350803, 38.452347, 35.790283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.342907, 38.743565, 36.468529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731750, 38.790726, 36.387436>,  <24.965057, 38.819023, 36.338779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.731750, 38.790726, 36.387436>,  <24.342907, 38.743565, 36.468529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.731750, 38.790726, 36.387436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037685, 0.931739, 0.361167,
		0.231479, -0.343454, 0.910196,
		0.972110, 0.117904, -0.202735,
		25.023384, 38.826096, 36.326614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538572, 39.141144, 37.013252>,  <24.342907, 38.743565, 36.468529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538572, 39.141144, 37.013252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838993, 39.160942, 36.749897>,  <25.019245, 39.172821, 36.591885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838993, 39.160942, 36.749897>,  <24.538572, 39.141144, 37.013252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838993, 39.160942, 36.749897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070379, 0.985502, 0.154380,
		0.656481, -0.162284, 0.736680,
		0.751052, 0.049500, -0.658384,
		25.064308, 39.175793, 36.552383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157236, 39.418808, 37.366009>,  <24.538572, 39.141144, 37.013252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157236, 39.418808, 37.366009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113052, 39.490665, 36.975006>,  <25.086542, 39.533779, 36.740402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.113052, 39.490665, 36.975006>,  <25.157236, 39.418808, 37.366009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.113052, 39.490665, 36.975006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280853, 0.949085, 0.142683,
		0.953373, -0.258776, -0.155288,
		-0.110458, 0.179644, -0.977511,
		25.079914, 39.544559, 36.681751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681400, 39.982014, 37.070026>,  <25.157236, 39.418808, 37.366009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681400, 39.982014, 37.070026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394453, 40.003597, 36.792187>,  <25.222284, 40.016548, 36.625481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394453, 40.003597, 36.792187>,  <25.681400, 39.982014, 37.070026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394453, 40.003597, 36.792187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252065, 0.949556, -0.186567,
		0.649498, -0.308922, -0.694780,
		-0.717367, 0.053955, -0.694603,
		25.179243, 40.019783, 36.583805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922407, 40.270164, 36.319038>,  <25.681400, 39.982014, 37.070026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922407, 40.270164, 36.319038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538885, 40.378342, 36.353802>,  <25.308771, 40.443249, 36.374660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.538885, 40.378342, 36.353802>,  <25.922407, 40.270164, 36.319038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.538885, 40.378342, 36.353802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242824, 0.939065, -0.243296,
		-0.147410, -0.212170, -0.966051,
		-0.958805, 0.270445, 0.086908,
		25.251244, 40.459476, 36.379875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592768, 40.544590, 35.730919>,  <25.922407, 40.270164, 36.319038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592768, 40.544590, 35.730919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382206, 40.688412, 36.039104>,  <25.255869, 40.774704, 36.224018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382206, 40.688412, 36.039104>,  <25.592768, 40.544590, 35.730919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382206, 40.688412, 36.039104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121908, 0.928737, -0.350124,
		-0.841448, -0.090382, -0.532725,
		-0.526406, 0.359554, 0.770466,
		25.224283, 40.796276, 36.270245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513439, 39.730236, 35.555859>,  <25.592768, 40.544590, 35.730919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513439, 39.730236, 35.555859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511999, 39.702335, 35.954884>,  <25.511135, 39.685596, 36.194298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.511999, 39.702335, 35.954884>,  <25.513439, 39.730236, 35.555859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511999, 39.702335, 35.954884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235761, -0.969503, -0.066936,
		0.971804, 0.234945, 0.019935,
		-0.003601, -0.069748, 0.997558,
		25.510918, 39.681412, 36.254150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071146, 39.304169, 35.729301>,  <25.513439, 39.730236, 35.555859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071146, 39.304169, 35.729301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763798, 39.260124, 35.981483>,  <25.579388, 39.233696, 36.132793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763798, 39.260124, 35.981483>,  <26.071146, 39.304169, 35.729301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763798, 39.260124, 35.981483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093192, -0.993839, -0.059998,
		0.633182, 0.012653, 0.773900,
		-0.768372, -0.110110, 0.630460,
		25.533285, 39.227093, 36.170620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314091, 38.831306, 36.289684>,  <26.071146, 39.304169, 35.729301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314091, 38.831306, 36.289684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915215, 38.839436, 36.260841>,  <25.675890, 38.844311, 36.243534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915215, 38.839436, 36.260841>,  <26.314091, 38.831306, 36.289684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915215, 38.839436, 36.260841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001026, -0.966131, -0.258049,
		-0.074912, -0.257250, 0.963437,
		-0.997190, 0.020320, -0.072111,
		25.616058, 38.845531, 36.239208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.014921, 38.339291, 36.734406>,  <26.314091, 38.831306, 36.289684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.014921, 38.339291, 36.734406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756653, 38.422005, 36.440372>,  <25.601692, 38.471634, 36.263950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756653, 38.422005, 36.440372>,  <26.014921, 38.339291, 36.734406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756653, 38.422005, 36.440372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110540, -0.977808, -0.177970,
		-0.755573, -0.033654, 0.654199,
		-0.645670, 0.206784, -0.735085,
		25.562952, 38.484039, 36.219849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488998, 37.834904, 36.715866>,  <26.014921, 38.339291, 36.734406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488998, 37.834904, 36.715866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470058, 37.978394, 36.342968>,  <25.458694, 38.064487, 36.119228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470058, 37.978394, 36.342968>,  <25.488998, 37.834904, 36.715866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470058, 37.978394, 36.342968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130582, -0.927504, -0.350264,
		-0.990306, 0.105149, 0.090761,
		-0.047352, 0.358721, -0.932243,
		25.455853, 38.086010, 36.063293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.879915, 37.504948, 36.504486>,  <25.488998, 37.834904, 36.715866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.879915, 37.504948, 36.504486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074739, 37.595592, 36.167103>,  <25.191635, 37.649979, 35.964672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074739, 37.595592, 36.167103>,  <24.879915, 37.504948, 36.504486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074739, 37.595592, 36.167103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249199, -0.889542, -0.382902,
		-0.837060, 0.396685, -0.376790,
		0.487063, 0.226616, -0.843454,
		25.220858, 37.663578, 35.914066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.367405, 37.457512, 35.951069>,  <24.879915, 37.504948, 36.504486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.367405, 37.457512, 35.951069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740551, 37.418297, 35.812420>,  <24.964439, 37.394768, 35.729229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740551, 37.418297, 35.812420>,  <24.367405, 37.457512, 35.951069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740551, 37.418297, 35.812420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264963, -0.838643, -0.475891,
		-0.244036, 0.535785, -0.808319,
		0.932867, -0.098041, -0.346622,
		25.020411, 37.388885, 35.708431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.286877, 37.306042, 35.218941>,  <24.367405, 37.457512, 35.951069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.286877, 37.306042, 35.218941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.648045, 37.172024, 35.326630>,  <24.864746, 37.091614, 35.391243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.648045, 37.172024, 35.326630>,  <24.286877, 37.306042, 35.218941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.648045, 37.172024, 35.326630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118392, -0.796019, -0.593580,
		0.413180, 0.504082, -0.758409,
		0.902921, -0.335045, 0.269220,
		24.918921, 37.071510, 35.407394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.598551, 37.215286, 34.568783>,  <24.286877, 37.306042, 35.218941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.598551, 37.215286, 34.568783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798199, 36.988480, 34.830887>,  <24.917988, 36.852394, 34.988152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798199, 36.988480, 34.830887>,  <24.598551, 37.215286, 34.568783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798199, 36.988480, 34.830887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056055, -0.775733, -0.628566,
		0.864719, 0.276998, -0.418967,
		0.499119, -0.567018, 0.655264,
		24.947935, 36.818375, 35.027466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084488, 36.836494, 34.168270>,  <24.598551, 37.215286, 34.568783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.084488, 36.836494, 34.168270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059401, 36.623100, 34.505665>,  <25.044348, 36.495064, 34.708099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059401, 36.623100, 34.505665>,  <25.084488, 36.836494, 34.168270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059401, 36.623100, 34.505665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092540, -0.844615, -0.527316,
		0.993732, 0.044984, 0.102342,
		-0.062719, -0.533482, 0.843483,
		25.040585, 36.463055, 34.758709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670790, 37.018368, 33.540878>,  <25.084488, 36.836494, 34.168270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670790, 37.018368, 33.540878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045948, 36.883316, 33.508972>,  <26.271042, 36.802284, 33.489826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045948, 36.883316, 33.508972>,  <25.670790, 37.018368, 33.540878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045948, 36.883316, 33.508972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178158, 0.271442, 0.945822,
		-0.297683, -0.901292, 0.314735,
		0.937894, -0.337628, -0.079768,
		26.327316, 36.782028, 33.485043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809099, 36.512337, 34.084423>,  <25.670790, 37.018368, 33.540878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809099, 36.512337, 34.084423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164125, 36.660217, 33.974480>,  <26.377142, 36.748943, 33.908512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164125, 36.660217, 33.974480>,  <25.809099, 36.512337, 34.084423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164125, 36.660217, 33.974480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184253, 0.261963, 0.947326,
		0.422229, -0.891459, 0.164391,
		0.887566, 0.369699, -0.274862,
		26.430395, 36.771126, 33.892021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131395, 36.458878, 34.708294>,  <25.809099, 36.512337, 34.084423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131395, 36.458878, 34.708294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319393, 36.729435, 34.481457>,  <26.432192, 36.891769, 34.345356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319393, 36.729435, 34.481457>,  <26.131395, 36.458878, 34.708294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319393, 36.729435, 34.481457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226465, 0.528560, 0.818131,
		0.853123, -0.512944, 0.095240,
		0.469995, 0.676397, -0.567091,
		26.460392, 36.932354, 34.311329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798500, 36.493073, 34.959492>,  <26.131395, 36.458878, 34.708294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798500, 36.493073, 34.959492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636206, 36.831242, 34.820564>,  <26.538830, 37.034145, 34.737206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636206, 36.831242, 34.820564>,  <26.798500, 36.493073, 34.959492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636206, 36.831242, 34.820564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158358, 0.439285, 0.884280,
		0.900167, 0.303784, -0.312114,
		-0.405737, 0.845426, -0.347323,
		26.514484, 37.084869, 34.716366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494202, 36.144184, 35.021561>,  <26.798500, 36.493073, 34.959492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494202, 36.144184, 35.021561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705544, 35.844666, 35.181637>,  <27.832348, 35.664955, 35.277683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705544, 35.844666, 35.181637>,  <27.494202, 36.144184, 35.021561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705544, 35.844666, 35.181637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848796, 0.476817, -0.228455,
		-0.019752, 0.460384, 0.887500,
		0.528352, -0.748794, 0.400190,
		27.864050, 35.620026, 35.301693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003222, 36.404606, 35.500668>,  <27.494202, 36.144184, 35.021561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003222, 36.404606, 35.500668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133453, 36.067509, 35.329189>,  <28.211592, 35.865250, 35.226303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133453, 36.067509, 35.329189>,  <28.003222, 36.404606, 35.500668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133453, 36.067509, 35.329189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795148, 0.489367, -0.358132,
		0.511602, -0.224274, 0.829436,
		0.325579, -0.842746, -0.428693,
		28.231127, 35.814686, 35.200581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776150, 36.212463, 35.627666>,  <28.003222, 36.404606, 35.500668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.776150, 36.212463, 35.627666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640667, 36.105259, 35.266903>,  <28.559378, 36.040936, 35.050446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640667, 36.105259, 35.266903>,  <28.776150, 36.212463, 35.627666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640667, 36.105259, 35.266903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814681, 0.396020, -0.423630,
		0.470715, -0.878257, 0.084213,
		-0.338706, -0.268016, -0.901912,
		28.539055, 36.024853, 34.996330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155447, 35.650967, 35.209553>,  <28.776150, 36.212463, 35.627666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155447, 35.650967, 35.209553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965059, 35.910538, 34.972118>,  <28.850826, 36.066280, 34.829659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965059, 35.910538, 34.972118>,  <29.155447, 35.650967, 35.209553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965059, 35.910538, 34.972118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824248, 0.093768, -0.558411,
		-0.306707, -0.755051, -0.579507,
		-0.475968, 0.648926, -0.593590,
		28.822269, 36.105217, 34.794041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042925, 35.357273, 34.535583>,  <29.155447, 35.650967, 35.209553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042925, 35.357273, 34.535583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082186, 35.755108, 34.549202>,  <29.105743, 35.993809, 34.557373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082186, 35.755108, 34.549202>,  <29.042925, 35.357273, 34.535583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082186, 35.755108, 34.549202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797665, -0.058173, -0.600288,
		-0.595059, 0.086076, -0.799059,
		0.098154, 0.994589, 0.034044,
		29.111631, 36.053486, 34.559414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327829, 35.401482, 33.967716>,  <29.042925, 35.357273, 34.535583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327829, 35.401482, 33.967716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444107, 35.706566, 34.198807>,  <29.513874, 35.889618, 34.337460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.444107, 35.706566, 34.198807>,  <29.327829, 35.401482, 33.967716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444107, 35.706566, 34.198807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938534, -0.109828, -0.327250,
		-0.186147, 0.637346, -0.747757,
		0.290696, 0.762711, 0.577726,
		29.531315, 35.935379, 34.372124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631405, 36.006741, 33.598248>,  <29.327829, 35.401482, 33.967716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631405, 36.006741, 33.598248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791878, 35.994038, 33.964428>,  <29.888163, 35.986416, 34.184135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791878, 35.994038, 33.964428>,  <29.631405, 36.006741, 33.598248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791878, 35.994038, 33.964428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915839, 0.032494, -0.400229,
		-0.017036, 0.998967, 0.042120,
		0.401184, -0.031757, 0.915447,
		29.912233, 35.984512, 34.239063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237885, 36.478477, 33.635220>,  <29.631405, 36.006741, 33.598248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237885, 36.478477, 33.635220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338295, 36.201054, 33.905319>,  <30.398542, 36.034599, 34.067379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338295, 36.201054, 33.905319>,  <30.237885, 36.478477, 33.635220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338295, 36.201054, 33.905319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920979, -0.043602, -0.387165,
		0.297965, 0.719078, 0.627809,
		0.251028, -0.693560, 0.675247,
		30.413603, 35.992985, 34.107895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813520, 36.706081, 34.007313>,  <30.237885, 36.478477, 33.635220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813520, 36.706081, 34.007313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801086, 36.307117, 33.981342>,  <30.793627, 36.067741, 33.965759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801086, 36.307117, 33.981342>,  <30.813520, 36.706081, 34.007313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801086, 36.307117, 33.981342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894753, 0.001183, -0.446560,
		0.445478, -0.071974, 0.892395,
		-0.031085, -0.997406, -0.064926,
		30.791761, 36.007896, 33.961864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398540, 36.456684, 34.337090>,  <30.813520, 36.706081, 34.007313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398540, 36.456684, 34.337090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267893, 36.189327, 34.069786>,  <31.189505, 36.028915, 33.909405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267893, 36.189327, 34.069786>,  <31.398540, 36.456684, 34.337090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267893, 36.189327, 34.069786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938025, -0.142543, -0.315898,
		0.115887, -0.730026, 0.673523,
		-0.326620, -0.668389, -0.668263,
		31.169907, 35.988811, 33.869308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650377, 35.690311, 34.307297>,  <31.398540, 36.456684, 34.337090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650377, 35.690311, 34.307297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548538, 35.729446, 33.922462>,  <31.487434, 35.752926, 33.691563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548538, 35.729446, 33.922462>,  <31.650377, 35.690311, 34.307297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548538, 35.729446, 33.922462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908032, -0.318040, -0.272633,
		-0.332655, -0.943016, -0.007865,
		-0.254596, 0.097834, -0.962086,
		31.472158, 35.758797, 33.633835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513788, 34.964710, 33.918873>,  <31.650377, 35.690311, 34.307297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513788, 34.964710, 33.918873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634068, 35.272823, 33.693932>,  <31.706236, 35.457691, 33.558968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634068, 35.272823, 33.693932>,  <31.513788, 34.964710, 33.918873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634068, 35.272823, 33.693932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624294, -0.604737, -0.494520,
		-0.720998, -0.202373, -0.662728,
		0.300698, 0.770285, -0.562354,
		31.724277, 35.503910, 33.525227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332355, 34.845539, 33.183399>,  <31.513788, 34.964710, 33.918873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332355, 34.845539, 33.183399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655611, 35.077045, 33.227108>,  <31.849564, 35.215950, 33.253334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655611, 35.077045, 33.227108>,  <31.332355, 34.845539, 33.183399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655611, 35.077045, 33.227108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517721, -0.609558, -0.600336,
		-0.280851, 0.541725, -0.792248,
		0.808139, 0.578768, 0.109268,
		31.898052, 35.250675, 33.259888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680775, 34.641594, 32.668610>,  <31.332355, 34.845539, 33.183399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680775, 34.641594, 32.668610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972044, 34.852093, 32.844261>,  <32.146805, 34.978390, 32.949654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972044, 34.852093, 32.844261>,  <31.680775, 34.641594, 32.668610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972044, 34.852093, 32.844261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670248, -0.412776, -0.616753,
		-0.143300, 0.743427, -0.653285,
		0.728171, 0.526243, 0.439130,
		32.190495, 35.009964, 32.976002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958790, 35.157593, 32.123405>,  <31.680775, 34.641594, 32.668610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958790, 35.157593, 32.123405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214993, 35.053688, 32.412479>,  <32.368713, 34.991344, 32.585922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214993, 35.053688, 32.412479>,  <31.958790, 35.157593, 32.123405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214993, 35.053688, 32.412479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680426, -0.244343, -0.690881,
		0.356050, 0.934248, 0.020248,
		0.640506, -0.259765, 0.722685,
		32.407143, 34.975758, 32.629284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601311, 35.284924, 31.861885>,  <31.958790, 35.157593, 32.123405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601311, 35.284924, 31.861885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723690, 35.066090, 32.173550>,  <32.797119, 34.934788, 32.360550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723690, 35.066090, 32.173550>,  <32.601311, 35.284924, 31.861885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723690, 35.066090, 32.173550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819396, -0.265393, -0.508091,
		0.484754, 0.793890, 0.367085,
		0.305947, -0.547087, 0.779161,
		32.815475, 34.901962, 32.407299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269379, 35.463020, 32.020107>,  <32.601311, 35.284924, 31.861885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269379, 35.463020, 32.020107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264172, 35.102627, 32.193569>,  <33.261047, 34.886391, 32.297646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264172, 35.102627, 32.193569>,  <33.269379, 35.463020, 32.020107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264172, 35.102627, 32.193569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749232, -0.295991, -0.592487,
		0.662180, 0.317196, 0.678900,
		-0.013014, -0.900986, 0.433652,
		33.260269, 34.832333, 32.323666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016941, 35.163788, 32.181538>,  <33.269379, 35.463020, 32.020107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016941, 35.163788, 32.181538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799835, 34.828045, 32.169647>,  <33.669571, 34.626598, 32.162514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799835, 34.828045, 32.169647>,  <34.016941, 35.163788, 32.181538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799835, 34.828045, 32.169647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718304, -0.445564, -0.534334,
		0.435252, -0.311371, 0.844751,
		-0.542767, -0.839358, -0.029726,
		33.637005, 34.576237, 32.160728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413208, 34.615452, 32.440392>,  <34.016941, 35.163788, 32.181538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413208, 34.615452, 32.440392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131275, 34.508583, 32.177536>,  <33.962116, 34.444462, 32.019825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131275, 34.508583, 32.177536>,  <34.413208, 34.615452, 32.440392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131275, 34.508583, 32.177536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708386, -0.216241, -0.671885,
		0.037413, -0.939072, 0.341678,
		-0.704833, -0.267177, -0.657135,
		33.919827, 34.428429, 31.980396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733822, 34.126846, 31.995827>,  <34.413208, 34.615452, 32.440392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733822, 34.126846, 31.995827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387642, 34.147728, 31.796518>,  <34.179935, 34.160255, 31.676933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.387642, 34.147728, 31.796518>,  <34.733822, 34.126846, 31.995827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387642, 34.147728, 31.796518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387047, -0.561830, -0.731123,
		-0.318108, -0.825604, 0.466032,
		-0.865449, 0.052200, -0.498270,
		34.128006, 34.163387, 31.647038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603359, 33.403522, 31.772032>,  <34.733822, 34.126846, 31.995827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603359, 33.403522, 31.772032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371841, 33.632526, 31.539747>,  <34.232929, 33.769928, 31.400377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371841, 33.632526, 31.539747>,  <34.603359, 33.403522, 31.772032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371841, 33.632526, 31.539747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334318, -0.482931, -0.809326,
		-0.743791, -0.662579, 0.088119,
		-0.578798, 0.572509, -0.580711,
		34.198200, 33.804279, 31.365534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334991, 32.990631, 31.298405>,  <34.603359, 33.403522, 31.772032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334991, 32.990631, 31.298405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282700, 33.347301, 31.125051>,  <34.251324, 33.561306, 31.021040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282700, 33.347301, 31.125051>,  <34.334991, 32.990631, 31.298405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282700, 33.347301, 31.125051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084832, -0.425469, -0.900988,
		-0.987781, -0.154553, -0.020021,
		-0.130732, 0.891678, -0.433381,
		34.243481, 33.614803, 30.995037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101543, 32.789227, 30.628246>,  <34.334991, 32.990631, 31.298405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101543, 32.789227, 30.628246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206142, 33.173222, 30.588156>,  <34.268902, 33.403618, 30.564102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206142, 33.173222, 30.588156>,  <34.101543, 32.789227, 30.628246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206142, 33.173222, 30.588156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215756, -0.159348, -0.963357,
		-0.940781, 0.230291, -0.248792,
		0.261496, 0.959987, -0.100225,
		34.284592, 33.461216, 30.558088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803234, 33.030323, 30.004284>,  <34.101543, 32.789227, 30.628246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803234, 33.030323, 30.004284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119843, 33.259457, 30.089466>,  <34.309807, 33.396938, 30.140575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119843, 33.259457, 30.089466>,  <33.803234, 33.030323, 30.004284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119843, 33.259457, 30.089466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422987, -0.261994, -0.867433,
		-0.441104, 0.776671, -0.449677,
		0.791523, 0.572836, 0.212955,
		34.357300, 33.431309, 30.153353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916462, 33.395691, 29.385935>,  <33.803234, 33.030323, 30.004284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916462, 33.395691, 29.385935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273552, 33.455666, 29.555906>,  <34.487804, 33.491650, 29.657888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273552, 33.455666, 29.555906>,  <33.916462, 33.395691, 29.385935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273552, 33.455666, 29.555906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437751, -0.064949, -0.896747,
		-0.106858, 0.986560, -0.123617,
		0.892724, 0.149938, 0.424927,
		34.541370, 33.500648, 29.683384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201599, 33.927055, 29.087189>,  <33.916462, 33.395691, 29.385935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201599, 33.927055, 29.087189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529781, 33.748775, 29.230412>,  <34.726692, 33.641808, 29.316345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529781, 33.748775, 29.230412>,  <34.201599, 33.927055, 29.087189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529781, 33.748775, 29.230412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324736, -0.152148, -0.933487,
		0.470533, 0.882158, 0.019904,
		0.820454, -0.445700, 0.358059,
		34.775917, 33.615067, 29.337830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677704, 34.288528, 28.731455>,  <34.201599, 33.927055, 29.087189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677704, 34.288528, 28.731455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821930, 33.946331, 28.880116>,  <34.908466, 33.741013, 28.969313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821930, 33.946331, 28.880116>,  <34.677704, 34.288528, 28.731455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821930, 33.946331, 28.880116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396866, -0.219878, -0.891152,
		0.844092, 0.468814, 0.260235,
		0.360565, -0.855492, 0.371654,
		34.930099, 33.689682, 28.991611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282055, 34.383511, 28.566442>,  <34.677704, 34.288528, 28.731455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282055, 34.383511, 28.566442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279392, 33.990963, 28.643255>,  <35.277794, 33.755436, 28.689342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279392, 33.990963, 28.643255>,  <35.282055, 34.383511, 28.566442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279392, 33.990963, 28.643255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453476, -0.174118, -0.874095,
		0.891244, 0.081266, 0.446184,
		-0.006655, -0.981366, 0.192034,
		35.277397, 33.696552, 28.700865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047955, 34.066147, 28.518270>,  <35.282055, 34.383511, 28.566442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047955, 34.066147, 28.518270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777592, 33.776226, 28.464901>,  <35.615372, 33.602272, 28.432880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777592, 33.776226, 28.464901>,  <36.047955, 34.066147, 28.518270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777592, 33.776226, 28.464901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513368, -0.333154, -0.790862,
		0.528772, -0.603046, 0.597274,
		-0.675910, -0.724806, -0.133422,
		35.574818, 33.558784, 28.424875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461082, 33.527515, 28.404518>,  <36.047955, 34.066147, 28.518270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461082, 33.527515, 28.404518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108952, 33.431755, 28.240705>,  <35.897675, 33.374298, 28.142418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108952, 33.431755, 28.240705>,  <36.461082, 33.527515, 28.404518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108952, 33.431755, 28.240705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470258, -0.326984, -0.819719,
		0.062331, -0.914204, 0.400432,
		-0.880325, -0.239400, -0.409531,
		35.844852, 33.359936, 28.117846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492828, 32.847839, 28.159716>,  <36.461082, 33.527515, 28.404518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492828, 32.847839, 28.159716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201687, 33.029358, 27.954079>,  <36.027000, 33.138271, 27.830696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201687, 33.029358, 27.954079>,  <36.492828, 32.847839, 28.159716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201687, 33.029358, 27.954079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364584, -0.378865, -0.850612,
		-0.580780, -0.806553, 0.110310,
		-0.727856, 0.453801, -0.514093,
		35.983330, 33.165497, 27.799850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161797, 32.318363, 27.870152>,  <36.492828, 32.847839, 28.159716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161797, 32.318363, 27.870152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041695, 32.619465, 27.635815>,  <35.969635, 32.800125, 27.495213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041695, 32.619465, 27.635815>,  <36.161797, 32.318363, 27.870152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041695, 32.619465, 27.635815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149308, -0.569521, -0.808302,
		-0.942102, -0.330164, 0.058607,
		-0.300250, 0.752753, -0.585843,
		35.951618, 32.845291, 27.460062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777775, 32.103199, 27.228655>,  <36.161797, 32.318363, 27.870152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777775, 32.103199, 27.228655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890713, 32.461193, 27.090508>,  <35.958477, 32.675991, 27.007620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890713, 32.461193, 27.090508>,  <35.777775, 32.103199, 27.228655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890713, 32.461193, 27.090508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122568, -0.390721, -0.912313,
		-0.951450, 0.215258, -0.220016,
		0.282348, 0.894987, -0.345367,
		35.975418, 32.729691, 26.986897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444489, 32.094601, 26.586378>,  <35.777775, 32.103199, 27.228655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444489, 32.094601, 26.586378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734085, 32.370312, 26.575512>,  <35.907841, 32.535740, 26.568993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734085, 32.370312, 26.575512>,  <35.444489, 32.094601, 26.586378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734085, 32.370312, 26.575512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112891, -0.157245, -0.981086,
		-0.680512, 0.707228, -0.191657,
		0.723988, 0.689277, -0.027167,
		35.951283, 32.577095, 26.567362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378502, 32.466686, 25.919443>,  <35.444489, 32.094601, 26.586378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378502, 32.466686, 25.919443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757572, 32.527786, 26.031565>,  <35.985016, 32.564445, 26.098837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757572, 32.527786, 26.031565>,  <35.378502, 32.466686, 25.919443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757572, 32.527786, 26.031565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312710, -0.267772, -0.911324,
		-0.064149, 0.951297, -0.301529,
		0.947680, 0.152751, 0.280302,
		36.041878, 32.573612, 26.115656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740101, 32.827904, 25.370459>,  <35.378502, 32.466686, 25.919443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740101, 32.827904, 25.370459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064281, 32.709118, 25.572439>,  <36.258789, 32.637848, 25.693628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064281, 32.709118, 25.572439>,  <35.740101, 32.827904, 25.370459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064281, 32.709118, 25.572439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439074, -0.262672, -0.859196,
		0.387789, 0.918049, -0.082494,
		0.810453, -0.296966, 0.504953,
		36.307419, 32.620029, 25.723925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252010, 33.071144, 25.030657>,  <35.740101, 32.827904, 25.370459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252010, 33.071144, 25.030657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421185, 32.768154, 25.229593>,  <36.522690, 32.586361, 25.348955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421185, 32.768154, 25.229593>,  <36.252010, 33.071144, 25.030657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421185, 32.768154, 25.229593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503401, -0.259958, -0.824020,
		0.753465, 0.598873, 0.271368,
		0.422940, -0.757478, 0.497343,
		36.548065, 32.540913, 25.378796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950626, 33.063988, 24.801962>,  <36.252010, 33.071144, 25.030657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950626, 33.063988, 24.801962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910618, 32.696762, 24.955406>,  <36.886612, 32.476429, 25.047474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.910618, 32.696762, 24.955406>,  <36.950626, 33.063988, 24.801962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910618, 32.696762, 24.955406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462294, -0.384285, -0.799130,
		0.881067, 0.097409, 0.462853,
		-0.100025, -0.918061, 0.383613,
		36.880611, 32.421345, 25.070490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655312, 32.722584, 24.874140>,  <36.950626, 33.063988, 24.801962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655312, 32.722584, 24.874140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378212, 32.434177, 24.880169>,  <37.211952, 32.261131, 24.883787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.378212, 32.434177, 24.880169>,  <37.655312, 32.722584, 24.874140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378212, 32.434177, 24.880169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463420, -0.461072, -0.756739,
		0.552573, -0.517247, 0.653543,
		-0.692752, -0.721019, 0.015073,
		37.170387, 32.217873, 24.884691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061031, 32.124550, 24.679533>,  <37.655312, 32.722584, 24.874140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061031, 32.124550, 24.679533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682194, 32.006077, 24.630087>,  <37.454891, 31.934992, 24.600420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682194, 32.006077, 24.630087>,  <38.061031, 32.124550, 24.679533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682194, 32.006077, 24.630087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274883, -0.549771, -0.788791,
		0.165670, -0.781041, 0.602103,
		-0.947097, -0.296187, -0.123614,
		37.398064, 31.917221, 24.593002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102261, 31.367292, 24.644831>,  <38.061031, 32.124550, 24.679533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102261, 31.367292, 24.644831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767338, 31.478786, 24.456690>,  <37.566383, 31.545683, 24.343805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767338, 31.478786, 24.456690>,  <38.102261, 31.367292, 24.644831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767338, 31.478786, 24.456690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262751, -0.549282, -0.793254,
		-0.479464, -0.787779, 0.386677,
		-0.837303, 0.278737, -0.470351,
		37.516148, 31.562407, 24.315584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961975, 30.843298, 24.202105>,  <38.102261, 31.367292, 24.644831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961975, 30.843298, 24.202105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708668, 31.111460, 24.047424>,  <37.556683, 31.272356, 23.954617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708668, 31.111460, 24.047424>,  <37.961975, 30.843298, 24.202105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708668, 31.111460, 24.047424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086233, -0.435421, -0.896087,
		-0.769116, -0.600807, 0.217926,
		-0.633265, 0.670403, -0.386699,
		37.518688, 31.312580, 23.931416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459507, 30.520378, 23.778578>,  <37.961975, 30.843298, 24.202105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459507, 30.520378, 23.778578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468185, 30.894808, 23.638123>,  <37.473392, 31.119465, 23.553850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468185, 30.894808, 23.638123>,  <37.459507, 30.520378, 23.778578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468185, 30.894808, 23.638123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261052, -0.344341, -0.901821,
		-0.965081, -0.072097, -0.251836,
		0.021699, 0.936072, -0.351138,
		37.474693, 31.175629, 23.532782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326511, 30.409622, 23.090580>,  <37.459507, 30.520378, 23.778578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326511, 30.409622, 23.090580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439144, 30.793415, 23.094751>,  <37.506721, 31.023691, 23.097254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439144, 30.793415, 23.094751>,  <37.326511, 30.409622, 23.090580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439144, 30.793415, 23.094751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470089, -0.128467, -0.873220,
		-0.836499, 0.250781, -0.487215,
		0.281578, 0.959482, 0.010427,
		37.523617, 31.081259, 23.097879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185581, 30.801615, 22.396927>,  <37.326511, 30.409622, 23.090580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185581, 30.801615, 22.396927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459198, 31.014584, 22.596373>,  <37.623367, 31.142365, 22.716040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459198, 31.014584, 22.596373>,  <37.185581, 30.801615, 22.396927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459198, 31.014584, 22.596373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504476, 0.148430, -0.850572,
		-0.526873, 0.833364, -0.167062,
		0.684039, 0.532422, 0.498616,
		37.664410, 31.174311, 22.745958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309338, 31.399570, 22.008978>,  <37.185581, 30.801615, 22.396927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309338, 31.399570, 22.008978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629292, 31.352535, 22.244387>,  <37.821262, 31.324314, 22.385632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629292, 31.352535, 22.244387>,  <37.309338, 31.399570, 22.008978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629292, 31.352535, 22.244387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599460, 0.203669, -0.774058,
		-0.028842, 0.971952, 0.233402,
		0.799885, -0.117590, 0.588521,
		37.869259, 31.317259, 22.420942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749462, 31.847832, 21.681364>,  <37.309338, 31.399570, 22.008978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749462, 31.847832, 21.681364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008820, 31.625437, 21.889391>,  <38.164433, 31.492001, 22.014208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008820, 31.625437, 21.889391>,  <37.749462, 31.847832, 21.681364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008820, 31.625437, 21.889391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657815, 0.065269, -0.750346,
		0.383237, 0.828625, 0.408055,
		0.648390, -0.555986, 0.520068,
		38.203335, 31.458641, 22.045412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416676, 32.292240, 21.757782>,  <37.749462, 31.847832, 21.681364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416676, 32.292240, 21.757782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470322, 31.897099, 21.789185>,  <38.502510, 31.660015, 21.808025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470322, 31.897099, 21.789185>,  <38.416676, 32.292240, 21.757782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470322, 31.897099, 21.789185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705855, 0.039623, -0.707247,
		0.695544, 0.150265, 0.702594,
		0.134113, -0.987851, 0.078506,
		38.510555, 31.600742, 21.812737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180485, 32.228001, 21.891068>,  <38.416676, 32.292240, 21.757782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180485, 32.228001, 21.891068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083115, 31.867109, 21.748667>,  <39.024693, 31.650576, 21.663227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083115, 31.867109, 21.748667>,  <39.180485, 32.228001, 21.891068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083115, 31.867109, 21.748667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751872, 0.056341, -0.656897,
		0.612726, -0.427572, 0.664643,
		-0.243424, -0.902224, -0.356001,
		39.010086, 31.596441, 21.641867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765511, 31.988110, 21.773027>,  <39.180485, 32.228001, 21.891068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765511, 31.988110, 21.773027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506561, 31.776024, 21.554016>,  <39.351192, 31.648773, 21.422609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506561, 31.776024, 21.554016>,  <39.765511, 31.988110, 21.773027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506561, 31.776024, 21.554016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690646, -0.104241, -0.715641,
		0.322367, -0.841433, 0.433672,
		-0.647370, -0.530212, -0.547528,
		39.312351, 31.616961, 21.389757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054325, 31.375519, 21.578203>,  <39.765511, 31.988110, 21.773027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054325, 31.375519, 21.578203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766556, 31.453196, 21.311451>,  <39.593895, 31.499802, 21.151400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766556, 31.453196, 21.311451>,  <40.054325, 31.375519, 21.578203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766556, 31.453196, 21.311451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666599, -0.076721, -0.741458,
		-0.195148, -0.977959, -0.074253,
		-0.719419, 0.194191, -0.666879,
		39.550732, 31.511452, 21.111387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236282, 30.998795, 21.002483>,  <40.054325, 31.375519, 21.578203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236282, 30.998795, 21.002483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969604, 31.260874, 20.860363>,  <39.809597, 31.418121, 20.775091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969604, 31.260874, 20.860363>,  <40.236282, 30.998795, 21.002483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969604, 31.260874, 20.860363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505479, 0.047145, -0.861550,
		-0.547734, -0.753985, -0.362620,
		-0.666692, 0.655197, -0.355301,
		39.769596, 31.457434, 20.753773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307503, 30.990784, 20.312548>,  <40.236282, 30.998795, 21.002483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307503, 30.990784, 20.312548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094120, 31.328680, 20.295391>,  <39.966091, 31.531418, 20.285097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094120, 31.328680, 20.295391>,  <40.307503, 30.990784, 20.312548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094120, 31.328680, 20.295391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420551, 0.220896, -0.879967,
		-0.733868, -0.487462, -0.473094,
		-0.533455, 0.844740, -0.042894,
		39.934082, 31.582102, 20.282522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014809, 31.031996, 19.634914>,  <40.307503, 30.990784, 20.312548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014809, 31.031996, 19.634914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033440, 31.406273, 19.774807>,  <40.044621, 31.630838, 19.858744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033440, 31.406273, 19.774807>,  <40.014809, 31.031996, 19.634914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033440, 31.406273, 19.774807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195700, 0.334781, -0.921750,
		-0.979557, 0.111378, -0.167521,
		0.046580, 0.935690, 0.349734,
		40.047413, 31.686979, 19.879726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596806, 31.495373, 19.192255>,  <40.014809, 31.031996, 19.634914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596806, 31.495373, 19.192255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928177, 31.623550, 19.376003>,  <40.126999, 31.700457, 19.486252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928177, 31.623550, 19.376003>,  <39.596806, 31.495373, 19.192255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928177, 31.623550, 19.376003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396921, 0.242784, -0.885161,
		-0.395175, 0.915626, 0.073937,
		0.828427, 0.320446, 0.459373,
		40.176704, 31.719685, 19.513815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661457, 32.200722, 19.061880>,  <39.596806, 31.495373, 19.192255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661457, 32.200722, 19.061880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003323, 32.003170, 19.125927>,  <40.208443, 31.884638, 19.164356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003323, 32.003170, 19.125927>,  <39.661457, 32.200722, 19.061880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003323, 32.003170, 19.125927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249022, 0.119334, -0.961118,
		0.455570, 0.861302, 0.224977,
		0.854660, -0.493881, 0.160118,
		40.259720, 31.855005, 19.173962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269951, 32.555668, 18.896378>,  <39.661457, 32.200722, 19.061880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269951, 32.555668, 18.896378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335743, 32.171429, 18.806755>,  <40.375217, 31.940886, 18.752981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335743, 32.171429, 18.806755>,  <40.269951, 32.555668, 18.896378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335743, 32.171429, 18.806755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186402, 0.253327, -0.949252,
		0.968607, 0.114373, 0.220725,
		0.164484, -0.960596, -0.224055,
		40.385090, 31.883249, 18.739538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984497, 32.105297, 18.319061>,  <40.269951, 32.555668, 18.896378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984497, 32.105297, 18.319061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668194, 31.948923, 18.130648>,  <39.478413, 31.855099, 18.017599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668194, 31.948923, 18.130648>,  <39.984497, 32.105297, 18.319061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668194, 31.948923, 18.130648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079593, 0.697298, -0.712349,
		0.606933, -0.600786, -0.520277,
		-0.790758, -0.390937, -0.471031,
		39.430965, 31.831642, 17.989338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864090, 32.788906, 18.098475>,  <39.984497, 32.105297, 18.319061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864090, 32.788906, 18.098475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801247, 33.179684, 18.156311>,  <39.763542, 33.414150, 18.191013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801247, 33.179684, 18.156311>,  <39.864090, 32.788906, 18.098475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801247, 33.179684, 18.156311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977677, 0.174539, -0.116983,
		-0.139522, 0.122986, -0.982552,
		-0.157106, 0.976939, 0.144593,
		39.754116, 33.472767, 18.199688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131828, 33.216038, 17.468229>,  <39.864090, 32.788906, 18.098475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131828, 33.216038, 17.468229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143967, 33.386978, 17.829660>,  <40.151249, 33.489544, 18.046518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143967, 33.386978, 17.829660>,  <40.131828, 33.216038, 17.468229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143967, 33.386978, 17.829660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910366, 0.361423, -0.201514,
		-0.412690, 0.828701, -0.378076,
		0.030350, 0.427350, 0.903577,
		40.153072, 33.515182, 18.100733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479008, 33.830036, 17.317539>,  <40.131828, 33.216038, 17.468229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479008, 33.830036, 17.317539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488342, 33.664421, 17.681524>,  <40.493942, 33.565052, 17.899916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488342, 33.664421, 17.681524>,  <40.479008, 33.830036, 17.317539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488342, 33.664421, 17.681524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999426, 0.032020, -0.011064,
		-0.024556, 0.909698, 0.414543,
		0.023339, -0.414033, 0.909963,
		40.495342, 33.540211, 17.954514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832214, 34.227386, 17.903627>,  <40.479008, 33.830036, 17.317539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832214, 34.227386, 17.903627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865650, 33.831120, 17.946676>,  <40.885712, 33.593357, 17.972506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865650, 33.831120, 17.946676>,  <40.832214, 34.227386, 17.903627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865650, 33.831120, 17.946676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976896, 0.102780, 0.187380,
		-0.196694, 0.089473, 0.976374,
		0.083586, -0.990672, 0.107622,
		40.890724, 33.533916, 17.978962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122078, 34.058514, 18.499338>,  <40.832214, 34.227386, 17.903627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122078, 34.058514, 18.499338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203201, 33.805969, 18.199938>,  <41.251877, 33.654442, 18.020298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203201, 33.805969, 18.199938>,  <41.122078, 34.058514, 18.499338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203201, 33.805969, 18.199938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967784, 0.245708, 0.054967,
		0.149209, -0.735535, 0.660852,
		0.202807, -0.631360, -0.748501,
		41.264042, 33.616562, 17.975388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572746, 33.876915, 19.065802>,  <41.122078, 34.058514, 18.499338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572746, 33.876915, 19.065802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212891, 33.707630, 19.108782>,  <40.996979, 33.606060, 19.134571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212891, 33.707630, 19.108782>,  <41.572746, 33.876915, 19.065802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212891, 33.707630, 19.108782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102161, 0.443274, 0.890545,
		-0.424518, 0.790191, -0.442021,
		-0.899637, -0.423210, 0.107452,
		40.943001, 33.580666, 19.141018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015205, 34.399609, 19.309919>,  <41.572746, 33.876915, 19.065802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015205, 34.399609, 19.309919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868221, 34.039070, 19.401609>,  <40.780029, 33.822746, 19.456623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868221, 34.039070, 19.401609>,  <41.015205, 34.399609, 19.309919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868221, 34.039070, 19.401609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269018, 0.338943, 0.901525,
		-0.890281, 0.269610, -0.367027,
		-0.367462, -0.901348, 0.229224,
		40.757984, 33.768665, 19.470377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378155, 34.363243, 19.523155>,  <41.015205, 34.399609, 19.309919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378155, 34.363243, 19.523155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480862, 34.022461, 19.705687>,  <40.542488, 33.817989, 19.815207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480862, 34.022461, 19.705687>,  <40.378155, 34.363243, 19.523155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480862, 34.022461, 19.705687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307269, 0.375700, 0.874320,
		-0.916326, -0.364716, -0.165311,
		0.256771, -0.851957, 0.456330,
		40.557892, 33.766872, 19.842585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871510, 34.316734, 20.027857>,  <40.378155, 34.363243, 19.523155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871510, 34.316734, 20.027857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158363, 34.066631, 20.150999>,  <40.330475, 33.916569, 20.224884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158363, 34.066631, 20.150999>,  <39.871510, 34.316734, 20.027857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158363, 34.066631, 20.150999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202634, 0.235584, 0.950494,
		-0.666829, -0.744012, 0.042247,
		0.717132, -0.625256, 0.307856,
		40.373505, 33.879055, 20.243357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542767, 33.836433, 20.425505>,  <39.871510, 34.316734, 20.027857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542767, 33.836433, 20.425505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927685, 33.873142, 20.527931>,  <40.158634, 33.895168, 20.589386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927685, 33.873142, 20.527931>,  <39.542767, 33.836433, 20.425505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927685, 33.873142, 20.527931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270429, 0.221300, 0.936960,
		0.029322, -0.970878, 0.237774,
		0.962293, 0.091774, 0.256065,
		40.216373, 33.900673, 20.604750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593956, 33.452599, 21.059074>,  <39.542767, 33.836433, 20.425505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593956, 33.452599, 21.059074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926460, 33.674919, 21.062798>,  <40.125965, 33.808311, 21.065031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926460, 33.674919, 21.062798>,  <39.593956, 33.452599, 21.059074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926460, 33.674919, 21.062798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238762, 0.341873, 0.908909,
		0.501989, -0.757766, 0.416890,
		0.831264, 0.555800, 0.009309,
		40.175838, 33.841660, 21.065590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900036, 33.362740, 21.775148>,  <39.593956, 33.452599, 21.059074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900036, 33.362740, 21.775148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063457, 33.702263, 21.640917>,  <40.161510, 33.905975, 21.560379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063457, 33.702263, 21.640917>,  <39.900036, 33.362740, 21.775148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063457, 33.702263, 21.640917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151166, 0.425511, 0.892238,
		0.900128, -0.313801, 0.302156,
		0.408556, 0.848805, -0.335578,
		40.186024, 33.956905, 21.540243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443081, 33.563164, 22.199856>,  <39.900036, 33.362740, 21.775148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443081, 33.563164, 22.199856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301334, 33.885315, 22.009789>,  <40.216286, 34.078606, 21.895748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301334, 33.885315, 22.009789>,  <40.443081, 33.563164, 22.199856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301334, 33.885315, 22.009789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103478, 0.471248, 0.875910,
		0.929363, 0.359563, -0.083655,
		-0.354367, 0.805382, -0.475168,
		40.195023, 34.126930, 21.867239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748173, 34.207581, 22.584734>,  <40.443081, 33.563164, 22.199856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748173, 34.207581, 22.584734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431305, 34.324219, 22.370281>,  <40.241184, 34.394199, 22.241610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431305, 34.324219, 22.370281>,  <40.748173, 34.207581, 22.584734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431305, 34.324219, 22.370281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127243, 0.780257, 0.612380,
		0.596886, 0.553329, -0.580994,
		-0.792172, 0.291593, -0.536131,
		40.193653, 34.411697, 22.209442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831520, 34.959927, 22.540915>,  <40.748173, 34.207581, 22.584734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831520, 34.959927, 22.540915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444099, 34.886292, 22.473955>,  <40.211647, 34.842110, 22.433781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444099, 34.886292, 22.473955>,  <40.831520, 34.959927, 22.540915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444099, 34.886292, 22.473955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248106, 0.765326, 0.593902,
		0.018785, 0.616757, -0.786930,
		-0.968551, -0.184086, -0.167397,
		40.153534, 34.831066, 22.423737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619713, 35.519188, 22.707722>,  <40.831520, 34.959927, 22.540915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619713, 35.519188, 22.707722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270866, 35.324177, 22.691124>,  <40.061558, 35.207169, 22.681166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270866, 35.324177, 22.691124>,  <40.619713, 35.519188, 22.707722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270866, 35.324177, 22.691124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379400, 0.620261, 0.686536,
		-0.308969, 0.614485, -0.725910,
		-0.872120, -0.487529, -0.041494,
		40.009232, 35.177917, 22.678677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012547, 35.982758, 22.564255>,  <40.619713, 35.519188, 22.707722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012547, 35.982758, 22.564255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892986, 35.646698, 22.745275>,  <39.821251, 35.445061, 22.853888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892986, 35.646698, 22.745275>,  <40.012547, 35.982758, 22.564255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892986, 35.646698, 22.745275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369964, 0.539163, 0.756591,
		-0.879649, 0.058721, -0.471985,
		-0.298905, -0.840151, 0.452550,
		39.803314, 35.394653, 22.881041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285885, 36.137051, 22.792387>,  <40.012547, 35.982758, 22.564255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285885, 36.137051, 22.792387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365826, 35.811718, 23.010944>,  <39.413788, 35.616516, 23.142078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365826, 35.811718, 23.010944>,  <39.285885, 36.137051, 22.792387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365826, 35.811718, 23.010944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604528, 0.336506, 0.722018,
		-0.771107, -0.474604, -0.424434,
		0.199848, -0.813336, 0.546393,
		39.425781, 35.567719, 23.174862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659809, 35.853363, 22.913803>,  <39.285885, 36.137051, 22.792387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659809, 35.853363, 22.913803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898895, 35.691200, 23.190464>,  <39.042347, 35.593903, 23.356461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898895, 35.691200, 23.190464>,  <38.659809, 35.853363, 22.913803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898895, 35.691200, 23.190464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731516, 0.077234, 0.677436,
		-0.328055, -0.910869, -0.250396,
		0.597716, -0.405405, 0.691652,
		39.078209, 35.569580, 23.397959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278496, 35.346840, 23.276388>,  <38.659809, 35.853363, 22.913803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278496, 35.346840, 23.276388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590115, 35.439491, 23.509434>,  <38.777084, 35.495083, 23.649261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590115, 35.439491, 23.509434>,  <38.278496, 35.346840, 23.276388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590115, 35.439491, 23.509434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621933, 0.167951, 0.764848,
		0.079308, -0.958197, 0.274897,
		0.779045, 0.231626, 0.582614,
		38.823830, 35.508980, 23.684217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219929, 34.955837, 23.774456>,  <38.278496, 35.346840, 23.276388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219929, 34.955837, 23.774456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443993, 35.253204, 23.920635>,  <38.578430, 35.431625, 24.008343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.443993, 35.253204, 23.920635>,  <38.219929, 34.955837, 23.774456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443993, 35.253204, 23.920635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555654, 0.010008, 0.831353,
		0.614386, -0.668751, 0.418690,
		0.560159, 0.743419, 0.365446,
		38.612041, 35.476231, 24.030270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294613, 34.781567, 24.534700>,  <38.219929, 34.955837, 23.774456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294613, 34.781567, 24.534700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370686, 35.169308, 24.472481>,  <38.416328, 35.401951, 24.435150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370686, 35.169308, 24.472481>,  <38.294613, 34.781567, 24.534700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370686, 35.169308, 24.472481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614478, 0.241097, 0.751192,
		0.765669, -0.047282, 0.641495,
		0.190180, 0.969349, -0.155547,
		38.427738, 35.460114, 24.425817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457954, 34.959774, 25.173697>,  <38.294613, 34.781567, 24.534700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457954, 34.959774, 25.173697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369469, 35.307865, 24.997623>,  <38.316380, 35.516720, 24.891979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369469, 35.307865, 24.997623>,  <38.457954, 34.959774, 25.173697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369469, 35.307865, 24.997623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406830, 0.327870, 0.852638,
		0.886315, 0.367694, 0.281507,
		-0.221212, 0.870231, -0.440185,
		38.303104, 35.568935, 24.865568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736904, 35.497627, 25.637646>,  <38.457954, 34.959774, 25.173697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736904, 35.497627, 25.637646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445602, 35.647423, 25.408072>,  <38.270821, 35.737301, 25.270327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445602, 35.647423, 25.408072>,  <38.736904, 35.497627, 25.637646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445602, 35.647423, 25.408072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403728, 0.442276, 0.800871,
		0.553757, 0.814952, -0.170897,
		-0.728256, 0.374492, -0.573933,
		38.227127, 35.759769, 25.235891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604218, 36.109360, 25.916794>,  <38.736904, 35.497627, 25.637646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604218, 36.109360, 25.916794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276142, 36.053471, 25.694887>,  <38.079296, 36.019936, 25.561743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276142, 36.053471, 25.694887>,  <38.604218, 36.109360, 25.916794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276142, 36.053471, 25.694887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563876, 0.361171, 0.742697,
		0.096594, 0.921972, -0.375015,
		-0.820191, -0.139722, -0.554766,
		38.030087, 36.011555, 25.528458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232132, 36.667316, 26.123171>,  <38.604218, 36.109360, 25.916794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232132, 36.667316, 26.123171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971344, 36.419888, 25.947758>,  <37.814873, 36.271431, 25.842510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971344, 36.419888, 25.947758>,  <38.232132, 36.667316, 26.123171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971344, 36.419888, 25.947758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687098, 0.237364, 0.686699,
		-0.320681, 0.749018, -0.579772,
		-0.651967, -0.618571, -0.438531,
		37.775753, 36.234318, 25.816198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648857, 37.017155, 26.050753>,  <38.232132, 36.667316, 26.123171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648857, 37.017155, 26.050753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472443, 36.658451, 26.036282>,  <37.366592, 36.443230, 26.027599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472443, 36.658451, 26.036282>,  <37.648857, 37.017155, 26.050753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472443, 36.658451, 26.036282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778301, 0.362086, 0.512973,
		-0.446914, 0.254399, -0.857642,
		-0.441040, -0.896758, -0.036178,
		37.340130, 36.389423, 26.025429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965778, 37.138870, 25.952049>,  <37.648857, 37.017155, 26.050753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965778, 37.138870, 25.952049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936798, 36.757378, 26.068771>,  <36.919411, 36.528481, 26.138803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936798, 36.757378, 26.068771>,  <36.965778, 37.138870, 25.952049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936798, 36.757378, 26.068771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808639, 0.227433, 0.542565,
		-0.583826, -0.196655, -0.787701,
		-0.072451, -0.953730, 0.291804,
		36.915062, 36.471260, 26.156313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253502, 36.998802, 25.937885>,  <36.965778, 37.138870, 25.952049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253502, 36.998802, 25.937885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402634, 36.710781, 26.171989>,  <36.492111, 36.537968, 26.312452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402634, 36.710781, 26.171989>,  <36.253502, 36.998802, 25.937885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402634, 36.710781, 26.171989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816706, 0.044743, 0.575317,
		-0.440442, -0.692479, -0.571387,
		0.372829, -0.720049, 0.585259,
		36.514484, 36.494766, 26.347567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696766, 36.483360, 25.967455>,  <36.253502, 36.998802, 25.937885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696766, 36.483360, 25.967455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933449, 36.479195, 26.289890>,  <36.075459, 36.476696, 26.483351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933449, 36.479195, 26.289890>,  <35.696766, 36.483360, 25.967455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933449, 36.479195, 26.289890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806119, -0.016879, 0.591512,
		0.007467, -0.999804, -0.018354,
		0.591706, -0.010379, 0.806087,
		36.110962, 36.476070, 26.531715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256779, 36.002174, 26.406118>,  <35.696766, 36.483360, 25.967455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256779, 36.002174, 26.406118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530087, 36.177921, 26.639391>,  <35.694073, 36.283367, 26.779354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530087, 36.177921, 26.639391>,  <35.256779, 36.002174, 26.406118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530087, 36.177921, 26.639391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649298, 0.000271, 0.760534,
		0.333992, -0.898309, 0.285463,
		0.683272, 0.439363, 0.583180,
		35.735069, 36.309731, 26.814344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282951, 35.613998, 27.071156>,  <35.256779, 36.002174, 26.406118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282951, 35.613998, 27.071156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435520, 35.973431, 27.157944>,  <35.527061, 36.189091, 27.210016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435520, 35.973431, 27.157944>,  <35.282951, 35.613998, 27.071156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435520, 35.973431, 27.157944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572385, 0.045270, 0.818735,
		0.725875, -0.436470, 0.531600,
		0.381419, 0.898579, 0.216969,
		35.549946, 36.243004, 27.223034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417744, 35.549915, 27.790304>,  <35.282951, 35.613998, 27.071156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417744, 35.549915, 27.790304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431877, 35.944691, 27.727430>,  <35.440357, 36.181557, 27.689707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431877, 35.944691, 27.727430>,  <35.417744, 35.549915, 27.790304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431877, 35.944691, 27.727430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381666, 0.158688, 0.910576,
		0.923625, 0.027816, 0.382288,
		0.035336, 0.986937, -0.157184,
		35.442478, 36.240772, 27.680275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793427, 35.909554, 28.311872>,  <35.417744, 35.549915, 27.790304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793427, 35.909554, 28.311872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555565, 36.200241, 28.174316>,  <35.412849, 36.374653, 28.091784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555565, 36.200241, 28.174316>,  <35.793427, 35.909554, 28.311872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555565, 36.200241, 28.174316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225031, 0.260192, 0.938968,
		0.771847, 0.635747, 0.008811,
		-0.594654, 0.726722, -0.343891,
		35.377167, 36.418259, 28.071150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865921, 36.665989, 28.731710>,  <35.793427, 35.909554, 28.311872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865921, 36.665989, 28.731710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505920, 36.651424, 28.557962>,  <35.289921, 36.642685, 28.453714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.505920, 36.651424, 28.557962>,  <35.865921, 36.665989, 28.731710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505920, 36.651424, 28.557962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434175, 0.163260, 0.885911,
		0.038660, 0.985911, -0.162741,
		-0.899999, -0.036409, -0.434370,
		35.235920, 36.640503, 28.427652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436096, 37.285191, 29.050552>,  <35.865921, 36.665989, 28.731710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436096, 37.285191, 29.050552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146523, 37.063904, 28.885695>,  <34.972778, 36.931129, 28.786779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146523, 37.063904, 28.885695>,  <35.436096, 37.285191, 29.050552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146523, 37.063904, 28.885695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624846, 0.272632, 0.731600,
		-0.292373, 0.787158, -0.543047,
		-0.723937, -0.553221, -0.412142,
		34.929340, 36.897938, 28.762053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801609, 37.632038, 28.813171>,  <35.436096, 37.285191, 29.050552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801609, 37.632038, 28.813171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659889, 37.261250, 28.862490>,  <34.574856, 37.038776, 28.892080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659889, 37.261250, 28.862490>,  <34.801609, 37.632038, 28.813171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659889, 37.261250, 28.862490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516371, 0.303857, 0.800645,
		-0.779635, 0.220005, -0.586316,
		-0.354302, -0.926968, 0.123293,
		34.553600, 36.983158, 28.899477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151855, 37.809147, 29.037666>,  <34.801609, 37.632038, 28.813171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151855, 37.809147, 29.037666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169796, 37.418098, 29.119883>,  <34.180561, 37.183468, 29.169212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169796, 37.418098, 29.119883>,  <34.151855, 37.809147, 29.037666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169796, 37.418098, 29.119883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635797, 0.130764, 0.760699,
		-0.770552, -0.164802, -0.615703,
		0.044852, -0.977620, 0.205541,
		34.183250, 37.124813, 29.181545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407356, 37.548176, 29.044765>,  <34.151855, 37.809147, 29.037666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407356, 37.548176, 29.044765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626419, 37.279404, 29.244198>,  <33.757858, 37.118141, 29.363857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626419, 37.279404, 29.244198>,  <33.407356, 37.548176, 29.044765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626419, 37.279404, 29.244198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682614, -0.014225, 0.730641,
		-0.483846, -0.740479, -0.466458,
		0.547660, -0.671929, 0.498579,
		33.790718, 37.077824, 29.393772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009342, 36.984814, 29.256006>,  <33.407356, 37.548176, 29.044765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009342, 36.984814, 29.256006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323303, 36.963306, 29.502920>,  <33.511681, 36.950401, 29.651070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323303, 36.963306, 29.502920>,  <33.009342, 36.984814, 29.256006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323303, 36.963306, 29.502920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617594, 0.012674, 0.786395,
		-0.050108, -0.998473, -0.023261,
		0.784899, -0.053771, 0.617286,
		33.558773, 36.947178, 29.688107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827351, 36.505634, 29.784491>,  <33.009342, 36.984814, 29.256006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827351, 36.505634, 29.784491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136513, 36.665943, 29.981264>,  <33.322010, 36.762131, 30.099327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136513, 36.665943, 29.981264>,  <32.827351, 36.505634, 29.784491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136513, 36.665943, 29.981264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498675, -0.095726, 0.861487,
		0.392354, -0.911161, 0.125870,
		0.772905, 0.400777, 0.491932,
		33.368385, 36.786175, 30.128843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008743, 35.997746, 30.365086>,  <32.827351, 36.505634, 29.784491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008743, 35.997746, 30.365086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167820, 36.346710, 30.478743>,  <33.263268, 36.556087, 30.546936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167820, 36.346710, 30.478743>,  <33.008743, 35.997746, 30.365086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167820, 36.346710, 30.478743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453975, -0.082023, 0.887231,
		0.797338, -0.481838, 0.363434,
		0.397692, 0.872413, 0.284142,
		33.287128, 36.608433, 30.563986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288071, 35.947857, 31.101255>,  <33.008743, 35.997746, 30.365086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288071, 35.947857, 31.101255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239105, 36.338013, 31.027901>,  <33.209724, 36.572105, 30.983889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239105, 36.338013, 31.027901>,  <33.288071, 35.947857, 31.101255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239105, 36.338013, 31.027901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308456, 0.138234, 0.941141,
		0.943329, 0.171779, 0.283942,
		-0.122418, 0.975389, -0.183386,
		33.202381, 36.630630, 30.972885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595089, 36.304241, 31.696863>,  <33.288071, 35.947857, 31.101255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595089, 36.304241, 31.696863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338005, 36.559845, 31.527822>,  <33.183754, 36.713207, 31.426399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338005, 36.559845, 31.527822>,  <33.595089, 36.304241, 31.696863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338005, 36.559845, 31.527822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321708, 0.275512, 0.905868,
		0.695289, 0.718165, 0.028499,
		-0.642711, 0.639009, -0.422600,
		33.145191, 36.751549, 31.401043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586597, 36.889217, 32.143337>,  <33.595089, 36.304241, 31.696863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586597, 36.889217, 32.143337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262569, 36.970406, 31.923304>,  <33.068153, 37.019119, 31.791283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262569, 36.970406, 31.923304>,  <33.586597, 36.889217, 32.143337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262569, 36.970406, 31.923304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485719, 0.293206, 0.823473,
		0.328432, 0.934255, -0.138928,
		-0.810068, 0.202974, -0.550084,
		33.019550, 37.031300, 31.758278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360481, 37.003567, 32.380379>,  <33.586597, 36.889217, 32.143337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360481, 37.003567, 32.380379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544952, 37.017139, 32.735043>,  <34.655636, 37.025284, 32.947842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544952, 37.017139, 32.735043>,  <34.360481, 37.003567, 32.380379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544952, 37.017139, 32.735043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885842, -0.074983, -0.457888,
		0.050949, 0.996607, -0.064636,
		0.461181, 0.033928, 0.886657,
		34.683308, 37.027317, 33.001041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760612, 37.606377, 32.298820>,  <34.360481, 37.003567, 32.380379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760612, 37.606377, 32.298820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935310, 37.368572, 32.568874>,  <35.040131, 37.225891, 32.730907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935310, 37.368572, 32.568874>,  <34.760612, 37.606377, 32.298820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935310, 37.368572, 32.568874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857939, 0.049570, -0.511355,
		0.270539, 0.802559, 0.531703,
		0.436749, -0.594510, 0.675136,
		35.066334, 37.190220, 32.771416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381786, 37.870338, 32.357567>,  <34.760612, 37.606377, 32.298820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381786, 37.870338, 32.357567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399532, 37.504261, 32.517792>,  <35.410179, 37.284615, 32.613926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399532, 37.504261, 32.517792>,  <35.381786, 37.870338, 32.357567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399532, 37.504261, 32.517792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752890, -0.232916, -0.615554,
		0.656649, 0.328888, 0.678708,
		0.044366, -0.915196, 0.400560,
		35.412842, 37.229702, 32.637959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981804, 37.720928, 32.618263>,  <35.381786, 37.870338, 32.357567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981804, 37.720928, 32.618263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818047, 37.365543, 32.535297>,  <35.719791, 37.152313, 32.485516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818047, 37.365543, 32.535297>,  <35.981804, 37.720928, 32.618263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818047, 37.365543, 32.535297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829419, -0.267727, -0.490291,
		0.380076, -0.372759, 0.846518,
		-0.409396, -0.888467, -0.207417,
		35.695229, 37.099003, 32.473072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565800, 37.234646, 32.571064>,  <35.981804, 37.720928, 32.618263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565800, 37.234646, 32.571064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253296, 37.069862, 32.383480>,  <36.065792, 36.970993, 32.270931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253296, 37.069862, 32.383480>,  <36.565800, 37.234646, 32.571064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253296, 37.069862, 32.383480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623331, -0.475189, -0.621010,
		0.032984, -0.777489, 0.628031,
		-0.781262, -0.411955, -0.468960,
		36.018917, 36.946278, 32.242794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757538, 36.524628, 32.629002>,  <36.565800, 37.234646, 32.571064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757538, 36.524628, 32.629002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497330, 36.551754, 32.326420>,  <36.341206, 36.568031, 32.144871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497330, 36.551754, 32.326420>,  <36.757538, 36.524628, 32.629002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497330, 36.551754, 32.326420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720332, -0.260582, -0.642821,
		-0.240709, -0.963067, 0.120667,
		-0.650524, 0.067813, -0.756453,
		36.302174, 36.572098, 32.099483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905697, 35.914993, 32.186874>,  <36.757538, 36.524628, 32.629002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905697, 35.914993, 32.186874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693748, 36.164394, 31.956926>,  <36.566578, 36.314037, 31.818956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693748, 36.164394, 31.956926>,  <36.905697, 35.914993, 32.186874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693748, 36.164394, 31.956926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704591, -0.053618, -0.707585,
		-0.472006, -0.779979, -0.410905,
		-0.529870, 0.623505, -0.574874,
		36.534786, 36.351444, 31.784464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885838, 35.607483, 31.576860>,  <36.905697, 35.914993, 32.186874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885838, 35.607483, 31.576860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803940, 35.987228, 31.481543>,  <36.754803, 36.215076, 31.424353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.803940, 35.987228, 31.481543>,  <36.885838, 35.607483, 31.576860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803940, 35.987228, 31.481543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627382, -0.059584, -0.776429,
		-0.751314, -0.308468, -0.583416,
		-0.204741, 0.949367, -0.238293,
		36.742516, 36.272038, 31.410055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593414, 35.533466, 30.938231>,  <36.885838, 35.607483, 31.576860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593414, 35.533466, 30.938231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731174, 35.907135, 30.975565>,  <36.813831, 36.131336, 30.997965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731174, 35.907135, 30.975565>,  <36.593414, 35.533466, 30.938231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731174, 35.907135, 30.975565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567693, -0.128041, -0.813222,
		-0.747738, 0.333061, -0.574420,
		0.344402, 0.934171, 0.093336,
		36.834496, 36.187386, 31.003565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630974, 35.660404, 30.345760>,  <36.593414, 35.533466, 30.938231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630974, 35.660404, 30.345760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855099, 35.949661, 30.507311>,  <36.989574, 36.123215, 30.604240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.855099, 35.949661, 30.507311>,  <36.630974, 35.660404, 30.345760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855099, 35.949661, 30.507311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616645, -0.038650, -0.786292,
		-0.552992, 0.689616, -0.467578,
		0.560311, 0.723143, 0.403875,
		37.023193, 36.166603, 30.628473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838768, 36.017998, 29.776400>,  <36.630974, 35.660404, 30.345760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838768, 36.017998, 29.776400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093170, 36.164528, 30.048077>,  <37.245811, 36.252445, 30.211082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093170, 36.164528, 30.048077>,  <36.838768, 36.017998, 29.776400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093170, 36.164528, 30.048077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620226, 0.281023, -0.732356,
		-0.459146, 0.887037, -0.048470,
		0.636006, 0.366321, 0.679194,
		37.283974, 36.274426, 30.251835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056923, 36.547680, 29.477407>,  <36.838768, 36.017998, 29.776400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056923, 36.547680, 29.477407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345497, 36.542778, 29.754356>,  <37.518642, 36.539837, 29.920527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345497, 36.542778, 29.754356>,  <37.056923, 36.547680, 29.477407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345497, 36.542778, 29.754356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660499, 0.312534, -0.682689,
		-0.208021, 0.949828, 0.233570,
		0.721435, -0.012259, 0.692374,
		37.561928, 36.539101, 29.962069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482815, 37.140614, 29.467106>,  <37.056923, 36.547680, 29.477407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482815, 37.140614, 29.467106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694714, 36.823715, 29.588240>,  <37.821854, 36.633575, 29.660919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694714, 36.823715, 29.588240>,  <37.482815, 37.140614, 29.467106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694714, 36.823715, 29.588240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713696, 0.223469, -0.663852,
		0.458262, 0.567805, 0.683808,
		0.529749, -0.792249, 0.302833,
		37.853638, 36.586040, 29.679089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221691, 37.274372, 29.378542>,  <37.482815, 37.140614, 29.467106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221691, 37.274372, 29.378542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219143, 36.874718, 29.394964>,  <38.217613, 36.634926, 29.404818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219143, 36.874718, 29.394964>,  <38.221691, 37.274372, 29.378542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219143, 36.874718, 29.394964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714583, -0.033271, -0.698759,
		0.699522, 0.024888, 0.714178,
		-0.006371, -0.999136, 0.041058,
		38.217232, 36.574978, 29.407282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841717, 37.132942, 29.414993>,  <38.221691, 37.274372, 29.378542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841717, 37.132942, 29.414993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706379, 36.773830, 29.302206>,  <38.625175, 36.558361, 29.234533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706379, 36.773830, 29.302206>,  <38.841717, 37.132942, 29.414993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706379, 36.773830, 29.302206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713255, -0.049213, -0.699175,
		0.613830, -0.437682, 0.656999,
		-0.338349, -0.897782, -0.281970,
		38.604874, 36.504498, 29.217615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454227, 36.762142, 29.437805>,  <38.841717, 37.132942, 29.414993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454227, 36.762142, 29.437805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198322, 36.545708, 29.219477>,  <39.044777, 36.415848, 29.088480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198322, 36.545708, 29.219477>,  <39.454227, 36.762142, 29.437805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198322, 36.545708, 29.219477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676362, -0.059092, -0.734195,
		0.365011, -0.838887, 0.403777,
		-0.639767, -0.541088, -0.545822,
		39.006393, 36.383381, 29.055731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976322, 36.223412, 29.133766>,  <39.454227, 36.762142, 29.437805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976322, 36.223412, 29.133766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639175, 36.254421, 28.920761>,  <39.436890, 36.273026, 28.792957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639175, 36.254421, 28.920761>,  <39.976322, 36.223412, 29.133766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639175, 36.254421, 28.920761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510830, -0.195913, -0.837061,
		-0.169214, -0.977552, 0.125530,
		-0.842864, 0.077518, -0.532514,
		39.386318, 36.277679, 28.761007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088902, 35.688843, 28.665358>,  <39.976322, 36.223412, 29.133766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088902, 35.688843, 28.665358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804207, 35.925415, 28.513760>,  <39.633389, 36.067360, 28.422800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804207, 35.925415, 28.513760>,  <40.088902, 35.688843, 28.665358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804207, 35.925415, 28.513760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464302, -0.008775, -0.885634,
		-0.527119, -0.806306, -0.268358,
		-0.711737, 0.591433, -0.378995,
		39.590687, 36.102844, 28.400061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943462, 35.379692, 28.050608>,  <40.088902, 35.688843, 28.665358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943462, 35.379692, 28.050608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798492, 35.748272, 27.994638>,  <39.711510, 35.969421, 27.961058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798492, 35.748272, 27.994638>,  <39.943462, 35.379692, 28.050608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798492, 35.748272, 27.994638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645565, 0.139905, -0.750781,
		-0.672231, -0.362430, -0.645561,
		-0.362423, 0.921450, -0.139923,
		39.689766, 36.024708, 27.952662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564617, 35.421482, 27.447773>,  <39.943462, 35.379692, 28.050608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564617, 35.421482, 27.447773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706882, 35.788773, 27.517475>,  <39.792240, 36.009148, 27.559296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706882, 35.788773, 27.517475>,  <39.564617, 35.421482, 27.447773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706882, 35.788773, 27.517475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561717, -0.060995, -0.825078,
		-0.746979, 0.391332, -0.537477,
		0.355663, 0.918226, 0.174256,
		39.813580, 36.064240, 27.569752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511616, 35.742912, 26.878418>,  <39.564617, 35.421482, 27.447773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511616, 35.742912, 26.878418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754623, 36.007862, 27.053770>,  <39.900429, 36.166832, 27.158981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754623, 36.007862, 27.053770>,  <39.511616, 35.742912, 26.878418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754623, 36.007862, 27.053770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455896, 0.161171, -0.875319,
		-0.650442, 0.731632, -0.204059,
		0.607522, 0.662374, 0.438380,
		39.936882, 36.206573, 27.185284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507507, 36.354000, 26.471186>,  <39.511616, 35.742912, 26.878418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507507, 36.354000, 26.471186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856506, 36.328537, 26.664970>,  <40.065907, 36.313259, 26.781240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856506, 36.328537, 26.664970>,  <39.507507, 36.354000, 26.471186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856506, 36.328537, 26.664970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484518, -0.015573, -0.874642,
		0.063218, 0.997850, 0.017254,
		0.872494, -0.063654, 0.484461,
		40.118256, 36.309441, 26.810308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953587, 36.842926, 26.139614>,  <39.507507, 36.354000, 26.471186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953587, 36.842926, 26.139614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183563, 36.567966, 26.317123>,  <40.321548, 36.402992, 26.423630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183563, 36.567966, 26.317123>,  <39.953587, 36.842926, 26.139614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183563, 36.567966, 26.317123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535967, -0.093400, -0.839056,
		0.618211, 0.720253, 0.314722,
		0.574938, -0.687395, 0.443773,
		40.356045, 36.361748, 26.450254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609798, 36.931564, 25.789614>,  <39.953587, 36.842926, 26.139614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609798, 36.931564, 25.789614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620804, 36.572536, 25.965622>,  <40.627407, 36.357121, 26.071226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620804, 36.572536, 25.965622>,  <40.609798, 36.931564, 25.789614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620804, 36.572536, 25.965622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520937, -0.362812, -0.772653,
		0.853152, 0.250484, 0.457592,
		0.027518, -0.897566, 0.440020,
		40.629059, 36.303268, 26.097628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287079, 36.875931, 25.787169>,  <40.609798, 36.931564, 25.789614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287079, 36.875931, 25.787169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102013, 36.521435, 25.796206>,  <40.990974, 36.308735, 25.801628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102013, 36.521435, 25.796206>,  <41.287079, 36.875931, 25.787169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102013, 36.521435, 25.796206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471335, -0.267484, -0.840414,
		0.750855, -0.378184, 0.541473,
		-0.462666, -0.886245, 0.022590,
		40.963211, 36.255562, 25.802982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776619, 36.318012, 25.872614>,  <41.287079, 36.875931, 25.787169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776619, 36.318012, 25.872614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448647, 36.166885, 25.700581>,  <41.251865, 36.076210, 25.597361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448647, 36.166885, 25.700581>,  <41.776619, 36.318012, 25.872614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448647, 36.166885, 25.700581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564024, -0.404619, -0.719834,
		0.097946, -0.832789, 0.544856,
		-0.819929, -0.377817, -0.430082,
		41.202667, 36.053539, 25.571556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823273, 35.642975, 25.885698>,  <41.776619, 36.318012, 25.872614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823273, 35.642975, 25.885698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581711, 35.698868, 25.571812>,  <41.436775, 35.732403, 25.383480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581711, 35.698868, 25.571812>,  <41.823273, 35.642975, 25.885698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581711, 35.698868, 25.571812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462280, -0.740613, -0.487636,
		-0.649308, -0.657243, 0.382663,
		-0.603901, 0.139729, -0.784716,
		41.400539, 35.740788, 25.336397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726662, 34.986015, 25.578678>,  <41.823273, 35.642975, 25.885698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726662, 34.986015, 25.578678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558712, 35.195522, 25.282198>,  <41.457943, 35.321224, 25.104309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558712, 35.195522, 25.282198>,  <41.726662, 34.986015, 25.578678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558712, 35.195522, 25.282198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345843, -0.662723, -0.664221,
		-0.839106, -0.535228, 0.097120,
		-0.419874, 0.523764, -0.741200,
		41.432751, 35.352650, 25.059837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264675, 34.525391, 25.296682>,  <41.726662, 34.986015, 25.578678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264675, 34.525391, 25.296682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356850, 34.807106, 25.028095>,  <41.412155, 34.976135, 24.866943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356850, 34.807106, 25.028095>,  <41.264675, 34.525391, 25.296682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356850, 34.807106, 25.028095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253881, -0.709655, -0.657217,
		-0.939385, -0.019027, -0.342336,
		0.230435, 0.704292, -0.671470,
		41.425980, 35.018394, 24.826654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048592, 34.307224, 24.601086>,  <41.264675, 34.525391, 25.296682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048592, 34.307224, 24.601086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326092, 34.579075, 24.505732>,  <41.492592, 34.742184, 24.448519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326092, 34.579075, 24.505732>,  <41.048592, 34.307224, 24.601086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326092, 34.579075, 24.505732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364350, -0.616690, -0.697813,
		-0.621260, 0.397249, -0.675448,
		0.693747, 0.679622, -0.238387,
		41.534218, 34.782963, 24.434216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139751, 34.278423, 23.829115>,  <41.048592, 34.307224, 24.601086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139751, 34.278423, 23.829115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467861, 34.452919, 23.977085>,  <41.664726, 34.557617, 24.065868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467861, 34.452919, 23.977085>,  <41.139751, 34.278423, 23.829115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467861, 34.452919, 23.977085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567406, -0.539052, -0.622474,
		-0.072140, 0.720497, -0.689696,
		0.820272, 0.436243, 0.369927,
		41.713943, 34.583794, 24.088062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548244, 34.476616, 23.223173>,  <41.139751, 34.278423, 23.829115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548244, 34.476616, 23.223173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794209, 34.451168, 23.537584>,  <41.941788, 34.435902, 23.726231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794209, 34.451168, 23.537584>,  <41.548244, 34.476616, 23.223173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794209, 34.451168, 23.537584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646406, -0.530283, -0.548598,
		0.451718, 0.845431, -0.284953,
		0.614907, -0.063616, 0.786030,
		41.978680, 34.432083, 23.773394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134987, 34.876312, 22.959238>,  <41.548244, 34.476616, 23.223173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134987, 34.876312, 22.959238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249992, 34.625481, 23.248817>,  <42.318996, 34.474979, 23.422565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249992, 34.625481, 23.248817>,  <42.134987, 34.876312, 22.959238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249992, 34.625481, 23.248817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488908, -0.553878, -0.673934,
		0.823593, 0.547709, 0.147340,
		0.287512, -0.627083, 0.723950,
		42.336246, 34.437355, 23.466003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745987, 34.836182, 22.740578>,  <42.134987, 34.876312, 22.959238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745987, 34.836182, 22.740578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687931, 34.532158, 22.993954>,  <42.653095, 34.349743, 23.145979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687931, 34.532158, 22.993954>,  <42.745987, 34.836182, 22.740578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687931, 34.532158, 22.993954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431385, -0.624777, -0.650816,
		0.890416, 0.178794, 0.418560,
		-0.145144, -0.760057, 0.633440,
		42.644386, 34.304142, 23.183987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398758, 34.447819, 22.668657>,  <42.745987, 34.836182, 22.740578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398758, 34.447819, 22.668657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155701, 34.204540, 22.872959>,  <43.009869, 34.058571, 22.995541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155701, 34.204540, 22.872959>,  <43.398758, 34.447819, 22.668657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155701, 34.204540, 22.872959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336406, -0.779651, -0.528180,
		0.719447, -0.149123, 0.678349,
		-0.607640, -0.608199, 0.510752,
		42.973408, 34.022079, 23.026184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823082, 33.847538, 22.811623>,  <43.398758, 34.447819, 22.668657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823082, 33.847538, 22.811623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433594, 33.757084, 22.822466>,  <43.199902, 33.702812, 22.828972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.433594, 33.757084, 22.822466>,  <43.823082, 33.847538, 22.811623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.433594, 33.757084, 22.822466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146400, -0.712639, -0.686085,
		0.174466, -0.664085, 0.727016,
		-0.973719, -0.226134, 0.027109,
		43.141479, 33.689243, 22.830599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866074, 33.153828, 23.123543>,  <43.823082, 33.847538, 22.811623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866074, 33.153828, 23.123543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532242, 33.211700, 22.910927>,  <43.331944, 33.246426, 22.783358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532242, 33.211700, 22.910927>,  <43.866074, 33.153828, 23.123543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532242, 33.211700, 22.910927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317710, -0.661834, -0.678996,
		-0.450033, -0.735555, 0.506388,
		-0.834584, 0.144686, -0.531541,
		43.281868, 33.255108, 22.751465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625816, 32.556644, 23.031448>,  <43.866074, 33.153828, 23.123543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625816, 32.556644, 23.031448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461857, 32.771778, 22.736771>,  <43.363480, 32.900860, 22.559965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461857, 32.771778, 22.736771>,  <43.625816, 32.556644, 23.031448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461857, 32.771778, 22.736771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116957, -0.770002, -0.627230,
		-0.904601, -0.343262, 0.252719,
		-0.409899, 0.537836, -0.736692,
		43.338886, 32.933128, 22.515762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101570, 32.022457, 22.891373>,  <43.625816, 32.556644, 23.031448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101570, 32.022457, 22.891373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339756, 31.828882, 23.147879>,  <44.482670, 31.712736, 23.301783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339756, 31.828882, 23.147879>,  <44.101570, 32.022457, 22.891373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339756, 31.828882, 23.147879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610187, 0.246775, 0.752844,
		-0.522579, -0.839586, -0.148347,
		0.595469, -0.483940, 0.641264,
		44.518398, 31.683701, 23.340258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692039, 31.575348, 23.297312>,  <44.101570, 32.022457, 22.891373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692039, 31.575348, 23.297312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023083, 31.623428, 23.516628>,  <44.221706, 31.652277, 23.648218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023083, 31.623428, 23.516628>,  <43.692039, 31.575348, 23.297312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023083, 31.623428, 23.516628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560748, 0.220904, 0.797975,
		-0.025202, -0.967860, 0.250224,
		0.827603, 0.120202, 0.548292,
		44.271362, 31.659489, 23.681116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620937, 31.187263, 23.970057>,  <43.692039, 31.575348, 23.297312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620937, 31.187263, 23.970057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903969, 31.459158, 24.047300>,  <44.073788, 31.622295, 24.093647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903969, 31.459158, 24.047300>,  <43.620937, 31.187263, 23.970057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903969, 31.459158, 24.047300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592806, 0.422266, 0.685764,
		0.384590, -0.599713, 0.701737,
		0.707581, 0.679732, 0.193114,
		44.116241, 31.663078, 24.105232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662899, 31.198076, 24.627218>,  <43.620937, 31.187263, 23.970057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662899, 31.198076, 24.627218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841137, 31.547892, 24.550663>,  <43.948078, 31.757780, 24.504730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841137, 31.547892, 24.550663>,  <43.662899, 31.198076, 24.627218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841137, 31.547892, 24.550663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455550, 0.405542, 0.792471,
		0.770661, -0.265934, 0.579103,
		0.445596, 0.874537, -0.191389,
		43.974815, 31.810253, 24.493246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823616, 31.345703, 25.193825>,  <43.662899, 31.198076, 24.627218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823616, 31.345703, 25.193825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860100, 31.695639, 25.003527>,  <43.881992, 31.905600, 24.889347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860100, 31.695639, 25.003527>,  <43.823616, 31.345703, 25.193825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860100, 31.695639, 25.003527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464505, 0.459959, 0.756751,
		0.880860, 0.151962, 0.448322,
		0.091213, 0.874840, -0.475747,
		43.887463, 31.958090, 24.860802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189663, 31.845654, 25.608356>,  <43.823616, 31.345703, 25.193825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189663, 31.845654, 25.608356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012581, 32.103607, 25.359154>,  <43.906330, 32.258381, 25.209633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012581, 32.103607, 25.359154>,  <44.189663, 31.845654, 25.608356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012581, 32.103607, 25.359154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220210, 0.595330, 0.772716,
		0.869205, 0.479279, -0.121547,
		-0.442707, 0.644883, -0.623006,
		43.879768, 32.297073, 25.172253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355751, 32.520088, 25.769854>,  <44.189663, 31.845654, 25.608356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355751, 32.520088, 25.769854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012772, 32.586742, 25.575115>,  <43.806984, 32.626736, 25.458271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012772, 32.586742, 25.575115>,  <44.355751, 32.520088, 25.769854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012772, 32.586742, 25.575115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440191, 0.252458, 0.861682,
		0.266493, 0.953152, -0.143119,
		-0.857446, 0.166633, -0.486847,
		43.755539, 32.636734, 25.429062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122673, 33.198208, 25.983953>,  <44.355751, 32.520088, 25.769854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122673, 33.198208, 25.983953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802528, 33.005814, 25.840801>,  <43.610443, 32.890377, 25.754910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802528, 33.005814, 25.840801>,  <44.122673, 33.198208, 25.983953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802528, 33.005814, 25.840801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516440, 0.249946, 0.819034,
		-0.304495, 0.840344, -0.448448,
		-0.800358, -0.480988, -0.357880,
		43.562420, 32.861519, 25.733437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510483, 33.689945, 26.022909>,  <44.122673, 33.198208, 25.983953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510483, 33.689945, 26.022909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338840, 33.331612, 25.976702>,  <43.235855, 33.116611, 25.948978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338840, 33.331612, 25.976702>,  <43.510483, 33.689945, 26.022909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338840, 33.331612, 25.976702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604904, 0.190033, 0.773291,
		-0.670791, 0.401699, -0.623440,
		-0.429105, -0.895838, -0.115517,
		43.210110, 33.062859, 25.942047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910667, 33.888981, 25.874338>,  <43.510483, 33.689945, 26.022909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910667, 33.888981, 25.874338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889309, 33.509529, 25.999081>,  <42.876492, 33.281860, 26.073927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.889309, 33.509529, 25.999081>,  <42.910667, 33.888981, 25.874338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889309, 33.509529, 25.999081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793723, 0.229826, 0.563191,
		-0.605931, -0.217455, -0.765219,
		-0.053399, -0.948627, 0.311858,
		42.873291, 33.224941, 26.092638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078125, 33.710297, 25.925375>,  <42.910667, 33.888981, 25.874338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078125, 33.710297, 25.925375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297195, 33.450115, 26.135883>,  <42.428638, 33.294006, 26.262188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297195, 33.450115, 26.135883>,  <42.078125, 33.710297, 25.925375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297195, 33.450115, 26.135883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599631, 0.133529, 0.789058,
		-0.583520, -0.747715, -0.316903,
		0.547675, -0.650456, 0.526270,
		42.461498, 33.254978, 26.293764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620975, 33.290836, 26.206697>,  <42.078125, 33.710297, 25.925375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620975, 33.290836, 26.206697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946838, 33.315498, 26.437357>,  <42.142357, 33.330296, 26.575752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946838, 33.315498, 26.437357>,  <41.620975, 33.290836, 26.206697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946838, 33.315498, 26.437357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578460, 0.157308, 0.800399,
		-0.041365, -0.985623, 0.163816,
		0.814661, 0.061652, 0.576650,
		42.191238, 33.333996, 26.610352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394371, 33.000782, 26.838539>,  <41.620975, 33.290836, 26.206697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394371, 33.000782, 26.838539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739548, 33.184803, 26.922152>,  <41.946651, 33.295216, 26.972319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739548, 33.184803, 26.922152>,  <41.394371, 33.000782, 26.838539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739548, 33.184803, 26.922152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247371, 0.023901, 0.968626,
		0.440619, -0.887572, 0.134428,
		0.862938, 0.460048, 0.209029,
		41.998428, 33.322819, 26.984859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566971, 32.728043, 27.467297>,  <41.394371, 33.000782, 26.838539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566971, 32.728043, 27.467297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817043, 33.040226, 27.469534>,  <41.967087, 33.227535, 27.470877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817043, 33.040226, 27.469534>,  <41.566971, 32.728043, 27.467297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817043, 33.040226, 27.469534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289117, 0.224924, 0.930495,
		0.724955, -0.583346, 0.366262,
		0.625182, 0.780459, 0.005595,
		42.004597, 33.274364, 27.471212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997822, 32.666607, 28.081720>,  <41.566971, 32.728043, 27.467297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997822, 32.666607, 28.081720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044392, 33.048973, 27.973885>,  <42.072334, 33.278393, 27.909184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044392, 33.048973, 27.973885>,  <41.997822, 32.666607, 28.081720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044392, 33.048973, 27.973885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153170, 0.285470, 0.946069,
		0.981318, -0.068848, 0.179651,
		0.116420, 0.955912, -0.269591,
		42.079319, 33.335747, 27.893007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448288, 33.102234, 28.696516>,  <41.997822, 32.666607, 28.081720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448288, 33.102234, 28.696516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226494, 33.359890, 28.485754>,  <42.093418, 33.514484, 28.359297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226494, 33.359890, 28.485754>,  <42.448288, 33.102234, 28.696516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226494, 33.359890, 28.485754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433139, 0.317249, 0.843649,
		0.710588, 0.696015, 0.103092,
		-0.554487, 0.644140, -0.526904,
		42.060146, 33.553131, 28.327682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280193, 33.614822, 29.184669>,  <42.448288, 33.102234, 28.696516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280193, 33.614822, 29.184669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035595, 33.698666, 28.879478>,  <41.888836, 33.748970, 28.696363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035595, 33.698666, 28.879478>,  <42.280193, 33.614822, 29.184669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035595, 33.698666, 28.879478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631295, 0.452075, 0.630155,
		0.477007, 0.867003, -0.144121,
		-0.611499, 0.209605, -0.762977,
		41.852146, 33.761547, 28.650585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156162, 34.294308, 29.253252>,  <42.280193, 33.614822, 29.184669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156162, 34.294308, 29.253252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845161, 34.143875, 29.051638>,  <41.658562, 34.053616, 28.930670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845161, 34.143875, 29.051638>,  <42.156162, 34.294308, 29.253252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845161, 34.143875, 29.051638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628866, 0.469780, 0.619543,
		0.003787, 0.798668, -0.601761,
		-0.777504, -0.376081, -0.504034,
		41.611912, 34.031052, 28.900427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734627, 34.783531, 29.054056>,  <42.156162, 34.294308, 29.253252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734627, 34.783531, 29.054056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477772, 34.477139, 29.041916>,  <41.323658, 34.293301, 29.034632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.477772, 34.477139, 29.041916>,  <41.734627, 34.783531, 29.054056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477772, 34.477139, 29.041916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609348, 0.486004, 0.626495,
		-0.465136, 0.420791, -0.778835,
		-0.642140, -0.765987, -0.030350,
		41.285130, 34.247341, 29.032810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120033, 35.060150, 28.966808>,  <41.734627, 34.783531, 29.054056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120033, 35.060150, 28.966808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036022, 34.692390, 29.099836>,  <40.985615, 34.471737, 29.179653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036022, 34.692390, 29.099836>,  <41.120033, 35.060150, 28.966808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036022, 34.692390, 29.099836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665410, 0.383638, 0.640353,
		-0.716324, -0.086806, -0.692347,
		-0.210024, -0.919395, 0.332570,
		40.973015, 34.416573, 29.199608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295757, 34.984779, 28.920925>,  <41.120033, 35.060150, 28.966808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295757, 34.984779, 28.920925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411610, 34.679783, 29.152348>,  <40.481121, 34.496784, 29.291201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411610, 34.679783, 29.152348>,  <40.295757, 34.984779, 28.920925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411610, 34.679783, 29.152348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651182, 0.286036, 0.702955,
		-0.701482, -0.580343, -0.413673,
		0.289629, -0.762487, 0.578558,
		40.498497, 34.451038, 29.325914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660366, 34.494606, 29.139021>,  <40.295757, 34.984779, 28.920925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660366, 34.494606, 29.139021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950573, 34.521118, 29.413021>,  <40.124699, 34.537025, 29.577421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950573, 34.521118, 29.413021>,  <39.660366, 34.494606, 29.139021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950573, 34.521118, 29.413021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687594, 0.111544, 0.717476,
		-0.028854, -0.991547, 0.126501,
		0.725522, 0.066279, 0.685000,
		40.168228, 34.541000, 29.618521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294029, 34.529869, 29.675518>,  <39.660366, 34.494606, 29.139021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294029, 34.529869, 29.675518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646317, 34.523636, 29.864868>,  <39.857689, 34.519897, 29.978479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646317, 34.523636, 29.864868>,  <39.294029, 34.529869, 29.675518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646317, 34.523636, 29.864868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472007, 0.053887, 0.879946,
		-0.039228, -0.998425, 0.040101,
		0.880721, -0.015590, 0.473378,
		39.910534, 34.518959, 30.006882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357109, 34.002579, 30.275227>,  <39.294029, 34.529869, 29.675518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357109, 34.002579, 30.275227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598385, 34.310680, 30.358047>,  <39.743149, 34.495541, 30.407740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598385, 34.310680, 30.358047>,  <39.357109, 34.002579, 30.275227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598385, 34.310680, 30.358047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478202, 0.141480, 0.866779,
		0.638346, -0.621845, 0.453676,
		0.603189, 0.770255, 0.207054,
		39.779343, 34.541756, 30.420164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524075, 33.968548, 30.972883>,  <39.357109, 34.002579, 30.275227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524075, 33.968548, 30.972883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609962, 34.353718, 30.907562>,  <39.661495, 34.584820, 30.868370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609962, 34.353718, 30.907562>,  <39.524075, 33.968548, 30.972883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609962, 34.353718, 30.907562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337694, 0.230088, 0.912700,
		0.916437, -0.140831, 0.374580,
		0.214723, 0.962926, -0.163304,
		39.674381, 34.642597, 30.858572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737900, 34.258347, 31.596714>,  <39.524075, 33.968548, 30.972883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737900, 34.258347, 31.596714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648647, 34.591820, 31.394651>,  <39.595097, 34.791904, 31.273413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648647, 34.591820, 31.394651>,  <39.737900, 34.258347, 31.596714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648647, 34.591820, 31.394651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333634, 0.421609, 0.843169,
		0.915915, 0.356677, 0.184070,
		-0.223133, 0.833683, -0.505157,
		39.581707, 34.841927, 31.243105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999046, 34.776157, 32.014751>,  <39.737900, 34.258347, 31.596714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999046, 34.776157, 32.014751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717770, 34.939632, 31.782030>,  <39.549004, 35.037716, 31.642399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717770, 34.939632, 31.782030>,  <39.999046, 34.776157, 32.014751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717770, 34.939632, 31.782030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393380, 0.457993, 0.797179,
		0.592258, 0.789441, -0.161289,
		-0.703195, 0.408688, -0.581800,
		39.506813, 35.062241, 31.607491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941048, 35.586945, 32.134773>,  <39.999046, 34.776157, 32.014751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941048, 35.586945, 32.134773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587994, 35.484177, 31.977322>,  <39.376160, 35.422516, 31.882851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587994, 35.484177, 31.977322>,  <39.941048, 35.586945, 32.134773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587994, 35.484177, 31.977322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469535, 0.521333, 0.712565,
		0.022140, 0.813759, -0.580781,
		-0.882636, -0.256921, -0.393631,
		39.323204, 35.407101, 31.859232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475323, 36.191658, 32.026070>,  <39.941048, 35.586945, 32.134773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475323, 36.191658, 32.026070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216583, 35.886730, 32.017513>,  <39.061340, 35.703773, 32.012379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216583, 35.886730, 32.017513>,  <39.475323, 36.191658, 32.026070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216583, 35.886730, 32.017513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555420, 0.451696, 0.698197,
		-0.522588, 0.463507, -0.715586,
		-0.646846, -0.762320, -0.021390,
		39.022530, 35.658035, 32.011097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818996, 36.445499, 32.008301>,  <39.475323, 36.191658, 32.026070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818996, 36.445499, 32.008301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730267, 36.081554, 32.148560>,  <38.677029, 35.863190, 32.232716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730267, 36.081554, 32.148560>,  <38.818996, 36.445499, 32.008301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730267, 36.081554, 32.148560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670303, 0.403448, 0.622836,
		-0.708159, -0.096878, -0.699375,
		-0.221822, -0.909859, 0.350643,
		38.663719, 35.808598, 32.253754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206860, 36.580902, 32.263908>,  <38.818996, 36.445499, 32.008301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206860, 36.580902, 32.263908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264378, 36.215561, 32.416286>,  <38.298889, 35.996357, 32.507713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264378, 36.215561, 32.416286>,  <38.206860, 36.580902, 32.263908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264378, 36.215561, 32.416286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513644, 0.260148, 0.817614,
		-0.845868, -0.313237, -0.431729,
		0.143793, -0.913348, 0.380943,
		38.307514, 35.941555, 32.530571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602730, 36.351387, 32.577938>,  <38.206860, 36.580902, 32.263908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602730, 36.351387, 32.577938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886387, 36.133179, 32.756615>,  <38.056580, 36.002254, 32.863819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886387, 36.133179, 32.756615>,  <37.602730, 36.351387, 32.577938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886387, 36.133179, 32.756615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430076, 0.167351, 0.887146,
		-0.558710, -0.821219, -0.115940,
		0.709139, -0.545520, 0.446688,
		38.099129, 35.969524, 32.890621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211029, 35.869427, 33.138958>,  <37.602730, 36.351387, 32.577938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211029, 35.869427, 33.138958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590668, 35.918480, 33.255009>,  <37.818451, 35.947910, 33.324638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590668, 35.918480, 33.255009>,  <37.211029, 35.869427, 33.138958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590668, 35.918480, 33.255009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285579, -0.053541, 0.956859,
		0.132872, -0.991007, -0.015795,
		0.949100, 0.122629, 0.290125,
		37.875397, 35.955269, 33.342045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268734, 35.406227, 33.714687>,  <37.211029, 35.869427, 33.138958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268734, 35.406227, 33.714687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587948, 35.645348, 33.745087>,  <37.779476, 35.788822, 33.763325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587948, 35.645348, 33.745087>,  <37.268734, 35.406227, 33.714687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587948, 35.645348, 33.745087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034020, -0.081217, 0.996116,
		0.601656, -0.797516, -0.044476,
		0.798030, 0.597806, 0.075996,
		37.827358, 35.824688, 33.767887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751518, 35.000309, 34.082600>,  <37.268734, 35.406227, 33.714687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751518, 35.000309, 34.082600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816292, 35.393940, 34.111908>,  <37.855156, 35.630119, 34.129494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816292, 35.393940, 34.111908>,  <37.751518, 35.000309, 34.082600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816292, 35.393940, 34.111908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103026, -0.056987, 0.993045,
		0.981409, -0.168356, 0.092157,
		0.161933, 0.984078, 0.073273,
		37.864872, 35.689163, 34.133888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275478, 35.010681, 34.596588>,  <37.751518, 35.000309, 34.082600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275478, 35.010681, 34.596588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127300, 35.382095, 34.586887>,  <38.038395, 35.604946, 34.581066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127300, 35.382095, 34.586887>,  <38.275478, 35.010681, 34.596588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127300, 35.382095, 34.586887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087152, -0.008756, 0.996156,
		0.924758, 0.371132, 0.084168,
		-0.370442, 0.928539, -0.024247,
		38.016167, 35.660656, 34.579613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501431, 35.368309, 35.260651>,  <38.275478, 35.010681, 34.596588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501431, 35.368309, 35.260651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198494, 35.585415, 35.115414>,  <38.016731, 35.715679, 35.028271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198494, 35.585415, 35.115414>,  <38.501431, 35.368309, 35.260651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198494, 35.585415, 35.115414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375178, 0.093448, 0.922230,
		0.534487, 0.834669, 0.132862,
		-0.757341, 0.542767, -0.363096,
		37.971291, 35.748245, 35.006485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516464, 36.026451, 35.576405>,  <38.501431, 35.368309, 35.260651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516464, 36.026451, 35.576405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141094, 35.967667, 35.451332>,  <37.915874, 35.932396, 35.376289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.141094, 35.967667, 35.451332>,  <38.516464, 36.026451, 35.576405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141094, 35.967667, 35.451332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332423, 0.137484, 0.933056,
		-0.094136, 0.979541, -0.177871,
		-0.938421, -0.146963, -0.312680,
		37.859570, 35.923576, 35.357529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136063, 36.433670, 36.046230>,  <38.516464, 36.026451, 35.576405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136063, 36.433670, 36.046230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878246, 36.172615, 35.886917>,  <37.723557, 36.015980, 35.791328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.878246, 36.172615, 35.886917>,  <38.136063, 36.433670, 36.046230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878246, 36.172615, 35.886917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483591, -0.055489, 0.873533,
		-0.592203, 0.755634, -0.279845,
		-0.644543, -0.652639, -0.398279,
		37.684883, 35.976822, 35.767433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499840, 36.620506, 36.228233>,  <38.136063, 36.433670, 36.046230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499840, 36.620506, 36.228233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424221, 36.239693, 36.131985>,  <37.378849, 36.011204, 36.074234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424221, 36.239693, 36.131985>,  <37.499840, 36.620506, 36.228233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424221, 36.239693, 36.131985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361475, -0.160368, 0.918487,
		-0.913015, 0.260617, -0.313818,
		-0.189047, -0.952030, -0.240625,
		37.367508, 35.954082, 36.059795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930183, 36.410191, 36.774094>,  <37.499840, 36.620506, 36.228233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930183, 36.410191, 36.774094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104401, 36.094051, 36.601746>,  <37.208931, 35.904369, 36.498337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104401, 36.094051, 36.601746>,  <36.930183, 36.410191, 36.774094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104401, 36.094051, 36.601746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310652, -0.581222, 0.752115,
		-0.844863, -0.193730, -0.498673,
		0.435547, -0.790348, -0.430870,
		37.235065, 35.856949, 36.472485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605476, 35.906780, 36.604317>,  <36.930183, 36.410191, 36.774094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605476, 35.906780, 36.604317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938004, 35.714939, 36.716660>,  <37.137520, 35.599834, 36.784065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938004, 35.714939, 36.716660>,  <36.605476, 35.906780, 36.604317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938004, 35.714939, 36.716660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440455, -0.260304, 0.859209,
		-0.338976, -0.837984, -0.427642,
		0.831321, -0.479609, 0.280858,
		37.187401, 35.571056, 36.800919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328712, 35.348854, 36.889492>,  <36.605476, 35.906780, 36.604317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328712, 35.348854, 36.889492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693695, 35.429897, 37.031685>,  <36.912685, 35.478523, 37.117001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693695, 35.429897, 37.031685>,  <36.328712, 35.348854, 36.889492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693695, 35.429897, 37.031685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347676, -0.074132, 0.934680,
		0.215725, -0.976450, 0.002799,
		0.912460, 0.202607, 0.355480,
		36.967434, 35.490681, 37.138329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518970, 34.858727, 37.406059>,  <36.328712, 35.348854, 36.889492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518970, 34.858727, 37.406059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697071, 35.205254, 37.496605>,  <36.803932, 35.413170, 37.550934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697071, 35.205254, 37.496605>,  <36.518970, 34.858727, 37.406059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697071, 35.205254, 37.496605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219244, -0.139633, 0.965626,
		0.868148, -0.479578, 0.127763,
		0.445253, 0.866318, 0.226366,
		36.830647, 35.465149, 37.564514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929829, 34.631733, 37.856255>,  <36.518970, 34.858727, 37.406059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929829, 34.631733, 37.856255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823891, 35.016045, 37.889149>,  <36.760330, 35.246632, 37.908886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823891, 35.016045, 37.889149>,  <36.929829, 34.631733, 37.856255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823891, 35.016045, 37.889149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136788, -0.121851, 0.983077,
		0.954541, 0.249110, 0.163695,
		-0.264841, 0.960779, 0.082237,
		36.744438, 35.304279, 37.913818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157459, 34.887104, 38.424297>,  <36.929829, 34.631733, 37.856255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157459, 34.887104, 38.424297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986359, 34.654930, 38.701462>,  <36.883698, 34.515625, 38.867760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986359, 34.654930, 38.701462>,  <37.157459, 34.887104, 38.424297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986359, 34.654930, 38.701462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282733, 0.642198, 0.712491,
		-0.858541, 0.500676, -0.110591,
		-0.427749, -0.580435, 0.692912,
		36.858032, 34.480801, 38.909336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548832, 35.307495, 38.812622>,  <37.157459, 34.887104, 38.424297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548832, 35.307495, 38.812622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757156, 35.031845, 39.014160>,  <36.882153, 34.866455, 39.135082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757156, 35.031845, 39.014160>,  <36.548832, 35.307495, 38.812622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757156, 35.031845, 39.014160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338857, 0.708607, 0.618913,
		-0.783536, -0.151607, 0.602567,
		0.520815, -0.689124, 0.503845,
		36.913403, 34.825108, 39.165314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282337, 35.305363, 39.559341>,  <36.548832, 35.307495, 38.812622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282337, 35.305363, 39.559341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668709, 35.216469, 39.506275>,  <36.900532, 35.163132, 39.474438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668709, 35.216469, 39.506275>,  <36.282337, 35.305363, 39.559341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668709, 35.216469, 39.506275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257158, 0.766037, 0.589116,
		-0.029300, -0.603157, 0.797085,
		0.965925, -0.222238, -0.132662,
		36.958485, 35.149799, 39.466476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549622, 35.633690, 40.045452>,  <36.282337, 35.305363, 39.559341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549622, 35.633690, 40.045452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903351, 35.568733, 39.870361>,  <37.115589, 35.529758, 39.765308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.903351, 35.568733, 39.870361>,  <36.549622, 35.633690, 40.045452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903351, 35.568733, 39.870361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396244, 0.756888, 0.519722,
		0.246910, -0.633047, 0.733680,
		0.884323, -0.162392, -0.437724,
		37.168648, 35.520016, 39.739044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138691, 35.489384, 40.480042>,  <36.549622, 35.633690, 40.045452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138691, 35.489384, 40.480042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257168, 35.670429, 40.143608>,  <37.328255, 35.779057, 39.941750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257168, 35.670429, 40.143608>,  <37.138691, 35.489384, 40.480042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257168, 35.670429, 40.143608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407419, 0.736589, 0.539857,
		0.863876, -0.502571, 0.033765,
		0.296188, 0.452613, -0.841079,
		37.346024, 35.806213, 39.891285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859806, 35.496365, 40.903797>,  <37.138691, 35.489384, 40.480042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859806, 35.496365, 40.903797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989517, 35.403282, 40.537041>,  <38.067345, 35.347431, 40.316986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989517, 35.403282, 40.537041>,  <37.859806, 35.496365, 40.903797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989517, 35.403282, 40.537041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854281, -0.344224, 0.389504,
		-0.406257, -0.909591, 0.087173,
		0.324282, -0.232709, -0.916890,
		38.086803, 35.333469, 40.261974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022911, 34.774429, 40.772491>,  <37.859806, 35.496365, 40.903797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022911, 34.774429, 40.772491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261406, 34.980194, 40.525951>,  <38.404503, 35.103653, 40.378029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261406, 34.980194, 40.525951>,  <38.022911, 34.774429, 40.772491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261406, 34.980194, 40.525951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802729, -0.392898, 0.448616,
		-0.011389, -0.762242, -0.647192,
		0.596235, 0.514411, -0.616349,
		38.440277, 35.134518, 40.341045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237614, 34.422337, 40.111752>,  <38.022911, 34.774429, 40.772491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237614, 34.422337, 40.111752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371761, 34.730621, 39.895035>,  <38.452251, 34.915592, 39.765007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371761, 34.730621, 39.895035>,  <38.237614, 34.422337, 40.111752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371761, 34.730621, 39.895035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835441, -0.509087, -0.207050,
		-0.435393, -0.383194, -0.814614,
		0.335369, 0.770710, -0.541789,
		38.472370, 34.961834, 39.732498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424297, 34.209629, 39.493885>,  <38.237614, 34.422337, 40.111752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424297, 34.209629, 39.493885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621605, 34.529949, 39.629765>,  <38.739990, 34.722141, 39.711292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621605, 34.529949, 39.629765>,  <38.424297, 34.209629, 39.493885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621605, 34.529949, 39.629765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869634, -0.444775, -0.214271,
		-0.020499, 0.401107, -0.915802,
		0.493271, 0.800805, 0.339699,
		38.769585, 34.770191, 39.731674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858101, 34.445316, 38.961277>,  <38.424297, 34.209629, 39.493885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858101, 34.445316, 38.961277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016834, 34.568516, 39.307148>,  <39.112072, 34.642433, 39.514671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016834, 34.568516, 39.307148>,  <38.858101, 34.445316, 38.961277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016834, 34.568516, 39.307148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875676, -0.409434, -0.256038,
		0.275170, 0.858780, -0.432179,
		0.396829, 0.307994, 0.864677,
		39.135883, 34.660915, 39.566551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537994, 34.557262, 38.794292>,  <38.858101, 34.445316, 38.961277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537994, 34.557262, 38.794292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551445, 34.581432, 39.193336>,  <39.559513, 34.595932, 39.432762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551445, 34.581432, 39.193336>,  <39.537994, 34.557262, 38.794292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551445, 34.581432, 39.193336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925776, -0.377981, -0.008310,
		0.376574, 0.923840, -0.068645,
		0.033623, 0.060420, 0.997607,
		39.561531, 34.599560, 39.492619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071346, 35.000286, 38.991276>,  <39.537994, 34.557262, 38.794292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071346, 35.000286, 38.991276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004002, 34.752377, 39.297878>,  <39.963593, 34.603630, 39.481842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004002, 34.752377, 39.297878>,  <40.071346, 35.000286, 38.991276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004002, 34.752377, 39.297878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982565, -0.167733, 0.080198,
		0.078864, 0.766648, 0.637206,
		-0.168364, -0.619772, 0.766509,
		39.953491, 34.566444, 39.527832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604279, 35.078728, 39.461609>,  <40.071346, 35.000286, 38.991276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604279, 35.078728, 39.461609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459221, 34.727493, 39.586483>,  <40.372189, 34.516754, 39.661407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459221, 34.727493, 39.586483>,  <40.604279, 35.078728, 39.461609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459221, 34.727493, 39.586483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910350, -0.262109, 0.320254,
		-0.199385, 0.400332, 0.894416,
		-0.362642, -0.878085, 0.312181,
		40.350430, 34.464069, 39.680138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919033, 35.057564, 40.076099>,  <40.604279, 35.078728, 39.461609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919033, 35.057564, 40.076099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800739, 34.692123, 39.964481>,  <40.729763, 34.472858, 39.897511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800739, 34.692123, 39.964481>,  <40.919033, 35.057564, 40.076099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800739, 34.692123, 39.964481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913485, -0.355914, 0.197154,
		-0.279437, -0.196601, 0.939821,
		-0.295735, -0.913605, -0.279047,
		40.712017, 34.418041, 39.880768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989071, 34.818077, 40.683544>,  <40.919033, 35.057564, 40.076099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989071, 34.818077, 40.683544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030598, 34.580029, 40.364784>,  <41.055515, 34.437199, 40.173527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030598, 34.580029, 40.364784>,  <40.989071, 34.818077, 40.683544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030598, 34.580029, 40.364784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933327, -0.218577, 0.284821,
		-0.343688, -0.773340, 0.532750,
		0.103817, -0.595121, -0.796902,
		41.061741, 34.401493, 40.125713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282009, 34.177319, 40.867683>,  <40.989071, 34.818077, 40.683544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282009, 34.177319, 40.867683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355164, 34.243893, 40.480106>,  <41.399055, 34.283836, 40.247559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355164, 34.243893, 40.480106>,  <41.282009, 34.177319, 40.867683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355164, 34.243893, 40.480106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957970, -0.251728, 0.137574,
		-0.221013, -0.953379, -0.205480,
		0.182886, 0.166438, -0.968943,
		41.410030, 34.293823, 40.189423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602806, 33.589172, 40.516319>,  <41.282009, 34.177319, 40.867683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602806, 33.589172, 40.516319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736176, 33.926338, 40.347404>,  <41.816196, 34.128635, 40.246056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.736176, 33.926338, 40.347404>,  <41.602806, 33.589172, 40.516319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736176, 33.926338, 40.347404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924969, -0.205828, 0.319480,
		0.182375, -0.497126, -0.848295,
		0.333425, 0.842912, -0.422288,
		41.836205, 34.179211, 40.220718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087139, 33.848885, 39.926434>,  <41.602806, 33.589172, 40.516319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087139, 33.848885, 39.926434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018471, 33.590725, 39.628712>,  <41.977272, 33.435829, 39.450077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.018471, 33.590725, 39.628712>,  <42.087139, 33.848885, 39.926434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018471, 33.590725, 39.628712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975302, 0.217927, 0.035979,
		0.138983, 0.732098, -0.666871,
		-0.171669, -0.645400, -0.744304,
		41.966969, 33.397106, 39.405422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776482, 34.150898, 39.254627>,  <42.087139, 33.848885, 39.926434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776482, 34.150898, 39.254627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676258, 33.778027, 39.359138>,  <41.616123, 33.554302, 39.421844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676258, 33.778027, 39.359138>,  <41.776482, 34.150898, 39.254627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676258, 33.778027, 39.359138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936054, 0.302141, 0.180313,
		-0.247026, -0.199391, -0.948273,
		-0.250560, -0.932177, 0.261277,
		41.601089, 33.498375, 39.437523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311344, 33.695999, 38.780170>,  <41.776482, 34.150898, 39.254627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311344, 33.695999, 38.780170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280701, 33.619656, 39.171619>,  <41.262314, 33.573849, 39.406490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.280701, 33.619656, 39.171619>,  <41.311344, 33.695999, 38.780170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.280701, 33.619656, 39.171619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903008, 0.429425, 0.013064,
		-0.422739, -0.882704, -0.205244,
		-0.076605, -0.190860, 0.978624,
		41.257717, 33.562397, 39.465206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621746, 33.636097, 38.845310>,  <41.311344, 33.695999, 38.780170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621746, 33.636097, 38.845310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743065, 33.669632, 39.224991>,  <40.815857, 33.689751, 39.452801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743065, 33.669632, 39.224991>,  <40.621746, 33.636097, 38.845310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743065, 33.669632, 39.224991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905120, 0.336800, 0.259468,
		-0.297939, -0.937837, 0.178030,
		0.303299, 0.083833, 0.949201,
		40.834053, 33.694782, 39.509750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223190, 33.266296, 39.396996>,  <40.621746, 33.636097, 38.845310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223190, 33.266296, 39.396996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384235, 33.599812, 39.548100>,  <40.480862, 33.799919, 39.638763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384235, 33.599812, 39.548100>,  <40.223190, 33.266296, 39.396996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384235, 33.599812, 39.548100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914854, 0.380367, 0.135509,
		-0.030703, -0.400156, 0.915933,
		0.402615, 0.833785, 0.377763,
		40.505020, 33.849945, 39.661427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809319, 33.386856, 40.099575>,  <40.223190, 33.266296, 39.396996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809319, 33.386856, 40.099575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969032, 33.722366, 39.951500>,  <40.064861, 33.923672, 39.862656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969032, 33.722366, 39.951500>,  <39.809319, 33.386856, 40.099575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969032, 33.722366, 39.951500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893179, 0.446981, 0.049395,
		0.206897, 0.310920, 0.927644,
		0.399281, 0.838771, -0.370186,
		40.088818, 33.973999, 39.840443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598160, 33.925148, 40.581993>,  <39.809319, 33.386856, 40.099575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598160, 33.925148, 40.581993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721130, 34.114780, 40.251965>,  <39.794914, 34.228558, 40.053947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721130, 34.114780, 40.251965>,  <39.598160, 33.925148, 40.581993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721130, 34.114780, 40.251965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754114, 0.650183, 0.092601,
		0.580346, 0.593728, 0.557392,
		0.307427, 0.474077, -0.825069,
		39.813358, 34.257004, 40.004444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682430, 34.675571, 40.831760>,  <39.598160, 33.925148, 40.581993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682430, 34.675571, 40.831760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655190, 34.656925, 40.433125>,  <39.638844, 34.645737, 40.193943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655190, 34.656925, 40.433125>,  <39.682430, 34.675571, 40.831760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655190, 34.656925, 40.433125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618346, 0.785887, 0.005496,
		0.782950, 0.616611, -0.082344,
		-0.068102, -0.046614, -0.996589,
		39.634758, 34.642941, 40.134148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672722, 35.314041, 40.604961>,  <39.682430, 34.675571, 40.831760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672722, 35.314041, 40.604961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493950, 35.122749, 40.302559>,  <39.386688, 35.007973, 40.121117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493950, 35.122749, 40.302559>,  <39.672722, 35.314041, 40.604961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493950, 35.122749, 40.302559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688575, 0.723402, -0.050537,
		0.571066, 0.497982, -0.652608,
		-0.446931, -0.478230, -0.756008,
		39.359871, 34.979279, 40.075756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478630, 35.783886, 40.147144>,  <39.672722, 35.314041, 40.604961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478630, 35.783886, 40.147144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256618, 35.471943, 40.031376>,  <39.123413, 35.284775, 39.961914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256618, 35.471943, 40.031376>,  <39.478630, 35.783886, 40.147144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256618, 35.471943, 40.031376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807178, 0.589007, -0.039180,
		0.201028, 0.211872, -0.956398,
		-0.555024, -0.779860, -0.289425,
		39.090111, 35.237984, 39.944550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038357, 35.891975, 39.517448>,  <39.478630, 35.783886, 40.147144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038357, 35.891975, 39.517448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854465, 35.621819, 39.748100>,  <38.744129, 35.459724, 39.886490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854465, 35.621819, 39.748100>,  <39.038357, 35.891975, 39.517448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854465, 35.621819, 39.748100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808413, 0.587039, 0.043064,
		-0.367586, -0.446354, -0.815872,
		-0.459727, -0.675391, 0.576626,
		38.716549, 35.419201, 39.921089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448921, 35.618153, 39.214336>,  <39.038357, 35.891975, 39.517448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448921, 35.618153, 39.214336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411690, 35.618580, 39.612598>,  <38.389351, 35.618835, 39.851555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411690, 35.618580, 39.612598>,  <38.448921, 35.618153, 39.214336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411690, 35.618580, 39.612598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854332, 0.513468, -0.080420,
		-0.511325, -0.858108, -0.046879,
		-0.093079, 0.001071, 0.995658,
		38.383766, 35.618900, 39.911297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423023, 36.175556, 38.732601>,  <38.448921, 35.618153, 39.214336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423023, 36.175556, 38.732601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058971, 36.286373, 38.855835>,  <37.840542, 36.352863, 38.929775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058971, 36.286373, 38.855835>,  <38.423023, 36.175556, 38.732601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058971, 36.286373, 38.855835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234444, 0.268745, -0.934244,
		-0.341624, -0.922509, -0.179640,
		-0.910126, 0.277045, 0.308087,
		37.785934, 36.369488, 38.948261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811848, 35.979153, 38.480103>,  <38.423023, 36.175556, 38.732601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811848, 35.979153, 38.480103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460762, 36.041821, 38.298962>,  <37.250111, 36.079422, 38.190277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460762, 36.041821, 38.298962>,  <37.811848, 35.979153, 38.480103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460762, 36.041821, 38.298962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223695, 0.969711, -0.098082,
		0.423773, -0.187390, -0.886172,
		-0.877711, 0.156668, -0.452856,
		37.197449, 36.088821, 38.163105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824783, 36.114510, 37.709164>,  <37.811848, 35.979153, 38.480103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824783, 36.114510, 37.709164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551548, 36.280579, 37.949505>,  <37.387608, 36.380222, 38.093708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551548, 36.280579, 37.949505>,  <37.824783, 36.114510, 37.709164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551548, 36.280579, 37.949505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429945, 0.893636, -0.128692,
		-0.590371, 0.170425, -0.788934,
		-0.683088, 0.415174, 0.600850,
		37.346622, 36.405132, 38.129761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291103, 36.661449, 37.403873>,  <37.824783, 36.114510, 37.709164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291103, 36.661449, 37.403873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410400, 36.712879, 37.782188>,  <37.481979, 36.743736, 38.009178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410400, 36.712879, 37.782188>,  <37.291103, 36.661449, 37.403873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410400, 36.712879, 37.782188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467810, 0.844023, -0.262258,
		-0.831988, 0.520668, 0.191577,
		0.298245, 0.128574, 0.945790,
		37.499874, 36.751450, 38.065926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217236, 37.436069, 37.632668>,  <37.291103, 36.661449, 37.403873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217236, 37.436069, 37.632668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522133, 37.212643, 37.763504>,  <37.705070, 37.078587, 37.842007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522133, 37.212643, 37.763504>,  <37.217236, 37.436069, 37.632668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522133, 37.212643, 37.763504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641070, 0.581543, -0.500837,
		0.089534, 0.591447, 0.801358,
		0.762242, -0.558568, 0.327091,
		37.750805, 37.045071, 37.861629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691288, 37.848644, 37.959251>,  <37.217236, 37.436069, 37.632668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691288, 37.848644, 37.959251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841221, 37.511829, 37.804081>,  <37.931179, 37.309742, 37.710979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841221, 37.511829, 37.804081>,  <37.691288, 37.848644, 37.959251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841221, 37.511829, 37.804081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536555, 0.538260, -0.649912,
		0.756051, 0.035462, 0.653551,
		0.374828, -0.842033, -0.387924,
		37.953671, 37.259220, 37.687702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444969, 37.706280, 37.899590>,  <37.691288, 37.848644, 37.959251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444969, 37.706280, 37.899590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293571, 37.523190, 37.577785>,  <38.202732, 37.413338, 37.384705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293571, 37.523190, 37.577785>,  <38.444969, 37.706280, 37.899590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293571, 37.523190, 37.577785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511216, 0.621199, -0.593944,
		0.771620, -0.636082, -0.001127,
		-0.378498, -0.457723, -0.804506,
		38.180023, 37.385872, 37.336433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051586, 37.470776, 37.541836>,  <38.444969, 37.706280, 37.899590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051586, 37.470776, 37.541836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741623, 37.525272, 37.294949>,  <38.555645, 37.557972, 37.146816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741623, 37.525272, 37.294949>,  <39.051586, 37.470776, 37.541836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741623, 37.525272, 37.294949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553754, 0.617155, -0.558996,
		0.304762, -0.774957, -0.553680,
		-0.774904, 0.136242, -0.617221,
		38.509151, 37.566143, 37.109783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263645, 37.244644, 36.903187>,  <39.051586, 37.470776, 37.541836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263645, 37.244644, 36.903187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992058, 37.533974, 36.852917>,  <38.829105, 37.707573, 36.822754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992058, 37.533974, 36.852917>,  <39.263645, 37.244644, 36.903187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992058, 37.533974, 36.852917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637879, 0.496474, -0.588748,
		-0.363464, -0.479907, -0.798488,
		-0.678972, 0.723328, -0.125673,
		38.788364, 37.750973, 36.815216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609241, 37.600754, 36.364449>,  <39.263645, 37.244644, 36.903187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609241, 37.600754, 36.364449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745918, 37.568333, 35.989925>,  <39.827923, 37.548882, 35.765209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745918, 37.568333, 35.989925>,  <39.609241, 37.600754, 36.364449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745918, 37.568333, 35.989925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486937, 0.867388, 0.102613,
		0.803830, -0.490987, 0.335843,
		0.341687, -0.081051, -0.936312,
		39.848423, 37.544018, 35.709030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315823, 37.837471, 36.297699>,  <39.609241, 37.600754, 36.364449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315823, 37.837471, 36.297699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141541, 37.898178, 35.942818>,  <40.036972, 37.934601, 35.729889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141541, 37.898178, 35.942818>,  <40.315823, 37.837471, 36.297699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141541, 37.898178, 35.942818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316065, 0.948711, 0.007067,
		0.842772, -0.277335, -0.461326,
		-0.435705, 0.151765, -0.887203,
		40.010830, 37.943707, 35.676659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751900, 38.084839, 35.798378>,  <40.315823, 37.837471, 36.297699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751900, 38.084839, 35.798378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392914, 38.245708, 35.725918>,  <40.177521, 38.342228, 35.682442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392914, 38.245708, 35.725918>,  <40.751900, 38.084839, 35.798378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392914, 38.245708, 35.725918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382697, 0.914169, 0.133558,
		0.219317, 0.050537, -0.974344,
		-0.897465, 0.402170, -0.181153,
		40.123672, 38.366360, 35.671574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806763, 37.327679, 36.019829>,  <40.751900, 38.084839, 35.798378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806763, 37.327679, 36.019829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653870, 36.959461, 36.052082>,  <40.562134, 36.738533, 36.071434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653870, 36.959461, 36.052082>,  <40.806763, 37.327679, 36.019829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653870, 36.959461, 36.052082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149141, -0.147568, -0.977742,
		0.911951, -0.361700, 0.193696,
		-0.382233, -0.920541, 0.080631,
		40.539200, 36.683300, 36.076271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325020, 36.874718, 35.731041>,  <40.806763, 37.327679, 36.019829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325020, 36.874718, 35.731041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944405, 36.758472, 35.690807>,  <40.716034, 36.688725, 35.666668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944405, 36.758472, 35.690807>,  <41.325020, 36.874718, 35.731041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944405, 36.758472, 35.690807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194149, -0.314035, -0.929348,
		0.238492, -0.903840, 0.355239,
		-0.951540, -0.290611, -0.100585,
		40.658943, 36.671288, 35.660633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400627, 36.175034, 35.545712>,  <41.325020, 36.874718, 35.731041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400627, 36.175034, 35.545712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038483, 36.313126, 35.446812>,  <40.821194, 36.395981, 35.387474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038483, 36.313126, 35.446812>,  <41.400627, 36.175034, 35.545712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038483, 36.313126, 35.446812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073922, -0.445229, -0.892360,
		-0.418149, -0.826189, 0.377575,
		-0.905365, 0.345229, -0.247246,
		40.766872, 36.416695, 35.372639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929359, 35.680958, 35.345554>,  <41.400627, 36.175034, 35.545712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929359, 35.680958, 35.345554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842838, 36.014942, 35.143150>,  <40.790924, 36.215332, 35.021706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842838, 36.014942, 35.143150>,  <40.929359, 35.680958, 35.345554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842838, 36.014942, 35.143150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226255, -0.461306, -0.857908,
		-0.949747, -0.300059, -0.089130,
		-0.216307, 0.834962, -0.506014,
		40.777946, 36.265430, 34.991344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761951, 35.041695, 35.434460>,  <40.929359, 35.680958, 35.345554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761951, 35.041695, 35.434460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103359, 34.879318, 35.303791>,  <41.308205, 34.781891, 35.225391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103359, 34.879318, 35.303791>,  <40.761951, 35.041695, 35.434460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103359, 34.879318, 35.303791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513828, 0.759825, 0.398305,
		0.086523, -0.507814, 0.857111,
		0.853519, -0.405945, -0.326671,
		41.359413, 34.757534, 35.205791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967632, 34.450081, 35.071850>,  <40.761951, 35.041695, 35.434460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967632, 34.450081, 35.071850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186314, 34.479958, 35.405445>,  <41.317524, 34.497883, 35.605602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186314, 34.479958, 35.405445>,  <40.967632, 34.450081, 35.071850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186314, 34.479958, 35.405445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127346, -0.977009, 0.170986,
		0.827585, -0.199684, -0.524622,
		0.546704, 0.074696, 0.833988,
		41.350327, 34.502365, 35.655640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618027, 33.976929, 35.122471>,  <40.967632, 34.450081, 35.071850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618027, 33.976929, 35.122471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498730, 34.028088, 35.500824>,  <41.427151, 34.058784, 35.727837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498730, 34.028088, 35.500824>,  <41.618027, 33.976929, 35.122471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498730, 34.028088, 35.500824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062046, -0.986288, 0.152923,
		0.952471, 0.104296, 0.286218,
		-0.298243, 0.127896, 0.945882,
		41.409256, 34.066456, 35.784588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145115, 33.647091, 35.523273>,  <41.618027, 33.976929, 35.122471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145115, 33.647091, 35.523273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765018, 33.665558, 35.646503>,  <41.536961, 33.676640, 35.720440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765018, 33.665558, 35.646503>,  <42.145115, 33.647091, 35.523273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765018, 33.665558, 35.646503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047820, -0.998854, 0.002193,
		0.307823, -0.012648, 0.951360,
		-0.950241, 0.046169, 0.308075,
		41.479946, 33.679409, 35.738926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947144, 33.008442, 35.719707>,  <42.145115, 33.647091, 35.523273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947144, 33.008442, 35.719707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587006, 33.173920, 35.773735>,  <41.370922, 33.273205, 35.806152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587006, 33.173920, 35.773735>,  <41.947144, 33.008442, 35.719707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587006, 33.173920, 35.773735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347312, -0.870072, 0.349786,
		0.262223, 0.268016, 0.927042,
		-0.900341, 0.413694, 0.135068,
		41.316902, 33.298027, 35.814255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660091, 33.170742, 36.085773>,  <41.947144, 33.008442, 35.719707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660091, 33.170742, 36.085773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590923, 33.213070, 35.694080>,  <42.549423, 33.238464, 35.459064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590923, 33.213070, 35.694080>,  <42.660091, 33.170742, 36.085773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590923, 33.213070, 35.694080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672164, 0.739385, -0.038795,
		0.719926, -0.664916, -0.198980,
		-0.172918, 0.105818, -0.979235,
		42.539047, 33.244816, 35.400311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282814, 33.111614, 35.752998>,  <42.660091, 33.170742, 36.085773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282814, 33.111614, 35.752998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052010, 33.321362, 35.502529>,  <42.913525, 33.447208, 35.352245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.052010, 33.321362, 35.502529>,  <43.282814, 33.111614, 35.752998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052010, 33.321362, 35.502529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688289, 0.724927, -0.027190,
		0.439675, -0.446679, -0.779207,
		-0.577014, 0.524365, -0.626176,
		42.878906, 33.478672, 35.314674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517635, 33.303276, 35.051971>,  <43.282814, 33.111614, 35.752998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517635, 33.303276, 35.051971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316769, 33.629513, 35.166954>,  <43.196247, 33.825256, 35.235943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316769, 33.629513, 35.166954>,  <43.517635, 33.303276, 35.051971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316769, 33.629513, 35.166954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798634, 0.564887, -0.207574,
		-0.331675, 0.125333, -0.935031,
		-0.502171, 0.815595, 0.287454,
		43.166119, 33.874191, 35.253189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314594, 33.759476, 34.494949>,  <43.517635, 33.303276, 35.051971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314594, 33.759476, 34.494949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404465, 33.911133, 34.854008>,  <43.458385, 34.002129, 35.069443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.404465, 33.911133, 34.854008>,  <43.314594, 33.759476, 34.494949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.404465, 33.911133, 34.854008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867071, 0.342564, -0.361715,
		-0.444644, 0.859592, -0.251780,
		0.224677, 0.379146, 0.897646,
		43.471867, 34.024876, 35.123302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422318, 34.537788, 34.550697>,  <43.314594, 33.759476, 34.494949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422318, 34.537788, 34.550697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645645, 34.317505, 34.798893>,  <43.779640, 34.185337, 34.947811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645645, 34.317505, 34.798893>,  <43.422318, 34.537788, 34.550697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645645, 34.317505, 34.798893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829396, 0.352884, -0.433099,
		0.019550, 0.756437, 0.653775,
		0.558319, -0.550705, 0.620487,
		43.813141, 34.152294, 34.985039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848267, 35.001534, 34.787018>,  <43.422318, 34.537788, 34.550697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848267, 35.001534, 34.787018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000854, 34.631931, 34.797588>,  <44.092407, 34.410172, 34.803932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.000854, 34.631931, 34.797588>,  <43.848267, 35.001534, 34.787018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.000854, 34.631931, 34.797588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830114, 0.329844, -0.449570,
		0.406688, 0.193434, 0.892854,
		0.381465, -0.924005, 0.026429,
		44.115295, 34.354729, 34.805515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505177, 34.903152, 35.240715>,  <43.848267, 35.001534, 34.787018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505177, 34.903152, 35.240715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487007, 34.688927, 34.903404>,  <44.476105, 34.560390, 34.701019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487007, 34.688927, 34.903404>,  <44.505177, 34.903152, 35.240715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487007, 34.688927, 34.903404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808059, 0.476623, -0.346223,
		0.587348, -0.697141, 0.411116,
		-0.045419, -0.535560, -0.843275,
		44.473381, 34.528259, 34.650421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199665, 34.478703, 35.044960>,  <44.505177, 34.903152, 35.240715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199665, 34.478703, 35.044960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948093, 34.666264, 34.796902>,  <44.797150, 34.778801, 34.648067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.948093, 34.666264, 34.796902>,  <45.199665, 34.478703, 35.044960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.948093, 34.666264, 34.796902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704692, 0.680761, -0.199934,
		0.328422, -0.562756, -0.758580,
		-0.628926, 0.468903, -0.620147,
		44.759415, 34.806934, 34.610859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661800, 34.711105, 34.521183>,  <45.199665, 34.478703, 35.044960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661800, 34.711105, 34.521183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330051, 34.928177, 34.574306>,  <45.131001, 35.058418, 34.606178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330051, 34.928177, 34.574306>,  <45.661800, 34.711105, 34.521183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330051, 34.928177, 34.574306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500059, 0.827068, -0.256711,
		-0.249150, -0.146499, -0.957320,
		-0.829376, 0.542676, 0.132806,
		45.081238, 35.090981, 34.614147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198574, 34.816078, 35.029106>,  <45.661800, 34.711105, 34.521183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198574, 34.816078, 35.029106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392632, 35.095314, 35.239746>,  <46.509068, 35.262856, 35.366131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.392632, 35.095314, 35.239746>,  <46.198574, 34.816078, 35.029106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392632, 35.095314, 35.239746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743966, -0.645981, 0.170950,
		0.459512, 0.308837, -0.832748,
		0.485143, 0.698089, 0.526600,
		46.538174, 35.304741, 35.397724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.905472, 34.709648, 34.884033>,  <46.198574, 34.816078, 35.029106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.905472, 34.709648, 34.884033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.915886, 34.917824, 35.225433>,  <46.922134, 35.042728, 35.430275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.915886, 34.917824, 35.225433>,  <46.905472, 34.709648, 34.884033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.915886, 34.917824, 35.225433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762694, -0.562277, 0.319596,
		0.646235, 0.642638, -0.411577,
		0.026036, 0.520442, 0.853500,
		46.923698, 35.073956, 35.481483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.495415, 34.954388, 35.297909>,  <46.905472, 34.709648, 34.884033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.495415, 34.954388, 35.297909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771469, 34.927719, 35.009670>,  <47.937103, 34.911716, 34.836727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771469, 34.927719, 35.009670>,  <47.495415, 34.954388, 35.297909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.771469, 34.927719, 35.009670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444395, 0.824932, 0.349284,
		0.571157, -0.561285, 0.598948,
		0.690139, -0.066674, -0.720599,
		47.978512, 34.907719, 34.793491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.980568, 30.458611, 28.563171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666321, 30.524117, 28.324514>,  <38.477772, 30.563419, 28.181320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.666321, 30.524117, 28.324514>,  <38.980568, 30.458611, 28.563171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666321, 30.524117, 28.324514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484458, 0.436999, 0.757847,
		0.384840, 0.884429, -0.263978,
		-0.785620, 0.163763, -0.596643,
		38.430634, 30.573246, 28.145521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839455, 31.081537, 28.709293>,  <38.980568, 30.458611, 28.563171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839455, 31.081537, 28.709293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505672, 30.940279, 28.540077>,  <38.305401, 30.855524, 28.438547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505672, 30.940279, 28.540077>,  <38.839455, 31.081537, 28.709293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505672, 30.940279, 28.540077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550678, 0.563302, 0.615991,
		0.020766, 0.746979, -0.664523,
		-0.834459, -0.353147, -0.423043,
		38.255333, 30.834335, 28.413164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461182, 31.617575, 28.537256>,  <38.839455, 31.081537, 28.709293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461182, 31.617575, 28.537256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173504, 31.340467, 28.558523>,  <38.000896, 31.174202, 28.571283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173504, 31.340467, 28.558523>,  <38.461182, 31.617575, 28.537256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173504, 31.340467, 28.558523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534381, 0.600425, 0.594917,
		-0.444065, 0.399450, -0.802026,
		-0.719196, -0.692770, 0.053169,
		37.957745, 31.132637, 28.574474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787224, 32.020149, 28.513966>,  <38.461182, 31.617575, 28.537256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787224, 32.020149, 28.513966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698406, 31.658560, 28.660130>,  <37.645115, 31.441605, 28.747828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698406, 31.658560, 28.660130>,  <37.787224, 32.020149, 28.513966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698406, 31.658560, 28.660130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525792, 0.426616, 0.735895,
		-0.821121, -0.028727, -0.570031,
		-0.222045, -0.903977, 0.365408,
		37.631794, 31.387367, 28.769753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977909, 32.006031, 28.573000>,  <37.787224, 32.020149, 28.513966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977909, 32.006031, 28.573000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161026, 31.739176, 28.808067>,  <37.270897, 31.579063, 28.949108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161026, 31.739176, 28.808067>,  <36.977909, 32.006031, 28.573000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161026, 31.739176, 28.808067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467246, 0.381818, 0.797431,
		-0.756379, -0.639643, -0.136925,
		0.457791, -0.667138, 0.587669,
		37.298363, 31.539034, 28.984367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484825, 31.720394, 28.949333>,  <36.977909, 32.006031, 28.573000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484825, 31.720394, 28.949333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806984, 31.639444, 29.172180>,  <37.000278, 31.590874, 29.305889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.806984, 31.639444, 29.172180>,  <36.484825, 31.720394, 28.949333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806984, 31.639444, 29.172180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407936, 0.492649, 0.768691,
		-0.430028, -0.846369, 0.314222,
		0.805397, -0.202376, 0.557117,
		37.048603, 31.578732, 29.339315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187855, 31.426636, 29.614660>,  <36.484825, 31.720394, 28.949333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187855, 31.426636, 29.614660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567722, 31.529480, 29.686234>,  <36.795643, 31.591187, 29.729177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567722, 31.529480, 29.686234>,  <36.187855, 31.426636, 29.614660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567722, 31.529480, 29.686234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268836, 0.375780, 0.886858,
		0.160778, -0.890328, 0.425988,
		0.949672, 0.257108, 0.178935,
		36.852623, 31.606613, 29.739914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431690, 31.239548, 30.346535>,  <36.187855, 31.426636, 29.614660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431690, 31.239548, 30.346535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708454, 31.518726, 30.272636>,  <36.874512, 31.686234, 30.228296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.708454, 31.518726, 30.272636>,  <36.431690, 31.239548, 30.346535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708454, 31.518726, 30.272636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157761, 0.395861, 0.904658,
		0.704539, -0.596794, 0.384008,
		0.691908, 0.697948, -0.184748,
		36.916027, 31.728111, 30.217213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845409, 31.233097, 30.902510>,  <36.431690, 31.239548, 30.346535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845409, 31.233097, 30.902510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879002, 31.594572, 30.734558>,  <36.899158, 31.811457, 30.633787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879002, 31.594572, 30.734558>,  <36.845409, 31.233097, 30.902510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879002, 31.594572, 30.734558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075384, 0.425920, 0.901615,
		0.993612, -0.044065, 0.103892,
		0.083979, 0.903687, -0.419878,
		36.904194, 31.865679, 30.608595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248856, 31.601320, 31.260376>,  <36.845409, 31.233097, 30.902510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248856, 31.601320, 31.260376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.053127, 31.898481, 31.077658>,  <36.935692, 32.076778, 30.968027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.053127, 31.898481, 31.077658>,  <37.248856, 31.601320, 31.260376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053127, 31.898481, 31.077658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048828, 0.546301, 0.836165,
		0.870738, 0.386845, -0.303589,
		-0.489317, 0.742904, -0.456796,
		36.906334, 32.121353, 30.940619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559639, 32.219833, 31.478992>,  <37.248856, 31.601320, 31.260376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559639, 32.219833, 31.478992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214176, 32.364109, 31.338139>,  <37.006897, 32.450676, 31.253626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214176, 32.364109, 31.338139>,  <37.559639, 32.219833, 31.478992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214176, 32.364109, 31.338139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131674, 0.512886, 0.848298,
		0.486578, 0.779006, -0.395464,
		-0.863657, 0.360691, -0.352134,
		36.955078, 32.472317, 31.232498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524784, 33.006096, 31.542955>,  <37.559639, 32.219833, 31.478992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524784, 33.006096, 31.542955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147167, 32.879692, 31.505177>,  <36.920597, 32.803848, 31.482510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147167, 32.879692, 31.505177>,  <37.524784, 33.006096, 31.542955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147167, 32.879692, 31.505177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231845, 0.432145, 0.871492,
		-0.234584, 0.844624, -0.481228,
		-0.944044, -0.316008, -0.094448,
		36.863953, 32.784889, 31.476843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220764, 33.474411, 31.808687>,  <37.524784, 33.006096, 31.542955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220764, 33.474411, 31.808687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907936, 33.225761, 31.826347>,  <36.720238, 33.076572, 31.836943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907936, 33.225761, 31.826347>,  <37.220764, 33.474411, 31.808687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907936, 33.225761, 31.826347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301069, 0.438906, 0.846593,
		-0.545638, 0.648805, -0.530407,
		-0.782072, -0.621622, 0.044149,
		36.673313, 33.039276, 31.839592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489986, 33.856419, 31.796560>,  <37.220764, 33.474411, 31.808687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489986, 33.856419, 31.796560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417850, 33.494450, 31.950747>,  <36.374569, 33.277267, 32.043259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417850, 33.494450, 31.950747>,  <36.489986, 33.856419, 31.796560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417850, 33.494450, 31.950747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563782, 0.416227, 0.713376,
		-0.805994, -0.088666, -0.585245,
		-0.180342, -0.904927, 0.385465,
		36.363747, 33.222973, 32.066387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784344, 33.908367, 32.073345>,  <36.489986, 33.856419, 31.796560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784344, 33.908367, 32.073345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942951, 33.579742, 32.237206>,  <36.038116, 33.382568, 32.335522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.942951, 33.579742, 32.237206>,  <35.784344, 33.908367, 32.073345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942951, 33.579742, 32.237206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498374, 0.182112, 0.847619,
		-0.770973, -0.540253, -0.337235,
		0.396514, -0.821561, 0.409651,
		36.061905, 33.333275, 32.360100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300026, 33.436024, 32.315109>,  <35.784344, 33.908367, 32.073345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300026, 33.436024, 32.315109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628860, 33.385227, 32.537117>,  <35.826160, 33.354752, 32.670322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628860, 33.385227, 32.537117>,  <35.300026, 33.436024, 32.315109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628860, 33.385227, 32.537117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476325, 0.380617, 0.792619,
		-0.311902, -0.915972, 0.252414,
		0.822090, -0.126989, 0.555016,
		35.875488, 33.347130, 32.703621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066658, 33.215519, 32.852867>,  <35.300026, 33.436024, 32.315109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066658, 33.215519, 32.852867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.430912, 33.306046, 32.991154>,  <35.649464, 33.360363, 33.074123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.430912, 33.306046, 32.991154>,  <35.066658, 33.215519, 32.852867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430912, 33.306046, 32.991154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390606, 0.198610, 0.898877,
		0.134759, -0.953593, 0.269259,
		0.910641, 0.226306, 0.345715,
		35.704105, 33.373940, 33.094868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916950, 33.101864, 33.439392>,  <35.066658, 33.215519, 32.852867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916950, 33.101864, 33.439392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.262051, 33.303955, 33.447403>,  <35.469112, 33.425209, 33.452209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.262051, 33.303955, 33.447403>,  <34.916950, 33.101864, 33.439392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262051, 33.303955, 33.447403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256898, 0.403894, 0.877994,
		0.435508, -0.762631, 0.478253,
		0.862749, 0.505236, 0.020019,
		35.520878, 33.455524, 33.453411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236332, 32.953255, 34.127674>,  <34.916950, 33.101864, 33.439392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236332, 32.953255, 34.127674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.373558, 33.302361, 33.988773>,  <35.455894, 33.511826, 33.905434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.373558, 33.302361, 33.988773>,  <35.236332, 32.953255, 34.127674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373558, 33.302361, 33.988773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346439, 0.461187, 0.816876,
		0.873091, -0.159938, 0.460577,
		0.343062, 0.872769, -0.347250,
		35.476475, 33.564190, 33.884598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395348, 33.289925, 34.696888>,  <35.236332, 32.953255, 34.127674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395348, 33.289925, 34.696888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.410835, 33.604893, 34.450806>,  <35.420128, 33.793873, 34.303158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.410835, 33.604893, 34.450806>,  <35.395348, 33.289925, 34.696888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410835, 33.604893, 34.450806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336169, 0.590046, 0.734054,
		0.941005, 0.178387, 0.287553,
		0.038724, 0.787416, -0.615205,
		35.422451, 33.841118, 34.266243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763683, 33.778259, 34.977993>,  <35.395348, 33.289925, 34.696888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763683, 33.778259, 34.977993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533302, 33.991203, 34.729843>,  <35.395073, 34.118969, 34.580952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.533302, 33.991203, 34.729843>,  <35.763683, 33.778259, 34.977993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533302, 33.991203, 34.729843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336386, 0.537317, 0.773392,
		0.745063, 0.654125, -0.130392,
		-0.575957, 0.532363, -0.620374,
		35.360516, 34.150913, 34.543732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281258, 33.283344, 35.109489>,  <35.763683, 33.778259, 34.977993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281258, 33.283344, 35.109489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508522, 33.430195, 35.404083>,  <36.644882, 33.518307, 35.580841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508522, 33.430195, 35.404083>,  <36.281258, 33.283344, 35.109489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508522, 33.430195, 35.404083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797503, -0.024941, -0.602799,
		-0.202937, 0.929835, -0.306958,
		0.568160, 0.367130, 0.736485,
		36.678970, 33.540333, 35.625031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740044, 33.789017, 34.762642>,  <36.281258, 33.283344, 35.109489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740044, 33.789017, 34.762642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915741, 33.712555, 35.113762>,  <37.021160, 33.666679, 35.324432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915741, 33.712555, 35.113762>,  <36.740044, 33.789017, 34.762642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915741, 33.712555, 35.113762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890747, -0.034346, -0.453199,
		0.116780, 0.980959, 0.155184,
		0.439240, -0.191154, 0.877797,
		37.047512, 33.655209, 35.377102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368832, 34.132099, 34.775967>,  <36.740044, 33.789017, 34.762642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368832, 34.132099, 34.775967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.415424, 33.819935, 35.021694>,  <37.443382, 33.632637, 35.169132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.415424, 33.819935, 35.021694>,  <37.368832, 34.132099, 34.775967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415424, 33.819935, 35.021694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726883, -0.354511, -0.588187,
		0.676811, 0.515052, 0.525973,
		0.116484, -0.780412, 0.614319,
		37.450371, 33.585812, 35.205990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055882, 34.102146, 34.845554>,  <37.368832, 34.132099, 34.775967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055882, 34.102146, 34.845554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929207, 33.744320, 34.971710>,  <37.853203, 33.529625, 35.047401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929207, 33.744320, 34.971710>,  <38.055882, 34.102146, 34.845554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929207, 33.744320, 34.971710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828003, -0.422923, -0.368168,
		0.462733, 0.144547, 0.874634,
		-0.316685, -0.894563, 0.315386,
		37.834202, 33.475952, 35.066326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610416, 33.863609, 35.051701>,  <38.055882, 34.102146, 34.845554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610416, 33.863609, 35.051701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385303, 33.535885, 35.007862>,  <38.250237, 33.339249, 34.981560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385303, 33.535885, 35.007862>,  <38.610416, 33.863609, 35.051701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385303, 33.535885, 35.007862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745524, -0.445829, -0.495409,
		0.357035, -0.360509, 0.861719,
		-0.562778, -0.819311, -0.109591,
		38.216469, 33.290092, 34.974983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140038, 33.445297, 35.130375>,  <38.610416, 33.863609, 35.051701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140038, 33.445297, 35.130375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832966, 33.236008, 34.982376>,  <38.648724, 33.110432, 34.893578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832966, 33.236008, 34.982376>,  <39.140038, 33.445297, 35.130375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832966, 33.236008, 34.982376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640313, -0.603101, -0.475677,
		0.025742, -0.602082, 0.798020,
		-0.767683, -0.523227, -0.369995,
		38.602661, 33.079041, 34.871376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494678, 32.831654, 34.998367>,  <39.140038, 33.445297, 35.130375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494678, 32.831654, 34.998367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142246, 32.807968, 34.810669>,  <38.930786, 32.793755, 34.698048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142246, 32.807968, 34.810669>,  <39.494678, 32.831654, 34.998367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142246, 32.807968, 34.810669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431039, -0.508938, -0.745109,
		-0.194694, -0.858764, 0.473939,
		-0.881078, -0.059218, -0.469248,
		38.877922, 32.790203, 34.669895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358215, 32.152298, 34.689873>,  <39.494678, 32.831654, 34.998367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358215, 32.152298, 34.689873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112041, 32.373356, 34.465080>,  <38.964336, 32.505989, 34.330204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112041, 32.373356, 34.465080>,  <39.358215, 32.152298, 34.689873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112041, 32.373356, 34.465080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307014, -0.488608, -0.816703,
		-0.725933, -0.675166, 0.131039,
		-0.615437, 0.552642, -0.561983,
		38.927410, 32.539146, 34.296486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114349, 31.608862, 34.231579>,  <39.358215, 32.152298, 34.689873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114349, 31.608862, 34.231579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.046978, 31.970770, 34.075104>,  <39.006557, 32.187916, 33.981220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.046978, 31.970770, 34.075104>,  <39.114349, 31.608862, 34.231579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046978, 31.970770, 34.075104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205460, -0.355917, -0.911652,
		-0.964064, -0.233918, -0.125948,
		-0.168424, 0.904768, -0.391188,
		38.996452, 32.242199, 33.957748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797703, 31.519552, 33.633644>,  <39.114349, 31.608862, 34.231579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797703, 31.519552, 33.633644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952534, 31.885902, 33.591038>,  <39.045433, 32.105713, 33.565475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952534, 31.885902, 33.591038>,  <38.797703, 31.519552, 33.633644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952534, 31.885902, 33.591038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158156, -0.179756, -0.970914,
		-0.908383, 0.358972, -0.214431,
		0.387076, 0.915875, -0.106514,
		39.068657, 32.160664, 33.559082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464397, 31.880409, 32.992535>,  <38.797703, 31.519552, 33.633644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464397, 31.880409, 32.992535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820488, 32.051411, 33.055439>,  <39.034142, 32.154011, 33.093182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820488, 32.051411, 33.055439>,  <38.464397, 31.880409, 32.992535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820488, 32.051411, 33.055439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140848, 0.069983, -0.987555,
		-0.433188, 0.901301, 0.002088,
		0.890230, 0.427503, 0.157262,
		39.087559, 32.179661, 33.102619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665260, 32.184639, 32.386990>,  <38.464397, 31.880409, 32.992535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665260, 32.184639, 32.386990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018696, 32.210205, 32.572540>,  <39.230759, 32.225544, 32.683872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.018696, 32.210205, 32.572540>,  <38.665260, 32.184639, 32.386990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018696, 32.210205, 32.572540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466671, -0.038580, -0.883589,
		-0.038580, 0.997209, -0.063917,
		0.883589, 0.063917, 0.463881,
		39.283772, 32.229382, 32.711704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053104, 32.770695, 32.092758>,  <38.665260, 32.184639, 32.386990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053104, 32.770695, 32.092758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307014, 32.493420, 32.229317>,  <39.459362, 32.327057, 32.311253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.307014, 32.493420, 32.229317>,  <39.053104, 32.770695, 32.092758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307014, 32.493420, 32.229317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339682, -0.146506, -0.929060,
		0.694026, 0.705714, 0.142463,
		0.634778, -0.693184, 0.341398,
		39.497448, 32.285465, 32.331738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625858, 32.803383, 31.731524>,  <39.053104, 32.770695, 32.092758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625858, 32.803383, 31.731524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.673279, 32.430187, 31.867449>,  <39.701733, 32.206268, 31.949005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.673279, 32.430187, 31.867449>,  <39.625858, 32.803383, 31.731524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673279, 32.430187, 31.867449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346444, -0.281857, -0.894726,
		0.930549, 0.223800, 0.289813,
		0.118553, -0.932990, 0.339815,
		39.708843, 32.150291, 31.969393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388042, 32.639793, 31.493750>,  <39.625858, 32.803383, 31.731524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388042, 32.639793, 31.493750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.173687, 32.312023, 31.575098>,  <40.045074, 32.115360, 31.623907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.173687, 32.312023, 31.575098>,  <40.388042, 32.639793, 31.493750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173687, 32.312023, 31.575098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312440, -0.416255, -0.853881,
		0.784348, -0.394045, 0.479089,
		-0.535891, -0.819427, 0.203373,
		40.012920, 32.066196, 31.636110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879456, 32.090416, 31.511717>,  <40.388042, 32.639793, 31.493750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879456, 32.090416, 31.511717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.517715, 31.923895, 31.474089>,  <40.300671, 31.823982, 31.451511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.517715, 31.923895, 31.474089>,  <40.879456, 32.090416, 31.511717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517715, 31.923895, 31.474089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330760, -0.544317, -0.770920,
		0.269729, -0.728294, 0.629947,
		-0.904347, -0.416300, -0.094072,
		40.246410, 31.799006, 31.445868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009739, 31.433641, 31.506109>,  <40.879456, 32.090416, 31.511717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009739, 31.433641, 31.506109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.660522, 31.461708, 31.313080>,  <40.450993, 31.478548, 31.197262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.660522, 31.461708, 31.313080>,  <41.009739, 31.433641, 31.506109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.660522, 31.461708, 31.313080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336831, -0.628822, -0.700805,
		-0.352623, -0.774377, 0.525355,
		-0.873041, 0.070164, -0.482572,
		40.398609, 31.482758, 31.168308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701859, 30.741158, 31.383045>,  <41.009739, 31.433641, 31.506109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701859, 30.741158, 31.383045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.518433, 30.948622, 31.094404>,  <40.408379, 31.073101, 30.921219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.518433, 30.948622, 31.094404>,  <40.701859, 30.741158, 31.383045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518433, 30.948622, 31.094404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179897, -0.741019, -0.646938,
		-0.870263, -0.426476, 0.246498,
		-0.458563, 0.518661, -0.721603,
		40.380863, 31.104219, 30.877924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316170, 30.193420, 30.965332>,  <40.701859, 30.741158, 31.383045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316170, 30.193420, 30.965332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.344143, 30.522375, 30.739485>,  <40.360928, 30.719748, 30.603977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.344143, 30.522375, 30.739485>,  <40.316170, 30.193420, 30.965332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344143, 30.522375, 30.739485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183864, -0.566931, -0.802984,
		-0.980461, -0.047656, -0.190856,
		0.069935, 0.822386, -0.564616,
		40.365124, 30.769091, 30.570101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.965691, 29.885145, 30.171354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.126743, 30.246325, 30.111267>,  <40.223377, 30.463032, 30.075214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.126743, 30.246325, 30.111267>,  <39.965691, 29.885145, 30.171354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126743, 30.246325, 30.111267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322500, -0.293521, -0.899911,
		-0.856667, 0.313891, -0.409384,
		0.402636, 0.902950, -0.150220,
		40.247536, 30.517210, 30.066200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781181, 30.162090, 29.542295>,  <39.965691, 29.885145, 30.171354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781181, 30.162090, 29.542295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.116508, 30.364862, 29.622534>,  <40.317707, 30.486525, 29.670677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.116508, 30.364862, 29.622534>,  <39.781181, 30.162090, 29.542295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116508, 30.364862, 29.622534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353618, -0.225574, -0.907783,
		-0.414933, 0.831949, -0.368363,
		0.838323, 0.506929, 0.200594,
		40.368004, 30.516941, 29.682713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723396, 30.769123, 29.170275>,  <39.781181, 30.162090, 29.542295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723396, 30.769123, 29.170275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.106369, 30.674269, 29.236105>,  <40.336155, 30.617355, 29.275602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.106369, 30.674269, 29.236105>,  <39.723396, 30.769123, 29.170275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106369, 30.674269, 29.236105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130901, -0.151450, -0.979759,
		0.257261, 0.959598, -0.113962,
		0.957435, -0.237136, 0.164574,
		40.393600, 30.603128, 29.285477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056393, 31.067230, 28.660267>,  <39.723396, 30.769123, 29.170275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056393, 31.067230, 28.660267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.319782, 30.799261, 28.797443>,  <40.477818, 30.638479, 28.879749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.319782, 30.799261, 28.797443>,  <40.056393, 31.067230, 28.660267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319782, 30.799261, 28.797443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297672, -0.186683, -0.936238,
		0.691230, 0.718575, 0.076491,
		0.658478, -0.669924, 0.342941,
		40.517326, 30.598284, 28.900326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645931, 31.291220, 28.372103>,  <40.056393, 31.067230, 28.660267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645931, 31.291220, 28.372103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.682419, 30.903612, 28.463907>,  <40.704311, 30.671047, 28.518990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.682419, 30.903612, 28.463907>,  <40.645931, 31.291220, 28.372103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682419, 30.903612, 28.463907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483560, -0.158374, -0.860864,
		0.870544, 0.189514, 0.454133,
		0.091223, -0.969021, 0.229513,
		40.709785, 30.612906, 28.532761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353535, 31.111387, 28.124992>,  <40.645931, 31.291220, 28.372103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353535, 31.111387, 28.124992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140156, 30.777786, 28.181385>,  <41.012131, 30.577625, 28.215221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.140156, 30.777786, 28.181385>,  <41.353535, 31.111387, 28.124992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140156, 30.777786, 28.181385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304974, -0.345114, -0.887630,
		0.788941, -0.430506, 0.438448,
		-0.533445, -0.834003, 0.140981,
		40.980122, 30.527586, 28.223679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795891, 30.495674, 28.013485>,  <41.353535, 31.111387, 28.124992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795891, 30.495674, 28.013485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.419033, 30.369083, 27.969307>,  <41.192917, 30.293129, 27.942801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.419033, 30.369083, 27.969307>,  <41.795891, 30.495674, 28.013485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419033, 30.369083, 27.969307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246229, -0.429876, -0.868664,
		0.227436, -0.845605, 0.482933,
		-0.942149, -0.316478, -0.110443,
		41.136387, 30.274139, 27.936174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796978, 29.792715, 27.809757>,  <41.795891, 30.495674, 28.013485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796978, 29.792715, 27.809757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442177, 29.908190, 27.665598>,  <41.229298, 29.977474, 27.579102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442177, 29.908190, 27.665598>,  <41.796978, 29.792715, 27.809757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442177, 29.908190, 27.665598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230098, -0.400356, -0.887001,
		-0.400356, -0.869698, 0.288689,
		0.887001, -0.288689, 0.360400,
		41.176075, 29.994797, 27.557478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540764, 29.214092, 27.579672>,  <41.796978, 29.792715, 27.809757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540764, 29.214092, 27.579672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.394939, 29.530806, 27.383640>,  <41.307446, 29.720833, 27.266022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.394939, 29.530806, 27.383640>,  <41.540764, 29.214092, 27.579672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394939, 29.530806, 27.383640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216590, -0.439761, -0.871607,
		-0.905639, -0.423901, -0.011171,
		-0.364563, 0.791781, -0.490078,
		41.285572, 29.768339, 27.236616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232468, 28.805859, 27.109222>,  <41.540764, 29.214092, 27.579672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232468, 28.805859, 27.109222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.256935, 29.179583, 26.968754>,  <41.271618, 29.403818, 26.884474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.256935, 29.179583, 26.968754>,  <41.232468, 28.805859, 27.109222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256935, 29.179583, 26.968754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114754, -0.356079, -0.927383,
		-0.991509, 0.016431, -0.128998,
		0.061171, 0.934311, -0.351170,
		41.275288, 29.459875, 26.863403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960812, 28.767448, 26.399824>,  <41.232468, 28.805859, 27.109222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960812, 28.767448, 26.399824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.160515, 29.113567, 26.417713>,  <41.280338, 29.321239, 26.428446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.160515, 29.113567, 26.417713>,  <40.960812, 28.767448, 26.399824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160515, 29.113567, 26.417713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252243, -0.095774, -0.962913,
		-0.828922, 0.492025, -0.266081,
		0.499261, 0.865297, 0.044720,
		41.310291, 29.373156, 26.431129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872551, 28.972673, 25.758629>,  <40.960812, 28.767448, 26.399824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872551, 28.972673, 25.758629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.179127, 29.191635, 25.893042>,  <41.363071, 29.323011, 25.973690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.179127, 29.191635, 25.893042>,  <40.872551, 28.972673, 25.758629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179127, 29.191635, 25.893042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467230, -0.116149, -0.876473,
		-0.440754, 0.828770, -0.344784,
		0.766441, 0.547402, 0.336033,
		41.409058, 29.355856, 25.993851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996750, 29.254589, 25.211477>,  <40.872551, 28.972673, 25.758629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996750, 29.254589, 25.211477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.330414, 29.289200, 25.429358>,  <41.530613, 29.309967, 25.560085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.330414, 29.289200, 25.429358>,  <40.996750, 29.254589, 25.211477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330414, 29.289200, 25.429358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548230, -0.022215, -0.836032,
		-0.060240, 0.996002, -0.065968,
		0.834155, 0.086528, 0.544700,
		41.580662, 29.315159, 25.592768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423874, 29.784618, 24.884256>,  <40.996750, 29.254589, 25.211477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423874, 29.784618, 24.884256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.675606, 29.560890, 25.100073>,  <41.826645, 29.426653, 25.229563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.675606, 29.560890, 25.100073>,  <41.423874, 29.784618, 24.884256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675606, 29.560890, 25.100073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647277, -0.006976, -0.762223,
		0.430090, 0.828923, 0.357645,
		0.629329, -0.559320, 0.539543,
		41.864403, 29.393095, 25.261936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063084, 30.188837, 24.923759>,  <41.423874, 29.784618, 24.884256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063084, 30.188837, 24.923759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.138939, 29.799356, 24.974274>,  <42.184452, 29.565668, 25.004581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.138939, 29.799356, 24.974274>,  <42.063084, 30.188837, 24.923759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138939, 29.799356, 24.974274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719154, 0.050175, -0.693037,
		0.668473, 0.222243, 0.709755,
		0.189634, -0.973700, 0.126286,
		42.195827, 29.507246, 25.012159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865356, 30.095373, 24.902678>,  <42.063084, 30.188837, 24.923759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865356, 30.095373, 24.902678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.730785, 29.728153, 24.818775>,  <42.650043, 29.507820, 24.768433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.730785, 29.728153, 24.818775>,  <42.865356, 30.095373, 24.902678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730785, 29.728153, 24.818775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679202, -0.082264, -0.729327,
		0.652304, -0.387834, 0.651218,
		-0.336429, -0.918051, -0.209757,
		42.629856, 29.452738, 24.755848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489475, 29.805035, 24.627617>,  <42.865356, 30.095373, 24.902678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489475, 29.805035, 24.627617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.193661, 29.553270, 24.532181>,  <43.016171, 29.402212, 24.474918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.193661, 29.553270, 24.532181>,  <43.489475, 29.805035, 24.627617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193661, 29.553270, 24.532181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492211, -0.263887, -0.829513,
		0.459144, -0.730894, 0.504957,
		-0.739537, -0.629411, -0.238592,
		42.971798, 29.364447, 24.460604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830227, 29.215832, 24.490952>,  <43.489475, 29.805035, 24.627617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830227, 29.215832, 24.490952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.484821, 29.181072, 24.292236>,  <43.277580, 29.160217, 24.173008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.484821, 29.181072, 24.292236>,  <43.830227, 29.215832, 24.490952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484821, 29.181072, 24.292236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503588, -0.095144, -0.858689,
		0.027351, -0.991664, 0.125917,
		-0.863511, -0.086896, -0.496787,
		43.225769, 29.155003, 24.143200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938423, 28.756636, 24.006802>,  <43.830227, 29.215832, 24.490952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938423, 28.756636, 24.006802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.614777, 28.946463, 23.868172>,  <43.420589, 29.060358, 23.784994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.614777, 28.946463, 23.868172>,  <43.938423, 28.756636, 24.006802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.614777, 28.946463, 23.868172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435847, 0.089048, -0.895605,
		-0.394162, -0.875704, -0.278889,
		-0.809119, 0.474566, -0.346573,
		43.372040, 29.088833, 23.764200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869167, 28.467102, 23.416866>,  <43.938423, 28.756636, 24.006802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869167, 28.467102, 23.416866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.663494, 28.808992, 23.388390>,  <43.540092, 29.014126, 23.371304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.663494, 28.808992, 23.388390>,  <43.869167, 28.467102, 23.416866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663494, 28.808992, 23.388390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239353, 0.063290, -0.968868,
		-0.823608, -0.515211, -0.237123,
		-0.514178, 0.854724, -0.071191,
		43.509239, 29.065409, 23.367033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527348, 28.301512, 22.818026>,  <43.869167, 28.467102, 23.416866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527348, 28.301512, 22.818026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.526054, 28.699471, 22.858362>,  <43.525280, 28.938246, 22.882565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.526054, 28.699471, 22.858362>,  <43.527348, 28.301512, 22.818026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526054, 28.699471, 22.858362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323209, 0.096466, -0.941398,
		-0.946322, 0.029553, -0.321872,
		-0.003228, 0.994897, 0.100840,
		43.525085, 28.997940, 22.888615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.068081, 28.526709, 22.229715>,  <43.527348, 28.301512, 22.818026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.068081, 28.526709, 22.229715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.312641, 28.806856, 22.377054>,  <43.459377, 28.974945, 22.465458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.312641, 28.806856, 22.377054>,  <43.068081, 28.526709, 22.229715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312641, 28.806856, 22.377054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303078, 0.222735, -0.926571,
		-0.730984, 0.678140, -0.076087,
		0.611397, 0.700368, 0.368345,
		43.496059, 29.016966, 22.487558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947681, 29.018726, 21.775934>,  <43.068081, 28.526709, 22.229715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947681, 29.018726, 21.775934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.283375, 29.101011, 21.977278>,  <43.484791, 29.150383, 22.098083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.283375, 29.101011, 21.977278>,  <42.947681, 29.018726, 21.775934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283375, 29.101011, 21.977278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404181, 0.383262, -0.830511,
		-0.363766, 0.900440, 0.238500,
		0.839233, 0.205714, 0.503359,
		43.535145, 29.162725, 22.128284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200462, 29.683737, 21.646624>,  <42.947681, 29.018726, 21.775934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200462, 29.683737, 21.646624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.507664, 29.443329, 21.735123>,  <43.691982, 29.299084, 21.788221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.507664, 29.443329, 21.735123>,  <43.200462, 29.683737, 21.646624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507664, 29.443329, 21.735123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499279, 0.345491, -0.794580,
		0.401119, 0.720701, 0.565414,
		0.768000, -0.601020, 0.221248,
		43.738064, 29.263023, 21.801497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609875, 29.945957, 21.660892>,  <43.200462, 29.683737, 21.646624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609875, 29.945957, 21.660892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.360733, 29.791431, 21.388769>,  <42.211250, 29.698715, 21.225496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.360733, 29.791431, 21.388769>,  <42.609875, 29.945957, 21.660892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360733, 29.791431, 21.388769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782134, 0.287552, 0.552793,
		-0.017929, 0.876399, -0.481252,
		-0.622852, -0.386315, -0.680306,
		42.173878, 29.675537, 21.184677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197414, 30.437952, 21.595984>,  <42.609875, 29.945957, 21.660892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197414, 30.437952, 21.595984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.981953, 30.135908, 21.446499>,  <41.852676, 29.954681, 21.356808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.981953, 30.135908, 21.446499>,  <42.197414, 30.437952, 21.595984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981953, 30.135908, 21.446499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806187, 0.333076, 0.489002,
		-0.244778, 0.564683, -0.788174,
		-0.538653, -0.755112, -0.373710,
		41.820358, 29.909374, 21.334385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490055, 30.803270, 21.393942>,  <42.197414, 30.437952, 21.595984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490055, 30.803270, 21.393942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.457462, 30.406809, 21.435841>,  <41.437908, 30.168932, 21.460979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.457462, 30.406809, 21.435841>,  <41.490055, 30.803270, 21.393942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457462, 30.406809, 21.435841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808163, 0.127213, 0.575056,
		-0.583295, -0.037796, -0.811381,
		-0.081483, -0.991155, 0.104748,
		41.433018, 30.109463, 21.467264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857990, 30.695736, 21.378126>,  <41.490055, 30.803270, 21.393942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857990, 30.695736, 21.378126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966896, 30.344198, 21.534847>,  <41.032238, 30.133276, 21.628880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.966896, 30.344198, 21.534847>,  <40.857990, 30.695736, 21.378126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966896, 30.344198, 21.534847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672682, 0.117304, 0.730575,
		-0.688020, -0.462468, -0.559243,
		0.272266, -0.878842, 0.391801,
		41.048576, 30.080545, 21.652388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257496, 30.352995, 21.543747>,  <40.857990, 30.695736, 21.378126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257496, 30.352995, 21.543747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518593, 30.198265, 21.804296>,  <40.675251, 30.105427, 21.960627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518593, 30.198265, 21.804296>,  <40.257496, 30.352995, 21.543747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518593, 30.198265, 21.804296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698854, 0.024454, 0.714846,
		-0.292448, -0.921829, -0.254372,
		0.652745, -0.386824, 0.651376,
		40.714417, 30.082218, 21.999710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847084, 29.905231, 21.880238>,  <40.257496, 30.352995, 21.543747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847084, 29.905231, 21.880238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.176727, 29.934233, 22.104946>,  <40.374512, 29.951633, 22.239771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.176727, 29.934233, 22.104946>,  <39.847084, 29.905231, 21.880238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176727, 29.934233, 22.104946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564840, 0.030925, 0.824621,
		0.042422, -0.996888, 0.066444,
		0.824109, 0.072512, 0.561771,
		40.423962, 29.955984, 22.273478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622150, 29.514372, 22.444067>,  <39.847084, 29.905231, 21.880238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622150, 29.514372, 22.444067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947849, 29.705835, 22.575455>,  <40.143269, 29.820713, 22.654287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947849, 29.705835, 22.575455>,  <39.622150, 29.514372, 22.444067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947849, 29.705835, 22.575455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371664, -0.004833, 0.928355,
		0.445953, -0.877988, 0.173964,
		0.814243, 0.478658, 0.328471,
		40.192123, 29.849432, 22.673996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742001, 29.142408, 23.045547>,  <39.622150, 29.514372, 22.444067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742001, 29.142408, 23.045547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.943691, 29.485111, 23.088861>,  <40.064705, 29.690733, 23.114849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.943691, 29.485111, 23.088861>,  <39.742001, 29.142408, 23.045547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943691, 29.485111, 23.088861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395413, 0.117580, 0.910947,
		0.767727, -0.502140, 0.398059,
		0.504227, 0.856756, 0.108283,
		40.094959, 29.742138, 23.121346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125671, 29.078238, 23.720335>,  <39.742001, 29.142408, 23.045547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125671, 29.078238, 23.720335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.115032, 29.466856, 23.626198>,  <40.108650, 29.700027, 23.569715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.115032, 29.466856, 23.626198>,  <40.125671, 29.078238, 23.720335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115032, 29.466856, 23.626198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168804, 0.227682, 0.958992,
		0.985291, 0.065230, 0.157947,
		-0.026594, 0.971548, -0.235344,
		40.107056, 29.758320, 23.555595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504509, 29.395660, 24.311129>,  <40.125671, 29.078238, 23.720335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504509, 29.395660, 24.311129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.249195, 29.648350, 24.135166>,  <40.096004, 29.799963, 24.029589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.249195, 29.648350, 24.135166>,  <40.504509, 29.395660, 24.311129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249195, 29.648350, 24.135166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293770, 0.328314, 0.897724,
		0.711540, 0.702236, -0.023977,
		-0.638286, 0.631723, -0.439905,
		40.057709, 29.837866, 24.003195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636276, 30.053089, 24.621487>,  <40.504509, 29.395660, 24.311129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636276, 30.053089, 24.621487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.264061, 30.087618, 24.479134>,  <40.040733, 30.108335, 24.393723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.264061, 30.087618, 24.479134>,  <40.636276, 30.053089, 24.621487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264061, 30.087618, 24.479134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279457, 0.460649, 0.842440,
		0.236657, 0.883375, -0.404528,
		-0.930536, 0.086321, -0.355881,
		39.984901, 30.113514, 24.372370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389507, 30.592043, 25.041515>,  <40.636276, 30.053089, 24.621487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389507, 30.592043, 25.041515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058681, 30.439133, 24.876671>,  <39.860188, 30.347387, 24.777763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.058681, 30.439133, 24.876671>,  <40.389507, 30.592043, 25.041515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058681, 30.439133, 24.876671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532814, 0.299529, 0.791449,
		-0.179112, 0.874155, -0.451411,
		-0.827060, -0.382276, -0.412113,
		39.810562, 30.324450, 24.753036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770752, 31.079386, 25.091175>,  <40.389507, 30.592043, 25.041515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770752, 31.079386, 25.091175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626167, 30.708303, 25.053854>,  <39.539417, 30.485655, 25.031462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626167, 30.708303, 25.053854>,  <39.770752, 31.079386, 25.091175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626167, 30.708303, 25.053854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630698, 0.169580, 0.757274,
		-0.686705, 0.332574, -0.646399,
		-0.361465, -0.927706, -0.093302,
		39.517727, 30.429993, 25.025864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134808, 31.203150, 25.125948>,  <39.770752, 31.079386, 25.091175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134808, 31.203150, 25.125948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211292, 30.827513, 25.240171>,  <39.257183, 30.602131, 25.308706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211292, 30.827513, 25.240171>,  <39.134808, 31.203150, 25.125948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211292, 30.827513, 25.240171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410455, 0.187768, 0.892339,
		-0.891608, -0.287832, -0.349553,
		0.191209, -0.939093, 0.285558,
		39.268654, 30.545784, 25.325838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540363, 30.991985, 25.552706>,  <39.134808, 31.203150, 25.125948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540363, 30.991985, 25.552706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806404, 30.705587, 25.637556>,  <38.966026, 30.533749, 25.688467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.806404, 30.705587, 25.637556>,  <38.540363, 30.991985, 25.552706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806404, 30.705587, 25.637556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320936, -0.017577, 0.946938,
		-0.674273, -0.697885, -0.241479,
		0.665099, -0.715994, 0.212125,
		39.005932, 30.490789, 25.701193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147797, 30.375267, 25.647715>,  <38.540363, 30.991985, 25.552706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147797, 30.375267, 25.647715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499157, 30.374990, 25.838886>,  <38.709972, 30.374825, 25.953588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.499157, 30.374990, 25.838886>,  <38.147797, 30.375267, 25.647715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499157, 30.374990, 25.838886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474354, -0.123349, 0.871650,
		0.058351, -0.992363, -0.108677,
		0.878398, -0.000690, 0.477929,
		38.762676, 30.374784, 25.982265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928310, 29.974579, 26.185236>,  <38.147797, 30.375267, 25.647715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928310, 29.974579, 26.185236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278122, 30.126530, 26.305832>,  <38.488010, 30.217699, 26.378189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.278122, 30.126530, 26.305832>,  <37.928310, 29.974579, 26.185236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278122, 30.126530, 26.305832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290720, -0.086952, 0.952849,
		0.388180, -0.920941, 0.034395,
		0.874527, 0.379877, 0.301489,
		38.540482, 30.240492, 26.396278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218437, 29.601889, 26.841228>,  <37.928310, 29.974579, 26.185236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218437, 29.601889, 26.841228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419075, 29.947924, 26.839460>,  <38.539459, 30.155544, 26.838400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.419075, 29.947924, 26.839460>,  <38.218437, 29.601889, 26.841228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419075, 29.947924, 26.839460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157272, 0.096209, 0.982858,
		0.850685, -0.492304, 0.184313,
		0.501597, 0.865090, -0.004418,
		38.569553, 30.207451, 26.838135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731930, 29.486595, 27.406067>,  <38.218437, 29.601889, 26.841228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731930, 29.486595, 27.406067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679375, 29.880619, 27.361530>,  <38.647842, 30.117033, 27.334808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679375, 29.880619, 27.361530>,  <38.731930, 29.486595, 27.406067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679375, 29.880619, 27.361530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119546, 0.095751, 0.988201,
		0.984097, 0.143145, 0.105179,
		-0.131385, 0.985059, -0.111341,
		38.639957, 30.176136, 27.328129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957851, 29.886839, 28.028980>,  <38.731930, 29.486595, 27.406067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957851, 29.886839, 28.028980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.705170, 30.153475, 27.870689>,  <38.553558, 30.313457, 27.775715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.705170, 30.153475, 27.870689>,  <38.957851, 29.886839, 28.028980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705170, 30.153475, 27.870689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305519, 0.255082, 0.917383,
		0.712463, 0.700420, 0.042519,
		-0.631707, 0.666592, -0.395729,
		38.515659, 30.353453, 27.751970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.398159, 31.523567, 32.859074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.119568, 31.761265, 32.698177>,  <39.952415, 31.903883, 32.601639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.119568, 31.761265, 32.698177>,  <40.398159, 31.523567, 32.859074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119568, 31.761265, 32.698177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224192, 0.352294, 0.908640,
		0.681659, 0.723025, -0.112140,
		-0.696476, 0.594242, -0.402241,
		39.910625, 31.939537, 32.577503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429066, 32.099846, 33.299000>,  <40.398159, 31.523567, 32.859074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429066, 32.099846, 33.299000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.070347, 32.126816, 33.124092>,  <39.855114, 32.142998, 33.019150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.070347, 32.126816, 33.124092>,  <40.429066, 32.099846, 33.299000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070347, 32.126816, 33.124092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356547, 0.475032, 0.804499,
		0.261956, 0.877381, -0.401970,
		-0.896801, 0.067422, -0.437266,
		39.801308, 32.147041, 32.992912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209492, 32.839809, 33.355045>,  <40.429066, 32.099846, 33.299000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209492, 32.839809, 33.355045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876736, 32.630699, 33.280563>,  <39.677082, 32.505234, 33.235874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.876736, 32.630699, 33.280563>,  <40.209492, 32.839809, 33.355045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876736, 32.630699, 33.280563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456933, 0.454853, 0.764409,
		-0.314918, 0.720984, -0.617259,
		-0.831889, -0.522772, -0.186200,
		39.627171, 32.473869, 33.224705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614887, 33.348038, 33.388832>,  <40.209492, 32.839809, 33.355045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614887, 33.348038, 33.388832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.454655, 32.984428, 33.434807>,  <39.358517, 32.766262, 33.462391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.454655, 32.984428, 33.434807>,  <39.614887, 33.348038, 33.388832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454655, 32.984428, 33.434807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425585, 0.295681, 0.855248,
		-0.811426, 0.293680, -0.505311,
		-0.400581, -0.909024, 0.114937,
		39.334480, 32.711720, 33.469288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031300, 33.504551, 33.669941>,  <39.614887, 33.348038, 33.388832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031300, 33.504551, 33.669941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.032608, 33.112766, 33.750576>,  <39.033394, 32.877693, 33.798958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.032608, 33.112766, 33.750576>,  <39.031300, 33.504551, 33.669941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032608, 33.112766, 33.750576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649022, 0.151280, 0.745576,
		-0.760762, -0.133272, -0.635200,
		0.003272, -0.979465, 0.201585,
		39.033588, 32.818928, 33.811050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313042, 33.348522, 33.534023>,  <39.031300, 33.504551, 33.669941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313042, 33.348522, 33.534023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.503139, 33.102352, 33.785545>,  <38.617199, 32.954651, 33.936459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.503139, 33.102352, 33.785545>,  <38.313042, 33.348522, 33.534023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503139, 33.102352, 33.785545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656785, 0.227420, 0.718967,
		-0.585472, -0.754676, -0.296120,
		0.475243, -0.615422, 0.628808,
		38.645714, 32.917725, 33.974186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809460, 32.819832, 33.837620>,  <38.313042, 33.348522, 33.534023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809460, 32.819832, 33.837620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.131607, 32.829689, 34.074524>,  <38.324894, 32.835602, 34.216667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.131607, 32.829689, 34.074524>,  <37.809460, 32.819832, 33.837620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131607, 32.829689, 34.074524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590978, 0.111083, 0.799003,
		-0.046102, -0.993505, 0.104025,
		0.805370, 0.024640, 0.592261,
		38.373219, 32.837082, 34.252201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779205, 32.220612, 34.347809>,  <37.809460, 32.819832, 33.837620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779205, 32.220612, 34.347809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016239, 32.493084, 34.519779>,  <38.158459, 32.656567, 34.622959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.016239, 32.493084, 34.519779>,  <37.779205, 32.220612, 34.347809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016239, 32.493084, 34.519779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636743, 0.069234, 0.767961,
		0.493356, -0.728833, 0.474766,
		0.592585, 0.681182, 0.429922,
		38.194016, 32.697437, 34.648754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718109, 32.074917, 35.038631>,  <37.779205, 32.220612, 34.347809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718109, 32.074917, 35.038631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836983, 32.454670, 34.997952>,  <37.908306, 32.682522, 34.973545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836983, 32.454670, 34.997952>,  <37.718109, 32.074917, 35.038631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836983, 32.454670, 34.997952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656547, 0.280524, 0.700180,
		0.693271, -0.141314, 0.706686,
		0.297188, 0.949387, -0.101700,
		37.926140, 32.739487, 34.967442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288860, 32.408936, 35.438965>,  <37.718109, 32.074917, 35.038631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288860, 32.408936, 35.438965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.503849, 32.737438, 35.362373>,  <37.632843, 32.934540, 35.316418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.503849, 32.737438, 35.362373>,  <37.288860, 32.408936, 35.438965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503849, 32.737438, 35.362373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630561, 0.542165, 0.555383,
		0.559929, -0.177756, 0.809248,
		0.537468, 0.821255, -0.191488,
		37.665092, 32.983814, 35.304928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487122, 32.575638, 36.070663>,  <37.288860, 32.408936, 35.438965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487122, 32.575638, 36.070663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489555, 32.873600, 35.803806>,  <37.491016, 33.052376, 35.643692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489555, 32.873600, 35.803806>,  <37.487122, 32.575638, 36.070663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489555, 32.873600, 35.803806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665043, 0.501242, 0.553602,
		0.746781, 0.440313, 0.498440,
		0.006081, 0.744903, -0.667145,
		37.491379, 33.097073, 35.603664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445278, 33.193367, 36.512814>,  <37.487122, 32.575638, 36.070663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445278, 33.193367, 36.512814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.332020, 33.346237, 36.160957>,  <37.264065, 33.437962, 35.949844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.332020, 33.346237, 36.160957>,  <37.445278, 33.193367, 36.512814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332020, 33.346237, 36.160957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620314, 0.626529, 0.471882,
		0.731463, 0.679266, 0.059669,
		-0.283149, 0.382177, -0.879640,
		37.247074, 33.460892, 35.897064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486038, 33.993542, 36.464748>,  <37.445278, 33.193367, 36.512814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486038, 33.993542, 36.464748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.209381, 33.832687, 36.224773>,  <37.043388, 33.736176, 36.080788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.209381, 33.832687, 36.224773>,  <37.486038, 33.993542, 36.464748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209381, 33.832687, 36.224773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710894, 0.525721, 0.467169,
		0.127534, 0.749604, -0.649484,
		-0.691639, -0.402134, -0.599936,
		37.001888, 33.712048, 36.044792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464245, 34.765160, 36.395275>,  <37.486038, 33.993542, 36.464748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464245, 34.765160, 36.395275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.257812, 35.103592, 36.341896>,  <37.133953, 35.306652, 36.309868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.257812, 35.103592, 36.341896>,  <37.464245, 34.765160, 36.395275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257812, 35.103592, 36.341896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308511, 0.038275, -0.950450,
		-0.799053, -0.531674, -0.280779,
		-0.516076, 0.846084, -0.133444,
		37.102989, 35.357418, 36.301865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114342, 34.713921, 35.695412>,  <37.464245, 34.765160, 36.395275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114342, 34.713921, 35.695412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.176506, 35.095615, 35.797607>,  <37.213806, 35.324635, 35.858925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.176506, 35.095615, 35.797607>,  <37.114342, 34.713921, 35.695412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176506, 35.095615, 35.797607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447295, 0.162621, -0.879478,
		-0.880781, 0.250959, -0.401553,
		0.155412, 0.954240, 0.255486,
		37.223129, 35.381886, 35.874252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806705, 35.173244, 35.219143>,  <37.114342, 34.713921, 35.695412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806705, 35.173244, 35.219143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068825, 35.422970, 35.389233>,  <37.226097, 35.572803, 35.491287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068825, 35.422970, 35.389233>,  <36.806705, 35.173244, 35.219143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068825, 35.422970, 35.389233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334979, 0.264368, -0.904377,
		-0.677030, 0.735079, -0.035892,
		0.655300, 0.624314, 0.425221,
		37.265415, 35.610264, 35.516800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646385, 35.860592, 34.892391>,  <36.806705, 35.173244, 35.219143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646385, 35.860592, 34.892391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.019581, 35.873112, 35.035805>,  <37.243500, 35.880623, 35.121853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.019581, 35.873112, 35.035805>,  <36.646385, 35.860592, 34.892391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019581, 35.873112, 35.035805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321959, 0.372638, -0.870335,
		-0.160842, 0.927449, 0.337592,
		0.932991, 0.031296, 0.358537,
		37.299477, 35.882500, 35.143364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942348, 36.415928, 34.560532>,  <36.646385, 35.860592, 34.892391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942348, 36.415928, 34.560532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.262302, 36.220436, 34.699860>,  <37.454273, 36.103142, 34.783459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.262302, 36.220436, 34.699860>,  <36.942348, 36.415928, 34.560532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262302, 36.220436, 34.699860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510522, 0.248970, -0.823032,
		0.315516, 0.836158, 0.448653,
		0.799886, -0.488727, 0.348323,
		37.502270, 36.073818, 34.804356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454903, 36.892719, 34.460171>,  <36.942348, 36.415928, 34.560532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454903, 36.892719, 34.460171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616344, 36.529259, 34.502968>,  <37.713211, 36.311180, 34.528645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.616344, 36.529259, 34.502968>,  <37.454903, 36.892719, 34.460171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616344, 36.529259, 34.502968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491706, 0.116807, -0.862891,
		0.771573, 0.400878, 0.493935,
		0.403609, -0.908654, 0.106988,
		37.737427, 36.256660, 34.535065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270840, 36.893021, 34.348930>,  <37.454903, 36.892719, 34.460171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270840, 36.893021, 34.348930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148296, 36.520470, 34.270264>,  <38.074768, 36.296940, 34.223064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148296, 36.520470, 34.270264>,  <38.270840, 36.893021, 34.348930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148296, 36.520470, 34.270264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431327, 0.048351, -0.900899,
		0.848587, -0.360827, 0.386916,
		-0.306361, -0.931379, -0.196664,
		38.056389, 36.241055, 34.211266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828911, 36.549778, 33.981468>,  <38.270840, 36.893021, 34.348930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828911, 36.549778, 33.981468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501129, 36.336262, 33.897980>,  <38.304462, 36.208153, 33.847885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.501129, 36.336262, 33.897980>,  <38.828911, 36.549778, 33.981468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501129, 36.336262, 33.897980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264485, -0.029107, -0.963950,
		0.508476, -0.845113, 0.165033,
		-0.819451, -0.533794, -0.208720,
		38.255295, 36.176125, 33.835365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054157, 35.869812, 33.780983>,  <38.828911, 36.549778, 33.981468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054157, 35.869812, 33.780983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.692860, 35.942677, 33.625568>,  <38.476082, 35.986397, 33.532318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.692860, 35.942677, 33.625568>,  <39.054157, 35.869812, 33.780983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692860, 35.942677, 33.625568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334267, -0.269089, -0.903248,
		-0.269089, -0.945731, 0.182163,
		0.903248, -0.182163, 0.388535,
		38.421886, 35.997326, 33.509007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020859, 35.289253, 33.447269>,  <39.054157, 35.869812, 33.780983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020859, 35.289253, 33.447269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715302, 35.477470, 33.270611>,  <38.531967, 35.590401, 33.164616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.715302, 35.477470, 33.270611>,  <39.020859, 35.289253, 33.447269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715302, 35.477470, 33.270611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285302, -0.367615, -0.885134,
		-0.578854, -0.802150, 0.146571,
		-0.763892, 0.470547, -0.441651,
		38.486134, 35.618633, 33.138115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615025, 34.793465, 33.135571>,  <39.020859, 35.289253, 33.447269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615025, 34.793465, 33.135571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.508156, 35.125751, 32.940216>,  <38.444035, 35.325123, 32.823002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.508156, 35.125751, 32.940216>,  <38.615025, 34.793465, 33.135571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508156, 35.125751, 32.940216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240158, -0.433423, -0.868601,
		-0.933244, -0.349354, -0.083707,
		-0.267168, 0.830720, -0.488390,
		38.428005, 35.374969, 32.793697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182041, 34.658150, 32.526112>,  <38.615025, 34.793465, 33.135571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182041, 34.658150, 32.526112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.356087, 35.012997, 32.464539>,  <38.460514, 35.225906, 32.427593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.356087, 35.012997, 32.464539>,  <38.182041, 34.658150, 32.526112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356087, 35.012997, 32.464539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380143, -0.335987, -0.861745,
		-0.816189, 0.316442, -0.483425,
		0.435117, 0.887117, -0.153936,
		38.486622, 35.279133, 32.418358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251900, 34.616192, 31.836710>,  <38.182041, 34.658150, 32.526112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251900, 34.616192, 31.836710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449680, 34.954220, 31.918077>,  <38.568348, 35.157036, 31.966898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449680, 34.954220, 31.918077>,  <38.251900, 34.616192, 31.836710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449680, 34.954220, 31.918077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557993, -0.129168, -0.819731,
		-0.666451, 0.518826, -0.535409,
		0.494455, 0.845065, 0.203417,
		38.598019, 35.207741, 31.979103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234177, 35.046368, 31.248178>,  <38.251900, 34.616192, 31.836710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234177, 35.046368, 31.248178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567646, 35.136765, 31.449736>,  <38.767727, 35.191002, 31.570669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567646, 35.136765, 31.449736>,  <38.234177, 35.046368, 31.248178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567646, 35.136765, 31.449736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524713, -0.039619, -0.850357,
		-0.172214, 0.973322, -0.151613,
		0.833678, 0.225997, 0.503892,
		38.817749, 35.204563, 31.600903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512680, 35.463146, 30.798044>,  <38.234177, 35.046368, 31.248178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512680, 35.463146, 30.798044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.814777, 35.348278, 31.033720>,  <38.996037, 35.279358, 31.175125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.814777, 35.348278, 31.033720>,  <38.512680, 35.463146, 30.798044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814777, 35.348278, 31.033720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606404, -0.035044, -0.794384,
		0.248775, 0.957237, 0.147677,
		0.755239, -0.287175, 0.589190,
		39.041348, 35.262127, 31.210478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543320, 36.192913, 30.860548>,  <38.512680, 35.463146, 30.798044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543320, 36.192913, 30.860548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254089, 36.291012, 30.602242>,  <38.080551, 36.349873, 30.447258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.254089, 36.291012, 30.602242>,  <38.543320, 36.192913, 30.860548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254089, 36.291012, 30.602242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628849, 0.153151, 0.762295,
		0.285850, 0.957287, 0.043483,
		-0.723076, 0.245247, -0.645767,
		38.037167, 36.364586, 30.408512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190243, 36.657459, 31.129498>,  <38.543320, 36.192913, 30.860548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190243, 36.657459, 31.129498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913509, 36.559914, 30.857645>,  <37.747471, 36.501389, 30.694532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913509, 36.559914, 30.857645>,  <38.190243, 36.657459, 31.129498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913509, 36.559914, 30.857645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718597, 0.140459, 0.681095,
		-0.070632, 0.959585, -0.272412,
		-0.691831, -0.243861, -0.679633,
		37.705959, 36.486755, 30.653755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707260, 37.118492, 31.367739>,  <38.190243, 36.657459, 31.129498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707260, 37.118492, 31.367739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.519657, 36.861633, 31.125193>,  <37.407093, 36.707520, 30.979664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.519657, 36.861633, 31.125193>,  <37.707260, 37.118492, 31.367739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519657, 36.861633, 31.125193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813353, 0.046454, 0.579913,
		-0.344221, 0.765174, -0.544078,
		-0.469009, -0.642145, -0.606366,
		37.378956, 36.668991, 30.943283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150860, 37.426395, 31.174973>,  <37.707260, 37.118492, 31.367739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150860, 37.426395, 31.174973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.060436, 37.044785, 31.096251>,  <37.006184, 36.815819, 31.049017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.060436, 37.044785, 31.096251>,  <37.150860, 37.426395, 31.174973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060436, 37.044785, 31.096251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870551, 0.107204, 0.480259,
		-0.437081, 0.279896, -0.854763,
		-0.226056, -0.954026, -0.196807,
		36.992619, 36.758575, 31.037209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444489, 37.492954, 31.138475>,  <37.150860, 37.426395, 31.174973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444489, 37.492954, 31.138475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.542984, 37.112206, 31.211481>,  <36.602081, 36.883759, 31.255283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.542984, 37.112206, 31.211481>,  <36.444489, 37.492954, 31.138475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542984, 37.112206, 31.211481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821513, -0.105063, 0.560426,
		-0.514277, -0.287938, -0.807844,
		0.246242, -0.951869, 0.182513,
		36.616856, 36.826645, 31.266235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824215, 37.088428, 30.889364>,  <36.444489, 37.492954, 31.138475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824215, 37.088428, 30.889364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.025829, 36.890617, 31.172600>,  <36.146797, 36.771931, 31.342541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.025829, 36.890617, 31.172600>,  <35.824215, 37.088428, 30.889364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025829, 36.890617, 31.172600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841019, -0.094451, 0.532697,
		-0.196554, -0.864014, -0.463515,
		0.504037, -0.494528, 0.708088,
		36.177040, 36.742260, 31.385027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429100, 36.458801, 31.149202>,  <35.824215, 37.088428, 30.889364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429100, 36.458801, 31.149202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.691360, 36.508701, 31.447079>,  <35.848717, 36.538643, 31.625805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.691360, 36.508701, 31.447079>,  <35.429100, 36.458801, 31.149202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691360, 36.508701, 31.447079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749003, -0.017297, 0.662341,
		0.095512, -0.992037, 0.082101,
		0.655647, 0.124756, 0.744690,
		35.888054, 36.546127, 31.670486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175243, 36.124828, 31.774677>,  <35.429100, 36.458801, 31.149202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175243, 36.124828, 31.774677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.448818, 36.371494, 31.930599>,  <35.612965, 36.519493, 32.024151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.448818, 36.371494, 31.930599>,  <35.175243, 36.124828, 31.774677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448818, 36.371494, 31.930599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621276, 0.212244, 0.754300,
		0.382419, -0.758072, 0.528283,
		0.683938, 0.616668, 0.389806,
		35.653999, 36.556496, 32.047543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132347, 35.902946, 32.478973>,  <35.175243, 36.124828, 31.774677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132347, 35.902946, 32.478973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.309910, 36.260944, 32.461418>,  <35.416447, 36.475742, 32.450886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.309910, 36.260944, 32.461418>,  <35.132347, 35.902946, 32.478973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309910, 36.260944, 32.461418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395514, 0.239647, 0.886644,
		0.804062, -0.376229, 0.460365,
		0.443907, 0.894997, -0.043887,
		35.443081, 36.529442, 32.448254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392582, 36.038700, 33.168282>,  <35.132347, 35.902946, 32.478973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392582, 36.038700, 33.168282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.392727, 36.396915, 32.990288>,  <35.392815, 36.611847, 32.883492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.392727, 36.396915, 32.990288>,  <35.392582, 36.038700, 33.168282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392727, 36.396915, 32.990288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448976, 0.397756, 0.800132,
		0.893544, 0.199495, 0.402221,
		0.000364, 0.895540, -0.444980,
		35.392838, 36.665577, 32.856792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571636, 36.550549, 33.727009>,  <35.392582, 36.038700, 33.168282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571636, 36.550549, 33.727009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.409363, 36.754841, 33.423809>,  <35.311996, 36.877419, 33.241890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.409363, 36.754841, 33.423809>,  <35.571636, 36.550549, 33.727009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409363, 36.754841, 33.423809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675753, 0.390818, 0.624995,
		0.615448, 0.765775, 0.186581,
		-0.405687, 0.510735, -0.758003,
		35.287659, 36.908062, 33.196407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467766, 37.194122, 33.983688>,  <35.571636, 36.550549, 33.727009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467766, 37.194122, 33.983688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.215244, 37.122383, 33.681881>,  <35.063732, 37.079342, 33.500797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.215244, 37.122383, 33.681881>,  <35.467766, 37.194122, 33.983688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215244, 37.122383, 33.681881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775496, 0.135668, 0.616604,
		-0.008222, 0.974386, -0.224729,
		-0.631300, -0.179346, -0.754517,
		35.025856, 37.068581, 33.455524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.636452, 36.998577, 27.875702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408234, 36.762878, 27.646875>,  <40.271301, 36.621460, 27.509579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408234, 36.762878, 27.646875>,  <40.636452, 36.998577, 27.875702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408234, 36.762878, 27.646875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722853, 0.029676, 0.690364,
		-0.389820, 0.807406, -0.442873,
		-0.570546, -0.589250, -0.572067,
		40.237068, 36.586102, 27.475256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031170, 37.334904, 27.891933>,  <40.636452, 36.998577, 27.875702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031170, 37.334904, 27.891933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964233, 36.953968, 27.789915>,  <39.924072, 36.725407, 27.728704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964233, 36.953968, 27.789915>,  <40.031170, 37.334904, 27.891933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964233, 36.953968, 27.789915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773967, -0.033350, 0.632347,
		-0.610714, 0.303214, -0.731498,
		-0.167341, -0.952339, -0.255045,
		39.914032, 36.668266, 27.713402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222843, 37.249332, 27.886852>,  <40.031170, 37.334904, 27.891933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222843, 37.249332, 27.886852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350044, 36.870106, 27.889452>,  <39.426365, 36.642570, 27.891012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350044, 36.870106, 27.889452>,  <39.222843, 37.249332, 27.886852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350044, 36.870106, 27.889452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746324, -0.246092, 0.618417,
		-0.584702, -0.201508, -0.785823,
		0.318001, -0.948068, 0.006500,
		39.445446, 36.585686, 27.891401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712349, 36.790401, 27.755039>,  <39.222843, 37.249332, 27.886852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712349, 36.790401, 27.755039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980068, 36.581753, 27.966681>,  <39.140701, 36.456566, 28.093664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980068, 36.581753, 27.966681>,  <38.712349, 36.790401, 27.755039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980068, 36.581753, 27.966681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708580, -0.233917, 0.665730,
		-0.223481, -0.820494, -0.526161,
		0.669306, -0.521605, 0.529110,
		39.180859, 36.425266, 28.125412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374722, 36.246479, 27.954025>,  <38.712349, 36.790401, 27.755039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374722, 36.246479, 27.954025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679836, 36.229630, 28.212135>,  <38.862907, 36.219521, 28.367001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679836, 36.229630, 28.212135>,  <38.374722, 36.246479, 27.954025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679836, 36.229630, 28.212135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613936, -0.360531, 0.702211,
		0.203065, -0.931796, -0.300868,
		0.762789, -0.042119, 0.645274,
		38.908672, 36.216995, 28.405718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292877, 35.653870, 28.216171>,  <38.374722, 36.246479, 27.954025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292877, 35.653870, 28.216171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493008, 35.874386, 28.483231>,  <38.613087, 36.006695, 28.643465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493008, 35.874386, 28.483231>,  <38.292877, 35.653870, 28.216171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493008, 35.874386, 28.483231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736154, -0.135071, 0.663199,
		0.455793, -0.823309, 0.338253,
		0.500330, 0.551288, 0.667646,
		38.643108, 36.039772, 28.683525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159161, 35.351486, 28.832651>,  <38.292877, 35.653870, 28.216171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159161, 35.351486, 28.832651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292645, 35.707355, 28.957308>,  <38.372734, 35.920876, 29.032101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292645, 35.707355, 28.957308>,  <38.159161, 35.351486, 28.832651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292645, 35.707355, 28.957308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673381, -0.006371, 0.739268,
		0.659691, -0.456556, 0.596962,
		0.333714, 0.889672, 0.311640,
		38.392757, 35.974258, 29.050800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167267, 35.283703, 29.613546>,  <38.159161, 35.351486, 28.832651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167267, 35.283703, 29.613546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198437, 35.676132, 29.542650>,  <38.217136, 35.911591, 29.500113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198437, 35.676132, 29.542650>,  <38.167267, 35.283703, 29.613546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198437, 35.676132, 29.542650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512669, 0.191906, 0.836865,
		0.855043, 0.025658, 0.517921,
		0.077920, 0.981078, -0.177242,
		38.221813, 35.970455, 29.489477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575794, 35.581387, 30.094730>,  <38.167267, 35.283703, 29.613546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575794, 35.581387, 30.094730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327694, 35.862717, 29.955811>,  <38.178833, 36.031517, 29.872458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327694, 35.862717, 29.955811>,  <38.575794, 35.581387, 30.094730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327694, 35.862717, 29.955811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321556, 0.175862, 0.930416,
		0.715466, 0.688768, 0.117081,
		-0.620251, 0.703329, -0.347301,
		38.141621, 36.073715, 29.851620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211815, 35.859318, 30.550817>,  <38.575794, 35.581387, 30.094730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211815, 35.859318, 30.550817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369102, 35.571163, 30.779350>,  <39.463474, 35.398270, 30.916470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369102, 35.571163, 30.779350>,  <39.211815, 35.859318, 30.550817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369102, 35.571163, 30.779350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538022, -0.323611, -0.778337,
		0.745593, 0.613448, 0.260333,
		0.393222, -0.720387, 0.571330,
		39.487068, 35.355045, 30.950748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965687, 35.867912, 30.791433>,  <39.211815, 35.859318, 30.550817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965687, 35.867912, 30.791433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871296, 35.479321, 30.800669>,  <39.814659, 35.246166, 30.806210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871296, 35.479321, 30.800669>,  <39.965687, 35.867912, 30.791433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871296, 35.479321, 30.800669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751655, -0.197539, -0.629280,
		0.615896, -0.131144, 0.776836,
		-0.235981, -0.971483, 0.023089,
		39.800503, 35.187874, 30.807596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626534, 35.511078, 30.735565>,  <39.965687, 35.867912, 30.791433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626534, 35.511078, 30.735565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375008, 35.210712, 30.654850>,  <40.224091, 35.030495, 30.606421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375008, 35.210712, 30.654850>,  <40.626534, 35.511078, 30.735565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375008, 35.210712, 30.654850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675230, -0.398679, -0.620581,
		0.385554, -0.526485, 0.757735,
		-0.628819, -0.750912, -0.201786,
		40.186363, 34.985439, 30.594315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994633, 34.986553, 30.615589>,  <40.626534, 35.511078, 30.735565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994633, 34.986553, 30.615589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666729, 34.852360, 30.429926>,  <40.469986, 34.771843, 30.318527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666729, 34.852360, 30.429926>,  <40.994633, 34.986553, 30.615589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666729, 34.852360, 30.429926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553890, -0.258396, -0.791478,
		0.145589, -0.905916, 0.397643,
		-0.819762, -0.335481, -0.464158,
		40.420799, 34.751717, 30.290678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033356, 34.284222, 30.510374>,  <40.994633, 34.986553, 30.615589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033356, 34.284222, 30.510374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802723, 34.425087, 30.215475>,  <40.664341, 34.509605, 30.038536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802723, 34.425087, 30.215475>,  <41.033356, 34.284222, 30.510374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802723, 34.425087, 30.215475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570463, -0.472458, -0.671830,
		-0.584911, -0.807938, 0.071516,
		-0.576585, 0.352164, -0.737245,
		40.629745, 34.530735, 29.994301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042572, 33.631954, 30.214624>,  <41.033356, 34.284222, 30.510374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042572, 33.631954, 30.214624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890274, 33.892597, 29.952192>,  <40.798897, 34.048985, 29.794733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890274, 33.892597, 29.952192>,  <41.042572, 33.631954, 30.214624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890274, 33.892597, 29.952192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396830, -0.525719, -0.752426,
		-0.835202, -0.546832, -0.058415,
		-0.380741, 0.651609, -0.656081,
		40.776051, 34.088081, 29.755367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715832, 33.239960, 29.650131>,  <41.042572, 33.631954, 30.214624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715832, 33.239960, 29.650131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779022, 33.606144, 29.502089>,  <40.816936, 33.825855, 29.413263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779022, 33.606144, 29.502089>,  <40.715832, 33.239960, 29.650131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779022, 33.606144, 29.502089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411562, -0.401750, -0.818055,
		-0.897585, -0.023088, -0.440236,
		0.157978, 0.915458, -0.370107,
		40.826416, 33.880783, 29.391056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455002, 33.242691, 28.938095>,  <40.715832, 33.239960, 29.650131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455002, 33.242691, 28.938095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708710, 33.551449, 28.955425>,  <40.860935, 33.736702, 28.965822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708710, 33.551449, 28.955425>,  <40.455002, 33.242691, 28.938095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708710, 33.551449, 28.955425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485384, -0.353974, -0.799440,
		-0.601748, 0.528092, -0.599181,
		0.634273, 0.771895, 0.043324,
		40.898991, 33.783016, 28.968422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681175, 33.423943, 28.213327>,  <40.455002, 33.242691, 28.938095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681175, 33.423943, 28.213327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969662, 33.584427, 28.439203>,  <41.142754, 33.680717, 28.574728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969662, 33.584427, 28.439203>,  <40.681175, 33.423943, 28.213327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969662, 33.584427, 28.439203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685272, -0.294125, -0.666252,
		-0.101216, 0.867480, -0.487066,
		0.721219, 0.401208, 0.564690,
		41.186028, 33.704788, 28.608610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942528, 33.902424, 27.734589>,  <40.681175, 33.423943, 28.213327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942528, 33.902424, 27.734589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230225, 33.908081, 28.012434>,  <41.402843, 33.911476, 28.179142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230225, 33.908081, 28.012434>,  <40.942528, 33.902424, 27.734589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230225, 33.908081, 28.012434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671272, -0.271910, -0.689536,
		0.179121, 0.962219, -0.205062,
		0.719243, 0.014142, 0.694615,
		41.445999, 33.912323, 28.220818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380493, 34.404701, 27.592970>,  <40.942528, 33.902424, 27.734589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380493, 34.404701, 27.592970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588299, 34.148167, 27.818817>,  <41.712982, 33.994247, 27.954325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588299, 34.148167, 27.818817>,  <41.380493, 34.404701, 27.592970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588299, 34.148167, 27.818817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642688, -0.142155, -0.752824,
		0.563075, 0.753978, 0.338326,
		0.519518, -0.641334, 0.564616,
		41.744156, 33.955765, 27.988201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093296, 34.674885, 27.631887>,  <41.380493, 34.404701, 27.592970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093296, 34.674885, 27.631887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100895, 34.281021, 27.701275>,  <42.105453, 34.044704, 27.742908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100895, 34.281021, 27.701275>,  <42.093296, 34.674885, 27.631887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100895, 34.281021, 27.701275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601402, -0.127352, -0.788731,
		0.798721, 0.119307, 0.589755,
		0.018995, -0.984656, 0.173471,
		42.106594, 33.985626, 27.753317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755157, 34.301460, 27.683693>,  <42.093296, 34.674885, 27.631887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755157, 34.301460, 27.683693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523224, 33.996532, 27.568691>,  <42.384064, 33.813576, 27.499691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523224, 33.996532, 27.568691>,  <42.755157, 34.301460, 27.683693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523224, 33.996532, 27.568691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556192, -0.112511, -0.823403,
		0.595349, -0.637346, 0.489234,
		-0.579836, -0.762320, -0.287503,
		42.349274, 33.767838, 27.482441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131630, 33.702385, 27.452076>,  <42.755157, 34.301460, 27.683693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131630, 33.702385, 27.452076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778591, 33.599651, 27.294569>,  <42.566769, 33.538010, 27.200066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778591, 33.599651, 27.294569>,  <43.131630, 33.702385, 27.452076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778591, 33.599651, 27.294569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447317, -0.201068, -0.871481,
		0.144652, -0.945308, 0.292349,
		-0.882600, -0.256834, -0.393768,
		42.513809, 33.522602, 27.176439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.454304, 31.143982, 25.055880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667652, 31.477180, 24.997055>,  <36.795662, 31.677099, 24.961760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667652, 31.477180, 24.997055>,  <36.454304, 31.143982, 25.055880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667652, 31.477180, 24.997055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244672, 0.318355, 0.915853,
		0.809720, -0.452511, 0.373613,
		0.533375, 0.832997, -0.147062,
		36.827663, 31.727079, 24.952936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732090, 31.210642, 25.666483>,  <36.454304, 31.143982, 25.055880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732090, 31.210642, 25.666483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.779728, 31.566648, 25.490444>,  <36.808311, 31.780252, 25.384821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.779728, 31.566648, 25.490444>,  <36.732090, 31.210642, 25.666483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779728, 31.566648, 25.490444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284893, 0.455244, 0.843558,
		0.951133, 0.024921, 0.307775,
		0.119091, 0.890018, -0.440097,
		36.815456, 31.833654, 25.358416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136635, 31.582506, 26.040579>,  <36.732090, 31.210642, 25.666483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136635, 31.582506, 26.040579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.969120, 31.868420, 25.816542>,  <36.868610, 32.039967, 25.682119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.969120, 31.868420, 25.816542>,  <37.136635, 31.582506, 26.040579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969120, 31.868420, 25.816542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260937, 0.496050, 0.828158,
		0.869787, 0.492971, -0.021227,
		-0.418788, 0.714782, -0.560092,
		36.843483, 32.082855, 25.648514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212864, 32.163605, 26.540619>,  <37.136635, 31.582506, 26.040579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212864, 32.163605, 26.540619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.942139, 32.289043, 26.274212>,  <36.779705, 32.364307, 26.114367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.942139, 32.289043, 26.274212>,  <37.212864, 32.163605, 26.540619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942139, 32.289043, 26.274212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421229, 0.577002, 0.699739,
		0.603731, 0.754139, -0.258427,
		-0.676813, 0.313597, -0.666019,
		36.739094, 32.383121, 26.074406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256592, 32.836338, 26.466816>,  <37.212864, 32.163605, 26.540619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256592, 32.836338, 26.466816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881653, 32.734005, 26.372221>,  <36.656689, 32.672607, 26.315464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881653, 32.734005, 26.372221>,  <37.256592, 32.836338, 26.466816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881653, 32.734005, 26.372221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336091, 0.485270, 0.807190,
		-0.091742, 0.836101, -0.540850,
		-0.937351, -0.255828, -0.236486,
		36.600449, 32.657257, 26.301275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891735, 33.473091, 26.555435>,  <37.256592, 32.836338, 26.466816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891735, 33.473091, 26.555435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.602066, 33.197247, 26.555670>,  <36.428265, 33.031738, 26.555811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.602066, 33.197247, 26.555670>,  <36.891735, 33.473091, 26.555435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602066, 33.197247, 26.555670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394608, 0.415078, 0.819753,
		-0.565557, 0.593414, -0.572717,
		-0.724175, -0.689616, 0.000585,
		36.384815, 32.990360, 26.555845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185963, 33.856873, 26.516476>,  <36.891735, 33.473091, 26.555435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185963, 33.856873, 26.516476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141491, 33.501545, 26.694700>,  <36.114807, 33.288349, 26.801634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.141491, 33.501545, 26.694700>,  <36.185963, 33.856873, 26.516476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141491, 33.501545, 26.694700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422329, 0.448075, 0.787951,
		-0.899598, -0.100566, -0.424982,
		-0.111183, -0.888321, 0.445560,
		36.108135, 33.235050, 26.828369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413948, 33.822834, 26.824120>,  <36.185963, 33.856873, 26.516476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413948, 33.822834, 26.824120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626202, 33.543556, 27.016348>,  <35.753555, 33.375988, 27.131685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.626202, 33.543556, 27.016348>,  <35.413948, 33.822834, 26.824120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626202, 33.543556, 27.016348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482847, 0.216988, 0.848396,
		-0.696625, -0.682230, -0.221981,
		0.530634, -0.698197, 0.480572,
		35.785393, 33.334099, 27.160519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002312, 33.449081, 27.123030>,  <35.413948, 33.822834, 26.824120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002312, 33.449081, 27.123030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.342964, 33.409130, 27.328846>,  <35.547356, 33.385159, 27.452335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.342964, 33.409130, 27.328846>,  <35.002312, 33.449081, 27.123030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342964, 33.409130, 27.328846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505567, 0.102494, 0.856678,
		-0.138300, -0.989707, 0.036792,
		0.851631, -0.099878, 0.514539,
		35.598454, 33.379166, 27.483208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678661, 33.080647, 27.709879>,  <35.002312, 33.449081, 27.123030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678661, 33.080647, 27.709879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.046955, 33.169937, 27.837891>,  <35.267933, 33.223511, 27.914698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.046955, 33.169937, 27.837891>,  <34.678661, 33.080647, 27.709879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046955, 33.169937, 27.837891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329988, 0.007786, 0.943953,
		0.208223, -0.974736, 0.080831,
		0.920734, 0.223226, 0.320030,
		35.323177, 33.236904, 27.933899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811031, 32.540089, 28.181782>,  <34.678661, 33.080647, 27.709879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811031, 32.540089, 28.181782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.033390, 32.862568, 28.262800>,  <35.166805, 33.056057, 28.311411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.033390, 32.862568, 28.262800>,  <34.811031, 32.540089, 28.181782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033390, 32.862568, 28.262800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277186, -0.049937, 0.959518,
		0.783677, -0.589532, 0.195708,
		0.555894, 0.806200, 0.202545,
		35.200157, 33.104427, 28.323565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262886, 32.423370, 28.829111>,  <34.811031, 32.540089, 28.181782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262886, 32.423370, 28.829111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.277939, 32.821095, 28.789251>,  <35.286968, 33.059731, 28.765335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.277939, 32.821095, 28.789251>,  <35.262886, 32.423370, 28.829111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277939, 32.821095, 28.789251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012090, 0.100168, 0.994897,
		0.999219, -0.036232, 0.015790,
		0.037629, 0.994311, -0.099652,
		35.289227, 33.119389, 28.759356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643002, 32.597240, 29.330036>,  <35.262886, 32.423370, 28.829111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643002, 32.597240, 29.330036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.451111, 32.941097, 29.259760>,  <35.335976, 33.147411, 29.217594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.451111, 32.941097, 29.259760>,  <35.643002, 32.597240, 29.330036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451111, 32.941097, 29.259760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142310, 0.121350, 0.982355,
		0.865798, 0.496268, 0.064121,
		-0.479730, 0.859647, -0.175688,
		35.307190, 33.198990, 29.207054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721474, 32.986740, 29.937986>,  <35.643002, 32.597240, 29.330036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721474, 32.986740, 29.937986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.431652, 33.178394, 29.739817>,  <35.257759, 33.293388, 29.620914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.431652, 33.178394, 29.739817>,  <35.721474, 32.986740, 29.937986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431652, 33.178394, 29.739817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387879, 0.310705, 0.867763,
		0.569710, 0.820907, -0.039275,
		-0.724555, 0.479139, -0.495424,
		35.214287, 33.322136, 29.591188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438915, 33.064381, 30.210163>,  <35.721474, 32.986740, 29.937986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438915, 33.064381, 30.210163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.609802, 32.784618, 30.439358>,  <36.712334, 32.616760, 30.576876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.609802, 32.784618, 30.439358>,  <36.438915, 33.064381, 30.210163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609802, 32.784618, 30.439358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499542, -0.345637, -0.794351,
		0.753619, 0.625593, 0.201720,
		0.427219, -0.699406, 0.572989,
		36.737968, 32.574799, 30.611254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189579, 33.004116, 30.062502>,  <36.438915, 33.064381, 30.210163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189579, 33.004116, 30.062502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123882, 32.649239, 30.234970>,  <37.084465, 32.436310, 30.338451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.123882, 32.649239, 30.234970>,  <37.189579, 33.004116, 30.062502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123882, 32.649239, 30.234970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566583, -0.442656, -0.695010,
		0.807471, 0.130144, 0.575373,
		-0.164240, -0.887197, 0.431169,
		37.074612, 32.383080, 30.364321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765865, 32.569916, 29.818327>,  <37.189579, 33.004116, 30.062502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765865, 32.569916, 29.818327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.474846, 32.326981, 29.945963>,  <37.300236, 32.181221, 30.022545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.474846, 32.326981, 29.945963>,  <37.765865, 32.569916, 29.818327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474846, 32.326981, 29.945963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298199, -0.698818, -0.650177,
		0.617863, -0.377882, 0.689530,
		-0.727546, -0.607338, 0.319090,
		37.256580, 32.144779, 30.041689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037338, 31.971523, 30.019299>,  <37.765865, 32.569916, 29.818327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037338, 31.971523, 30.019299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665817, 31.862446, 29.918934>,  <37.442902, 31.796999, 29.858715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665817, 31.862446, 29.918934>,  <38.037338, 31.971523, 30.019299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665817, 31.862446, 29.918934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370284, -0.709250, -0.599878,
		-0.014377, -0.650080, 0.759730,
		-0.928807, -0.272692, -0.250911,
		37.387177, 31.780638, 29.843660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057976, 31.269045, 30.009766>,  <38.037338, 31.971523, 30.019299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057976, 31.269045, 30.009766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724373, 31.357376, 29.807514>,  <37.524212, 31.410376, 29.686163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724373, 31.357376, 29.807514>,  <38.057976, 31.269045, 30.009766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724373, 31.357376, 29.807514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288521, -0.606583, -0.740819,
		-0.470302, -0.763735, 0.442182,
		-0.834009, 0.220830, -0.505631,
		37.474171, 31.423626, 29.655825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659077, 30.614517, 29.820030>,  <38.057976, 31.269045, 30.009766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659077, 30.614517, 29.820030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564747, 30.904076, 29.560690>,  <37.508148, 31.077810, 29.405085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.564747, 30.904076, 29.560690>,  <37.659077, 30.614517, 29.820030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564747, 30.904076, 29.560690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204673, -0.615207, -0.761333,
		-0.949998, -0.312241, -0.003082,
		-0.235824, 0.723896, -0.648353,
		37.493999, 31.121244, 29.366184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230484, 30.255812, 29.339178>,  <37.659077, 30.614517, 29.820030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230484, 30.255812, 29.339178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.380566, 30.581860, 29.162632>,  <37.470615, 30.777489, 29.056705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.380566, 30.581860, 29.162632>,  <37.230484, 30.255812, 29.339178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380566, 30.581860, 29.162632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098914, -0.508638, -0.855279,
		-0.921651, 0.277245, -0.271469,
		0.375202, 0.815121, -0.441363,
		37.493126, 30.826395, 29.030224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046181, 30.211687, 28.680704>,  <37.230484, 30.255812, 29.339178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046181, 30.211687, 28.680704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.334858, 30.486248, 28.644901>,  <37.508064, 30.650984, 28.623419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.334858, 30.486248, 28.644901>,  <37.046181, 30.211687, 28.680704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334858, 30.486248, 28.644901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303344, -0.429840, -0.850423,
		-0.622205, 0.586594, -0.518429,
		0.721694, 0.686400, -0.089509,
		37.551365, 30.692167, 28.618048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219570, 30.238968, 27.977123>,  <37.046181, 30.211687, 28.680704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219570, 30.238968, 27.977123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.512424, 30.479357, 28.105379>,  <37.688137, 30.623590, 28.182333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.512424, 30.479357, 28.105379>,  <37.219570, 30.238968, 27.977123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512424, 30.479357, 28.105379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471970, -0.108164, -0.874954,
		-0.491140, 0.791919, -0.362830,
		0.732138, 0.600970, 0.320638,
		37.732067, 30.659647, 28.201571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287884, 30.790747, 27.510946>,  <37.219570, 30.238968, 27.977123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287884, 30.790747, 27.510946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633686, 30.712124, 27.695984>,  <37.841167, 30.664951, 27.807007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.633686, 30.712124, 27.695984>,  <37.287884, 30.790747, 27.510946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633686, 30.712124, 27.695984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450938, -0.103202, -0.886569,
		0.222000, 0.975047, -0.000584,
		0.864506, -0.196555, 0.462596,
		37.893040, 30.653158, 27.834763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797951, 31.278053, 27.255655>,  <37.287884, 30.790747, 27.510946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797951, 31.278053, 27.255655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.010002, 30.974373, 27.406694>,  <38.137234, 30.792164, 27.497318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.010002, 30.974373, 27.406694>,  <37.797951, 31.278053, 27.255655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010002, 30.974373, 27.406694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433031, -0.140464, -0.890367,
		0.729008, 0.635517, 0.254295,
		0.530125, -0.759202, 0.377598,
		38.169041, 30.746613, 27.519974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450989, 31.466162, 27.090031>,  <37.797951, 31.278053, 27.255655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450989, 31.466162, 27.090031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.501022, 31.073511, 27.147667>,  <38.531044, 30.837921, 27.182249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.501022, 31.073511, 27.147667>,  <38.450989, 31.466162, 27.090031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501022, 31.073511, 27.147667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594731, -0.042057, -0.802824,
		0.794134, 0.186118, 0.578543,
		0.125088, -0.981627, 0.144089,
		38.538548, 30.779022, 27.190893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144886, 31.389524, 26.941925>,  <38.450989, 31.466162, 27.090031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144886, 31.389524, 26.941925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.982704, 31.023878, 26.942390>,  <38.885395, 30.804491, 26.942669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.982704, 31.023878, 26.942390>,  <39.144886, 31.389524, 26.941925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982704, 31.023878, 26.942390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536783, -0.239116, -0.809128,
		0.739915, -0.327438, 0.587631,
		-0.405451, -0.914116, 0.001163,
		38.861069, 30.749643, 26.942739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647873, 30.852139, 26.791853>,  <39.144886, 31.389524, 26.941925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647873, 30.852139, 26.791853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.315250, 30.661825, 26.677210>,  <39.115677, 30.547638, 26.608425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.315250, 30.661825, 26.677210>,  <39.647873, 30.852139, 26.791853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315250, 30.661825, 26.677210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485428, -0.371743, -0.791307,
		0.269946, -0.797145, 0.540083,
		-0.831558, -0.475781, -0.286606,
		39.065784, 30.519091, 26.591228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990932, 30.391752, 27.291491>,  <39.647873, 30.852139, 26.791853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990932, 30.391752, 27.291491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.369694, 30.277666, 27.350861>,  <40.596951, 30.209215, 27.386482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.369694, 30.277666, 27.350861>,  <39.990932, 30.391752, 27.291491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369694, 30.277666, 27.350861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134004, 0.069537, 0.988538,
		-0.292266, -0.955938, 0.027625,
		0.946902, -0.285214, 0.148423,
		40.653763, 30.192102, 27.395388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944244, 29.875751, 27.803896>,  <39.990932, 30.391752, 27.291491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944244, 29.875751, 27.803896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.315659, 30.023085, 27.822483>,  <40.538506, 30.111485, 27.833635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.315659, 30.023085, 27.822483>,  <39.944244, 29.875751, 27.803896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315659, 30.023085, 27.822483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065860, 0.040250, 0.997017,
		0.365362, -0.928823, 0.061631,
		0.928533, 0.368331, 0.046466,
		40.594219, 30.133583, 27.836424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252872, 29.444525, 28.352346>,  <39.944244, 29.875751, 27.803896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252872, 29.444525, 28.352346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.470547, 29.776796, 28.305288>,  <40.601151, 29.976158, 28.277054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.470547, 29.776796, 28.305288>,  <40.252872, 29.444525, 28.352346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470547, 29.776796, 28.305288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009242, 0.146155, 0.989219,
		0.838916, -0.537228, 0.087212,
		0.544183, 0.830677, -0.117647,
		40.633801, 30.025999, 28.269995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780533, 29.401339, 28.917967>,  <40.252872, 29.444525, 28.352346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780533, 29.401339, 28.917967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.787045, 29.775354, 28.776300>,  <40.790951, 29.999763, 28.691301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.787045, 29.775354, 28.776300>,  <40.780533, 29.401339, 28.917967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787045, 29.775354, 28.776300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096406, 0.351096, 0.931364,
		0.995209, -0.049302, -0.084429,
		0.016275, 0.935041, -0.354167,
		40.791927, 30.055866, 28.670050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404408, 29.733454, 29.225182>,  <40.780533, 29.401339, 28.917967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404408, 29.733454, 29.225182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.146286, 30.014214, 29.104570>,  <40.991413, 30.182669, 29.032204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.146286, 30.014214, 29.104570>,  <41.404408, 29.733454, 29.225182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146286, 30.014214, 29.104570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146901, 0.501359, 0.852678,
		0.749668, 0.505942, -0.426639,
		-0.645305, 0.701899, -0.301529,
		40.952694, 30.224783, 29.014112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636131, 30.399498, 29.632914>,  <41.404408, 29.733454, 29.225182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636131, 30.399498, 29.632914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.258232, 30.456959, 29.515051>,  <41.031494, 30.491434, 29.444332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.258232, 30.456959, 29.515051>,  <41.636131, 30.399498, 29.632914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258232, 30.456959, 29.515051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132555, 0.654698, 0.744177,
		0.299813, 0.742116, -0.599480,
		-0.944744, 0.143650, -0.294658,
		40.974808, 30.500053, 29.426653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505215, 31.135418, 29.697332>,  <41.636131, 30.399498, 29.632914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505215, 31.135418, 29.697332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.150005, 30.951591, 29.691448>,  <40.936882, 30.841295, 29.687918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.150005, 30.951591, 29.691448>,  <41.505215, 31.135418, 29.697332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150005, 30.951591, 29.691448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344485, 0.643775, 0.683289,
		-0.304548, 0.611843, -0.730000,
		-0.888021, -0.459568, -0.014710,
		40.883598, 30.813721, 29.687035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004616, 31.613043, 29.888887>,  <41.505215, 31.135418, 29.697332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004616, 31.613043, 29.888887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.778320, 31.285976, 29.931522>,  <40.642544, 31.089737, 29.957104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.778320, 31.285976, 29.931522>,  <41.004616, 31.613043, 29.888887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778320, 31.285976, 29.931522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518057, 0.453016, 0.725530,
		-0.641526, 0.355244, -0.679887,
		-0.565739, -0.817666, 0.106585,
		40.608597, 31.040676, 29.963497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368038, 31.815739, 29.796902>,  <41.004616, 31.613043, 29.888887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368038, 31.815739, 29.796902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357548, 31.490938, 30.030128>,  <40.351254, 31.296059, 30.170065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.357548, 31.490938, 30.030128>,  <40.368038, 31.815739, 29.796902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357548, 31.490938, 30.030128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389550, 0.545459, 0.742109,
		-0.920632, -0.207673, -0.330619,
		-0.026223, -0.812002, 0.583066,
		40.349682, 31.247337, 30.205048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697147, 31.917229, 30.142969>,  <40.368038, 31.815739, 29.796902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697147, 31.917229, 30.142969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.911598, 31.656658, 30.357710>,  <40.040268, 31.500317, 30.486555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.911598, 31.656658, 30.357710>,  <39.697147, 31.917229, 30.142969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911598, 31.656658, 30.357710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384452, 0.377761, 0.842314,
		-0.751506, -0.657983, -0.047912,
		0.536129, -0.651425, 0.536853,
		40.072437, 31.461231, 30.518766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261189, 31.444998, 30.581804>,  <39.697147, 31.917229, 30.142969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261189, 31.444998, 30.581804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.612736, 31.499369, 30.764723>,  <39.823662, 31.531990, 30.874474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.612736, 31.499369, 30.764723>,  <39.261189, 31.444998, 30.581804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612736, 31.499369, 30.764723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477034, 0.262278, 0.838838,
		-0.005921, -0.955371, 0.295348,
		0.878865, 0.135925, 0.457297,
		39.876396, 31.540146, 30.901913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207344, 31.017075, 31.250111>,  <39.261189, 31.444998, 30.581804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207344, 31.017075, 31.250111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.511906, 31.268860, 31.312130>,  <39.694641, 31.419931, 31.349340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.511906, 31.268860, 31.312130>,  <39.207344, 31.017075, 31.250111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511906, 31.268860, 31.312130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424014, 0.302635, 0.853595,
		0.490386, -0.715671, 0.497329,
		0.761402, 0.629465, 0.155047,
		39.740326, 31.457699, 31.358644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288586, 30.994684, 31.910412>,  <39.207344, 31.017075, 31.250111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288586, 30.994684, 31.910412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.545685, 31.288164, 31.822271>,  <39.699944, 31.464252, 31.769388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.545685, 31.288164, 31.822271>,  <39.288586, 30.994684, 31.910412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545685, 31.288164, 31.822271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196770, 0.436101, 0.878122,
		0.740372, -0.521056, 0.424675,
		0.642752, 0.733700, -0.220349,
		39.738510, 31.508274, 31.756166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840363, 30.989777, 32.529953>,  <39.288586, 30.994684, 31.910412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840363, 30.989777, 32.529953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.824310, 31.349003, 32.354744>,  <39.814678, 31.564539, 32.249619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.824310, 31.349003, 32.354744>,  <39.840363, 30.989777, 32.529953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824310, 31.349003, 32.354744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142379, 0.428764, 0.892126,
		0.988998, 0.098164, 0.110661,
		-0.040127, 0.898068, -0.438023,
		39.812271, 31.618423, 32.223335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.151443, 32.937630, 27.393229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.859829, 33.077423, 27.157816>,  <42.684860, 33.161301, 27.016569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.859829, 33.077423, 27.157816>,  <43.151443, 32.937630, 27.393229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859829, 33.077423, 27.157816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505261, -0.305273, -0.807167,
		-0.461758, -0.885814, 0.045972,
		-0.729034, 0.349488, -0.588530,
		42.641117, 33.182270, 26.981256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127052, 32.413086, 26.985207>,  <43.151443, 32.937630, 27.393229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127052, 32.413086, 26.985207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.929943, 32.697685, 26.784830>,  <42.811676, 32.868446, 26.664604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.929943, 32.697685, 26.784830>,  <43.127052, 32.413086, 26.985207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929943, 32.697685, 26.784830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433843, -0.298141, -0.850231,
		-0.754289, -0.636303, -0.161761,
		-0.492777, 0.711499, -0.500940,
		42.782108, 32.911137, 26.634548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821754, 32.002258, 26.469084>,  <43.127052, 32.413086, 26.985207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821754, 32.002258, 26.469084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.852924, 32.384212, 26.354452>,  <42.871624, 32.613384, 26.285673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.852924, 32.384212, 26.354452>,  <42.821754, 32.002258, 26.469084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852924, 32.384212, 26.354452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371029, -0.294581, -0.880659,
		-0.925346, -0.037706, -0.377243,
		0.077922, 0.954882, -0.286579,
		42.876301, 32.670677, 26.268478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625431, 31.892651, 25.783754>,  <42.821754, 32.002258, 26.469084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625431, 31.892651, 25.783754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.786530, 32.256393, 25.825438>,  <42.883190, 32.474640, 25.850447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.786530, 32.256393, 25.825438>,  <42.625431, 31.892651, 25.783754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786530, 32.256393, 25.825438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475862, -0.110769, -0.872517,
		-0.781888, 0.400994, -0.477341,
		0.402748, 0.909359, 0.104208,
		42.907352, 32.529202, 25.856701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511276, 32.222401, 25.239111>,  <42.625431, 31.892651, 25.783754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511276, 32.222401, 25.239111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.806450, 32.462929, 25.361664>,  <42.983555, 32.607246, 25.435196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.806450, 32.462929, 25.361664>,  <42.511276, 32.222401, 25.239111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806450, 32.462929, 25.361664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482775, -0.153123, -0.862254,
		-0.471580, 0.784196, -0.403298,
		0.737931, 0.601323, 0.306380,
		43.027828, 32.643326, 25.453577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754417, 32.678135, 24.616566>,  <42.511276, 32.222401, 25.239111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754417, 32.678135, 24.616566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.066616, 32.706669, 24.864994>,  <43.253937, 32.723789, 25.014051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.066616, 32.706669, 24.864994>,  <42.754417, 32.678135, 24.616566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066616, 32.706669, 24.864994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618012, -0.237808, -0.749338,
		0.094241, 0.968689, -0.229696,
		0.780499, 0.071336, 0.621073,
		43.300766, 32.728069, 25.051315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264107, 33.074951, 24.291405>,  <42.754417, 32.678135, 24.616566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264107, 33.074951, 24.291405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.434010, 32.828056, 24.556313>,  <43.535954, 32.679920, 24.715258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.434010, 32.828056, 24.556313>,  <43.264107, 33.074951, 24.291405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434010, 32.828056, 24.556313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634203, -0.319161, -0.704218,
		0.646038, 0.719136, 0.255885,
		0.424760, -0.617235, 0.662269,
		43.561440, 32.642887, 24.754993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.933994, 33.091560, 24.199188>,  <43.264107, 33.074951, 24.291405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.933994, 33.091560, 24.199188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.935814, 32.748550, 24.404959>,  <43.936905, 32.542744, 24.528421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.935814, 32.748550, 24.404959>,  <43.933994, 33.091560, 24.199188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935814, 32.748550, 24.404959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610571, -0.405028, -0.680555,
		0.791948, 0.317190, 0.521735,
		0.004548, -0.857521, 0.514428,
		43.937180, 32.491295, 24.559288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.572052, 32.936695, 24.231171>,  <43.933994, 33.091560, 24.199188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.572052, 32.936695, 24.231171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.370098, 32.598019, 24.298346>,  <44.248924, 32.394814, 24.338650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.370098, 32.598019, 24.298346>,  <44.572052, 32.936695, 24.231171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370098, 32.598019, 24.298346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524419, -0.455410, -0.719435,
		0.685618, -0.275166, 0.673952,
		-0.504888, -0.846691, 0.167935,
		44.218632, 32.344013, 24.348726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128254, 32.408283, 24.452024>,  <44.572052, 32.936695, 24.231171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128254, 32.408283, 24.452024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.814423, 32.201897, 24.314489>,  <44.626125, 32.078064, 24.231968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.814423, 32.201897, 24.314489>,  <45.128254, 32.408283, 24.452024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814423, 32.201897, 24.314489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616678, -0.591737, -0.519188,
		0.064420, -0.619379, 0.782444,
		-0.784575, -0.515962, -0.343838,
		44.579048, 32.047108, 24.211338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381069, 31.788048, 24.318319>,  <45.128254, 32.408283, 24.452024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381069, 31.788048, 24.318319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.034592, 31.754812, 24.121220>,  <44.826706, 31.734871, 24.002960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.034592, 31.754812, 24.121220>,  <45.381069, 31.788048, 24.318319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034592, 31.754812, 24.121220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436325, -0.606408, -0.664748,
		-0.243573, -0.790801, 0.561522,
		-0.866194, -0.083091, -0.492750,
		44.774734, 31.729885, 23.973394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204163, 31.019079, 24.263922>,  <45.381069, 31.788048, 24.318319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204163, 31.019079, 24.263922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.038918, 31.235786, 23.971121>,  <44.939770, 31.365810, 23.795441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.038918, 31.235786, 23.971121>,  <45.204163, 31.019079, 24.263922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038918, 31.235786, 23.971121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273073, -0.693117, -0.667098,
		-0.868776, -0.475475, 0.138391,
		-0.413110, 0.541768, -0.732003,
		44.914986, 31.398317, 23.751520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680744, 30.611061, 23.881268>,  <45.204163, 31.019079, 24.263922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680744, 30.611061, 23.881268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.873531, 30.866549, 23.641354>,  <44.989204, 31.019842, 23.497406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.873531, 30.866549, 23.641354>,  <44.680744, 30.611061, 23.881268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873531, 30.866549, 23.641354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231226, -0.752992, -0.616066,
		-0.845127, 0.158239, -0.510608,
		0.481969, 0.638720, -0.599785,
		45.018124, 31.058165, 23.461418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591099, 30.486786, 23.205759>,  <44.680744, 30.611061, 23.881268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591099, 30.486786, 23.205759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.954350, 30.653881, 23.217083>,  <45.172298, 30.754137, 23.223877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.954350, 30.653881, 23.217083>,  <44.591099, 30.486786, 23.205759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954350, 30.653881, 23.217083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377301, -0.787163, -0.487872,
		-0.181517, 0.453731, -0.872456,
		0.908127, 0.417736, 0.028309,
		45.226788, 30.779202, 23.225576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166340, 30.115314, 22.806152>,  <44.591099, 30.486786, 23.205759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166340, 30.115314, 22.806152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.961487, 29.779234, 22.734842>,  <43.838577, 29.577585, 22.692057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.961487, 29.779234, 22.734842>,  <44.166340, 30.115314, 22.806152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961487, 29.779234, 22.734842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439803, 0.078239, 0.894680,
		-0.737764, 0.536599, -0.409592,
		-0.512131, -0.840202, -0.178275,
		43.807846, 29.527174, 22.681360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470898, 30.285637, 22.984438>,  <44.166340, 30.115314, 22.806152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470898, 30.285637, 22.984438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.481781, 29.886091, 22.968773>,  <43.488312, 29.646364, 22.959373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.481781, 29.886091, 22.968773>,  <43.470898, 30.285637, 22.984438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481781, 29.886091, 22.968773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644939, -0.047472, 0.762758,
		-0.763750, 0.004507, -0.645497,
		0.027205, -0.998862, -0.039164,
		43.489944, 29.586433, 22.957024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.874676, 30.155928, 23.102644>,  <43.470898, 30.285637, 22.984438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.874676, 30.155928, 23.102644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.051704, 29.807341, 23.187195>,  <43.157921, 29.598188, 23.237926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.051704, 29.807341, 23.187195>,  <42.874676, 30.155928, 23.102644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051704, 29.807341, 23.187195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599100, -0.111949, 0.792809,
		-0.667243, -0.477508, -0.571641,
		0.442567, -0.871466, 0.211378,
		43.184475, 29.545900, 23.250608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284401, 29.639772, 23.298283>,  <42.874676, 30.155928, 23.102644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284401, 29.639772, 23.298283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.624157, 29.479710, 23.435930>,  <42.828011, 29.383673, 23.518518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.624157, 29.479710, 23.435930>,  <42.284401, 29.639772, 23.298283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624157, 29.479710, 23.435930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465398, -0.260410, 0.845926,
		-0.248865, -0.878682, -0.407410,
		0.849395, -0.400129, 0.344130,
		42.878971, 29.359663, 23.539165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117561, 28.916927, 23.521301>,  <42.284401, 29.639772, 23.298283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117561, 28.916927, 23.521301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.467472, 29.015800, 23.687996>,  <42.677418, 29.075125, 23.788012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.467472, 29.015800, 23.687996>,  <42.117561, 28.916927, 23.521301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467472, 29.015800, 23.687996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410275, -0.079674, 0.908475,
		0.257763, -0.965688, 0.031716,
		0.874776, 0.247183, 0.416734,
		42.729904, 29.089954, 23.813017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145912, 28.454329, 24.087568>,  <42.117561, 28.916927, 23.521301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145912, 28.454329, 24.087568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.389011, 28.751894, 24.198730>,  <42.534870, 28.930433, 24.265429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.389011, 28.751894, 24.198730>,  <42.145912, 28.454329, 24.087568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389011, 28.751894, 24.198730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396206, -0.019242, 0.917960,
		0.688232, -0.667997, 0.283050,
		0.607748, 0.743915, 0.277908,
		42.571335, 28.975069, 24.282103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383553, 28.195112, 24.701864>,  <42.145912, 28.454329, 24.087568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383553, 28.195112, 24.701864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.472305, 28.584810, 24.717918>,  <42.525558, 28.818630, 24.727551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.472305, 28.584810, 24.717918>,  <42.383553, 28.195112, 24.701864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472305, 28.584810, 24.717918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284590, 0.025336, 0.958314,
		0.932618, -0.224057, 0.282883,
		0.221884, 0.974247, 0.040135,
		42.538872, 28.877085, 24.729959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560883, 28.234446, 25.431128>,  <42.383553, 28.195112, 24.701864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560883, 28.234446, 25.431128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.477253, 28.600588, 25.293486>,  <42.427074, 28.820274, 25.210899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.477253, 28.600588, 25.293486>,  <42.560883, 28.234446, 25.431128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477253, 28.600588, 25.293486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551516, 0.180211, 0.814465,
		0.807539, 0.360061, 0.467158,
		-0.209070, 0.915358, -0.344107,
		42.414532, 28.875195, 25.190254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567516, 28.576218, 26.026670>,  <42.560883, 28.234446, 25.431128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567516, 28.576218, 26.026670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.375225, 28.826792, 25.781237>,  <42.259850, 28.977137, 25.633976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.375225, 28.826792, 25.781237>,  <42.567516, 28.576218, 26.026670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375225, 28.826792, 25.781237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500668, 0.378380, 0.778563,
		0.719886, 0.681475, 0.131739,
		-0.480724, 0.626434, -0.613584,
		42.231007, 29.014723, 25.597162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675785, 29.308624, 26.287161>,  <42.567516, 28.576218, 26.026670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675785, 29.308624, 26.287161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.342010, 29.303213, 26.066786>,  <42.141747, 29.299967, 25.934561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.342010, 29.303213, 26.066786>,  <42.675785, 29.308624, 26.287161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342010, 29.303213, 26.066786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497685, 0.447858, 0.742787,
		0.236695, 0.894002, -0.380441,
		-0.834437, -0.013526, -0.550937,
		42.091679, 29.299156, 25.901505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421848, 30.036808, 26.401428>,  <42.675785, 29.308624, 26.287161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421848, 30.036808, 26.401428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.112541, 29.817900, 26.273331>,  <41.926956, 29.686554, 26.196472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.112541, 29.817900, 26.273331>,  <42.421848, 30.036808, 26.401428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112541, 29.817900, 26.273331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560963, 0.354982, 0.747869,
		-0.295607, 0.757946, -0.581494,
		-0.773264, -0.547272, -0.320245,
		41.880562, 29.653719, 26.177258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934120, 30.515793, 26.404242>,  <42.421848, 30.036808, 26.401428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934120, 30.515793, 26.404242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.720879, 30.177441, 26.411091>,  <41.592934, 29.974430, 26.415199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.720879, 30.177441, 26.411091>,  <41.934120, 30.515793, 26.404242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720879, 30.177441, 26.411091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476666, 0.317006, 0.819937,
		-0.698995, 0.428948, -0.572197,
		-0.533100, -0.845879, 0.017121,
		41.560947, 29.923677, 26.416227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184822, 30.666737, 26.412859>,  <41.934120, 30.515793, 26.404242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184822, 30.666737, 26.412859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.213814, 30.295349, 26.558565>,  <41.231209, 30.072515, 26.645988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.213814, 30.295349, 26.558565>,  <41.184822, 30.666737, 26.412859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213814, 30.295349, 26.558565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439264, 0.298181, 0.847429,
		-0.895429, -0.221433, -0.386231,
		0.072482, -0.928470, 0.364267,
		41.235558, 30.016808, 26.667845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495293, 30.542145, 26.556074>,  <41.184822, 30.666737, 26.412859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495293, 30.542145, 26.556074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.747322, 30.329735, 26.782709>,  <40.898540, 30.202290, 26.918690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.747322, 30.329735, 26.782709>,  <40.495293, 30.542145, 26.556074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747322, 30.329735, 26.782709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646626, 0.045220, 0.761465,
		-0.429977, -0.846149, -0.314882,
		0.630075, -0.531024, 0.566586,
		40.936344, 30.170427, 26.952684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872147, 30.139402, 26.619684>,  <40.495293, 30.542145, 26.556074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872147, 30.139402, 26.619684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.520550, 30.209387, 26.442255>,  <39.309589, 30.251377, 26.335798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.520550, 30.209387, 26.442255>,  <39.872147, 30.139402, 26.619684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520550, 30.209387, 26.442255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360712, -0.364416, -0.858538,
		-0.311852, -0.914653, 0.257211,
		-0.878997, 0.174958, -0.443571,
		39.256851, 30.261875, 26.309183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776970, 29.627289, 26.293077>,  <39.872147, 30.139402, 26.619684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776970, 29.627289, 26.293077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.555866, 29.888416, 26.085892>,  <39.423203, 30.045092, 25.961580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.555866, 29.888416, 26.085892>,  <39.776970, 29.627289, 26.293077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555866, 29.888416, 26.085892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281983, -0.438365, -0.853417,
		-0.784184, -0.617790, 0.058226,
		-0.552757, 0.652817, -0.517965,
		39.390038, 30.084261, 25.930502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322079, 29.289585, 25.725122>,  <39.776970, 29.627289, 26.293077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322079, 29.289585, 25.725122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.319046, 29.669495, 25.599985>,  <39.317226, 29.897440, 25.524902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.319046, 29.669495, 25.599985>,  <39.322079, 29.289585, 25.725122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319046, 29.669495, 25.599985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312486, -0.294931, -0.902977,
		-0.949892, -0.104608, -0.294555,
		-0.007585, 0.949775, -0.312841,
		39.316769, 29.954428, 25.506132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027039, 29.239229, 25.007898>,  <39.322079, 29.289585, 25.725122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027039, 29.239229, 25.007898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.196243, 29.601654, 25.003677>,  <39.297764, 29.819109, 25.001144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.196243, 29.601654, 25.003677>,  <39.027039, 29.239229, 25.007898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196243, 29.601654, 25.003677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236644, -0.121705, -0.963944,
		-0.874678, 0.405261, -0.265896,
		0.423010, 0.906064, -0.010550,
		39.323147, 29.873472, 25.000513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728977, 29.717604, 24.428057>,  <39.027039, 29.239229, 25.007898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728977, 29.717604, 24.428057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069492, 29.905212, 24.522141>,  <39.273804, 30.017776, 24.578590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069492, 29.905212, 24.522141>,  <38.728977, 29.717604, 24.428057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069492, 29.905212, 24.522141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182750, 0.155169, -0.970837,
		-0.491839, 0.869450, 0.046381,
		0.851291, 0.469020, 0.235210,
		39.324879, 30.045918, 24.592703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780441, 30.066250, 23.882370>,  <38.728977, 29.717604, 24.428057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780441, 30.066250, 23.882370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.147686, 30.086117, 24.039654>,  <39.368031, 30.098038, 24.134024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.147686, 30.086117, 24.039654>,  <38.780441, 30.066250, 23.882370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147686, 30.086117, 24.039654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393615, 0.001717, -0.919274,
		-0.046335, 0.998764, -0.017974,
		0.918107, 0.049669, 0.393208,
		39.423119, 30.101017, 24.157616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160412, 30.589039, 23.457823>,  <38.780441, 30.066250, 23.882370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160412, 30.589039, 23.457823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.435242, 30.362991, 23.640497>,  <39.600140, 30.227362, 23.750103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.435242, 30.362991, 23.640497>,  <39.160412, 30.589039, 23.457823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435242, 30.362991, 23.640497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619714, 0.127663, -0.774375,
		0.379313, 0.815071, 0.437928,
		0.687078, -0.565121, 0.456687,
		39.641365, 30.193455, 23.777504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996483, 31.315331, 23.079714>,  <39.160412, 30.589039, 23.457823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996483, 31.315331, 23.079714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.651134, 31.311153, 22.877932>,  <38.443924, 31.308647, 22.756863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.651134, 31.311153, 22.877932>,  <38.996483, 31.315331, 23.079714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651134, 31.311153, 22.877932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502746, 0.102631, 0.858320,
		0.042809, 0.994664, -0.093860,
		-0.863374, -0.010444, -0.504457,
		38.392124, 31.308020, 22.726595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594868, 31.910549, 23.219639>,  <38.996483, 31.315331, 23.079714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594868, 31.910549, 23.219639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338333, 31.626339, 23.103817>,  <38.184414, 31.455812, 23.034325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.338333, 31.626339, 23.103817>,  <38.594868, 31.910549, 23.219639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338333, 31.626339, 23.103817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524231, 0.130230, 0.841559,
		-0.560241, 0.691515, -0.456001,
		-0.641336, -0.710526, -0.289553,
		38.145931, 31.413181, 23.016951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015038, 32.217365, 23.051630>,  <38.594868, 31.910549, 23.219639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015038, 32.217365, 23.051630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.818066, 31.870007, 23.074965>,  <37.699883, 31.661592, 23.088964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.818066, 31.870007, 23.074965>,  <38.015038, 32.217365, 23.051630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818066, 31.870007, 23.074965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585934, 0.380331, 0.715563,
		-0.643576, 0.318187, -0.696108,
		-0.492434, -0.868393, 0.058336,
		37.670334, 31.609489, 23.092464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347904, 32.388344, 23.171820>,  <38.015038, 32.217365, 23.051630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347904, 32.388344, 23.171820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.369202, 32.008286, 23.294714>,  <37.381981, 31.780251, 23.368450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.369202, 32.008286, 23.294714>,  <37.347904, 32.388344, 23.171820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369202, 32.008286, 23.294714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395074, 0.262525, 0.880339,
		-0.917105, -0.168254, -0.361399,
		0.053245, -0.950143, 0.307236,
		37.385174, 31.723242, 23.386885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778072, 32.220070, 23.411232>,  <37.347904, 32.388344, 23.171820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778072, 32.220070, 23.411232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.998444, 31.926363, 23.569891>,  <37.130665, 31.750137, 23.665087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.998444, 31.926363, 23.569891>,  <36.778072, 32.220070, 23.411232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998444, 31.926363, 23.569891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145274, 0.383644, 0.911983,
		-0.821812, -0.560058, 0.104690,
		0.550927, -0.734270, 0.396645,
		37.163723, 31.706081, 23.688885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376740, 31.919230, 23.804243>,  <36.778072, 32.220070, 23.411232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376740, 31.919230, 23.804243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699291, 31.749971, 23.969509>,  <36.892822, 31.648417, 24.068668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.699291, 31.749971, 23.969509>,  <36.376740, 31.919230, 23.804243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699291, 31.749971, 23.969509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390569, 0.143565, 0.909310,
		-0.444085, -0.894616, -0.049500,
		0.806377, -0.423144, 0.413165,
		36.941204, 31.623028, 24.093458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230984, 31.420431, 24.402704>,  <36.376740, 31.919230, 23.804243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230984, 31.420431, 24.402704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591698, 31.568876, 24.491306>,  <36.808125, 31.657944, 24.544468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.591698, 31.568876, 24.491306>,  <36.230984, 31.420431, 24.402704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591698, 31.568876, 24.491306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276772, 0.102238, 0.955481,
		0.331945, -0.922942, 0.194911,
		0.901781, 0.371114, 0.221507,
		36.862232, 31.680210, 24.557758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.834652, 33.653614, 21.689827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.926708, 33.366020, 21.952152>,  <42.981941, 33.193462, 22.109547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.926708, 33.366020, 21.952152>,  <42.834652, 33.653614, 21.689827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926708, 33.366020, 21.952152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417823, 0.535626, 0.733845,
		-0.878897, -0.442899, -0.177143,
		0.230137, -0.718989, 0.655814,
		42.995750, 33.150322, 22.148897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197918, 33.416027, 22.067141>,  <42.834652, 33.653614, 21.689827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197918, 33.416027, 22.067141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.534924, 33.369709, 22.277571>,  <42.737129, 33.341919, 22.403828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.534924, 33.369709, 22.277571>,  <42.197918, 33.416027, 22.067141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534924, 33.369709, 22.277571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386353, 0.550636, 0.739954,
		-0.375360, -0.826675, 0.419183,
		0.842518, -0.115797, 0.526075,
		42.787678, 33.334969, 22.435392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.941231, 33.206779, 22.775421>,  <42.197918, 33.416027, 22.067141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.941231, 33.206779, 22.775421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.309944, 33.354691, 22.822033>,  <42.531174, 33.443436, 22.850000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.309944, 33.354691, 22.822033>,  <41.941231, 33.206779, 22.775421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309944, 33.354691, 22.822033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275652, 0.413724, 0.867668,
		0.272630, -0.831925, 0.483294,
		0.921785, 0.369774, 0.116529,
		42.586479, 33.465622, 22.856991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104813, 33.147255, 23.465405>,  <41.941231, 33.206779, 22.775421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104813, 33.147255, 23.465405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.369461, 33.416965, 23.334194>,  <42.528252, 33.578793, 23.255468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.369461, 33.416965, 23.334194>,  <42.104813, 33.147255, 23.465405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369461, 33.416965, 23.334194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225016, 0.595841, 0.770935,
		0.715277, -0.436259, 0.545946,
		0.661625, 0.674279, -0.328026,
		42.567947, 33.619247, 23.235786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314751, 33.279987, 24.055691>,  <42.104813, 33.147255, 23.465405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314751, 33.279987, 24.055691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.449177, 33.567677, 23.812452>,  <42.529831, 33.740292, 23.666510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.449177, 33.567677, 23.812452>,  <42.314751, 33.279987, 24.055691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449177, 33.567677, 23.812452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230755, 0.688844, 0.687202,
		0.913135, -0.090621, 0.397457,
		0.336061, 0.719224, -0.608096,
		42.549995, 33.783443, 23.630024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778957, 33.687256, 24.379435>,  <42.314751, 33.279987, 24.055691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778957, 33.687256, 24.379435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.636097, 33.942265, 24.106373>,  <42.550381, 34.095268, 23.942535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.636097, 33.942265, 24.106373>,  <42.778957, 33.687256, 24.379435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636097, 33.942265, 24.106373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164514, 0.676494, 0.717838,
		0.919444, 0.368684, -0.136731,
		-0.357153, 0.637517, -0.682652,
		42.528950, 34.133518, 23.901577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857010, 34.430836, 24.676239>,  <42.778957, 33.687256, 24.379435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857010, 34.430836, 24.676239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.593231, 34.453655, 24.376408>,  <42.434963, 34.467346, 24.196508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.593231, 34.453655, 24.376408>,  <42.857010, 34.430836, 24.676239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593231, 34.453655, 24.376408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446554, 0.772402, 0.451646,
		0.604743, 0.632566, -0.483886,
		-0.659451, 0.057049, -0.749580,
		42.395397, 34.470768, 24.151533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864037, 35.192135, 24.354046>,  <42.857010, 34.430836, 24.676239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864037, 35.192135, 24.354046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.516014, 35.001568, 24.303398>,  <42.307201, 34.887226, 24.273010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.516014, 35.001568, 24.303398>,  <42.864037, 35.192135, 24.354046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516014, 35.001568, 24.303398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492941, 0.838905, 0.230754,
		-0.003715, 0.263183, -0.964739,
		-0.870055, -0.476416, -0.126617,
		42.254997, 34.858643, 24.265413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410717, 35.633057, 24.052589>,  <42.864037, 35.192135, 24.354046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410717, 35.633057, 24.052589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.155903, 35.360165, 24.196112>,  <42.003014, 35.196430, 24.282225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.155903, 35.360165, 24.196112>,  <42.410717, 35.633057, 24.052589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155903, 35.360165, 24.196112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459222, 0.709751, 0.534199,
		-0.619111, 0.175533, -0.765434,
		-0.637037, -0.682233, 0.358806,
		41.964790, 35.155495, 24.303753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824528, 35.980408, 24.009253>,  <42.410717, 35.633057, 24.052589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824528, 35.980408, 24.009253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.711948, 35.680386, 24.248653>,  <41.644402, 35.500374, 24.392294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.711948, 35.680386, 24.248653>,  <41.824528, 35.980408, 24.009253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711948, 35.680386, 24.248653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745146, 0.563818, 0.356183,
		-0.604604, -0.345727, -0.717584,
		-0.281445, -0.750055, 0.598504,
		41.627514, 35.455368, 24.428205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029507, 36.041622, 24.075413>,  <41.824528, 35.980408, 24.009253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029507, 36.041622, 24.075413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.192951, 35.839123, 24.379189>,  <41.291019, 35.717625, 24.561455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.192951, 35.839123, 24.379189>,  <41.029507, 36.041622, 24.075413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192951, 35.839123, 24.379189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610233, 0.467218, 0.639783,
		-0.678712, -0.724860, -0.118017,
		0.408613, -0.506247, 0.759441,
		41.315536, 35.687248, 24.607021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498867, 35.791435, 24.449297>,  <41.029507, 36.041622, 24.075413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498867, 35.791435, 24.449297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.803192, 35.816891, 24.707634>,  <40.985786, 35.832165, 24.862637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.803192, 35.816891, 24.707634>,  <40.498867, 35.791435, 24.449297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803192, 35.816891, 24.707634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550470, 0.590376, 0.590287,
		-0.343722, -0.804615, 0.484199,
		0.760814, 0.063642, 0.645842,
		41.031437, 35.835983, 24.901386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957699, 35.155258, 24.305426>,  <40.498867, 35.791435, 24.449297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957699, 35.155258, 24.305426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688480, 35.266933, 24.031473>,  <39.526951, 35.333939, 23.867102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.688480, 35.266933, 24.031473>,  <39.957699, 35.155258, 24.305426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688480, 35.266933, 24.031473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474138, -0.547827, -0.689260,
		-0.567631, -0.788631, 0.236337,
		-0.673043, 0.279189, -0.684884,
		39.486565, 35.350689, 23.826008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847164, 34.564781, 23.874292>,  <39.957699, 35.155258, 24.305426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847164, 34.564781, 23.874292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.692081, 34.850872, 23.641691>,  <39.599033, 35.022526, 23.502131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.692081, 34.850872, 23.641691>,  <39.847164, 34.564781, 23.874292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692081, 34.850872, 23.641691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210009, -0.545716, -0.811227,
		-0.897543, -0.436635, 0.061372,
		-0.387702, 0.715223, -0.581501,
		39.575771, 35.065437, 23.467241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289158, 34.305660, 23.388279>,  <39.847164, 34.564781, 23.874292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289158, 34.305660, 23.388279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445110, 34.640392, 23.234549>,  <39.538681, 34.841232, 23.142309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445110, 34.640392, 23.234549>,  <39.289158, 34.305660, 23.388279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445110, 34.640392, 23.234549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255740, -0.499332, -0.827807,
		-0.884642, 0.224457, -0.408691,
		0.389879, 0.836832, -0.384327,
		39.562073, 34.891441, 23.119251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938427, 34.437119, 22.780788>,  <39.289158, 34.305660, 23.388279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938427, 34.437119, 22.780788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.269314, 34.660252, 22.753874>,  <39.467846, 34.794132, 22.737724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.269314, 34.660252, 22.753874>,  <38.938427, 34.437119, 22.780788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269314, 34.660252, 22.753874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271157, -0.501222, -0.821736,
		-0.492119, 0.661511, -0.565881,
		0.827220, 0.557835, -0.067288,
		39.517479, 34.827602, 22.733688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936657, 34.594452, 22.080479>,  <38.938427, 34.437119, 22.780788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936657, 34.594452, 22.080479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.310974, 34.662273, 22.204123>,  <39.535564, 34.702965, 22.278309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.310974, 34.662273, 22.204123>,  <38.936657, 34.594452, 22.080479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310974, 34.662273, 22.204123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351510, -0.381175, -0.855071,
		-0.027157, 0.908822, -0.416300,
		0.935790, 0.169555, 0.309108,
		39.591713, 34.713139, 22.296856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287888, 34.947933, 21.473230>,  <38.936657, 34.594452, 22.080479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287888, 34.947933, 21.473230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.554394, 34.759720, 21.704639>,  <39.714298, 34.646793, 21.843485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.554394, 34.759720, 21.704639>,  <39.287888, 34.947933, 21.473230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554394, 34.759720, 21.704639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405291, -0.422726, -0.810581,
		0.625963, 0.774532, -0.090944,
		0.666266, -0.470534, 0.578522,
		39.754272, 34.618561, 21.878197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978462, 35.244259, 21.264244>,  <39.287888, 34.947933, 21.473230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978462, 35.244259, 21.264244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.044918, 34.897110, 21.451517>,  <40.084789, 34.688820, 21.563881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.044918, 34.897110, 21.451517>,  <39.978462, 35.244259, 21.264244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044918, 34.897110, 21.451517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491132, -0.338881, -0.802464,
		0.855095, 0.363257, 0.369941,
		0.166135, -0.867873, 0.468183,
		40.094757, 34.636749, 21.591972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714314, 35.120449, 21.160349>,  <39.978462, 35.244259, 21.264244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714314, 35.120449, 21.160349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.565971, 34.763157, 21.262024>,  <40.476967, 34.548782, 21.323029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.565971, 34.763157, 21.262024>,  <40.714314, 35.120449, 21.160349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565971, 34.763157, 21.262024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497712, -0.422241, -0.757625,
		0.784061, -0.154453, 0.601159,
		-0.370851, -0.893228, 0.254190,
		40.454716, 34.495190, 21.338282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242981, 34.589203, 21.042042>,  <40.714314, 35.120449, 21.160349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242981, 34.589203, 21.042042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.924450, 34.348267, 21.064116>,  <40.733330, 34.203705, 21.077360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.924450, 34.348267, 21.064116>,  <41.242981, 34.589203, 21.042042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924450, 34.348267, 21.064116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327128, -0.505622, -0.798332,
		0.508771, -0.617682, 0.599684,
		-0.796328, -0.602342, 0.055185,
		40.685551, 34.167564, 21.080671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540901, 33.972141, 20.888882>,  <41.242981, 34.589203, 21.042042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540901, 33.972141, 20.888882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.149117, 33.940189, 20.814837>,  <40.914043, 33.921017, 20.770411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.149117, 33.940189, 20.814837>,  <41.540901, 33.972141, 20.888882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149117, 33.940189, 20.814837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201576, -0.370918, -0.906525,
		0.003753, -0.925224, 0.379403,
		-0.979466, -0.079881, -0.185111,
		40.855278, 33.916225, 20.759304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359314, 33.191345, 20.758806>,  <41.540901, 33.972141, 20.888882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359314, 33.191345, 20.758806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.064999, 33.406757, 20.594561>,  <40.888409, 33.536003, 20.496014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.064999, 33.406757, 20.594561>,  <41.359314, 33.191345, 20.758806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064999, 33.406757, 20.594561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169103, -0.441022, -0.881422,
		-0.655759, -0.717976, 0.233433,
		-0.735788, 0.538526, -0.410616,
		40.844261, 33.568314, 20.471376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010693, 32.730972, 20.395544>,  <41.359314, 33.191345, 20.758806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010693, 32.730972, 20.395544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.840694, 33.047729, 20.220140>,  <40.738697, 33.237782, 20.114899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.840694, 33.047729, 20.220140>,  <41.010693, 32.730972, 20.395544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840694, 33.047729, 20.220140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006679, -0.481679, -0.876322,
		-0.905171, -0.375361, 0.199422,
		-0.424994, 0.791890, -0.438509,
		40.713196, 33.285297, 20.088587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483696, 32.571114, 20.022835>,  <41.010693, 32.730972, 20.395544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483696, 32.571114, 20.022835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.559437, 32.925018, 19.852499>,  <40.604881, 33.137363, 19.750298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.559437, 32.925018, 19.852499>,  <40.483696, 32.571114, 20.022835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559437, 32.925018, 19.852499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109584, -0.411933, -0.904601,
		-0.975776, 0.217949, 0.018958,
		0.189347, 0.884765, -0.425838,
		40.616241, 33.190449, 19.724749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985840, 32.763885, 20.595675>,  <40.483696, 32.571114, 20.022835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985840, 32.763885, 20.595675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.000019, 32.445694, 20.353699>,  <40.008526, 32.254780, 20.208513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.000019, 32.445694, 20.353699>,  <39.985840, 32.763885, 20.595675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000019, 32.445694, 20.353699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784142, -0.397411, 0.476640,
		-0.619568, 0.457463, -0.637858,
		0.035446, -0.795482, -0.604940,
		40.010654, 32.207050, 20.172216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344013, 32.707798, 20.307966>,  <39.985840, 32.763885, 20.595675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344013, 32.707798, 20.307966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515602, 32.346581, 20.299137>,  <39.618557, 32.129848, 20.293840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515602, 32.346581, 20.299137>,  <39.344013, 32.707798, 20.307966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515602, 32.346581, 20.299137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781314, -0.383188, 0.492661,
		-0.453354, -0.194094, -0.869941,
		0.428973, -0.903047, -0.022071,
		39.644295, 32.075665, 20.292517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826603, 32.244465, 20.226175>,  <39.344013, 32.707798, 20.307966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826603, 32.244465, 20.226175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.114582, 32.012177, 20.378201>,  <39.287369, 31.872805, 20.469416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.114582, 32.012177, 20.378201>,  <38.826603, 32.244465, 20.226175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114582, 32.012177, 20.378201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672935, -0.450090, 0.587007,
		-0.169821, -0.678371, -0.714824,
		0.719944, -0.580717, 0.380065,
		39.330566, 31.837961, 20.492220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444206, 31.646492, 20.425604>,  <38.826603, 32.244465, 20.226175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444206, 31.646492, 20.425604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.796661, 31.608976, 20.610989>,  <39.008133, 31.586468, 20.722219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.796661, 31.608976, 20.610989>,  <38.444206, 31.646492, 20.425604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796661, 31.608976, 20.610989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455965, -0.428162, 0.780240,
		0.125260, -0.898822, -0.420034,
		0.881139, -0.093788, 0.463463,
		39.061005, 31.580839, 20.750027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510670, 30.913609, 20.654743>,  <38.444206, 31.646492, 20.425604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510670, 30.913609, 20.654743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.767532, 31.133322, 20.868629>,  <38.921650, 31.265150, 20.996962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.767532, 31.133322, 20.868629>,  <38.510670, 30.913609, 20.654743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767532, 31.133322, 20.868629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437353, -0.310353, 0.844040,
		0.629566, -0.775868, 0.040933,
		0.642160, 0.549282, 0.534716,
		38.960178, 31.298107, 21.029045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815880, 30.417543, 21.228575>,  <38.510670, 30.913609, 20.654743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815880, 30.417543, 21.228575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.848923, 30.802168, 21.333321>,  <38.868748, 31.032944, 21.396168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.848923, 30.802168, 21.333321>,  <38.815880, 30.417543, 21.228575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848923, 30.802168, 21.333321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538628, -0.177999, 0.823527,
		0.838484, -0.209079, 0.503220,
		0.082609, 0.961563, 0.261865,
		38.873707, 31.090637, 21.411880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111259, 30.475149, 21.858002>,  <38.815880, 30.417543, 21.228575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111259, 30.475149, 21.858002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.875652, 30.796520, 21.823206>,  <38.734287, 30.989342, 21.802328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.875652, 30.796520, 21.823206>,  <39.111259, 30.475149, 21.858002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875652, 30.796520, 21.823206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300196, -0.117590, 0.946602,
		0.750295, 0.583678, 0.310448,
		-0.589016, 0.803426, -0.086991,
		38.698948, 31.037548, 21.797110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206207, 30.839199, 22.537848>,  <39.111259, 30.475149, 21.858002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206207, 30.839199, 22.537848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.877094, 31.019983, 22.400003>,  <38.679626, 31.128454, 22.317297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.877094, 31.019983, 22.400003>,  <39.206207, 30.839199, 22.537848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877094, 31.019983, 22.400003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373184, 0.027704, 0.927343,
		0.428670, 0.891607, 0.145871,
		-0.822785, 0.451961, -0.344610,
		38.630260, 31.155571, 22.296621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757999, 30.918560, 23.107656>,  <39.206207, 30.839199, 22.537848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757999, 30.918560, 23.107656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.873817, 30.581617, 23.289469>,  <39.943306, 30.379452, 23.398556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.873817, 30.581617, 23.289469>,  <39.757999, 30.918560, 23.107656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873817, 30.581617, 23.289469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742239, -0.102238, -0.662291,
		0.604357, 0.529130, 0.595629,
		0.289542, -0.842359, 0.454529,
		39.960682, 30.328909, 23.425827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508812, 30.921200, 23.395689>,  <39.757999, 30.918560, 23.107656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508812, 30.921200, 23.395689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.370644, 30.562164, 23.286131>,  <40.287743, 30.346743, 23.220396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.370644, 30.562164, 23.286131>,  <40.508812, 30.921200, 23.395689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370644, 30.562164, 23.286131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627198, -0.003703, -0.778851,
		0.698074, -0.440819, 0.564244,
		-0.345422, -0.897588, -0.273895,
		40.267017, 30.292889, 23.203962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119583, 30.660137, 23.141319>,  <40.508812, 30.921200, 23.395689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119583, 30.660137, 23.141319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.866108, 30.383858, 23.001961>,  <40.714024, 30.218090, 22.918346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.866108, 30.383858, 23.001961>,  <41.119583, 30.660137, 23.141319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866108, 30.383858, 23.001961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644813, -0.222784, -0.731152,
		0.427389, -0.687969, 0.586547,
		-0.633684, -0.690699, -0.348396,
		40.676003, 30.176647, 22.897442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466438, 30.041712, 22.989441>,  <41.119583, 30.660137, 23.141319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466438, 30.041712, 22.989441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.136032, 29.999977, 22.767876>,  <40.937790, 29.974936, 22.634937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.136032, 29.999977, 22.767876>,  <41.466438, 30.041712, 22.989441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136032, 29.999977, 22.767876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563097, -0.196401, -0.802713,
		-0.025035, -0.974957, 0.220982,
		-0.826011, -0.104338, -0.553912,
		40.888229, 29.968676, 22.601702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649837, 29.372206, 22.642775>,  <41.466438, 30.041712, 22.989441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649837, 29.372206, 22.642775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.369019, 29.574659, 22.442390>,  <41.200527, 29.696131, 22.322161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.369019, 29.574659, 22.442390>,  <41.649837, 29.372206, 22.642775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369019, 29.574659, 22.442390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436794, -0.249550, -0.864254,
		-0.562443, -0.825562, -0.045881,
		-0.702046, 0.506135, -0.500958,
		41.158405, 29.726500, 22.292103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453003, 28.946625, 22.098793>,  <41.649837, 29.372206, 22.642775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453003, 28.946625, 22.098793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.330612, 29.309919, 21.984613>,  <41.257179, 29.527897, 21.916105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.330612, 29.309919, 21.984613>,  <41.453003, 28.946625, 22.098793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330612, 29.309919, 21.984613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401987, -0.148540, -0.903517,
		-0.863010, -0.391201, -0.319650,
		-0.305976, 0.908239, -0.285449,
		41.238819, 29.582392, 21.898979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348129, 28.791870, 21.432526>,  <41.453003, 28.946625, 22.098793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348129, 28.791870, 21.432526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.366421, 29.189989, 21.466681>,  <41.377396, 29.428860, 21.487173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.366421, 29.189989, 21.466681>,  <41.348129, 28.791870, 21.432526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366421, 29.189989, 21.466681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625578, 0.038106, -0.779230,
		-0.778820, 0.089052, -0.620894,
		0.045732, 0.995298, 0.085387,
		41.380142, 29.488579, 21.492296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063465, 28.964035, 20.821510>,  <41.348129, 28.791870, 21.432526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063465, 28.964035, 20.821510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.309677, 29.246834, 20.960808>,  <41.457405, 29.416513, 21.044388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.309677, 29.246834, 20.960808>,  <41.063465, 28.964035, 20.821510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309677, 29.246834, 20.960808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673999, -0.243210, -0.697549,
		-0.408468, 0.664081, -0.626219,
		0.615532, 0.706997, 0.348246,
		41.494335, 29.458933, 21.065281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483223, 29.063103, 20.254787>,  <41.063465, 28.964035, 20.821510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483223, 29.063103, 20.254787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.679344, 29.252865, 20.547237>,  <41.797016, 29.366722, 20.722708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.679344, 29.252865, 20.547237>,  <41.483223, 29.063103, 20.254787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679344, 29.252865, 20.547237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854123, -0.094623, -0.511390,
		-0.173424, 0.875207, -0.451594,
		0.490303, 0.474404, 0.731125,
		41.826435, 29.395185, 20.766575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.272282, 34.180019, 34.089325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554024, 34.371586, 34.298901>,  <34.723068, 34.486526, 34.424644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554024, 34.371586, 34.298901>,  <34.272282, 34.180019, 34.089325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554024, 34.371586, 34.298901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633323, -0.090636, -0.768561,
		-0.320591, 0.873167, -0.367151,
		0.704360, 0.478920, 0.523940,
		34.765331, 34.515263, 34.456081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566463, 34.678787, 33.652161>,  <34.272282, 34.180019, 34.089325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566463, 34.678787, 33.652161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814354, 34.534115, 33.930763>,  <34.963089, 34.447311, 34.097923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814354, 34.534115, 33.930763>,  <34.566463, 34.678787, 33.652161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814354, 34.534115, 33.930763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671715, -0.214521, -0.709069,
		0.405874, 0.907284, 0.110005,
		0.619729, -0.361685, 0.696505,
		35.000271, 34.425610, 34.139713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318550, 34.907074, 33.449657>,  <34.566463, 34.678787, 33.652161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318550, 34.907074, 33.449657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369160, 34.603798, 33.705517>,  <35.399525, 34.421833, 33.859032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369160, 34.603798, 33.705517>,  <35.318550, 34.907074, 33.449657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369160, 34.603798, 33.705517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578246, -0.467564, -0.668592,
		0.805992, 0.454463, 0.379262,
		0.126522, -0.758187, 0.639644,
		35.407116, 34.376343, 33.897411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077030, 34.718128, 33.522572>,  <35.318550, 34.907074, 33.449657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077030, 34.718128, 33.522572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882103, 34.379112, 33.606667>,  <35.765148, 34.175705, 33.657124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.882103, 34.379112, 33.606667>,  <36.077030, 34.718128, 33.522572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882103, 34.379112, 33.606667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684288, -0.520214, -0.511007,
		0.542468, -0.105157, 0.833469,
		-0.487318, -0.847538, 0.210242,
		35.735909, 34.124851, 33.669739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588902, 34.258530, 33.581589>,  <36.077030, 34.718128, 33.522572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588902, 34.258530, 33.581589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.273720, 34.015228, 33.543293>,  <36.084610, 33.869247, 33.520313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.273720, 34.015228, 33.543293>,  <36.588902, 34.258530, 33.581589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273720, 34.015228, 33.543293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554656, -0.633632, -0.539321,
		0.267376, -0.478062, 0.836640,
		-0.787951, -0.608249, -0.095742,
		36.037334, 33.832752, 33.514572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876427, 33.587227, 33.553783>,  <36.588902, 34.258530, 33.581589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876427, 33.587227, 33.553783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.502068, 33.533226, 33.423626>,  <36.277454, 33.500828, 33.345531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.502068, 33.533226, 33.423626>,  <36.876427, 33.587227, 33.553783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502068, 33.533226, 33.423626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334948, -0.627161, -0.703192,
		-0.109142, -0.767102, 0.632174,
		-0.935894, -0.134998, -0.325389,
		36.221298, 33.492725, 33.326008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808392, 32.858601, 33.411858>,  <36.876427, 33.587227, 33.553783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808392, 32.858601, 33.411858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525497, 33.028618, 33.185883>,  <36.355759, 33.130627, 33.050297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525497, 33.028618, 33.185883>,  <36.808392, 32.858601, 33.411858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525497, 33.028618, 33.185883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173480, -0.670325, -0.721505,
		-0.685369, -0.608277, 0.400336,
		-0.707230, 0.425046, -0.564943,
		36.313328, 33.156128, 33.016399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787090, 32.325253, 32.924309>,  <36.808392, 32.858601, 33.411858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787090, 32.325253, 32.924309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.548969, 32.610958, 32.777096>,  <36.406097, 32.782383, 32.688770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.548969, 32.610958, 32.777096>,  <36.787090, 32.325253, 32.924309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548969, 32.610958, 32.777096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019478, -0.445068, -0.895285,
		-0.803268, -0.540131, 0.251036,
		-0.595300, 0.714264, -0.368029,
		36.370380, 32.825237, 32.666687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217239, 32.097347, 32.560749>,  <36.787090, 32.325253, 32.924309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217239, 32.097347, 32.560749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306885, 32.456245, 32.408581>,  <36.360672, 32.671585, 32.317280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306885, 32.456245, 32.408581>,  <36.217239, 32.097347, 32.560749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306885, 32.456245, 32.408581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109224, -0.411012, -0.905063,
		-0.968423, 0.161285, -0.190115,
		0.224113, 0.897249, -0.380417,
		36.374119, 32.725422, 32.294456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828243, 32.092533, 31.934464>,  <36.217239, 32.097347, 32.560749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828243, 32.092533, 31.934464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079136, 32.402393, 31.902231>,  <36.229671, 32.588310, 31.882893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079136, 32.402393, 31.902231>,  <35.828243, 32.092533, 31.934464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079136, 32.402393, 31.902231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224850, -0.279170, -0.933545,
		-0.745667, 0.567433, -0.349286,
		0.627234, 0.774651, -0.080581,
		36.267307, 32.634789, 31.878057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620716, 32.473675, 31.347345>,  <35.828243, 32.092533, 31.934464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620716, 32.473675, 31.347345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009125, 32.560867, 31.386538>,  <36.242168, 32.613182, 31.410053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009125, 32.560867, 31.386538>,  <35.620716, 32.473675, 31.347345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009125, 32.560867, 31.386538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158940, -0.282824, -0.945912,
		-0.178482, 0.934073, -0.309275,
		0.971021, 0.217984, 0.097982,
		36.300430, 32.626263, 31.415932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832413, 32.932861, 30.686478>,  <35.620716, 32.473675, 31.347345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832413, 32.932861, 30.686478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.150600, 32.767048, 30.863291>,  <36.341511, 32.667561, 30.969379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.150600, 32.767048, 30.863291>,  <35.832413, 32.932861, 30.686478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150600, 32.767048, 30.863291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201503, -0.506992, -0.838067,
		0.571515, 0.755725, -0.319765,
		0.795466, -0.414534, 0.442035,
		36.389240, 32.642689, 30.995901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655758, 33.632130, 30.253807>,  <35.832413, 32.932861, 30.686478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655758, 33.632130, 30.253807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298985, 33.594883, 30.076820>,  <35.084919, 33.572536, 29.970629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.298985, 33.594883, 30.076820>,  <35.655758, 33.632130, 30.253807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298985, 33.594883, 30.076820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450949, 0.254682, 0.855443,
		0.033033, 0.962531, -0.269151,
		-0.891938, -0.093116, -0.442465,
		35.031403, 33.566948, 29.944080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351337, 34.250095, 30.422131>,  <35.655758, 33.632130, 30.253807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351337, 34.250095, 30.422131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040421, 34.010677, 30.344616>,  <34.853870, 33.867027, 30.298107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040421, 34.010677, 30.344616>,  <35.351337, 34.250095, 30.422131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040421, 34.010677, 30.344616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514262, 0.427044, 0.743752,
		-0.362415, 0.677773, -0.639750,
		-0.777296, -0.598546, -0.193786,
		34.807232, 33.831112, 30.286480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744987, 34.651428, 30.524994>,  <35.351337, 34.250095, 30.422131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744987, 34.651428, 30.524994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.600655, 34.278694, 30.540354>,  <34.514053, 34.055054, 30.549570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.600655, 34.278694, 30.540354>,  <34.744987, 34.651428, 30.524994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600655, 34.278694, 30.540354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620142, 0.270484, 0.736385,
		-0.696578, 0.241901, -0.675472,
		-0.360836, -0.931838, 0.038400,
		34.492405, 33.999142, 30.551874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143097, 34.836750, 30.592993>,  <34.744987, 34.651428, 30.524994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143097, 34.836750, 30.592993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.152531, 34.449947, 30.694460>,  <34.158192, 34.217865, 30.755341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.152531, 34.449947, 30.694460>,  <34.143097, 34.836750, 30.592993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152531, 34.449947, 30.694460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683569, 0.169560, 0.709918,
		-0.729505, -0.190139, -0.657016,
		0.023580, -0.967004, 0.253668,
		34.159603, 34.159847, 30.770561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449478, 34.611862, 30.616013>,  <34.143097, 34.836750, 30.592993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449478, 34.611862, 30.616013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664555, 34.365902, 30.846762>,  <33.793598, 34.218323, 30.985212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664555, 34.365902, 30.846762>,  <33.449478, 34.611862, 30.616013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664555, 34.365902, 30.846762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541546, 0.272542, 0.795267,
		-0.646236, -0.740008, -0.186457,
		0.537686, -0.614905, 0.576874,
		33.825859, 34.181431, 31.019825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023434, 34.394295, 31.103624>,  <33.449478, 34.611862, 30.616013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023434, 34.394295, 31.103624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.373222, 34.287849, 31.265850>,  <33.583096, 34.223980, 31.363186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.373222, 34.287849, 31.265850>,  <33.023434, 34.394295, 31.103624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373222, 34.287849, 31.265850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404831, 0.060225, 0.912406,
		-0.267231, -0.962058, -0.055067,
		0.874471, -0.266116, 0.405565,
		33.635563, 34.208015, 31.387520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904724, 33.828945, 31.537214>,  <33.023434, 34.394295, 31.103624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904724, 33.828945, 31.537214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223309, 34.037460, 31.659798>,  <33.414459, 34.162567, 31.733349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.223309, 34.037460, 31.659798>,  <32.904724, 33.828945, 31.537214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223309, 34.037460, 31.659798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453358, 0.179390, 0.873090,
		0.400154, -0.834314, 0.379205,
		0.796457, 0.521286, 0.306459,
		33.462246, 34.193848, 31.751736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890144, 33.576481, 32.156441>,  <32.904724, 33.828945, 31.537214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890144, 33.576481, 32.156441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118637, 33.904572, 32.144337>,  <33.255733, 34.101425, 32.137074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118637, 33.904572, 32.144337>,  <32.890144, 33.576481, 32.156441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118637, 33.904572, 32.144337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418172, 0.322554, 0.849171,
		0.706277, -0.472420, 0.527251,
		0.571232, 0.820231, -0.030260,
		33.290009, 34.150642, 32.135258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081367, 33.625305, 32.824284>,  <32.890144, 33.576481, 32.156441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081367, 33.625305, 32.824284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136158, 33.990913, 32.671547>,  <33.169033, 34.210278, 32.579906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.136158, 33.990913, 32.671547>,  <33.081367, 33.625305, 32.824284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136158, 33.990913, 32.671547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562354, 0.389087, 0.729637,
		0.815472, 0.114784, 0.567300,
		0.136978, 0.914022, -0.381839,
		33.177250, 34.265121, 32.556995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199413, 34.074486, 33.338589>,  <33.081367, 33.625305, 32.824284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199413, 34.074486, 33.338589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058342, 34.317707, 33.054085>,  <32.973698, 34.463638, 32.883381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.058342, 34.317707, 33.054085>,  <33.199413, 34.074486, 33.338589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058342, 34.317707, 33.054085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489176, 0.528162, 0.694084,
		0.797699, 0.592720, 0.111173,
		-0.352680, 0.608053, -0.711259,
		32.952538, 34.500122, 32.840706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319984, 34.810982, 33.529987>,  <33.199413, 34.074486, 33.338589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319984, 34.810982, 33.529987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.038589, 34.841583, 33.247356>,  <32.869751, 34.859943, 33.077778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.038589, 34.841583, 33.247356>,  <33.319984, 34.810982, 33.529987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038589, 34.841583, 33.247356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429348, 0.746519, 0.508300,
		0.566358, 0.660951, -0.492323,
		-0.703490, 0.076502, -0.706576,
		32.827541, 34.864532, 33.035385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268974, 35.555344, 33.367744>,  <33.319984, 34.810982, 33.529987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268974, 35.555344, 33.367744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928356, 35.372467, 33.265099>,  <32.723984, 35.262741, 33.203510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.928356, 35.372467, 33.265099>,  <33.268974, 35.555344, 33.367744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928356, 35.372467, 33.265099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523748, 0.763940, 0.376940,
		0.023701, 0.455380, -0.889982,
		-0.851544, -0.457192, -0.256610,
		32.672894, 35.235310, 33.188114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892750, 36.057201, 33.039780>,  <33.268974, 35.555344, 33.367744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892750, 36.057201, 33.039780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600986, 35.799759, 33.132511>,  <32.425930, 35.645294, 33.188148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600986, 35.799759, 33.132511>,  <32.892750, 36.057201, 33.039780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600986, 35.799759, 33.132511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614822, 0.765350, 0.190349,
		-0.299936, -0.003689, -0.953952,
		-0.729405, -0.643604, 0.231824,
		32.382164, 35.606678, 33.202057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277473, 36.500771, 32.918175>,  <32.892750, 36.057201, 33.039780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277473, 36.500771, 32.918175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.109211, 36.191696, 33.108334>,  <32.008251, 36.006252, 33.222431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.109211, 36.191696, 33.108334>,  <32.277473, 36.500771, 32.918175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109211, 36.191696, 33.108334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744862, 0.593308, 0.305232,
		-0.517907, -0.225710, -0.825123,
		-0.420658, -0.772684, 0.475401,
		31.983013, 35.959892, 33.250954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451401, 36.342602, 32.264950>,  <32.277473, 36.500771, 32.918175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451401, 36.342602, 32.264950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.412518, 36.738876, 32.303078>,  <32.389187, 36.976643, 32.325954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.412518, 36.738876, 32.303078>,  <32.451401, 36.342602, 32.264950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412518, 36.738876, 32.303078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278888, 0.119052, -0.952916,
		-0.955391, -0.066043, -0.287864,
		-0.097204, 0.990689, 0.095323,
		32.383358, 37.036083, 32.331673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949261, 36.614494, 31.716434>,  <32.451401, 36.342602, 32.264950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949261, 36.614494, 31.716434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.234169, 36.869186, 31.834585>,  <32.405113, 37.022003, 31.905476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.234169, 36.869186, 31.834585>,  <31.949261, 36.614494, 31.716434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234169, 36.869186, 31.834585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346757, 0.046682, -0.936793,
		-0.610272, 0.769673, -0.187540,
		0.712270, 0.636729, 0.295378,
		32.447849, 37.060204, 31.923199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898550, 37.084774, 31.144619>,  <31.949261, 36.614494, 31.716434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898550, 37.084774, 31.144619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.255096, 37.076790, 31.325758>,  <32.469025, 37.071999, 31.434441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.255096, 37.076790, 31.325758>,  <31.898550, 37.084774, 31.144619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255096, 37.076790, 31.325758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452144, 0.110092, -0.885125,
		-0.032186, 0.993721, 0.107158,
		0.891364, -0.019962, 0.452848,
		32.522507, 37.070801, 31.461613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319660, 37.616631, 30.859303>,  <31.898550, 37.084774, 31.144619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319660, 37.616631, 30.859303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583359, 37.360123, 31.016363>,  <32.741577, 37.206219, 31.110600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583359, 37.360123, 31.016363>,  <32.319660, 37.616631, 30.859303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583359, 37.360123, 31.016363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591676, 0.120148, -0.797172,
		0.464023, 0.757854, 0.458628,
		0.659244, -0.641266, 0.392653,
		32.781132, 37.167744, 31.134159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993404, 37.915699, 30.850306>,  <32.319660, 37.616631, 30.859303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993404, 37.915699, 30.850306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060410, 37.521591, 30.864021>,  <33.100613, 37.285126, 30.872252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060410, 37.521591, 30.864021>,  <32.993404, 37.915699, 30.850306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060410, 37.521591, 30.864021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678046, 0.089889, -0.729502,
		0.715677, 0.145451, 0.683118,
		0.167512, -0.985274, 0.034291,
		33.110664, 37.226009, 30.874310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715263, 37.845081, 30.852053>,  <32.993404, 37.915699, 30.850306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715263, 37.845081, 30.852053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571968, 37.485756, 30.750309>,  <33.485989, 37.270161, 30.689262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571968, 37.485756, 30.750309>,  <33.715263, 37.845081, 30.852053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571968, 37.485756, 30.750309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645500, -0.041480, -0.762633,
		0.674531, -0.437396, 0.594720,
		-0.358241, -0.898312, -0.254360,
		33.464497, 37.216263, 30.674002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269409, 37.518467, 30.616308>,  <33.715263, 37.845081, 30.852053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269409, 37.518467, 30.616308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.987034, 37.273540, 30.473923>,  <33.817608, 37.126583, 30.388491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.987034, 37.273540, 30.473923>,  <34.269409, 37.518467, 30.616308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987034, 37.273540, 30.473923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579858, -0.211058, -0.786905,
		0.406707, -0.761919, 0.504053,
		-0.705943, -0.612318, -0.355966,
		33.775249, 37.089844, 30.367132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544140, 36.767048, 30.529276>,  <34.269409, 37.518467, 30.616308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544140, 36.767048, 30.529276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.248745, 36.854225, 30.274048>,  <34.071507, 36.906532, 30.120911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.248745, 36.854225, 30.274048>,  <34.544140, 36.767048, 30.529276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248745, 36.854225, 30.274048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579663, -0.278172, -0.765905,
		-0.344423, -0.935478, 0.079088,
		-0.738487, 0.217951, -0.638071,
		34.027199, 36.919609, 30.082626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586987, 36.210632, 30.093111>,  <34.544140, 36.767048, 30.529276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586987, 36.210632, 30.093111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380939, 36.487537, 29.890955>,  <34.257313, 36.653683, 29.769661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.380939, 36.487537, 29.890955>,  <34.586987, 36.210632, 30.093111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380939, 36.487537, 29.890955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523371, -0.212908, -0.825078,
		-0.678776, -0.689519, -0.252640,
		-0.515118, 0.692267, -0.505391,
		34.226402, 36.695217, 29.739338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413731, 35.875587, 29.445278>,  <34.586987, 36.210632, 30.093111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413731, 35.875587, 29.445278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357872, 36.264652, 29.371067>,  <34.324356, 36.498093, 29.326540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357872, 36.264652, 29.371067>,  <34.413731, 35.875587, 29.445278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357872, 36.264652, 29.371067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318008, -0.133386, -0.938658,
		-0.937748, -0.190075, -0.290689,
		-0.139642, 0.972666, -0.185528,
		34.315979, 36.556454, 29.315409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149513, 35.744015, 28.857548>,  <34.413731, 35.875587, 29.445278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149513, 35.744015, 28.857548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268280, 36.123821, 28.898079>,  <34.339539, 36.351704, 28.922398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268280, 36.123821, 28.898079>,  <34.149513, 35.744015, 28.857548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268280, 36.123821, 28.898079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380726, -0.020401, -0.924463,
		-0.875722, 0.313064, -0.367562,
		0.296915, 0.949513, 0.101326,
		34.357353, 36.408676, 28.928476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022396, 36.149555, 28.272459>,  <34.149513, 35.744015, 28.857548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022396, 36.149555, 28.272459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310333, 36.386868, 28.416595>,  <34.483093, 36.529255, 28.503077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.310333, 36.386868, 28.416595>,  <34.022396, 36.149555, 28.272459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310333, 36.386868, 28.416595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375484, 0.103801, -0.920998,
		-0.583817, 0.798273, -0.148048,
		0.719840, 0.593284, 0.360340,
		34.526283, 36.564854, 28.524698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142773, 36.685253, 27.732042>,  <34.022396, 36.149555, 28.272459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142773, 36.685253, 27.732042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477139, 36.695309, 27.951353>,  <34.677757, 36.701340, 28.082939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477139, 36.695309, 27.951353>,  <34.142773, 36.685253, 27.732042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477139, 36.695309, 27.951353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546739, 0.049457, -0.835841,
		-0.048126, 0.998460, 0.027600,
		0.835919, 0.025136, 0.548277,
		34.727913, 36.702850, 28.115837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634460, 37.293266, 27.539341>,  <34.142773, 36.685253, 27.732042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634460, 37.293266, 27.539341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877785, 37.024891, 27.708954>,  <35.023781, 36.863865, 27.810722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.877785, 37.024891, 27.708954>,  <34.634460, 37.293266, 27.539341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877785, 37.024891, 27.708954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579400, 0.010250, -0.814979,
		0.542453, 0.741444, 0.394976,
		0.608309, -0.670937, 0.424032,
		35.060276, 36.823608, 27.836163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378048, 37.522198, 27.417702>,  <34.634460, 37.293266, 27.539341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378048, 37.522198, 27.417702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380901, 37.129047, 27.491346>,  <35.382614, 36.893158, 27.535532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380901, 37.129047, 27.491346>,  <35.378048, 37.522198, 27.417702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380901, 37.129047, 27.491346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728934, -0.120924, -0.673820,
		0.684547, 0.139014, 0.715591,
		0.007138, -0.982880, 0.184110,
		35.383041, 36.834183, 27.546579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081184, 37.391392, 27.526005>,  <35.378048, 37.522198, 27.417702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081184, 37.391392, 27.526005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916348, 37.040501, 27.427490>,  <35.817448, 36.829967, 27.368382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916348, 37.040501, 27.427490>,  <36.081184, 37.391392, 27.526005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916348, 37.040501, 27.427490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760623, -0.182391, -0.623046,
		0.501632, -0.444082, 0.742399,
		-0.412091, -0.877226, -0.246286,
		35.792721, 36.777332, 27.353605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540604, 36.880299, 27.656874>,  <36.081184, 37.391392, 27.526005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540604, 36.880299, 27.656874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301048, 36.689480, 27.399576>,  <36.157314, 36.574989, 27.245197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301048, 36.689480, 27.399576>,  <36.540604, 36.880299, 27.656874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301048, 36.689480, 27.399576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799233, -0.305263, -0.517727,
		0.050623, -0.824160, 0.564090,
		-0.598886, -0.477048, -0.643242,
		36.121384, 36.546364, 27.206604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748638, 36.204338, 27.649529>,  <36.540604, 36.880299, 27.656874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748638, 36.204338, 27.649529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.572197, 36.277164, 27.298010>,  <36.466331, 36.320858, 27.087099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.572197, 36.277164, 27.298010>,  <36.748638, 36.204338, 27.649529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572197, 36.277164, 27.298010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822977, -0.308511, -0.477001,
		-0.357962, -0.933635, -0.013748,
		-0.441104, 0.182063, -0.878795,
		36.439865, 36.331783, 27.034370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028477, 35.701973, 27.215090>,  <36.748638, 36.204338, 27.649529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028477, 35.701973, 27.215090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.858093, 35.937897, 26.940664>,  <36.755863, 36.079449, 26.776009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.858093, 35.937897, 26.940664>,  <37.028477, 35.701973, 27.215090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858093, 35.937897, 26.940664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607362, -0.375620, -0.700015,
		-0.670573, -0.714870, -0.198226,
		-0.425962, 0.589806, -0.686065,
		36.730305, 36.114838, 26.734844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969307, 35.230724, 26.600176>,  <37.028477, 35.701973, 27.215090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969307, 35.230724, 26.600176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.955837, 35.611305, 26.477800>,  <36.947754, 35.839653, 26.404375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.955837, 35.611305, 26.477800>,  <36.969307, 35.230724, 26.600176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955837, 35.611305, 26.477800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476584, -0.253782, -0.841702,
		-0.878484, -0.174152, -0.444902,
		-0.033676, 0.951455, -0.305941,
		36.945736, 35.896740, 26.386019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933128, 35.162407, 25.895533>,  <36.969307, 35.230724, 26.600176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933128, 35.162407, 25.895533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.057201, 35.536869, 25.961740>,  <37.131645, 35.761547, 26.001465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.057201, 35.536869, 25.961740>,  <36.933128, 35.162407, 25.895533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057201, 35.536869, 25.961740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557046, -0.037888, -0.829617,
		-0.770380, 0.349536, -0.533235,
		0.310184, 0.936157, 0.165519,
		37.150257, 35.817715, 26.011396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866722, 35.401505, 25.283289>,  <36.933128, 35.162407, 25.895533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866722, 35.401505, 25.283289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138149, 35.650707, 25.438932>,  <37.301006, 35.800228, 25.532318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.138149, 35.650707, 25.438932>,  <36.866722, 35.401505, 25.283289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138149, 35.650707, 25.438932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557161, -0.091356, -0.825364,
		-0.478661, 0.776863, -0.409107,
		0.678569, 0.623008, 0.389109,
		37.341721, 35.837608, 25.555666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032463, 35.808811, 24.761614>,  <36.866722, 35.401505, 25.283289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032463, 35.808811, 24.761614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344402, 35.883797, 25.000509>,  <37.531567, 35.928787, 25.143847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344402, 35.883797, 25.000509>,  <37.032463, 35.808811, 24.761614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344402, 35.883797, 25.000509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584625, 0.122865, -0.801946,
		-0.223714, 0.974558, -0.013778,
		0.779850, 0.187461, 0.597237,
		37.578358, 35.940037, 25.179680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373409, 36.324886, 24.417143>,  <37.032463, 35.808811, 24.761614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373409, 36.324886, 24.417143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633503, 36.160698, 24.672867>,  <37.789558, 36.062187, 24.826302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633503, 36.160698, 24.672867>,  <37.373409, 36.324886, 24.417143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633503, 36.160698, 24.672867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652265, -0.129862, -0.746784,
		0.389553, 0.902581, 0.183293,
		0.650230, -0.410468, 0.639310,
		37.828571, 36.037560, 24.864660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948273, 36.633698, 24.288906>,  <37.373409, 36.324886, 24.417143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948273, 36.633698, 24.288906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.087341, 36.301575, 24.463135>,  <38.170784, 36.102303, 24.567673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.087341, 36.301575, 24.463135>,  <37.948273, 36.633698, 24.288906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087341, 36.301575, 24.463135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681190, -0.095540, -0.725846,
		0.644286, 0.549062, 0.532378,
		0.347671, -0.830303, 0.435571,
		38.191643, 36.052483, 24.593805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765953, 36.715046, 24.329515>,  <37.948273, 36.633698, 24.288906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765953, 36.715046, 24.329515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655941, 36.331417, 24.356466>,  <38.589931, 36.101238, 24.372637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.655941, 36.331417, 24.356466>,  <38.765953, 36.715046, 24.329515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655941, 36.331417, 24.356466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759417, -0.259686, -0.596531,
		0.589612, -0.112901, 0.799757,
		-0.275034, -0.959071, 0.067375,
		38.573429, 36.043697, 24.376678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394382, 36.400860, 24.409071>,  <38.765953, 36.715046, 24.329515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394382, 36.400860, 24.409071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.147224, 36.102329, 24.310120>,  <38.998928, 35.923210, 24.250748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.147224, 36.102329, 24.310120>,  <39.394382, 36.400860, 24.409071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147224, 36.102329, 24.310120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750852, -0.466748, -0.467297,
		0.233294, -0.474486, 0.848785,
		-0.617895, -0.746330, -0.247380,
		38.961857, 35.878429, 24.235905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724400, 35.756218, 24.595703>,  <39.394382, 36.400860, 24.409071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724400, 35.756218, 24.595703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.466843, 35.681290, 24.298971>,  <39.312309, 35.636333, 24.120932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.466843, 35.681290, 24.298971>,  <39.724400, 35.756218, 24.595703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466843, 35.681290, 24.298971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736063, -0.416300, -0.533765,
		-0.208835, -0.889721, 0.405936,
		-0.643893, -0.187326, -0.741829,
		39.273674, 35.625092, 24.076422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170506, 35.427288, 25.151258>,  <39.724400, 35.756218, 24.595703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170506, 35.427288, 25.151258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.503517, 35.613380, 25.271559>,  <40.703323, 35.725037, 25.343739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.503517, 35.613380, 25.271559>,  <40.170506, 35.427288, 25.151258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503517, 35.613380, 25.271559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374553, 0.072717, 0.924350,
		0.408164, -0.882199, 0.234792,
		0.832533, 0.465228, 0.300750,
		40.753277, 35.752949, 25.361784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420219, 35.126598, 25.782145>,  <40.170506, 35.427288, 25.151258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420219, 35.126598, 25.782145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.588253, 35.489571, 25.786179>,  <40.689075, 35.707352, 25.788599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.588253, 35.489571, 25.786179>,  <40.420219, 35.126598, 25.782145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588253, 35.489571, 25.786179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435157, 0.191678, 0.879715,
		0.796345, -0.373944, 0.475395,
		0.420087, 0.907428, 0.010083,
		40.714279, 35.761799, 25.789204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668690, 35.061386, 26.477537>,  <40.420219, 35.126598, 25.782145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668690, 35.061386, 26.477537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.667973, 35.445606, 26.366293>,  <40.667542, 35.676136, 26.299545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.667973, 35.445606, 26.366293>,  <40.668690, 35.061386, 26.477537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667973, 35.445606, 26.366293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117679, 0.275977, 0.953933,
		0.993050, 0.034437, 0.112541,
		-0.001792, 0.960547, -0.278112,
		40.667435, 35.733772, 26.282860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081104, 35.413689, 26.946363>,  <40.668690, 35.061386, 26.477537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081104, 35.413689, 26.946363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863010, 35.712585, 26.794392>,  <40.732155, 35.891922, 26.703209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863010, 35.712585, 26.794392>,  <41.081104, 35.413689, 26.946363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863010, 35.712585, 26.794392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273815, 0.269612, 0.923220,
		0.792303, 0.607402, 0.057605,
		-0.545235, 0.747243, -0.379930,
		40.699440, 35.936760, 26.680412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306561, 35.995907, 27.336679>,  <41.081104, 35.413689, 26.946363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306561, 35.995907, 27.336679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.941166, 36.069458, 27.191502>,  <40.721928, 36.113590, 27.104395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.941166, 36.069458, 27.191502>,  <41.306561, 35.995907, 27.336679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941166, 36.069458, 27.191502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286671, 0.342139, 0.894852,
		0.288726, 0.921481, -0.259826,
		-0.913486, 0.183882, -0.362947,
		40.667122, 36.124622, 27.082617>
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
