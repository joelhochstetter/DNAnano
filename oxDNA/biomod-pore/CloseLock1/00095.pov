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
	<24.538763, 34.819683, 35.204533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161177, 34.877270, 35.085735>,  <23.934626, 34.911819, 35.014458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161177, 34.877270, 35.085735>,  <24.538763, 34.819683, 35.204533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.161177, 34.877270, 35.085735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255784, -0.249576, -0.933963,
		-0.208574, -0.957595, 0.198769,
		-0.943966, 0.143959, -0.296993,
		23.877987, 34.920460, 34.996635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020247, 35.029545, 34.745331>,  <24.538763, 34.819683, 35.204533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020247, 35.029545, 34.745331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278528, 35.089138, 34.445766>,  <25.433496, 35.124893, 34.266026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278528, 35.089138, 34.445766>,  <25.020247, 35.029545, 34.745331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278528, 35.089138, 34.445766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676971, 0.342020, 0.651715,
		0.353244, -0.927806, 0.119980,
		0.645700, 0.148991, -0.748915,
		25.472240, 35.133831, 34.221092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746984, 34.670128, 34.817051>,  <25.020247, 35.029545, 34.745331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746984, 34.670128, 34.817051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755861, 35.012928, 34.611115>,  <25.761187, 35.218609, 34.487553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.755861, 35.012928, 34.611115>,  <25.746984, 34.670128, 34.817051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.755861, 35.012928, 34.611115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708384, 0.349911, 0.612988,
		0.705478, -0.378311, -0.599317,
		0.022192, 0.856996, -0.514844,
		25.762520, 35.270027, 34.456661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486042, 34.698444, 34.632256>,  <25.746984, 34.670128, 34.817051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486042, 34.698444, 34.632256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280739, 35.040092, 34.665825>,  <26.157557, 35.245083, 34.685966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280739, 35.040092, 34.665825>,  <26.486042, 34.698444, 34.632256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280739, 35.040092, 34.665825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738042, 0.389355, 0.551087,
		0.438020, 0.344787, -0.830217,
		-0.513257, 0.854122, 0.083922,
		26.126762, 35.296329, 34.691002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922533, 34.283127, 34.999630>,  <26.486042, 34.698444, 34.632256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922533, 34.283127, 34.999630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320915, 34.288433, 34.964088>,  <27.559944, 34.291618, 34.942764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.320915, 34.288433, 34.964088>,  <26.922533, 34.283127, 34.999630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.320915, 34.288433, 34.964088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020796, 0.928132, 0.371669,
		0.087394, -0.372014, 0.924104,
		0.995957, 0.013264, -0.088850,
		27.619701, 34.292412, 34.937435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225481, 34.455437, 35.630260>,  <26.922533, 34.283127, 34.999630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225481, 34.455437, 35.630260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494804, 34.551334, 35.350494>,  <27.656399, 34.608871, 35.182636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494804, 34.551334, 35.350494>,  <27.225481, 34.455437, 35.630260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494804, 34.551334, 35.350494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078475, 0.963798, 0.254826,
		0.735184, -0.116691, 0.667748,
		0.673310, 0.239745, -0.699411,
		27.696796, 34.623257, 35.140671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648207, 34.947163, 35.952721>,  <27.225481, 34.455437, 35.630260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648207, 34.947163, 35.952721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721365, 34.998764, 35.562866>,  <27.765259, 35.029724, 35.328953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721365, 34.998764, 35.562866>,  <27.648207, 34.947163, 35.952721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721365, 34.998764, 35.562866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033002, 0.991600, 0.125059,
		0.982579, 0.009292, 0.185615,
		0.182894, 0.129006, -0.974632,
		27.776234, 35.037464, 35.270477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285753, 35.177563, 35.804867>,  <27.648207, 34.947163, 35.952721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285753, 35.177563, 35.804867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023901, 35.290005, 35.524170>,  <27.866789, 35.357468, 35.355751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023901, 35.290005, 35.524170>,  <28.285753, 35.177563, 35.804867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023901, 35.290005, 35.524170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100047, 0.952342, 0.288159,
		0.749299, 0.118431, -0.651556,
		-0.654631, 0.281103, -0.701740,
		27.827511, 35.374336, 35.313648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331388, 35.897442, 35.777367>,  <28.285753, 35.177563, 35.804867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331388, 35.897442, 35.777367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061186, 35.907925, 35.482609>,  <27.899065, 35.914215, 35.305756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061186, 35.907925, 35.482609>,  <28.331388, 35.897442, 35.777367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061186, 35.907925, 35.482609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007106, 0.999090, 0.042046,
		0.737321, 0.033638, -0.674704,
		-0.675505, 0.026207, -0.736890,
		27.858534, 35.915787, 35.261543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554169, 36.443592, 35.274212>,  <28.331388, 35.897442, 35.777367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554169, 36.443592, 35.274212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162891, 36.389790, 35.210911>,  <27.928125, 36.357510, 35.172928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162891, 36.389790, 35.210911>,  <28.554169, 36.443592, 35.274212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162891, 36.389790, 35.210911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139797, 0.989919, 0.022756,
		0.153600, 0.044384, -0.987136,
		-0.978194, -0.134504, -0.158256,
		27.869432, 36.349438, 35.163433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362740, 36.888760, 34.690151>,  <28.554169, 36.443592, 35.274212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362740, 36.888760, 34.690151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047678, 36.825916, 34.928452>,  <27.858641, 36.788212, 35.071430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.047678, 36.825916, 34.928452>,  <28.362740, 36.888760, 34.690151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.047678, 36.825916, 34.928452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183016, 0.982959, 0.017249,
		-0.588310, -0.095446, -0.802983,
		-0.787653, -0.157107, 0.595752,
		27.811382, 36.778786, 35.107178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142052, 37.525940, 34.635746>,  <28.362740, 36.888760, 34.690151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142052, 37.525940, 34.635746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884333, 37.363434, 34.894924>,  <27.729702, 37.265930, 35.050430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884333, 37.363434, 34.894924>,  <28.142052, 37.525940, 34.635746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884333, 37.363434, 34.894924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279413, 0.913712, 0.295058,
		-0.711907, 0.009060, -0.702215,
		-0.644296, -0.406261, 0.647946,
		27.691044, 37.241554, 35.089310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463526, 37.795105, 34.486427>,  <28.142052, 37.525940, 34.635746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463526, 37.795105, 34.486427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489170, 37.698009, 34.873615>,  <27.504557, 37.639751, 35.105927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489170, 37.698009, 34.873615>,  <27.463526, 37.795105, 34.486427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489170, 37.698009, 34.873615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361718, 0.898355, 0.249237,
		-0.930081, -0.366112, -0.030206,
		0.064113, -0.242736, 0.967971,
		27.508404, 37.625187, 35.164005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786583, 37.904800, 34.725513>,  <27.463526, 37.795105, 34.486427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786583, 37.904800, 34.725513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037197, 37.939075, 35.035381>,  <27.187567, 37.959641, 35.221302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037197, 37.939075, 35.035381>,  <26.786583, 37.904800, 34.725513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037197, 37.939075, 35.035381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443532, 0.856501, 0.263979,
		-0.640883, -0.508982, 0.574635,
		0.626536, 0.085689, 0.774667,
		27.225159, 37.964783, 35.267780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430458, 38.236275, 35.256859>,  <26.786583, 37.904800, 34.725513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430458, 38.236275, 35.256859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815016, 38.270782, 35.361382>,  <27.045750, 38.291489, 35.424095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815016, 38.270782, 35.361382>,  <26.430458, 38.236275, 35.256859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815016, 38.270782, 35.361382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148779, 0.961788, 0.229843,
		-0.231493, -0.259847, 0.937492,
		0.961393, 0.086272, 0.261307,
		27.103434, 38.296665, 35.439774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422398, 38.719849, 35.720360>,  <26.430458, 38.236275, 35.256859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422398, 38.719849, 35.720360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812979, 38.700619, 35.636238>,  <27.047327, 38.689079, 35.585766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812979, 38.700619, 35.636238>,  <26.422398, 38.719849, 35.720360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812979, 38.700619, 35.636238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088724, 0.978086, 0.188349,
		0.196645, -0.202573, 0.959320,
		0.976452, -0.048077, -0.210309,
		27.105915, 38.686195, 35.573147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736288, 39.098171, 36.277004>,  <26.422398, 38.719849, 35.720360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736288, 39.098171, 36.277004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960670, 39.106709, 35.945976>,  <27.095301, 39.111832, 35.747360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960670, 39.106709, 35.945976>,  <26.736288, 39.098171, 36.277004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960670, 39.106709, 35.945976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115235, 0.987922, 0.103590,
		0.819785, -0.153475, 0.551723,
		0.560958, 0.021344, -0.827569,
		27.128958, 39.113113, 35.697704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308228, 39.521751, 36.469715>,  <26.736288, 39.098171, 36.277004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.308228, 39.521751, 36.469715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280752, 39.502975, 36.071102>,  <27.264267, 39.491711, 35.831936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.280752, 39.502975, 36.071102>,  <27.308228, 39.521751, 36.469715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.280752, 39.502975, 36.071102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235416, 0.969920, -0.061917,
		0.969464, -0.238853, -0.055579,
		-0.068697, -0.046942, -0.996533,
		27.260145, 39.488892, 35.772141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698378, 40.088665, 36.380360>,  <27.308228, 39.521751, 36.469715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698378, 40.088665, 36.380360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548100, 40.032875, 36.013885>,  <27.457932, 39.999401, 35.793999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548100, 40.032875, 36.013885>,  <27.698378, 40.088665, 36.380360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548100, 40.032875, 36.013885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146600, 0.967218, -0.207357,
		0.915073, -0.212216, -0.342935,
		-0.375698, -0.139473, -0.916187,
		27.435390, 39.991032, 35.739029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145613, 40.339073, 35.880371>,  <27.698378, 40.088665, 36.380360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145613, 40.339073, 35.880371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806442, 40.332836, 35.668419>,  <27.602940, 40.329094, 35.541248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806442, 40.332836, 35.668419>,  <28.145613, 40.339073, 35.880371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806442, 40.332836, 35.668419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234425, 0.885493, -0.401182,
		0.475462, -0.464391, -0.747180,
		-0.847928, -0.015589, -0.529883,
		27.552063, 40.328159, 35.509453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.366219, 40.716972, 35.232613>,  <28.145613, 40.339073, 35.880371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.366219, 40.716972, 35.232613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966967, 40.728767, 35.254028>,  <27.727415, 40.735844, 35.266876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966967, 40.728767, 35.254028>,  <28.366219, 40.716972, 35.232613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966967, 40.728767, 35.254028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001318, 0.886142, -0.463412,
		-0.061106, -0.462475, -0.884524,
		-0.998130, 0.029483, 0.053539,
		27.667528, 40.737614, 35.270088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089144, 41.025486, 34.612606>,  <28.366219, 40.716972, 35.232613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089144, 41.025486, 34.612606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765301, 41.069332, 34.843266>,  <27.570995, 41.095638, 34.981663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765301, 41.069332, 34.843266>,  <28.089144, 41.025486, 34.612606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765301, 41.069332, 34.843266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239840, 0.834879, -0.495432,
		-0.535737, -0.539408, -0.649634,
		-0.809607, 0.109612, 0.576647,
		27.522419, 41.102215, 35.016258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601532, 41.113735, 34.106384>,  <28.089144, 41.025486, 34.612606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601532, 41.113735, 34.106384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489708, 41.264400, 34.459648>,  <27.422613, 41.354797, 34.671608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489708, 41.264400, 34.459648>,  <27.601532, 41.113735, 34.106384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489708, 41.264400, 34.459648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322705, 0.829463, -0.455908,
		-0.904272, -0.412455, -0.110335,
		-0.279560, 0.376659, 0.883161,
		27.405840, 41.377399, 34.724598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080408, 41.539982, 33.872910>,  <27.601532, 41.113735, 34.106384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080408, 41.539982, 33.872910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136209, 41.686077, 34.241070>,  <27.169691, 41.773735, 34.461967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136209, 41.686077, 34.241070>,  <27.080408, 41.539982, 33.872910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136209, 41.686077, 34.241070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232919, 0.915514, -0.327999,
		-0.962438, -0.168621, 0.212790,
		0.139505, 0.365241, 0.920401,
		27.178061, 41.795650, 34.517189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523979, 42.108234, 33.992382>,  <27.080408, 41.539982, 33.872910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523979, 42.108234, 33.992382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830126, 42.184395, 34.238297>,  <27.013813, 42.230091, 34.385845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.830126, 42.184395, 34.238297>,  <26.523979, 42.108234, 33.992382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830126, 42.184395, 34.238297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035688, 0.966321, -0.254851,
		-0.642604, 0.173115, 0.746386,
		0.765367, 0.190405, 0.614784,
		27.059736, 42.241516, 34.422733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361162, 42.706139, 34.340664>,  <26.523979, 42.108234, 33.992382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361162, 42.706139, 34.340664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760784, 42.692139, 34.330360>,  <27.000557, 42.683739, 34.324177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760784, 42.692139, 34.330360>,  <26.361162, 42.706139, 34.340664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760784, 42.692139, 34.330360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031475, 0.991466, -0.126505,
		0.029970, 0.125574, 0.991631,
		0.999055, -0.035003, -0.025762,
		27.060501, 42.681637, 34.322632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662420, 43.217926, 34.841141>,  <26.361162, 42.706139, 34.340664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662420, 43.217926, 34.841141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898243, 43.148628, 34.525570>,  <27.039736, 43.107052, 34.336227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898243, 43.148628, 34.525570>,  <26.662420, 43.217926, 34.841141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898243, 43.148628, 34.525570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060190, 0.964590, -0.256792,
		0.805482, 0.198879, 0.558252,
		0.589556, -0.173240, -0.788931,
		27.075109, 43.096657, 34.288891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.238422, 43.713753, 34.725216>,  <26.662420, 43.217926, 34.841141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.238422, 43.713753, 34.725216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115078, 43.551907, 34.380844>,  <27.041071, 43.454800, 34.174221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115078, 43.551907, 34.380844>,  <27.238422, 43.713753, 34.725216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115078, 43.551907, 34.380844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102705, 0.913904, -0.392722,
		0.945709, -0.032679, -0.323369,
		-0.308362, -0.404613, -0.860931,
		27.022570, 43.430523, 34.122566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769007, 43.790188, 34.295197>,  <27.238422, 43.713753, 34.725216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769007, 43.790188, 34.295197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393822, 43.810024, 34.157928>,  <27.168711, 43.821926, 34.075569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393822, 43.810024, 34.157928>,  <27.769007, 43.790188, 34.295197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393822, 43.810024, 34.157928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188478, 0.903654, -0.384560,
		0.291037, -0.425383, -0.856941,
		-0.937963, 0.049593, -0.343171,
		27.112432, 43.824902, 34.054977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768333, 43.959587, 33.511158>,  <27.769007, 43.790188, 34.295197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768333, 43.959587, 33.511158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423677, 44.095654, 33.661819>,  <27.216885, 44.177292, 33.752216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423677, 44.095654, 33.661819>,  <27.768333, 43.959587, 33.511158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423677, 44.095654, 33.661819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107048, 0.847254, -0.520290,
		-0.496103, -0.407983, -0.766441,
		-0.861639, 0.340164, 0.376651,
		27.165186, 44.197704, 33.774815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323177, 44.178349, 32.908684>,  <27.768333, 43.959587, 33.511158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323177, 44.178349, 32.908684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323305, 44.366043, 33.261913>,  <27.323381, 44.478661, 33.473850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323305, 44.366043, 33.261913>,  <27.323177, 44.178349, 32.908684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323305, 44.366043, 33.261913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005548, 0.883060, -0.469227,
		-0.999985, -0.004749, 0.002885,
		0.000319, 0.469236, 0.883073,
		27.323400, 44.506813, 33.526836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790577, 44.598621, 32.700672>,  <27.323177, 44.178349, 32.908684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790577, 44.598621, 32.700672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137907, 44.690578, 32.524872>,  <28.346304, 44.745754, 32.419392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137907, 44.690578, 32.524872>,  <27.790577, 44.598621, 32.700672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137907, 44.690578, 32.524872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221828, -0.972538, -0.070448,
		-0.443628, -0.036322, -0.895475,
		0.868324, 0.229894, -0.439502,
		28.398405, 44.759548, 32.393021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988287, 44.247303, 32.029835>,  <27.790577, 44.598621, 32.700672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988287, 44.247303, 32.029835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343988, 44.346035, 32.183876>,  <28.557409, 44.405273, 32.276299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343988, 44.346035, 32.183876>,  <27.988287, 44.247303, 32.029835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343988, 44.346035, 32.183876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323240, -0.934788, -0.147268,
		0.323639, 0.255439, -0.911048,
		0.889255, 0.246826, 0.385102,
		28.610765, 44.420082, 32.299408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538420, 44.183693, 31.601423>,  <27.988287, 44.247303, 32.029835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538420, 44.183693, 31.601423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601658, 44.101768, 31.987804>,  <28.639601, 44.052616, 32.219631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.601658, 44.101768, 31.987804>,  <28.538420, 44.183693, 31.601423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601658, 44.101768, 31.987804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054357, -0.978575, -0.198587,
		0.985927, -0.021110, -0.165839,
		0.158094, -0.204807, 0.965951,
		28.649086, 44.040325, 32.277588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111036, 43.568619, 31.676126>,  <28.538420, 44.183693, 31.601423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111036, 43.568619, 31.676126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868782, 43.571316, 31.994411>,  <28.723429, 43.572933, 32.185383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868782, 43.571316, 31.994411>,  <29.111036, 43.568619, 31.676126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868782, 43.571316, 31.994411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007335, -0.999874, 0.014054,
		0.795708, 0.014349, 0.605511,
		-0.605636, 0.006742, 0.795713,
		28.687092, 43.573338, 32.233124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411230, 43.027439, 32.137970>,  <29.111036, 43.568619, 31.676126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411230, 43.027439, 32.137970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036295, 43.058098, 32.273926>,  <28.811335, 43.076492, 32.355499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036295, 43.058098, 32.273926>,  <29.411230, 43.027439, 32.137970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036295, 43.058098, 32.273926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012914, -0.967189, 0.253731,
		0.348182, 0.242221, 0.905593,
		-0.937338, 0.076649, 0.339886,
		28.755093, 43.081093, 32.375893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389254, 42.767105, 32.881172>,  <29.411230, 43.027439, 32.137970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389254, 42.767105, 32.881172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019060, 42.767551, 32.729656>,  <28.796944, 42.767818, 32.638748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019060, 42.767551, 32.729656>,  <29.389254, 42.767105, 32.881172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019060, 42.767551, 32.729656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101835, -0.963913, 0.245971,
		-0.364847, 0.266216, 0.892197,
		-0.925482, 0.001115, -0.378791,
		28.741415, 42.767887, 32.616020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080406, 42.380810, 33.334579>,  <29.389254, 42.767105, 32.881172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080406, 42.380810, 33.334579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863449, 42.377937, 32.998543>,  <28.733274, 42.376213, 32.796921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863449, 42.377937, 32.998543>,  <29.080406, 42.380810, 33.334579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863449, 42.377937, 32.998543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097258, -0.992704, 0.071273,
		-0.834477, 0.120364, 0.537737,
		-0.542392, -0.007176, -0.840095,
		28.700731, 42.375786, 32.746513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633602, 41.883293, 33.475266>,  <29.080406, 42.380810, 33.334579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633602, 41.883293, 33.475266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609423, 41.929348, 33.078663>,  <28.594915, 41.956982, 32.840702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609423, 41.929348, 33.078663>,  <28.633602, 41.883293, 33.475266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609423, 41.929348, 33.078663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001578, -0.993313, -0.115442,
		-0.998170, -0.008543, 0.059862,
		-0.060448, 0.115136, -0.991509,
		28.591288, 41.963890, 32.781212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011824, 41.529243, 33.258018>,  <28.633602, 41.883293, 33.475266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011824, 41.529243, 33.258018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268204, 41.545128, 32.951397>,  <28.422031, 41.554657, 32.767422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.268204, 41.545128, 32.951397>,  <28.011824, 41.529243, 33.258018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268204, 41.545128, 32.951397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033685, -0.996244, -0.079770,
		-0.766844, 0.076949, -0.637203,
		0.640948, 0.039707, -0.766556,
		28.460487, 41.557041, 32.721432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731205, 40.985203, 32.897701>,  <28.011824, 41.529243, 33.258018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731205, 40.985203, 32.897701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071838, 41.062172, 32.702648>,  <28.276218, 41.108353, 32.585617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.071838, 41.062172, 32.702648>,  <27.731205, 40.985203, 32.897701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.071838, 41.062172, 32.702648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160813, -0.981236, -0.106372,
		-0.498948, 0.012167, -0.866547,
		0.851581, 0.192426, -0.487629,
		28.327312, 41.119900, 32.556358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747805, 40.626320, 32.136581>,  <27.731205, 40.985203, 32.897701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747805, 40.626320, 32.136581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119610, 40.697338, 32.265881>,  <28.342693, 40.739948, 32.343460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119610, 40.697338, 32.265881>,  <27.747805, 40.626320, 32.136581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119610, 40.697338, 32.265881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237585, -0.958653, -0.156643,
		0.282069, 0.222400, -0.933261,
		0.929511, 0.177544, 0.323245,
		28.398462, 40.750603, 32.362854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203264, 40.344097, 31.652628>,  <27.747805, 40.626320, 32.136581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203264, 40.344097, 31.652628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407391, 40.349579, 31.996580>,  <28.529867, 40.352867, 32.202950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407391, 40.349579, 31.996580>,  <28.203264, 40.344097, 31.652628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407391, 40.349579, 31.996580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271622, -0.951259, -0.146043,
		0.815966, 0.308090, -0.489163,
		0.510315, 0.013701, 0.859878,
		28.560486, 40.353687, 32.254543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683121, 39.772793, 31.600092>,  <28.203264, 40.344097, 31.652628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683121, 39.772793, 31.600092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739428, 39.885567, 31.979712>,  <28.773212, 39.953232, 32.207485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739428, 39.885567, 31.979712>,  <28.683121, 39.772793, 31.600092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739428, 39.885567, 31.979712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438015, -0.877410, 0.195688,
		0.887878, 0.388152, -0.247003,
		0.140766, 0.281938, 0.949050,
		28.781658, 39.970150, 32.264427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413227, 39.629086, 31.755407>,  <28.683121, 39.772793, 31.600092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413227, 39.629086, 31.755407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237152, 39.666634, 32.112602>,  <29.131508, 39.689163, 32.326920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237152, 39.666634, 32.112602>,  <29.413227, 39.629086, 31.755407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237152, 39.666634, 32.112602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377179, -0.883192, 0.278761,
		0.814845, 0.459522, 0.353364,
		-0.440186, 0.093866, 0.892987,
		29.105097, 39.694794, 32.380497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989027, 39.452579, 32.222630>,  <29.413227, 39.629086, 31.755407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989027, 39.452579, 32.222630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651361, 39.427330, 32.435570>,  <29.448761, 39.412182, 32.563335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651361, 39.427330, 32.435570>,  <29.989027, 39.452579, 32.222630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651361, 39.427330, 32.435570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327577, -0.846815, 0.419044,
		0.424355, 0.528129, 0.735529,
		-0.844166, -0.063119, 0.532353,
		29.398111, 39.408394, 32.595276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196598, 39.384308, 32.951019>,  <29.989027, 39.452579, 32.222630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196598, 39.384308, 32.951019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816494, 39.260010, 32.942585>,  <29.588432, 39.185429, 32.937527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816494, 39.260010, 32.942585>,  <30.196598, 39.384308, 32.951019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816494, 39.260010, 32.942585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243690, -0.783942, 0.571009,
		-0.193968, 0.537468, 0.820673,
		-0.950259, -0.310747, -0.021084,
		29.531416, 39.166786, 32.936260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955175, 39.022079, 33.602589>,  <30.196598, 39.384308, 32.951019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955175, 39.022079, 33.602589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698771, 38.867599, 33.337273>,  <29.544928, 38.774910, 33.178082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698771, 38.867599, 33.337273>,  <29.955175, 39.022079, 33.602589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698771, 38.867599, 33.337273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135472, -0.907548, 0.397498,
		-0.755480, 0.164944, 0.634069,
		-0.641012, -0.386201, -0.663289,
		29.506468, 38.751740, 33.138287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576767, 38.747879, 34.051517>,  <29.955175, 39.022079, 33.602589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576767, 38.747879, 34.051517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521881, 38.561073, 33.702103>,  <29.488949, 38.448990, 33.492455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.521881, 38.561073, 33.702103>,  <29.576767, 38.747879, 34.051517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521881, 38.561073, 33.702103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198986, -0.876897, 0.437557,
		-0.970349, -0.113783, 0.213253,
		-0.137215, -0.467018, -0.873537,
		29.480717, 38.420967, 33.440041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164961, 38.104958, 34.197838>,  <29.576767, 38.747879, 34.051517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164961, 38.104958, 34.197838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329638, 38.028313, 33.841457>,  <29.428444, 37.982327, 33.627628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329638, 38.028313, 33.841457>,  <29.164961, 38.104958, 34.197838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329638, 38.028313, 33.841457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339928, -0.874802, 0.345211,
		-0.845553, -0.444980, -0.295015,
		0.411691, -0.191610, -0.890952,
		29.453144, 37.970829, 33.574173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904675, 37.499516, 34.011097>,  <29.164961, 38.104958, 34.197838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904675, 37.499516, 34.011097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230152, 37.500641, 33.778580>,  <29.425438, 37.501316, 33.639069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230152, 37.500641, 33.778580>,  <28.904675, 37.499516, 34.011097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230152, 37.500641, 33.778580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269972, -0.887428, 0.373614,
		-0.514800, -0.460938, -0.722853,
		0.813693, 0.002814, -0.581288,
		29.474260, 37.501484, 33.604195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816301, 36.881557, 33.754734>,  <28.904675, 37.499516, 34.011097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816301, 36.881557, 33.754734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198175, 36.971001, 33.676170>,  <29.427299, 37.024666, 33.629032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198175, 36.971001, 33.676170>,  <28.816301, 36.881557, 33.754734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198175, 36.971001, 33.676170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242788, -0.966822, 0.079433,
		-0.172128, -0.123519, -0.977300,
		0.954686, 0.223604, -0.196406,
		29.484581, 37.038082, 33.617249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987497, 36.465611, 33.188866>,  <28.816301, 36.881557, 33.754734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987497, 36.465611, 33.188866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335196, 36.535187, 33.373974>,  <29.543814, 36.576931, 33.485039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335196, 36.535187, 33.373974>,  <28.987497, 36.465611, 33.188866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335196, 36.535187, 33.373974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181675, -0.982954, 0.028209,
		0.459794, 0.059554, -0.886027,
		0.869244, 0.173940, 0.462775,
		29.595968, 36.587368, 33.512806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398394, 35.995522, 32.865417>,  <28.987497, 36.465611, 33.188866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398394, 35.995522, 32.865417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569422, 36.102062, 33.210960>,  <29.672039, 36.165985, 33.418285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569422, 36.102062, 33.210960>,  <29.398394, 35.995522, 32.865417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569422, 36.102062, 33.210960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156726, -0.962977, 0.219343,
		0.890293, 0.041604, -0.453483,
		0.427569, 0.266352, 0.863853,
		29.697693, 36.181969, 33.470116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089127, 35.622368, 32.822739>,  <29.398394, 35.995522, 32.865417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089127, 35.622368, 32.822739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997812, 35.728634, 33.197399>,  <29.943024, 35.792393, 33.422195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997812, 35.728634, 33.197399>,  <30.089127, 35.622368, 32.822739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997812, 35.728634, 33.197399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193385, -0.930509, 0.311055,
		0.954195, 0.252142, 0.161046,
		-0.228285, 0.265663, 0.936648,
		29.929327, 35.808334, 33.478394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612921, 35.276226, 33.219505>,  <30.089127, 35.622368, 32.822739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612921, 35.276226, 33.219505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298021, 35.363617, 33.450157>,  <30.109081, 35.416054, 33.588551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298021, 35.363617, 33.450157>,  <30.612921, 35.276226, 33.219505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298021, 35.363617, 33.450157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075281, -0.894081, 0.441534,
		0.612024, 0.391006, 0.687416,
		-0.787248, 0.218480, 0.576634,
		30.061848, 35.429161, 33.623146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730030, 34.826641, 33.860016>,  <30.612921, 35.276226, 33.219505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730030, 34.826641, 33.860016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348303, 34.943451, 33.885323>,  <30.119267, 35.013538, 33.900505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348303, 34.943451, 33.885323>,  <30.730030, 34.826641, 33.860016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348303, 34.943451, 33.885323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232057, -0.857731, 0.458745,
		0.188228, 0.423107, 0.886313,
		-0.954316, 0.292023, 0.063264,
		30.062008, 35.031059, 33.904301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516005, 34.370483, 34.518505>,  <30.730030, 34.826641, 33.860016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516005, 34.370483, 34.518505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193287, 34.505630, 34.324627>,  <29.999657, 34.586720, 34.208302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193287, 34.505630, 34.324627>,  <30.516005, 34.370483, 34.518505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193287, 34.505630, 34.324627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549690, -0.730018, 0.406097,
		-0.216627, 0.594067, 0.774698,
		-0.806793, 0.337872, -0.484694,
		29.951250, 34.606991, 34.179218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946375, 33.981270, 34.084595>,  <30.516005, 34.370483, 34.518505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946375, 33.981270, 34.084595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310997, 34.116688, 33.991257>,  <31.529770, 34.197937, 33.935253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310997, 34.116688, 33.991257>,  <30.946375, 33.981270, 34.084595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310997, 34.116688, 33.991257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210918, 0.102156, 0.972151,
		0.352956, -0.935388, 0.021716,
		0.911556, 0.338547, -0.233346,
		31.584465, 34.218250, 33.921253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544857, 33.505402, 34.458725>,  <30.946375, 33.981270, 34.084595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544857, 33.505402, 34.458725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658134, 33.881714, 34.384190>,  <31.726101, 34.107502, 34.339466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658134, 33.881714, 34.384190>,  <31.544857, 33.505402, 34.458725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658134, 33.881714, 34.384190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394269, 0.062917, 0.916839,
		0.874273, -0.333113, -0.353104,
		0.283194, 0.940785, -0.186343,
		31.743093, 34.163948, 34.328285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366173, 33.648373, 34.483669>,  <31.544857, 33.505402, 34.458725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366173, 33.648373, 34.483669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163910, 33.980793, 34.576324>,  <32.042553, 34.180244, 34.631916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163910, 33.980793, 34.576324>,  <32.366173, 33.648373, 34.483669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163910, 33.980793, 34.576324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543927, 0.098695, 0.833308,
		0.669664, 0.547363, -0.501940,
		-0.505661, 0.831055, 0.231634,
		32.012211, 34.230110, 34.645813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778847, 34.276211, 34.677219>,  <32.366173, 33.648373, 34.483669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778847, 34.276211, 34.677219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437939, 34.307892, 34.884045>,  <32.233395, 34.326900, 35.008141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437939, 34.307892, 34.884045>,  <32.778847, 34.276211, 34.677219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437939, 34.307892, 34.884045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522773, 0.094176, 0.847254,
		0.018407, 0.992400, -0.121668,
		-0.852273, 0.079200, 0.517067,
		32.182259, 34.331654, 35.039165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781807, 34.874901, 35.237572>,  <32.778847, 34.276211, 34.677219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781807, 34.874901, 35.237572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529377, 34.581825, 35.339485>,  <32.377918, 34.405979, 35.400631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529377, 34.581825, 35.339485>,  <32.781807, 34.874901, 35.237572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529377, 34.581825, 35.339485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384527, -0.010218, 0.923057,
		-0.673713, 0.680484, 0.288188,
		-0.631071, -0.732692, 0.254781,
		32.340057, 34.362019, 35.415920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221409, 35.083591, 35.710377>,  <32.781807, 34.874901, 35.237572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221409, 35.083591, 35.710377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326824, 34.701385, 35.763348>,  <32.390076, 34.472061, 35.795132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326824, 34.701385, 35.763348>,  <32.221409, 35.083591, 35.710377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326824, 34.701385, 35.763348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247058, 0.199563, 0.948228,
		-0.932474, -0.217178, 0.288660,
		0.263541, -0.955515, 0.132432,
		32.405888, 34.414730, 35.803078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825668, 34.629391, 36.160053>,  <32.221409, 35.083591, 35.710377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825668, 34.629391, 36.160053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208054, 34.516144, 36.190971>,  <32.437485, 34.448196, 36.209522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208054, 34.516144, 36.190971>,  <31.825668, 34.629391, 36.160053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208054, 34.516144, 36.190971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054037, 0.089073, 0.994558,
		-0.288463, -0.954940, 0.069852,
		0.955965, -0.283119, 0.077297,
		32.494843, 34.431210, 36.214161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830034, 34.134449, 36.596706>,  <31.825668, 34.629391, 36.160053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830034, 34.134449, 36.596706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200462, 34.285385, 36.598186>,  <32.422718, 34.375946, 36.599075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200462, 34.285385, 36.598186>,  <31.830034, 34.134449, 36.596706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200462, 34.285385, 36.598186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038064, 0.083643, 0.995769,
		0.375430, -0.922291, 0.091822,
		0.926069, 0.377337, 0.003704,
		32.478283, 34.398586, 36.599297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160641, 33.741009, 37.101059>,  <31.830034, 34.134449, 36.596706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160641, 33.741009, 37.101059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412880, 34.048950, 37.061710>,  <32.564224, 34.233715, 37.038101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412880, 34.048950, 37.061710>,  <32.160641, 33.741009, 37.101059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412880, 34.048950, 37.061710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013830, 0.137881, 0.990352,
		0.775987, -0.623153, 0.097594,
		0.630597, 0.769850, -0.098376,
		32.602058, 34.279903, 37.032196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664299, 33.612339, 37.615513>,  <32.160641, 33.741009, 37.101059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664299, 33.612339, 37.615513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653152, 34.000675, 37.520279>,  <32.646465, 34.233677, 37.463139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.653152, 34.000675, 37.520279>,  <32.664299, 33.612339, 37.615513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653152, 34.000675, 37.520279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024070, 0.238763, 0.970780,
		0.999322, 0.021322, -0.030022,
		-0.027867, 0.970844, -0.238088,
		32.644791, 34.291927, 37.448853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209393, 34.037632, 37.947853>,  <32.664299, 33.612339, 37.615513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209393, 34.037632, 37.947853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918762, 34.303082, 37.876652>,  <32.744385, 34.462353, 37.833931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918762, 34.303082, 37.876652>,  <33.209393, 34.037632, 37.947853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918762, 34.303082, 37.876652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110087, 0.143283, 0.983540,
		0.678206, 0.734216, -0.031050,
		-0.726579, 0.663624, -0.178002,
		32.700787, 34.502171, 37.823250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298294, 34.562290, 38.360012>,  <33.209393, 34.037632, 37.947853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298294, 34.562290, 38.360012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918564, 34.625862, 38.251553>,  <32.690727, 34.664005, 38.186478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918564, 34.625862, 38.251553>,  <33.298294, 34.562290, 38.360012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918564, 34.625862, 38.251553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253363, 0.123513, 0.959454,
		0.185975, 0.979534, -0.076988,
		-0.949326, 0.158928, -0.271148,
		32.633766, 34.673542, 38.170208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140373, 35.121292, 38.716862>,  <33.298294, 34.562290, 38.360012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140373, 35.121292, 38.716862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777699, 34.989319, 38.611736>,  <32.560093, 34.910133, 38.548660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777699, 34.989319, 38.611736>,  <33.140373, 35.121292, 38.716862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777699, 34.989319, 38.611736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338730, 0.198212, 0.919768,
		-0.251369, 0.922961, -0.291474,
		-0.906684, -0.329933, -0.262810,
		32.505692, 34.890339, 38.532894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665867, 35.611221, 38.952702>,  <33.140373, 35.121292, 38.716862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665867, 35.611221, 38.952702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443672, 35.279686, 38.926018>,  <32.310356, 35.080765, 38.910007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443672, 35.279686, 38.926018>,  <32.665867, 35.611221, 38.952702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443672, 35.279686, 38.926018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347223, 0.158313, 0.924323,
		-0.755557, 0.536616, -0.375735,
		-0.555490, -0.828843, -0.066711,
		32.277027, 35.031033, 38.906006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113647, 35.702354, 39.470196>,  <32.665867, 35.611221, 38.952702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113647, 35.702354, 39.470196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080269, 35.309990, 39.399929>,  <32.060242, 35.074574, 39.357769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080269, 35.309990, 39.399929>,  <32.113647, 35.702354, 39.470196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080269, 35.309990, 39.399929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402813, -0.128030, 0.906283,
		-0.911470, 0.146387, -0.384439,
		-0.083448, -0.980907, -0.175662,
		32.055233, 35.015717, 39.347229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469938, 35.543999, 39.878578>,  <32.113647, 35.702354, 39.470196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469938, 35.543999, 39.878578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678772, 35.213863, 39.792561>,  <31.804071, 35.015781, 39.740952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678772, 35.213863, 39.792561>,  <31.469938, 35.543999, 39.878578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678772, 35.213863, 39.792561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133200, -0.327939, 0.935261,
		-0.842430, -0.459640, -0.281146,
		0.522082, -0.825340, -0.215042,
		31.835396, 34.966263, 39.728046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086725, 34.982201, 39.928642>,  <31.469938, 35.543999, 39.878578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086725, 34.982201, 39.928642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461639, 34.854992, 39.985718>,  <31.686588, 34.778667, 40.019962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461639, 34.854992, 39.985718>,  <31.086725, 34.982201, 39.928642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461639, 34.854992, 39.985718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195486, -0.140670, 0.970565,
		-0.288589, -0.937589, -0.194017,
		0.937284, -0.318023, 0.142690,
		31.742825, 34.759586, 40.028526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073179, 34.520252, 40.405399>,  <31.086725, 34.982201, 39.928642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073179, 34.520252, 40.405399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463717, 34.602310, 40.432735>,  <31.698038, 34.651543, 40.449135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463717, 34.602310, 40.432735>,  <31.073179, 34.520252, 40.405399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463717, 34.602310, 40.432735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021605, -0.221916, 0.974826,
		0.215142, -0.953242, -0.212234,
		0.976344, 0.205141, 0.068338,
		31.756620, 34.663853, 40.453236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271627, 33.923492, 40.858231>,  <31.073179, 34.520252, 40.405399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271627, 33.923492, 40.858231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568274, 34.191517, 40.871052>,  <31.746262, 34.352329, 40.878746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568274, 34.191517, 40.871052>,  <31.271627, 33.923492, 40.858231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568274, 34.191517, 40.871052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092023, -0.148948, 0.984554,
		0.664484, -0.727211, -0.172123,
		0.741616, 0.670059, 0.032054,
		31.790758, 34.392536, 40.880669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795181, 33.595634, 41.254318>,  <31.271627, 33.923492, 40.858231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795181, 33.595634, 41.254318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872824, 33.987762, 41.268703>,  <31.919409, 34.223038, 41.277336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872824, 33.987762, 41.268703>,  <31.795181, 33.595634, 41.254318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872824, 33.987762, 41.268703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119579, -0.060035, 0.991008,
		0.973665, -0.188059, -0.128878,
		0.194105, 0.980321, 0.035966,
		31.931055, 34.281860, 41.279491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330292, 33.672806, 41.759266>,  <31.795181, 33.595634, 41.254318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330292, 33.672806, 41.759266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158901, 34.032795, 41.727139>,  <32.056068, 34.248791, 41.707863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158901, 34.032795, 41.727139>,  <32.330292, 33.672806, 41.759266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158901, 34.032795, 41.727139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037942, 0.070888, 0.996762,
		0.902756, 0.430136, 0.003773,
		-0.428476, 0.899977, -0.080315,
		32.030357, 34.302788, 41.703045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696426, 34.094044, 42.276173>,  <32.330292, 33.672806, 41.759266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696426, 34.094044, 42.276173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369152, 34.307896, 42.191570>,  <32.172787, 34.436207, 42.140808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369152, 34.307896, 42.191570>,  <32.696426, 34.094044, 42.276173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369152, 34.307896, 42.191570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091585, 0.241976, 0.965950,
		0.567607, 0.809701, -0.149018,
		-0.818190, 0.534632, -0.211504,
		32.123695, 34.468285, 42.128120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817532, 34.847576, 42.493633>,  <32.696426, 34.094044, 42.276173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817532, 34.847576, 42.493633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434586, 34.732098, 42.489513>,  <32.204819, 34.662811, 42.487041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434586, 34.732098, 42.489513>,  <32.817532, 34.847576, 42.493633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434586, 34.732098, 42.489513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069867, 0.196802, 0.977951,
		-0.280308, 0.936974, -0.208581,
		-0.957364, -0.288700, -0.010298,
		32.147377, 34.645489, 42.486423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584801, 35.211575, 43.004322>,  <32.817532, 34.847576, 42.493633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584801, 35.211575, 43.004322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289627, 34.951771, 42.931011>,  <32.112522, 34.795887, 42.887024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289627, 34.951771, 42.931011>,  <32.584801, 35.211575, 43.004322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289627, 34.951771, 42.931011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214715, -0.031505, 0.976168,
		-0.639807, 0.759699, -0.116212,
		-0.737933, -0.649512, -0.183276,
		32.068249, 34.756916, 42.876030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923912, 35.521152, 43.323883>,  <32.584801, 35.211575, 43.004322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923912, 35.521152, 43.323883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922039, 35.122177, 43.295315>,  <31.920916, 34.882793, 43.278175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922039, 35.122177, 43.295315>,  <31.923912, 35.521152, 43.323883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922039, 35.122177, 43.295315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186687, -0.069296, 0.979972,
		-0.982408, 0.017921, -0.185884,
		-0.004681, -0.997435, -0.071422,
		31.920635, 34.822945, 43.273888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232988, 35.313801, 43.649662>,  <31.923912, 35.521152, 43.323883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232988, 35.313801, 43.649662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499609, 35.015633, 43.652767>,  <31.659582, 34.836731, 43.654629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499609, 35.015633, 43.652767>,  <31.232988, 35.313801, 43.649662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499609, 35.015633, 43.652767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297609, -0.256551, 0.919571,
		-0.683474, -0.615251, -0.392848,
		0.666553, -0.745418, 0.007758,
		31.699575, 34.792007, 43.655094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911840, 34.891968, 44.101658>,  <31.232988, 35.313801, 43.649662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911840, 34.891968, 44.101658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287008, 34.756973, 44.069637>,  <31.512110, 34.675976, 44.050423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287008, 34.756973, 44.069637>,  <30.911840, 34.891968, 44.101658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287008, 34.756973, 44.069637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040639, -0.336139, 0.940935,
		-0.344447, -0.879274, -0.328988,
		0.937926, -0.337472, -0.080049,
		31.568384, 34.655727, 44.045620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855253, 34.241787, 44.346512>,  <30.911840, 34.891968, 44.101658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855253, 34.241787, 44.346512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241562, 34.332802, 44.396336>,  <31.473347, 34.387409, 44.426231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241562, 34.332802, 44.396336>,  <30.855253, 34.241787, 44.346512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241562, 34.332802, 44.396336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014526, -0.432006, 0.901754,
		0.258993, -0.872696, -0.413914,
		0.965770, 0.227536, 0.124563,
		31.531292, 34.401062, 44.433704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114889, 33.680756, 44.584572>,  <30.855253, 34.241787, 44.346512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114889, 33.680756, 44.584572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384083, 33.961014, 44.679390>,  <31.545599, 34.129169, 44.736279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384083, 33.961014, 44.679390>,  <31.114889, 33.680756, 44.584572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384083, 33.961014, 44.679390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096412, -0.234645, 0.967288,
		0.733346, -0.673824, -0.090362,
		0.672985, 0.700644, 0.237041,
		31.585978, 34.171207, 44.750504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558207, 33.364494, 45.133434>,  <31.114889, 33.680756, 44.584572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558207, 33.364494, 45.133434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603319, 33.759781, 45.174816>,  <31.630386, 33.996952, 45.199646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603319, 33.759781, 45.174816>,  <31.558207, 33.364494, 45.133434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603319, 33.759781, 45.174816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165715, -0.121372, 0.978676,
		0.979704, -0.093232, -0.177451,
		0.112781, 0.988219, 0.103459,
		31.637154, 34.056248, 45.205853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077553, 33.325851, 45.617554>,  <31.558207, 33.364494, 45.133434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077553, 33.325851, 45.617554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932432, 33.698059, 45.637547>,  <31.845360, 33.921383, 45.649540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932432, 33.698059, 45.637547>,  <32.077553, 33.325851, 45.617554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932432, 33.698059, 45.637547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007299, -0.056469, 0.998378,
		0.931837, 0.361852, 0.027279,
		-0.362805, 0.930524, 0.049979,
		31.823591, 33.977215, 45.652542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510303, 33.710720, 46.122650>,  <32.077553, 33.325851, 45.617554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510303, 33.710720, 46.122650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171940, 33.921295, 46.088474>,  <31.968922, 34.047638, 46.067966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171940, 33.921295, 46.088474>,  <32.510303, 33.710720, 46.122650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171940, 33.921295, 46.088474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057512, 0.069229, 0.995942,
		0.530212, 0.847393, -0.028285,
		-0.845912, 0.526433, -0.085441,
		31.918167, 34.079224, 46.062843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532841, 34.119320, 46.761143>,  <32.510303, 33.710720, 46.122650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532841, 34.119320, 46.761143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159389, 34.164982, 46.625313>,  <31.935320, 34.192379, 46.543816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159389, 34.164982, 46.625313>,  <32.532841, 34.119320, 46.761143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159389, 34.164982, 46.625313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319847, 0.161381, 0.933624,
		0.161381, 0.980267, -0.114157,
		-0.933624, 0.114157, -0.339579,
		31.879303, 34.199230, 46.523438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343979, 34.570473, 47.121391>,  <32.532841, 34.119320, 46.761143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343979, 34.570473, 47.121391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003269, 34.417320, 46.978352>,  <31.798843, 34.325428, 46.892529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003269, 34.417320, 46.978352>,  <32.343979, 34.570473, 47.121391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003269, 34.417320, 46.978352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415905, 0.079096, 0.905962,
		-0.318591, 0.920405, -0.226615,
		-0.851776, -0.382881, -0.357602,
		31.747736, 34.302456, 46.871071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862131, 35.046120, 47.358406>,  <32.343979, 34.570473, 47.121391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862131, 35.046120, 47.358406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690758, 34.688595, 47.305420>,  <31.587933, 34.474079, 47.273628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690758, 34.688595, 47.305420>,  <31.862131, 35.046120, 47.358406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690758, 34.688595, 47.305420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570539, 0.153923, 0.806717,
		-0.700663, 0.421201, -0.575900,
		-0.428434, -0.893810, -0.132464,
		31.562227, 34.420452, 47.265682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225471, 35.183193, 47.372883>,  <31.862131, 35.046120, 47.358406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225471, 35.183193, 47.372883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225655, 34.788319, 47.436718>,  <31.225763, 34.551395, 47.475021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225655, 34.788319, 47.436718>,  <31.225471, 35.183193, 47.372883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225655, 34.788319, 47.436718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416302, 0.144916, 0.897603,
		-0.909226, -0.066847, -0.410901,
		0.000456, -0.987183, 0.159590,
		31.225792, 34.492165, 47.484596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567982, 35.045803, 47.444939>,  <31.225471, 35.183193, 47.372883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567982, 35.045803, 47.444939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805216, 34.782192, 47.629951>,  <30.947556, 34.624027, 47.740959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805216, 34.782192, 47.629951>,  <30.567982, 35.045803, 47.444939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805216, 34.782192, 47.629951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442410, 0.213236, 0.871094,
		-0.672701, -0.721261, -0.165092,
		0.593083, -0.659024, 0.462537,
		30.983141, 34.584484, 47.768711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162779, 34.729107, 47.872505>,  <30.567982, 35.045803, 47.444939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162779, 34.729107, 47.872505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503504, 34.595497, 48.033920>,  <30.707939, 34.515331, 48.130768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.503504, 34.595497, 48.033920>,  <30.162779, 34.729107, 47.872505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503504, 34.595497, 48.033920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374651, 0.149958, 0.914959,
		-0.366136, -0.930558, 0.002591,
		0.851811, -0.334029, 0.403539,
		30.759047, 34.495289, 48.154984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938787, 34.217209, 48.454716>,  <30.162779, 34.729107, 47.872505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938787, 34.217209, 48.454716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320667, 34.312321, 48.526279>,  <30.549795, 34.369389, 48.569218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320667, 34.312321, 48.526279>,  <29.938787, 34.217209, 48.454716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320667, 34.312321, 48.526279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168047, -0.065383, 0.983608,
		0.245581, -0.969116, -0.022463,
		0.954699, 0.237780, 0.178914,
		30.607077, 34.383656, 48.579952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266497, 33.601086, 48.628426>,  <29.938787, 34.217209, 48.454716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266497, 33.601086, 48.628426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456001, 33.921799, 48.774132>,  <30.569704, 34.114227, 48.861557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456001, 33.921799, 48.774132>,  <30.266497, 33.601086, 48.628426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456001, 33.921799, 48.774132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047930, -0.389545, 0.919759,
		0.879347, -0.453207, -0.146122,
		0.473763, 0.801784, 0.364267,
		30.598131, 34.162334, 48.883411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802666, 33.324242, 48.901012>,  <30.266497, 33.601086, 48.628426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802666, 33.324242, 48.901012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682095, 33.655960, 49.089233>,  <30.609753, 33.854992, 49.202164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.682095, 33.655960, 49.089233>,  <30.802666, 33.324242, 48.901012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682095, 33.655960, 49.089233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006249, -0.495209, 0.868751,
		0.953469, 0.258923, 0.154451,
		-0.301426, 0.829293, 0.470549,
		30.591667, 33.904747, 49.230396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113056, 33.257843, 49.475655>,  <30.802666, 33.324242, 48.901012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113056, 33.257843, 49.475655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822212, 33.523861, 49.543812>,  <30.647707, 33.683472, 49.584705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822212, 33.523861, 49.543812>,  <31.113056, 33.257843, 49.475655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822212, 33.523861, 49.543812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155864, -0.401623, 0.902444,
		0.668595, 0.629617, 0.395680,
		-0.727108, 0.665042, 0.170389,
		30.604080, 33.723373, 49.594929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180910, 33.393562, 50.124973>,  <31.113056, 33.257843, 49.475655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180910, 33.393562, 50.124973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817875, 33.547543, 50.057926>,  <30.600054, 33.639931, 50.017696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817875, 33.547543, 50.057926>,  <31.180910, 33.393562, 50.124973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817875, 33.547543, 50.057926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329310, -0.405003, 0.852952,
		0.260456, 0.829329, 0.494344,
		-0.907589, 0.384949, -0.167621,
		30.545599, 33.663029, 50.007641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935759, 33.894108, 50.730568>,  <31.180910, 33.393562, 50.124973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935759, 33.894108, 50.730568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618954, 33.753658, 50.530796>,  <30.428871, 33.669388, 50.410934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618954, 33.753658, 50.530796>,  <30.935759, 33.894108, 50.730568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618954, 33.753658, 50.530796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346455, -0.415068, 0.841242,
		-0.502677, 0.839303, 0.207091,
		-0.792013, -0.351125, -0.499425,
		30.381350, 33.648319, 50.380970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415827, 33.934631, 51.154804>,  <30.935759, 33.894108, 50.730568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415827, 33.934631, 51.154804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250883, 33.680653, 50.893482>,  <30.151917, 33.528267, 50.736691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250883, 33.680653, 50.893482>,  <30.415827, 33.934631, 51.154804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250883, 33.680653, 50.893482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572183, -0.377517, 0.728071,
		-0.708918, 0.674035, -0.207632,
		-0.412361, -0.634946, -0.653300,
		30.127174, 33.490170, 50.697491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617062, 34.019161, 51.192455>,  <30.415827, 33.934631, 51.154804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617062, 34.019161, 51.192455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682833, 33.646843, 51.061863>,  <29.722296, 33.423454, 50.983509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682833, 33.646843, 51.061863>,  <29.617062, 34.019161, 51.192455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682833, 33.646843, 51.061863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597052, -0.357383, 0.718197,
		-0.785171, 0.076834, -0.614495,
		0.164428, -0.930792, -0.326480,
		29.732161, 33.367607, 50.963921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921036, 33.605228, 51.118732>,  <29.617062, 34.019161, 51.192455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921036, 33.605228, 51.118732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216152, 33.336994, 51.149677>,  <29.393221, 33.176052, 51.168243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.216152, 33.336994, 51.149677>,  <28.921036, 33.605228, 51.118732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216152, 33.336994, 51.149677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582981, -0.575210, 0.573818,
		-0.340294, -0.468456, -0.815321,
		0.737789, -0.670584, 0.077361,
		29.437489, 33.135818, 51.172886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666813, 33.031471, 50.862228>,  <28.921036, 33.605228, 51.118732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666813, 33.031471, 50.862228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954981, 32.934921, 51.122299>,  <29.127882, 32.876991, 51.278343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954981, 32.934921, 51.122299>,  <28.666813, 33.031471, 50.862228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954981, 32.934921, 51.122299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641776, -0.587394, 0.493043,
		0.262905, -0.772468, -0.578078,
		0.720420, -0.241373, 0.650180,
		29.171106, 32.862511, 51.317352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847530, 32.330402, 50.867851>,  <28.666813, 33.031471, 50.862228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847530, 32.330402, 50.867851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888800, 32.487656, 51.233322>,  <28.913561, 32.582008, 51.452602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888800, 32.487656, 51.233322>,  <28.847530, 32.330402, 50.867851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888800, 32.487656, 51.233322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659015, -0.661011, 0.358837,
		0.745020, -0.639147, 0.190884,
		0.103173, 0.393136, 0.913674,
		28.919752, 32.605595, 51.507423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589857, 31.672962, 51.028179>,  <28.847530, 32.330402, 50.867851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589857, 31.672962, 51.028179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638926, 31.940405, 51.321548>,  <28.668367, 32.100872, 51.497570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638926, 31.940405, 51.321548>,  <28.589857, 31.672962, 51.028179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638926, 31.940405, 51.321548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548545, -0.570188, 0.611543,
		0.827074, -0.477337, 0.296815,
		0.122672, 0.668607, 0.733428,
		28.675728, 32.140987, 51.541576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.027603, 31.370413, 51.490829>,  <28.589857, 31.672962, 51.028179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.027603, 31.370413, 51.490829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756451, 31.634651, 51.619881>,  <28.593760, 31.793194, 51.697311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756451, 31.634651, 51.619881>,  <29.027603, 31.370413, 51.490829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756451, 31.634651, 51.619881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384036, -0.692400, 0.610819,
		0.626894, 0.290160, 0.723057,
		-0.677879, 0.660598, 0.322629,
		28.553087, 31.832830, 51.716671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956367, 31.275936, 52.278896>,  <29.027603, 31.370413, 51.490829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956367, 31.275936, 52.278896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637947, 31.418901, 52.083527>,  <28.446894, 31.504681, 51.966305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.637947, 31.418901, 52.083527>,  <28.956367, 31.275936, 52.278896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637947, 31.418901, 52.083527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562837, -0.733883, 0.380303,
		-0.222520, 0.577643, 0.785375,
		-0.796053, 0.357413, -0.488422,
		28.399132, 31.526125, 51.937000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596041, 31.507805, 52.597134>,  <28.956367, 31.275936, 52.278896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596041, 31.507805, 52.597134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689816, 31.392746, 52.968575>,  <29.746080, 31.323711, 53.191437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689816, 31.392746, 52.968575>,  <29.596041, 31.507805, 52.597134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689816, 31.392746, 52.968575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604953, -0.704562, -0.370977,
		0.760967, 0.648731, 0.008837,
		0.234438, -0.287647, 0.928600,
		29.760147, 31.306452, 53.247154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241322, 31.748878, 52.694973>,  <29.596041, 31.507805, 52.597134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241322, 31.748878, 52.694973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159004, 31.434931, 52.928772>,  <30.109613, 31.246563, 53.069050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159004, 31.434931, 52.928772>,  <30.241322, 31.748878, 52.694973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159004, 31.434931, 52.928772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713013, -0.529352, -0.459782,
		0.670271, 0.322132, 0.668557,
		-0.205791, -0.784868, 0.584493,
		30.097267, 31.199471, 53.104118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749765, 31.514313, 53.169239>,  <30.241322, 31.748878, 52.694973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749765, 31.514313, 53.169239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537849, 31.195583, 53.053036>,  <30.410700, 31.004347, 52.983315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537849, 31.195583, 53.053036>,  <30.749765, 31.514313, 53.169239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537849, 31.195583, 53.053036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674044, -0.187678, -0.714452,
		0.514768, -0.574327, 0.636523,
		-0.529791, -0.796822, -0.290511,
		30.378912, 30.956537, 52.965881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178406, 30.945557, 53.034431>,  <30.749765, 31.514313, 53.169239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178406, 30.945557, 53.034431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852571, 30.859375, 52.819016>,  <30.657070, 30.807667, 52.689766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852571, 30.859375, 52.819016>,  <31.178406, 30.945557, 53.034431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852571, 30.859375, 52.819016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579211, -0.351862, -0.735329,
		-0.031064, -0.910919, 0.411414,
		-0.814586, -0.215453, -0.538544,
		30.608196, 30.794739, 52.657452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286018, 30.311174, 52.783340>,  <31.178406, 30.945557, 53.034431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286018, 30.311174, 52.783340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025787, 30.485878, 52.534828>,  <30.869648, 30.590700, 52.385719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025787, 30.485878, 52.534828>,  <31.286018, 30.311174, 52.783340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025787, 30.485878, 52.534828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530183, -0.324521, -0.783321,
		-0.543741, -0.839004, -0.020436,
		-0.650578, 0.436759, -0.621281,
		30.830614, 30.616905, 52.348442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307173, 29.859718, 52.227478>,  <31.286018, 30.311174, 52.783340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307173, 29.859718, 52.227478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201849, 30.214870, 52.076569>,  <31.138655, 30.427961, 51.986023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201849, 30.214870, 52.076569>,  <31.307173, 29.859718, 52.227478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201849, 30.214870, 52.076569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494435, -0.211598, -0.843066,
		-0.828373, -0.408524, -0.383284,
		-0.263311, 0.887882, -0.377271,
		31.122856, 30.481236, 51.963387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135126, 29.777765, 51.522907>,  <31.307173, 29.859718, 52.227478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135126, 29.777765, 51.522907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236464, 30.164665, 51.516693>,  <31.297266, 30.396805, 51.512966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236464, 30.164665, 51.516693>,  <31.135126, 29.777765, 51.522907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236464, 30.164665, 51.516693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369455, -0.111582, -0.922525,
		-0.894048, 0.227975, -0.385625,
		0.253341, 0.967252, -0.015533,
		31.312466, 30.454842, 51.512032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087908, 29.935368, 50.863777>,  <31.135126, 29.777765, 51.522907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087908, 29.935368, 50.863777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280363, 30.263067, 50.988575>,  <31.395836, 30.459686, 51.063454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280363, 30.263067, 50.988575>,  <31.087908, 29.935368, 50.863777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280363, 30.263067, 50.988575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355124, 0.143238, -0.923780,
		-0.801493, 0.555264, -0.222017,
		0.481140, 0.819247, 0.311992,
		31.424706, 30.508841, 51.082172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973356, 30.438543, 50.330826>,  <31.087908, 29.935368, 50.863777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973356, 30.438543, 50.330826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278263, 30.615780, 50.519558>,  <31.461206, 30.722122, 50.632797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278263, 30.615780, 50.519558>,  <30.973356, 30.438543, 50.330826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278263, 30.615780, 50.519558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455462, 0.150749, -0.877399,
		-0.459895, 0.883711, -0.086900,
		0.762267, 0.443090, 0.471826,
		31.506943, 30.748707, 50.661106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980127, 30.944872, 49.901142>,  <30.973356, 30.438543, 50.330826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980127, 30.944872, 49.901142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321693, 30.874006, 50.096874>,  <31.526632, 30.831488, 50.214314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321693, 30.874006, 50.096874>,  <30.980127, 30.944872, 49.901142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321693, 30.874006, 50.096874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517995, 0.198848, -0.831950,
		0.050090, 0.963884, 0.261569,
		0.853916, -0.177164, 0.489327,
		31.577868, 30.820858, 50.243671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462971, 31.512514, 49.802246>,  <30.980127, 30.944872, 49.901142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462971, 31.512514, 49.802246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699421, 31.208441, 49.910088>,  <31.841291, 31.025997, 49.974792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699421, 31.208441, 49.910088>,  <31.462971, 31.512514, 49.802246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699421, 31.208441, 49.910088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571635, 0.159024, -0.804950,
		0.569037, 0.629945, 0.528551,
		0.591126, -0.760185, 0.269608,
		31.876759, 30.980385, 49.990971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102966, 31.833385, 49.806938>,  <31.462971, 31.512514, 49.802246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102966, 31.833385, 49.806938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175896, 31.440197, 49.797745>,  <32.219654, 31.204285, 49.792229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175896, 31.440197, 49.797745>,  <32.102966, 31.833385, 49.806938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175896, 31.440197, 49.797745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633282, 0.135281, -0.762006,
		0.752138, 0.124376, 0.647162,
		0.182324, -0.982970, -0.022985,
		32.230595, 31.145306, 49.790848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789745, 31.748558, 49.961529>,  <32.102966, 31.833385, 49.806938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789745, 31.748558, 49.961529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701420, 31.407949, 49.771305>,  <32.648426, 31.203585, 49.657173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701420, 31.407949, 49.771305>,  <32.789745, 31.748558, 49.961529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701420, 31.407949, 49.771305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625842, 0.250263, -0.738708,
		0.748040, -0.460737, 0.477657,
		-0.220811, -0.851522, -0.475556,
		32.635178, 31.152493, 49.628639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391556, 31.538548, 49.556118>,  <32.789745, 31.748558, 49.961529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391556, 31.538548, 49.556118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103096, 31.317539, 49.388947>,  <32.930019, 31.184935, 49.288643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103096, 31.317539, 49.388947>,  <33.391556, 31.538548, 49.556118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103096, 31.317539, 49.388947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436656, 0.105828, -0.893383,
		0.537841, -0.826754, 0.164944,
		-0.721151, -0.552521, -0.417925,
		32.886749, 31.151783, 49.263569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762657, 31.137388, 49.095688>,  <33.391556, 31.538548, 49.556118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762657, 31.137388, 49.095688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393780, 31.134838, 48.941021>,  <33.172451, 31.133308, 48.848221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393780, 31.134838, 48.941021>,  <33.762657, 31.137388, 49.095688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393780, 31.134838, 48.941021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383067, 0.122097, -0.915616,
		0.053049, -0.992498, -0.110155,
		-0.922196, -0.006376, -0.386670,
		33.117123, 31.132925, 48.825020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790813, 30.820444, 48.467381>,  <33.762657, 31.137388, 49.095688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790813, 30.820444, 48.467381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436836, 30.999762, 48.416939>,  <33.224449, 31.107351, 48.386673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.436836, 30.999762, 48.416939>,  <33.790813, 30.820444, 48.467381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436836, 30.999762, 48.416939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189920, 0.100177, -0.976676,
		-0.425204, -0.888256, -0.173791,
		-0.884948, 0.448292, -0.126102,
		33.171352, 31.134249, 48.379108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267998, 30.360054, 47.952656>,  <33.790813, 30.820444, 48.467381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267998, 30.360054, 47.952656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173164, 30.748611, 47.958054>,  <33.116264, 30.981747, 47.961292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173164, 30.748611, 47.958054>,  <33.267998, 30.360054, 47.952656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173164, 30.748611, 47.958054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128110, 0.045033, -0.990737,
		-0.963005, -0.233159, -0.135122,
		-0.237084, 0.971395, 0.013497,
		33.102039, 31.040030, 47.962101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676811, 30.488111, 47.482464>,  <33.267998, 30.360054, 47.952656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676811, 30.488111, 47.482464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857403, 30.842445, 47.525284>,  <32.965759, 31.055046, 47.550976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857403, 30.842445, 47.525284>,  <32.676811, 30.488111, 47.482464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857403, 30.842445, 47.525284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043692, 0.097880, -0.994239,
		-0.891210, 0.453558, 0.005487,
		0.451482, 0.885835, 0.107049,
		32.992847, 31.108196, 47.557400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455776, 30.822855, 46.896580>,  <32.676811, 30.488111, 47.482464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455776, 30.822855, 46.896580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738705, 31.075787, 47.022984>,  <32.908463, 31.227545, 47.098824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738705, 31.075787, 47.022984>,  <32.455776, 30.822855, 46.896580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738705, 31.075787, 47.022984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093794, 0.359133, -0.928561,
		-0.700645, 0.686428, 0.194712,
		0.707318, 0.632330, 0.316007,
		32.950901, 31.265486, 47.117786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221825, 31.518055, 46.817589>,  <32.455776, 30.822855, 46.896580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221825, 31.518055, 46.817589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621567, 31.520857, 46.803471>,  <32.861412, 31.522537, 46.795002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621567, 31.520857, 46.803471>,  <32.221825, 31.518055, 46.817589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621567, 31.520857, 46.803471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034622, 0.454294, -0.890179,
		0.009799, 0.890824, 0.454242,
		0.999352, 0.007004, -0.035294,
		32.921371, 31.522959, 46.792881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455936, 32.127117, 46.548634>,  <32.221825, 31.518055, 46.817589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455936, 32.127117, 46.548634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783154, 31.900639, 46.508183>,  <32.979485, 31.764750, 46.483913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783154, 31.900639, 46.508183>,  <32.455936, 32.127117, 46.548634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783154, 31.900639, 46.508183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145168, 0.373382, -0.916249,
		0.556539, 0.734849, 0.387635,
		0.818041, -0.566201, -0.101125,
		33.028564, 31.730778, 46.477844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008526, 32.644196, 46.309978>,  <32.455936, 32.127117, 46.548634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008526, 32.644196, 46.309978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109196, 32.267456, 46.220917>,  <33.169598, 32.041412, 46.167480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109196, 32.267456, 46.220917>,  <33.008526, 32.644196, 46.309978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109196, 32.267456, 46.220917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198878, 0.275480, -0.940510,
		0.947157, 0.192423, 0.256645,
		0.251676, -0.941851, -0.222655,
		33.184700, 31.984901, 46.154121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668468, 32.726570, 45.942429>,  <33.008526, 32.644196, 46.309978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668468, 32.726570, 45.942429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534756, 32.356266, 45.871750>,  <33.454529, 32.134083, 45.829342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534756, 32.356266, 45.871750>,  <33.668468, 32.726570, 45.942429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534756, 32.356266, 45.871750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267718, 0.086488, -0.959608,
		0.903649, -0.368087, 0.218931,
		-0.334284, -0.925760, -0.176698,
		33.434471, 32.078537, 45.818741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084923, 32.549271, 45.272285>,  <33.668468, 32.726570, 45.942429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084923, 32.549271, 45.272285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807056, 32.263702, 45.307503>,  <33.640335, 32.092361, 45.328632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807056, 32.263702, 45.307503>,  <34.084923, 32.549271, 45.272285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807056, 32.263702, 45.307503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045801, -0.166045, -0.985054,
		0.717872, -0.680252, 0.148045,
		-0.694667, -0.713923, 0.088043,
		33.598656, 32.049526, 45.333916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369736, 31.868200, 44.976234>,  <34.084923, 32.549271, 45.272285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369736, 31.868200, 44.976234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969887, 31.872280, 44.986393>,  <33.729977, 31.874729, 44.992489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969887, 31.872280, 44.986393>,  <34.369736, 31.868200, 44.976234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969887, 31.872280, 44.986393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026216, -0.090897, -0.995515,
		-0.007846, -0.995808, 0.091130,
		-0.999626, 0.010200, 0.025393,
		33.669998, 31.875341, 44.994011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133911, 31.253141, 44.515686>,  <34.369736, 31.868200, 44.976234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133911, 31.253141, 44.515686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831020, 31.514378, 44.519463>,  <33.649288, 31.671120, 44.521729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831020, 31.514378, 44.519463>,  <34.133911, 31.253141, 44.515686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831020, 31.514378, 44.519463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084000, -0.083037, -0.993000,
		-0.647734, -0.752714, 0.117737,
		-0.757222, 0.653089, 0.009442,
		33.603855, 31.710304, 44.522297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706978, 31.014536, 43.944588>,  <34.133911, 31.253141, 44.515686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706978, 31.014536, 43.944588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598843, 31.392502, 44.018402>,  <33.533962, 31.619282, 44.062691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598843, 31.392502, 44.018402>,  <33.706978, 31.014536, 43.944588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598843, 31.392502, 44.018402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068863, 0.172209, -0.982650,
		-0.960299, -0.278358, 0.018514,
		-0.270340, 0.944913, 0.184541,
		33.517742, 31.675976, 44.073765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139908, 31.161297, 43.521122>,  <33.706978, 31.014536, 43.944588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139908, 31.161297, 43.521122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262154, 31.530638, 43.614090>,  <33.335503, 31.752243, 43.669872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262154, 31.530638, 43.614090>,  <33.139908, 31.161297, 43.521122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262154, 31.530638, 43.614090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223921, 0.306950, -0.925009,
		-0.925450, 0.230655, 0.300567,
		0.305617, 0.923353, 0.232419,
		33.353840, 31.807644, 43.683815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784206, 31.642254, 43.071552>,  <33.139908, 31.161297, 43.521122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784206, 31.642254, 43.071552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097481, 31.854559, 43.201115>,  <33.285446, 31.981941, 43.278851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097481, 31.854559, 43.201115>,  <32.784206, 31.642254, 43.071552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097481, 31.854559, 43.201115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059185, 0.454927, -0.888560,
		-0.618969, 0.715075, 0.324877,
		0.783182, 0.530763, 0.323907,
		33.332436, 32.013786, 43.298286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620289, 32.288177, 42.877693>,  <32.784206, 31.642254, 43.071552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620289, 32.288177, 42.877693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016148, 32.274029, 42.933323>,  <33.253662, 32.265541, 42.966702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016148, 32.274029, 42.933323>,  <32.620289, 32.288177, 42.877693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016148, 32.274029, 42.933323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142730, 0.342697, -0.928540,
		-0.014819, 0.938780, 0.344198,
		0.989651, -0.035368, 0.139071,
		33.313042, 32.263420, 42.975044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916832, 32.989151, 42.751678>,  <32.620289, 32.288177, 42.877693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916832, 32.989151, 42.751678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215385, 32.729019, 42.695133>,  <33.394516, 32.572941, 42.661205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215385, 32.729019, 42.695133>,  <32.916832, 32.989151, 42.751678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215385, 32.729019, 42.695133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124918, 0.345530, -0.930056,
		0.653687, 0.676521, 0.339136,
		0.746384, -0.650330, -0.141359,
		33.439301, 32.533920, 42.652725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401157, 33.380203, 42.434673>,  <32.916832, 32.989151, 42.751678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401157, 33.380203, 42.434673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511417, 33.007301, 42.340939>,  <33.577572, 32.783558, 42.284698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511417, 33.007301, 42.340939>,  <33.401157, 33.380203, 42.434673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511417, 33.007301, 42.340939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152156, 0.283022, -0.946967,
		0.949139, 0.225376, 0.219864,
		0.275650, -0.932257, -0.234335,
		33.594112, 32.727623, 42.270638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089878, 33.426804, 42.043232>,  <33.401157, 33.380203, 42.434673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089878, 33.426804, 42.043232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929245, 33.074474, 41.942924>,  <33.832867, 32.863079, 41.882740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929245, 33.074474, 41.942924>,  <34.089878, 33.426804, 42.043232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929245, 33.074474, 41.942924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156967, 0.203569, -0.966396,
		0.902271, -0.427451, 0.056510,
		-0.401583, -0.880821, -0.250770,
		33.808769, 32.810226, 41.867695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304424, 33.421906, 41.388206>,  <34.089878, 33.426804, 42.043232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304424, 33.421906, 41.388206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065609, 33.101109, 41.395733>,  <33.922321, 32.908630, 41.400249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065609, 33.101109, 41.395733>,  <34.304424, 33.421906, 41.388206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065609, 33.101109, 41.395733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062468, -0.069860, -0.995599,
		0.799777, -0.593236, 0.091808,
		-0.597038, -0.801992, 0.018814,
		33.886497, 32.860512, 41.401379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578091, 32.822556, 41.011406>,  <34.304424, 33.421906, 41.388206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578091, 32.822556, 41.011406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190212, 32.724842, 41.012444>,  <33.957485, 32.666214, 41.013065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190212, 32.724842, 41.012444>,  <34.578091, 32.822556, 41.011406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190212, 32.724842, 41.012444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049341, -0.206242, -0.977256,
		0.239266, -0.947517, 0.212046,
		-0.969700, -0.244286, 0.002595,
		33.899303, 32.651558, 41.013222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478825, 32.124344, 40.634430>,  <34.578091, 32.822556, 41.011406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478825, 32.124344, 40.634430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119114, 32.298599, 40.618793>,  <33.903290, 32.403152, 40.609413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119114, 32.298599, 40.618793>,  <34.478825, 32.124344, 40.634430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119114, 32.298599, 40.618793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071395, 0.058026, -0.995759,
		-0.431523, -0.898249, -0.083284,
		-0.899272, 0.435639, -0.039091,
		33.849331, 32.429291, 40.607067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007244, 31.720448, 40.115395>,  <34.478825, 32.124344, 40.634430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007244, 31.720448, 40.115395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835938, 32.081425, 40.134075>,  <33.733154, 32.298012, 40.145283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835938, 32.081425, 40.134075>,  <34.007244, 31.720448, 40.115395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835938, 32.081425, 40.134075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162808, 0.127892, -0.978334,
		-0.888864, -0.411386, -0.201697,
		-0.428269, 0.902444, 0.046702,
		33.707458, 32.352158, 40.148087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523533, 31.757990, 39.595947>,  <34.007244, 31.720448, 40.115395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523533, 31.757990, 39.595947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633392, 32.134689, 39.673595>,  <33.699306, 32.360710, 39.720184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633392, 32.134689, 39.673595>,  <33.523533, 31.757990, 39.595947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633392, 32.134689, 39.673595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051181, 0.187281, -0.980972,
		-0.960183, 0.279354, 0.003236,
		0.274645, 0.941747, 0.194122,
		33.715786, 32.417213, 39.731831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031040, 32.108429, 39.235596>,  <33.523533, 31.757990, 39.595947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031040, 32.108429, 39.235596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323708, 32.370987, 39.309139>,  <33.499310, 32.528522, 39.353264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323708, 32.370987, 39.309139>,  <33.031040, 32.108429, 39.235596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323708, 32.370987, 39.309139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180042, 0.074053, -0.980868,
		-0.657452, 0.750774, -0.063997,
		0.731670, 0.656396, 0.183857,
		33.543209, 32.567905, 39.364296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888016, 32.538033, 38.706730>,  <33.031040, 32.108429, 39.235596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888016, 32.538033, 38.706730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260426, 32.581326, 38.846146>,  <33.483871, 32.607300, 38.929794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260426, 32.581326, 38.846146>,  <32.888016, 32.538033, 38.706730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260426, 32.581326, 38.846146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338053, 0.104103, -0.935352,
		-0.137519, 0.988660, 0.060334,
		0.931026, 0.108233, 0.348535,
		33.539734, 32.613796, 38.950706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124310, 33.135056, 38.368652>,  <32.888016, 32.538033, 38.706730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124310, 33.135056, 38.368652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450195, 32.938305, 38.491486>,  <33.645725, 32.820255, 38.565186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450195, 32.938305, 38.491486>,  <33.124310, 33.135056, 38.368652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450195, 32.938305, 38.491486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411413, 0.117129, -0.903892,
		0.408639, 0.862748, 0.297792,
		0.814711, -0.491881, 0.307082,
		33.694607, 32.790741, 38.583611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581120, 33.397747, 37.922379>,  <33.124310, 33.135056, 38.368652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581120, 33.397747, 37.922379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755482, 33.065395, 38.060730>,  <33.860100, 32.865986, 38.143742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755482, 33.065395, 38.060730>,  <33.581120, 33.397747, 37.922379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755482, 33.065395, 38.060730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428706, -0.146217, -0.891534,
		0.791327, 0.536903, 0.292465,
		0.435904, -0.830877, 0.345879,
		33.886253, 32.816132, 38.164494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295761, 33.495979, 37.791737>,  <33.581120, 33.397747, 37.922379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295761, 33.495979, 37.791737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201759, 33.108646, 37.825432>,  <34.145359, 32.876247, 37.845650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201759, 33.108646, 37.825432>,  <34.295761, 33.495979, 37.791737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201759, 33.108646, 37.825432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390407, -0.173405, -0.904164,
		0.890143, -0.179595, 0.418797,
		-0.235005, -0.968337, 0.084240,
		34.131256, 32.818146, 37.850704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856289, 33.202438, 37.538776>,  <34.295761, 33.495979, 37.791737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856289, 33.202438, 37.538776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576035, 32.917068, 37.534176>,  <34.407883, 32.745846, 37.531414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576035, 32.917068, 37.534176>,  <34.856289, 33.202438, 37.538776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576035, 32.917068, 37.534176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227323, -0.207908, -0.951367,
		0.676341, -0.669174, 0.307846,
		-0.700634, -0.713428, -0.011502,
		34.365845, 32.703041, 37.530724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233860, 32.597473, 37.367661>,  <34.856289, 33.202438, 37.538776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233860, 32.597473, 37.367661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862415, 32.497246, 37.258194>,  <34.639549, 32.437107, 37.192516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862415, 32.497246, 37.258194>,  <35.233860, 32.597473, 37.367661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862415, 32.497246, 37.258194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320128, -0.168122, -0.932338,
		0.187609, -0.953388, 0.236335,
		-0.928612, -0.250573, -0.273664,
		34.583832, 32.422073, 37.176094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850151, 33.060722, 37.167164>,  <35.233860, 32.597473, 37.367661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850151, 33.060722, 37.167164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026863, 33.413029, 37.235378>,  <36.132889, 33.624413, 37.276306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026863, 33.413029, 37.235378>,  <35.850151, 33.060722, 37.167164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026863, 33.413029, 37.235378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126814, -0.249491, 0.960038,
		0.888115, -0.402499, -0.221914,
		0.441780, 0.880766, 0.170534,
		36.159397, 33.677258, 37.286537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472015, 32.939342, 37.516655>,  <35.850151, 33.060722, 37.167164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472015, 32.939342, 37.516655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367565, 33.315453, 37.604004>,  <36.304893, 33.541119, 37.656414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367565, 33.315453, 37.604004>,  <36.472015, 32.939342, 37.516655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367565, 33.315453, 37.604004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083724, -0.203307, 0.975529,
		0.961666, 0.273021, -0.025635,
		-0.261128, 0.940279, 0.218372,
		36.289227, 33.597538, 37.669514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784248, 33.080723, 38.131172>,  <36.472015, 32.939342, 37.516655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784248, 33.080723, 38.131172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549294, 33.404339, 38.122837>,  <36.408321, 33.598507, 38.117836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549294, 33.404339, 38.122837>,  <36.784248, 33.080723, 38.131172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549294, 33.404339, 38.122837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060055, 0.069244, 0.995791,
		0.807074, 0.583665, -0.089260,
		-0.587388, 0.809037, -0.020833,
		36.373077, 33.647049, 38.116589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156689, 33.528999, 38.524178>,  <36.784248, 33.080723, 38.131172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156689, 33.528999, 38.524178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765102, 33.610317, 38.517323>,  <36.530151, 33.659107, 38.513210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765102, 33.610317, 38.517323>,  <37.156689, 33.528999, 38.524178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765102, 33.610317, 38.517323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022279, 0.190031, 0.981525,
		0.202796, 0.960499, -0.190563,
		-0.978967, 0.203295, -0.017139,
		36.471413, 33.671307, 38.512180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060333, 34.181072, 38.847469>,  <37.156689, 33.528999, 38.524178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060333, 34.181072, 38.847469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731632, 33.954803, 38.875023>,  <36.534412, 33.819042, 38.891556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.731632, 33.954803, 38.875023>,  <37.060333, 34.181072, 38.847469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731632, 33.954803, 38.875023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057052, 0.201938, 0.977735,
		-0.566986, 0.799523, -0.198214,
		-0.821749, -0.565671, 0.068882,
		36.485107, 33.785103, 38.895687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740520, 34.443188, 39.440147>,  <37.060333, 34.181072, 38.847469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740520, 34.443188, 39.440147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537521, 34.099686, 39.411911>,  <36.415722, 33.893585, 39.394970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537521, 34.099686, 39.411911>,  <36.740520, 34.443188, 39.440147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537521, 34.099686, 39.411911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137247, -0.000310, 0.990537,
		-0.850654, 0.512380, -0.117705,
		-0.507495, -0.858759, -0.070587,
		36.385273, 33.842056, 39.390736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254261, 34.478718, 39.961861>,  <36.740520, 34.443188, 39.440147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254261, 34.478718, 39.961861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241745, 34.087833, 39.877884>,  <36.234238, 33.853302, 39.827499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241745, 34.087833, 39.877884>,  <36.254261, 34.478718, 39.961861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241745, 34.087833, 39.877884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161977, -0.202310, 0.965833,
		-0.986299, 0.064224, -0.151956,
		-0.031288, -0.977213, -0.209941,
		36.232357, 33.794670, 39.814903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676281, 34.265030, 40.271610>,  <36.254261, 34.478718, 39.961861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676281, 34.265030, 40.271610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912533, 33.944931, 40.230110>,  <36.054283, 33.752872, 40.205208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912533, 33.944931, 40.230110>,  <35.676281, 34.265030, 40.271610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912533, 33.944931, 40.230110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027911, -0.148756, 0.988480,
		-0.806463, -0.580925, -0.110195,
		0.590625, -0.800248, -0.103753,
		36.089722, 33.704857, 40.198986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486870, 33.778263, 40.738808>,  <35.676281, 34.265030, 40.271610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486870, 33.778263, 40.738808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850677, 33.625431, 40.673344>,  <36.068962, 33.533730, 40.634068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850677, 33.625431, 40.673344>,  <35.486870, 33.778263, 40.738808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850677, 33.625431, 40.673344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046972, -0.296727, 0.953806,
		-0.412994, -0.875195, -0.251932,
		0.909522, -0.382082, -0.163656,
		36.123535, 33.510807, 40.624249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556614, 33.331646, 41.242474>,  <35.486870, 33.778263, 40.738808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556614, 33.331646, 41.242474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941753, 33.310749, 41.136494>,  <36.172836, 33.298210, 41.072906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941753, 33.310749, 41.136494>,  <35.556614, 33.331646, 41.242474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941753, 33.310749, 41.136494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235944, -0.314567, 0.919445,
		-0.131375, -0.947797, -0.290554,
		0.962845, -0.052238, -0.264953,
		36.230606, 33.295078, 41.057007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905907, 32.600323, 41.282169>,  <35.556614, 33.331646, 41.242474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905907, 32.600323, 41.282169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204716, 32.861679, 41.331211>,  <36.384003, 33.018494, 41.360638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204716, 32.861679, 41.331211>,  <35.905907, 32.600323, 41.282169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204716, 32.861679, 41.331211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160653, -0.356387, 0.920423,
		0.645091, -0.667883, -0.371200,
		0.747026, 0.653392, 0.122605,
		36.428825, 33.057697, 41.367992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248264, 32.275925, 41.830791>,  <35.905907, 32.600323, 41.282169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248264, 32.275925, 41.830791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393791, 32.648376, 41.820652>,  <36.481106, 32.871845, 41.814568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.393791, 32.648376, 41.820652>,  <36.248264, 32.275925, 41.830791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393791, 32.648376, 41.820652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029836, 0.015549, 0.999434,
		0.930993, -0.364365, -0.022124,
		0.363814, 0.931126, -0.025347,
		36.502937, 32.927715, 41.813049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879196, 32.250015, 42.229736>,  <36.248264, 32.275925, 41.830791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879196, 32.250015, 42.229736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788303, 32.638561, 42.201992>,  <36.733768, 32.871689, 42.185345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788303, 32.638561, 42.201992>,  <36.879196, 32.250015, 42.229736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788303, 32.638561, 42.201992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006497, 0.072735, 0.997330,
		0.973818, 0.226179, -0.022839,
		-0.227237, 0.971366, -0.069361,
		36.720131, 32.929970, 42.181183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258213, 32.510120, 42.721214>,  <36.879196, 32.250015, 42.229736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258213, 32.510120, 42.721214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959404, 32.773899, 42.687550>,  <36.780117, 32.932167, 42.667351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959404, 32.773899, 42.687550>,  <37.258213, 32.510120, 42.721214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959404, 32.773899, 42.687550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107909, 0.004634, 0.994150,
		0.655983, 0.751733, 0.067699,
		-0.747022, 0.659451, -0.084159,
		36.735298, 32.971733, 42.662300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429638, 32.997700, 43.222736>,  <37.258213, 32.510120, 42.721214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429638, 32.997700, 43.222736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034172, 33.036266, 43.176716>,  <36.796890, 33.059406, 43.149101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034172, 33.036266, 43.176716>,  <37.429638, 32.997700, 43.222736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034172, 33.036266, 43.176716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099214, 0.155484, 0.982843,
		0.112656, 0.983121, -0.144156,
		-0.988668, 0.096421, -0.115056,
		36.737572, 33.065193, 43.142200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183403, 33.413879, 43.764011>,  <37.429638, 32.997700, 43.222736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183403, 33.413879, 43.764011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857941, 33.229179, 43.622734>,  <36.662663, 33.118359, 43.537968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857941, 33.229179, 43.622734>,  <37.183403, 33.413879, 43.764011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857941, 33.229179, 43.622734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356092, -0.084372, 0.930634,
		-0.459523, 0.882987, -0.095777,
		-0.813657, -0.461753, -0.353195,
		36.613842, 33.090652, 43.516777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693256, 33.779602, 44.098415>,  <37.183403, 33.413879, 43.764011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693256, 33.779602, 44.098415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532772, 33.431423, 43.984325>,  <36.436481, 33.222515, 43.915871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532772, 33.431423, 43.984325>,  <36.693256, 33.779602, 44.098415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532772, 33.431423, 43.984325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432647, -0.094382, 0.896610,
		-0.807372, 0.483128, -0.338730,
		-0.401208, -0.870448, -0.285225,
		36.412411, 33.170288, 43.898758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035934, 33.866611, 44.252014>,  <36.693256, 33.779602, 44.098415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035934, 33.866611, 44.252014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112675, 33.475304, 44.220592>,  <36.158718, 33.240517, 44.201740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112675, 33.475304, 44.220592>,  <36.035934, 33.866611, 44.252014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112675, 33.475304, 44.220592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336951, -0.140837, 0.930929,
		-0.921768, -0.152133, -0.356650,
		0.191854, -0.978274, -0.078558,
		36.170231, 33.181820, 44.197025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489155, 33.516853, 44.517399>,  <36.035934, 33.866611, 44.252014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489155, 33.516853, 44.517399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735500, 33.202057, 44.532116>,  <35.883308, 33.013180, 44.540947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735500, 33.202057, 44.532116>,  <35.489155, 33.516853, 44.517399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735500, 33.202057, 44.532116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399728, -0.271885, 0.875383,
		-0.678919, -0.553821, -0.482027,
		0.615862, -0.786995, 0.036790,
		35.920258, 32.965958, 44.543152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061710, 32.982082, 44.774986>,  <35.489155, 33.516853, 44.517399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061710, 32.982082, 44.774986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448639, 32.900120, 44.834709>,  <35.680798, 32.850941, 44.870544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448639, 32.900120, 44.834709>,  <35.061710, 32.982082, 44.774986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448639, 32.900120, 44.834709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203271, -0.274818, 0.939764,
		-0.151533, -0.939408, -0.307491,
		0.967326, -0.204909, 0.149310,
		35.738838, 32.838646, 44.879501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077057, 32.291996, 45.144058>,  <35.061710, 32.982082, 44.774986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077057, 32.291996, 45.144058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437481, 32.455494, 45.202053>,  <35.653736, 32.553593, 45.236851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437481, 32.455494, 45.202053>,  <35.077057, 32.291996, 45.144058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437481, 32.455494, 45.202053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057029, -0.219745, 0.973889,
		0.429931, -0.885800, -0.174693,
		0.901059, 0.408743, 0.144992,
		35.707798, 32.578117, 45.245552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347115, 31.853792, 45.611355>,  <35.077057, 32.291996, 45.144058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347115, 31.853792, 45.611355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553745, 32.195679, 45.631767>,  <35.677723, 32.400810, 45.644016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553745, 32.195679, 45.631767>,  <35.347115, 31.853792, 45.611355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553745, 32.195679, 45.631767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217694, 0.073461, 0.973248,
		0.828103, -0.513871, 0.224015,
		0.516581, 0.854717, 0.051034,
		35.708721, 32.452095, 45.647076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775299, 31.712923, 46.192326>,  <35.347115, 31.853792, 45.611355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775299, 31.712923, 46.192326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719898, 32.102867, 46.122505>,  <35.686657, 32.336834, 46.080612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719898, 32.102867, 46.122505>,  <35.775299, 31.712923, 46.192326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719898, 32.102867, 46.122505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119149, 0.158570, 0.980132,
		0.983169, 0.156547, 0.094191,
		-0.138501, 0.974858, -0.174554,
		35.678349, 32.395325, 46.070141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204277, 32.107758, 46.650303>,  <35.775299, 31.712923, 46.192326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204277, 32.107758, 46.650303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896336, 32.335838, 46.535622>,  <35.711571, 32.472687, 46.466812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896336, 32.335838, 46.535622>,  <36.204277, 32.107758, 46.650303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896336, 32.335838, 46.535622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059795, 0.382808, 0.921891,
		0.635414, 0.726864, -0.260611,
		-0.769853, 0.570199, -0.286705,
		35.665379, 32.506897, 46.449612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307487, 32.694290, 46.986454>,  <36.204277, 32.107758, 46.650303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307487, 32.694290, 46.986454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921093, 32.705837, 46.883659>,  <35.689259, 32.712765, 46.821983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921093, 32.705837, 46.883659>,  <36.307487, 32.694290, 46.986454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921093, 32.705837, 46.883659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220592, 0.426647, 0.877104,
		0.134961, 0.903957, -0.405767,
		-0.965984, 0.028866, -0.256987,
		35.631298, 32.714497, 46.806564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090763, 33.389389, 47.195713>,  <36.307487, 32.694290, 46.986454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090763, 33.389389, 47.195713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760796, 33.167664, 47.151447>,  <35.562817, 33.034630, 47.124886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760796, 33.167664, 47.151447>,  <36.090763, 33.389389, 47.195713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760796, 33.167664, 47.151447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428300, 0.485188, 0.762333,
		-0.368877, 0.676261, -0.637652,
		-0.824918, -0.554314, -0.110668,
		35.513321, 33.001369, 47.118248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508545, 33.816013, 47.110859>,  <36.090763, 33.389389, 47.195713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508545, 33.816013, 47.110859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365879, 33.474049, 47.261543>,  <35.280281, 33.268867, 47.351955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365879, 33.474049, 47.261543>,  <35.508545, 33.816013, 47.110859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365879, 33.474049, 47.261543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466847, 0.512374, 0.720783,
		-0.809226, 0.081206, -0.581858,
		-0.356661, -0.854915, 0.376715,
		35.258881, 33.217575, 47.374557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862621, 33.942207, 47.389236>,  <35.508545, 33.816013, 47.110859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862621, 33.942207, 47.389236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927181, 33.591568, 47.570580>,  <34.965919, 33.381184, 47.679386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927181, 33.591568, 47.570580>,  <34.862621, 33.942207, 47.389236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927181, 33.591568, 47.570580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605200, 0.274942, 0.747088,
		-0.779540, -0.394951, -0.486139,
		0.161403, -0.876596, 0.453353,
		34.975601, 33.328590, 47.706585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261684, 33.753857, 47.713245>,  <34.862621, 33.942207, 47.389236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261684, 33.753857, 47.713245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518223, 33.518066, 47.909695>,  <34.672146, 33.376591, 48.027565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518223, 33.518066, 47.909695>,  <34.261684, 33.753857, 47.713245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518223, 33.518066, 47.909695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524180, 0.130792, 0.841504,
		-0.560280, -0.797128, -0.225108,
		0.641344, -0.589475, 0.491118,
		34.710625, 33.341225, 48.057030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807724, 33.413055, 48.171364>,  <34.261684, 33.753857, 47.713245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807724, 33.413055, 48.171364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177387, 33.359974, 48.314648>,  <34.399185, 33.328125, 48.400620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177387, 33.359974, 48.314648>,  <33.807724, 33.413055, 48.171364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177387, 33.359974, 48.314648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354053, 0.054517, 0.933635,
		-0.143429, -0.989655, 0.003397,
		0.924161, -0.132708, 0.358210,
		34.454636, 33.320164, 48.422112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794399, 32.810120, 48.672363>,  <33.807724, 33.413055, 48.171364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794399, 32.810120, 48.672363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107937, 33.027824, 48.791943>,  <34.296059, 33.158447, 48.863689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107937, 33.027824, 48.791943>,  <33.794399, 32.810120, 48.672363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107937, 33.027824, 48.791943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326558, -0.048172, 0.943949,
		0.528155, -0.837532, 0.139973,
		0.783844, 0.544261, 0.298945,
		34.343090, 33.191101, 48.881626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768879, 32.660988, 49.389248>,  <33.794399, 32.810120, 48.672363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768879, 32.660988, 49.389248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023220, 32.969021, 49.368599>,  <34.175823, 33.153843, 49.356209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023220, 32.969021, 49.368599>,  <33.768879, 32.660988, 49.389248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023220, 32.969021, 49.368599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044321, 0.103201, 0.993672,
		0.770540, -0.629538, 0.099751,
		0.635849, 0.770085, -0.051619,
		34.213974, 33.200047, 49.353115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327450, 32.575787, 49.948593>,  <33.768879, 32.660988, 49.389248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327450, 32.575787, 49.948593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311428, 32.965275, 49.858917>,  <34.301815, 33.198967, 49.805111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311428, 32.965275, 49.858917>,  <34.327450, 32.575787, 49.948593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311428, 32.965275, 49.858917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226681, 0.209662, 0.951135,
		0.973145, 0.088913, 0.212327,
		-0.040051, 0.973723, -0.224186,
		34.299412, 33.257393, 49.791660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731396, 32.862804, 50.416050>,  <34.327450, 32.575787, 49.948593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731396, 32.862804, 50.416050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489220, 33.146961, 50.272507>,  <34.343914, 33.317455, 50.186382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489220, 33.146961, 50.272507>,  <34.731396, 32.862804, 50.416050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489220, 33.146961, 50.272507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106557, 0.374478, 0.921093,
		0.788723, 0.595908, -0.151027,
		-0.605443, 0.710394, -0.358858,
		34.307587, 33.360081, 50.164848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879429, 33.448013, 50.848797>,  <34.731396, 32.862804, 50.416050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879429, 33.448013, 50.848797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518482, 33.560631, 50.718277>,  <34.301914, 33.628201, 50.639965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518482, 33.560631, 50.718277>,  <34.879429, 33.448013, 50.848797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518482, 33.560631, 50.718277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169880, 0.463457, 0.869683,
		0.396084, 0.840201, -0.370377,
		-0.902363, 0.281548, -0.326301,
		34.247772, 33.645096, 50.620388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812229, 34.165428, 50.841743>,  <34.879429, 33.448013, 50.848797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812229, 34.165428, 50.841743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456928, 33.988834, 50.892483>,  <34.243748, 33.882877, 50.922928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456928, 33.988834, 50.892483>,  <34.812229, 34.165428, 50.841743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456928, 33.988834, 50.892483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137342, 0.518770, 0.843810,
		-0.438337, 0.732097, -0.521435,
		-0.888255, -0.441489, 0.126848,
		34.190453, 33.856388, 50.930538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489151, 34.660259, 51.307552>,  <34.812229, 34.165428, 50.841743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489151, 34.660259, 51.307552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280266, 34.320461, 51.337639>,  <34.154934, 34.116581, 51.355690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280266, 34.320461, 51.337639>,  <34.489151, 34.660259, 51.307552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280266, 34.320461, 51.337639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252828, 0.238444, 0.937669,
		-0.814479, 0.470642, -0.339293,
		-0.522208, -0.849494, 0.075217,
		34.123604, 34.065613, 51.360203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042645, 35.028576, 51.697491>,  <34.489151, 34.660259, 51.307552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042645, 35.028576, 51.697491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326927, 35.288712, 51.590191>,  <35.497498, 35.444794, 51.525810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326927, 35.288712, 51.590191>,  <35.042645, 35.028576, 51.697491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326927, 35.288712, 51.590191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046882, -0.424242, -0.904334,
		-0.701929, 0.630137, -0.332000,
		0.710703, 0.650343, -0.268246,
		35.540138, 35.483814, 51.509716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655933, 35.629887, 51.559422>,  <35.042645, 35.028576, 51.697491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655933, 35.629887, 51.559422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845501, 35.947067, 51.712585>,  <34.959244, 36.137375, 51.804485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845501, 35.947067, 51.712585>,  <34.655933, 35.629887, 51.559422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845501, 35.947067, 51.712585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314496, 0.253742, -0.914717,
		-0.822490, 0.553928, -0.129127,
		0.473922, 0.792956, 0.382908,
		34.987679, 36.184956, 51.827457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451294, 36.272003, 51.183186>,  <34.655933, 35.629887, 51.559422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451294, 36.272003, 51.183186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812317, 36.299690, 51.353168>,  <35.028931, 36.316303, 51.455158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812317, 36.299690, 51.353168>,  <34.451294, 36.272003, 51.183186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812317, 36.299690, 51.353168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421469, 0.059710, -0.904875,
		-0.088009, 0.995813, 0.024718,
		0.902562, 0.069219, 0.424959,
		35.083084, 36.320457, 51.480656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712196, 36.676334, 50.660782>,  <34.451294, 36.272003, 51.183186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712196, 36.676334, 50.660782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016319, 36.538929, 50.881302>,  <35.198792, 36.456486, 51.013615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016319, 36.538929, 50.881302>,  <34.712196, 36.676334, 50.660782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016319, 36.538929, 50.881302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629960, 0.183012, -0.754756,
		0.158375, 0.921143, 0.355546,
		0.760308, -0.343514, 0.551299,
		35.244411, 36.435875, 51.046692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156742, 37.195316, 50.601059>,  <34.712196, 36.676334, 50.660782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156742, 37.195316, 50.601059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372826, 36.873863, 50.700939>,  <35.502476, 36.680992, 50.760868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372826, 36.873863, 50.700939>,  <35.156742, 37.195316, 50.601059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372826, 36.873863, 50.700939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631467, 0.190971, -0.751518,
		0.556255, 0.563659, 0.610630,
		0.540213, -0.803628, 0.249703,
		35.534889, 36.632774, 50.775848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719028, 37.256870, 50.264744>,  <35.156742, 37.195316, 50.601059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719028, 37.256870, 50.264744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809750, 36.883221, 50.375000>,  <35.864182, 36.659031, 50.441154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809750, 36.883221, 50.375000>,  <35.719028, 37.256870, 50.264744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809750, 36.883221, 50.375000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764143, -0.004801, -0.645030,
		0.603859, 0.356926, 0.712712,
		0.226806, -0.934120, 0.275642,
		35.877792, 36.602985, 50.457691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469582, 37.224285, 50.366322>,  <35.719028, 37.256870, 50.264744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469582, 37.224285, 50.366322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316330, 36.863636, 50.286034>,  <36.224380, 36.647247, 50.237862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316330, 36.863636, 50.286034>,  <36.469582, 37.224285, 50.366322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316330, 36.863636, 50.286034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557127, -0.052235, -0.828783,
		0.736766, -0.429354, 0.522332,
		-0.383126, -0.901624, -0.200720,
		36.201393, 36.593147, 50.225819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082348, 36.767307, 50.169121>,  <36.469582, 37.224285, 50.366322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082348, 36.767307, 50.169121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741783, 36.599899, 50.042671>,  <36.537445, 36.499454, 49.966801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741783, 36.599899, 50.042671>,  <37.082348, 36.767307, 50.169121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741783, 36.599899, 50.042671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461915, -0.312829, -0.829923,
		0.248446, -0.852631, 0.459668,
		-0.851416, -0.418518, -0.316122,
		36.486359, 36.474342, 49.947834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333172, 36.271996, 49.630127>,  <37.082348, 36.767307, 50.169121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333172, 36.271996, 49.630127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941425, 36.331963, 49.575928>,  <36.706375, 36.367943, 49.543407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941425, 36.331963, 49.575928>,  <37.333172, 36.271996, 49.630127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941425, 36.331963, 49.575928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071558, -0.369793, -0.926355,
		-0.188988, -0.916939, 0.351435,
		-0.979369, 0.149922, -0.135501,
		36.647614, 36.376938, 49.535278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973663, 35.612938, 49.371239>,  <37.333172, 36.271996, 49.630127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973663, 35.612938, 49.371239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748974, 35.911411, 49.228313>,  <36.614159, 36.090496, 49.142559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748974, 35.911411, 49.228313>,  <36.973663, 35.612938, 49.371239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748974, 35.911411, 49.228313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145349, -0.336162, -0.930521,
		-0.814457, -0.574630, 0.080372,
		-0.561723, 0.746187, -0.357312,
		36.580456, 36.135269, 49.121120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692123, 35.355419, 48.781242>,  <36.973663, 35.612938, 49.371239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692123, 35.355419, 48.781242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612076, 35.743633, 48.727562>,  <36.564045, 35.976562, 48.695354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612076, 35.743633, 48.727562>,  <36.692123, 35.355419, 48.781242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612076, 35.743633, 48.727562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058626, -0.124864, -0.990440,
		-0.978015, -0.206077, -0.031910,
		-0.200123, 0.970537, -0.134200,
		36.552040, 36.034794, 48.687302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275360, 35.453751, 48.184334>,  <36.692123, 35.355419, 48.781242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275360, 35.453751, 48.184334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415504, 35.827400, 48.211620>,  <36.499592, 36.051590, 48.227993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415504, 35.827400, 48.211620>,  <36.275360, 35.453751, 48.184334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415504, 35.827400, 48.211620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164768, 0.010228, -0.986279,
		-0.922009, 0.356793, -0.150330,
		0.350360, 0.934128, 0.068218,
		36.520611, 36.107639, 48.232086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956409, 35.936157, 47.716057>,  <36.275360, 35.453751, 48.184334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956409, 35.936157, 47.716057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326485, 36.067528, 47.792126>,  <36.548531, 36.146351, 47.837769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326485, 36.067528, 47.792126>,  <35.956409, 35.936157, 47.716057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326485, 36.067528, 47.792126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201416, -0.000209, -0.979506,
		-0.321654, 0.944530, -0.066343,
		0.925187, 0.328425, 0.190177,
		36.604042, 36.166054, 47.849178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091858, 36.499886, 47.356625>,  <35.956409, 35.936157, 47.716057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091858, 36.499886, 47.356625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436676, 36.315449, 47.440788>,  <36.643566, 36.204784, 47.491287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436676, 36.315449, 47.440788>,  <36.091858, 36.499886, 47.356625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436676, 36.315449, 47.440788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194733, -0.081968, -0.977425,
		0.467935, 0.883556, 0.019131,
		0.862042, -0.461097, 0.210413,
		36.695290, 36.177120, 47.503914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588223, 36.950165, 47.135601>,  <36.091858, 36.499886, 47.356625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588223, 36.950165, 47.135601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744331, 36.584389, 47.178490>,  <36.837997, 36.364925, 47.204224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744331, 36.584389, 47.178490>,  <36.588223, 36.950165, 47.135601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744331, 36.584389, 47.178490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299201, 0.015831, -0.954059,
		0.870729, 0.404419, 0.279779,
		0.390269, -0.914437, 0.107219,
		36.861412, 36.310059, 47.210655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215401, 37.067280, 46.902946>,  <36.588223, 36.950165, 47.135601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215401, 37.067280, 46.902946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201767, 36.668488, 46.875027>,  <37.193588, 36.429214, 46.858276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201767, 36.668488, 46.875027>,  <37.215401, 37.067280, 46.902946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201767, 36.668488, 46.875027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452320, 0.046889, -0.890622,
		0.891204, -0.061923, 0.449355,
		-0.034080, -0.996979, -0.069797,
		37.191544, 36.369392, 46.854088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682404, 36.958035, 46.263378>,  <37.215401, 37.067280, 46.902946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682404, 36.958035, 46.263378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504059, 36.601089, 46.291382>,  <37.397053, 36.386925, 46.308186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504059, 36.601089, 46.291382>,  <37.682404, 36.958035, 46.263378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504059, 36.601089, 46.291382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258244, -0.203129, -0.944483,
		0.857038, -0.403033, 0.321014,
		-0.445865, -0.892358, 0.070008,
		37.370300, 36.333382, 46.312386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880070, 36.571037, 45.709465>,  <37.682404, 36.958035, 46.263378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880070, 36.571037, 45.709465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597591, 36.315708, 45.831993>,  <37.428104, 36.162510, 45.905510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597591, 36.315708, 45.831993>,  <37.880070, 36.571037, 45.709465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597591, 36.315708, 45.831993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059455, -0.377651, -0.924037,
		0.705513, -0.670766, 0.228746,
		-0.706199, -0.638320, 0.306318,
		37.385731, 36.124210, 45.923889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008732, 35.891987, 45.438438>,  <37.880070, 36.571037, 45.709465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008732, 35.891987, 45.438438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617447, 35.920921, 45.516277>,  <37.382675, 35.938282, 45.562981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617447, 35.920921, 45.516277>,  <38.008732, 35.891987, 45.438438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617447, 35.920921, 45.516277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207604, -0.342582, -0.916263,
		0.000386, -0.936699, 0.350135,
		-0.978213, 0.072336, 0.194595,
		37.323982, 35.942623, 45.574657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646393, 35.219543, 45.353794>,  <38.008732, 35.891987, 45.438438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646393, 35.219543, 45.353794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409641, 35.531704, 45.273144>,  <37.267590, 35.718998, 45.224754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409641, 35.531704, 45.273144>,  <37.646393, 35.219543, 45.353794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409641, 35.531704, 45.273144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221670, -0.398110, -0.890152,
		-0.774944, -0.482169, 0.408625,
		-0.591881, 0.780399, -0.201630,
		37.232079, 35.765823, 45.212654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039783, 34.870106, 44.973225>,  <37.646393, 35.219543, 45.353794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039783, 34.870106, 44.973225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010204, 35.260735, 44.892395>,  <36.992458, 35.495113, 44.843895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010204, 35.260735, 44.892395>,  <37.039783, 34.870106, 44.973225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010204, 35.260735, 44.892395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066858, -0.207032, -0.976047,
		-0.995018, -0.058666, 0.080601,
		-0.073948, 0.976574, -0.202078,
		36.988022, 35.553707, 44.831772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488731, 34.971718, 44.429615>,  <37.039783, 34.870106, 44.973225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488731, 34.971718, 44.429615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733448, 35.287792, 44.415073>,  <36.880276, 35.477436, 44.406349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733448, 35.287792, 44.415073>,  <36.488731, 34.971718, 44.429615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733448, 35.287792, 44.415073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117678, -0.136362, -0.983645,
		-0.782219, 0.597505, -0.176412,
		0.611789, 0.790186, -0.036352,
		36.916985, 35.524849, 44.404167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246468, 35.207314, 43.775314>,  <36.488731, 34.971718, 44.429615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246468, 35.207314, 43.775314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563641, 35.437763, 43.854645>,  <36.753944, 35.576035, 43.902245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563641, 35.437763, 43.854645>,  <36.246468, 35.207314, 43.775314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563641, 35.437763, 43.854645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269398, -0.039540, -0.962217,
		-0.546518, 0.816403, -0.186560,
		0.792933, 0.576127, 0.198328,
		36.801521, 35.610603, 43.914143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258076, 35.722763, 43.280315>,  <36.246468, 35.207314, 43.775314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258076, 35.722763, 43.280315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637188, 35.720814, 43.407867>,  <36.864655, 35.719646, 43.484398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637188, 35.720814, 43.407867>,  <36.258076, 35.722763, 43.280315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637188, 35.720814, 43.407867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315165, -0.138672, -0.938851,
		0.048792, 0.990326, -0.129895,
		0.947782, -0.004870, 0.318882,
		36.921524, 35.719353, 43.503532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515373, 36.222397, 42.932892>,  <36.258076, 35.722763, 43.280315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515373, 36.222397, 42.932892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802799, 35.972149, 43.054390>,  <36.975254, 35.822002, 43.127289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802799, 35.972149, 43.054390>,  <36.515373, 36.222397, 42.932892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802799, 35.972149, 43.054390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328386, -0.079771, -0.941169,
		0.613042, 0.776040, 0.148123,
		0.718569, -0.625618, 0.303744,
		37.018372, 35.784462, 43.145512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087589, 36.540184, 42.563992>,  <36.515373, 36.222397, 42.932892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087589, 36.540184, 42.563992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159023, 36.156197, 42.650303>,  <37.201885, 35.925804, 42.702091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159023, 36.156197, 42.650303>,  <37.087589, 36.540184, 42.563992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159023, 36.156197, 42.650303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419907, -0.123968, -0.899061,
		0.889823, 0.251169, 0.380959,
		0.178589, -0.959972, 0.215777,
		37.212601, 35.868206, 42.715034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734291, 36.385181, 42.295956>,  <37.087589, 36.540184, 42.563992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734291, 36.385181, 42.295956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590687, 36.018013, 42.363514>,  <37.504524, 35.797710, 42.404049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590687, 36.018013, 42.363514>,  <37.734291, 36.385181, 42.295956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590687, 36.018013, 42.363514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442294, -0.326676, -0.835260,
		0.821879, -0.225169, 0.523273,
		-0.359015, -0.917923, 0.168897,
		37.482983, 35.742638, 42.414185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230083, 35.921368, 42.458019>,  <37.734291, 36.385181, 42.295956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230083, 35.921368, 42.458019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935921, 35.698162, 42.304241>,  <37.759422, 35.564240, 42.211975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935921, 35.698162, 42.304241>,  <38.230083, 35.921368, 42.458019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935921, 35.698162, 42.304241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639527, -0.383973, -0.666010,
		0.224026, -0.735652, 0.639240,
		-0.735403, -0.558016, -0.384449,
		37.715302, 35.530758, 42.188908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570511, 35.374615, 42.200607>,  <38.230083, 35.921368, 42.458019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570511, 35.374615, 42.200607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215000, 35.351757, 42.018703>,  <38.001694, 35.338043, 41.909561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215000, 35.351757, 42.018703>,  <38.570511, 35.374615, 42.200607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215000, 35.351757, 42.018703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452741, -0.263974, -0.851671,
		-0.071379, -0.962836, 0.260485,
		-0.888780, -0.057141, -0.454757,
		37.948364, 35.334614, 41.882275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585331, 34.748688, 41.887531>,  <38.570511, 35.374615, 42.200607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585331, 34.748688, 41.887531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295807, 34.961517, 41.711803>,  <38.122093, 35.089214, 41.606369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295807, 34.961517, 41.711803>,  <38.585331, 34.748688, 41.887531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295807, 34.961517, 41.711803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333113, -0.288121, -0.897788,
		-0.604261, -0.796171, 0.031306,
		-0.723813, 0.532070, -0.439315,
		38.078663, 35.121140, 41.580009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522556, 34.386181, 41.259701>,  <38.585331, 34.748688, 41.887531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522556, 34.386181, 41.259701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333942, 34.732483, 41.192623>,  <38.220776, 34.940266, 41.152378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333942, 34.732483, 41.192623>,  <38.522556, 34.386181, 41.259701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333942, 34.732483, 41.192623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401658, 0.041560, -0.914846,
		-0.785067, -0.498733, -0.367336,
		-0.471530, 0.865759, -0.167692,
		38.192482, 34.992210, 41.142315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997280, 34.325245, 40.574741>,  <38.522556, 34.386181, 41.259701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997280, 34.325245, 40.574741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138405, 34.691177, 40.653332>,  <38.223080, 34.910736, 40.700485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138405, 34.691177, 40.653332>,  <37.997280, 34.325245, 40.574741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138405, 34.691177, 40.653332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327516, 0.075961, -0.941787,
		-0.876504, 0.396621, -0.272823,
		0.352808, 0.914834, 0.196480,
		38.244247, 34.965630, 40.712276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836308, 34.728451, 39.987923>,  <37.997280, 34.325245, 40.574741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836308, 34.728451, 39.987923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108032, 34.956024, 40.173328>,  <38.271069, 35.092567, 40.284573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108032, 34.956024, 40.173328>,  <37.836308, 34.728451, 39.987923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108032, 34.956024, 40.173328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342440, 0.312887, -0.885910,
		-0.649051, 0.760539, 0.017724,
		0.679315, 0.568931, 0.463518,
		38.311825, 35.126705, 40.312386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001945, 35.200848, 39.467567>,  <37.836308, 34.728451, 39.987923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001945, 35.200848, 39.467567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294003, 35.229000, 39.739429>,  <38.469238, 35.245892, 39.902546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.294003, 35.229000, 39.739429>,  <38.001945, 35.200848, 39.467567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294003, 35.229000, 39.739429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644916, 0.257675, -0.719505,
		-0.225768, 0.963665, 0.142752,
		0.730145, 0.070378, 0.679658,
		38.513046, 35.250114, 39.943325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367950, 35.727020, 39.234154>,  <38.001945, 35.200848, 39.467567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367950, 35.727020, 39.234154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618320, 35.546516, 39.488579>,  <38.768543, 35.438213, 39.641235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618320, 35.546516, 39.488579>,  <38.367950, 35.727020, 39.234154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618320, 35.546516, 39.488579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766467, 0.205334, -0.608577,
		0.144019, 0.868449, 0.474399,
		0.625929, -0.451258, 0.636066,
		38.806099, 35.411140, 39.679398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847084, 36.248283, 39.226471>,  <38.367950, 35.727020, 39.234154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847084, 36.248283, 39.226471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006008, 35.906658, 39.360764>,  <39.101360, 35.701683, 39.441338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006008, 35.906658, 39.360764>,  <38.847084, 36.248283, 39.226471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006008, 35.906658, 39.360764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746634, 0.088131, -0.659371,
		0.533559, 0.512642, 0.672691,
		0.397306, -0.854068, 0.335733,
		39.125198, 35.650436, 39.461483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508335, 36.333546, 39.401798>,  <38.847084, 36.248283, 39.226471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508335, 36.333546, 39.401798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488319, 35.940510, 39.330223>,  <39.476311, 35.704689, 39.287277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488319, 35.940510, 39.330223>,  <39.508335, 36.333546, 39.401798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488319, 35.940510, 39.330223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681030, 0.097482, -0.725738,
		0.730544, -0.158175, 0.664294,
		-0.050037, -0.982587, -0.178936,
		39.473309, 35.645733, 39.276543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191196, 36.066631, 39.344601>,  <39.508335, 36.333546, 39.401798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.191196, 36.066631, 39.344601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966423, 35.801292, 39.146935>,  <39.831558, 35.642090, 39.028336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966423, 35.801292, 39.146935>,  <40.191196, 36.066631, 39.344601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966423, 35.801292, 39.146935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634544, 0.037554, -0.771973,
		0.530648, -0.747365, 0.399823,
		-0.561931, -0.663351, -0.494164,
		39.797844, 35.602287, 38.998684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712444, 35.518959, 38.948364>,  <40.191196, 36.066631, 39.344601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712444, 35.518959, 38.948364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356915, 35.492184, 38.767033>,  <40.143597, 35.476120, 38.658234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356915, 35.492184, 38.767033>,  <40.712444, 35.518959, 38.948364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356915, 35.492184, 38.767033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457838, -0.171414, -0.872354,
		-0.019317, -0.982923, 0.183002,
		-0.888826, -0.066934, -0.453331,
		40.090267, 35.472103, 38.631035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903816, 35.212223, 38.347778>,  <40.712444, 35.518959, 38.948364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903816, 35.212223, 38.347778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519787, 35.270447, 38.252228>,  <40.289368, 35.305382, 38.194897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519787, 35.270447, 38.252228>,  <40.903816, 35.212223, 38.347778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519787, 35.270447, 38.252228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252430, 0.082854, -0.964061,
		-0.120541, -0.985873, -0.116291,
		-0.960078, 0.145565, -0.238876,
		40.231762, 35.314117, 38.180565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573765, 34.866859, 37.784840>,  <40.903816, 35.212223, 38.347778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573765, 34.866859, 37.784840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599682, 35.064598, 37.438103>,  <40.615231, 35.183243, 37.230061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599682, 35.064598, 37.438103>,  <40.573765, 34.866859, 37.784840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599682, 35.064598, 37.438103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915201, -0.375684, -0.145840,
		-0.397756, -0.783890, -0.476767,
		0.064791, 0.494347, -0.866847,
		40.619118, 35.212902, 37.178047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873447, 34.357254, 37.277367>,  <40.573765, 34.866859, 37.784840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873447, 34.357254, 37.277367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941483, 34.727352, 37.141727>,  <40.982304, 34.949409, 37.060345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941483, 34.727352, 37.141727>,  <40.873447, 34.357254, 37.277367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941483, 34.727352, 37.141727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901449, -0.285099, -0.325742,
		-0.398069, -0.250275, -0.882555,
		0.170091, 0.925246, -0.339099,
		40.992508, 35.004925, 37.039997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092743, 34.250263, 36.600864>,  <40.873447, 34.357254, 37.277367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092743, 34.250263, 36.600864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245579, 34.593670, 36.737663>,  <41.337280, 34.799713, 36.819744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.245579, 34.593670, 36.737663>,  <41.092743, 34.250263, 36.600864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245579, 34.593670, 36.737663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923446, -0.368892, -0.105673,
		0.035440, 0.356197, -0.933739,
		0.382089, 0.858512, 0.342002,
		41.360207, 34.851223, 36.840263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615372, 34.461098, 36.154110>,  <41.092743, 34.250263, 36.600864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615372, 34.461098, 36.154110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685486, 34.676498, 36.483788>,  <41.727554, 34.805740, 36.681595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685486, 34.676498, 36.483788>,  <41.615372, 34.461098, 36.154110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685486, 34.676498, 36.483788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961140, -0.274946, -0.024772,
		0.213268, 0.796504, -0.565772,
		0.175288, 0.538503, 0.824189,
		41.738071, 34.838051, 36.731045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249928, 34.863979, 36.059631>,  <41.615372, 34.461098, 36.154110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249928, 34.863979, 36.059631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208485, 34.801704, 36.452576>,  <42.183617, 34.764339, 36.688343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208485, 34.801704, 36.452576>,  <42.249928, 34.863979, 36.059631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208485, 34.801704, 36.452576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913257, -0.406129, 0.031958,
		0.393988, 0.900456, 0.184261,
		-0.103611, -0.155687, 0.982358,
		42.177402, 34.754997, 36.747284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873470, 35.026154, 36.516087>,  <42.249928, 34.863979, 36.059631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873470, 35.026154, 36.516087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650925, 34.734547, 36.675579>,  <42.517395, 34.559582, 36.771275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.650925, 34.734547, 36.675579>,  <42.873470, 35.026154, 36.516087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650925, 34.734547, 36.675579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777215, -0.626308, -0.060620,
		0.293923, 0.276175, 0.915061,
		-0.556368, -0.729017, 0.398734,
		42.484013, 34.515842, 36.795200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198605, 34.629879, 37.142338>,  <42.873470, 35.026154, 36.516087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198605, 34.629879, 37.142338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947861, 34.375343, 36.962505>,  <42.797413, 34.222622, 36.854607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.947861, 34.375343, 36.962505>,  <43.198605, 34.629879, 37.142338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947861, 34.375343, 36.962505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663751, -0.738337, 0.119556,
		-0.408019, -0.223465, 0.885203,
		-0.626861, -0.636335, -0.449581,
		42.759804, 34.184444, 36.827633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239315, 33.968746, 37.476482>,  <43.198605, 34.629879, 37.142338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239315, 33.968746, 37.476482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088722, 33.864658, 37.120834>,  <42.998367, 33.802204, 36.907444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088722, 33.864658, 37.120834>,  <43.239315, 33.968746, 37.476482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088722, 33.864658, 37.120834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556119, -0.831067, 0.007752,
		-0.740939, -0.491541, 0.457600,
		-0.376486, -0.260223, -0.889125,
		42.975777, 33.786591, 36.854095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901299, 33.246365, 37.392502>,  <43.239315, 33.968746, 37.476482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901299, 33.246365, 37.392502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033852, 33.373100, 37.037022>,  <43.113384, 33.449142, 36.823734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033852, 33.373100, 37.037022>,  <42.901299, 33.246365, 37.392502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033852, 33.373100, 37.037022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619455, -0.783541, -0.048360,
		-0.711659, -0.534487, -0.455922,
		0.331386, 0.316839, -0.888705,
		43.133266, 33.468151, 36.770409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777153, 32.693405, 36.996738>,  <42.901299, 33.246365, 37.392502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777153, 32.693405, 36.996738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051907, 32.904076, 36.796417>,  <43.216759, 33.030479, 36.676224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051907, 32.904076, 36.796417>,  <42.777153, 32.693405, 36.996738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051907, 32.904076, 36.796417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512214, -0.839672, -0.180521,
		-0.515586, -0.132522, -0.846528,
		0.686883, 0.526677, -0.500802,
		43.257973, 33.062080, 36.646175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858421, 32.295723, 36.328300>,  <42.777153, 32.693405, 36.996738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858421, 32.295723, 36.328300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183342, 32.506489, 36.428322>,  <43.378296, 32.632950, 36.488335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.183342, 32.506489, 36.428322>,  <42.858421, 32.295723, 36.328300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.183342, 32.506489, 36.428322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583030, -0.745058, -0.323983,
		0.015589, 0.408958, -0.912420,
		0.812301, 0.526918, 0.250049,
		43.427032, 32.664566, 36.503338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160324, 32.266182, 35.712963>,  <42.858421, 32.295723, 36.328300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160324, 32.266182, 35.712963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437332, 32.316418, 35.997116>,  <43.603535, 32.346558, 36.167610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437332, 32.316418, 35.997116>,  <43.160324, 32.266182, 35.712963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437332, 32.316418, 35.997116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514221, -0.776583, -0.363999,
		0.505962, 0.617371, -0.602375,
		0.692516, 0.125585, 0.710387,
		43.645088, 32.354092, 36.210232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754715, 32.216217, 35.389465>,  <43.160324, 32.266182, 35.712963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754715, 32.216217, 35.389465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894615, 32.165169, 35.760708>,  <43.978554, 32.134541, 35.983456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894615, 32.165169, 35.760708>,  <43.754715, 32.216217, 35.389465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894615, 32.165169, 35.760708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491788, -0.818195, -0.297829,
		0.797384, 0.560599, -0.223401,
		0.349748, -0.127618, 0.928111,
		43.999538, 32.126884, 36.039143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442070, 32.106503, 35.304859>,  <43.754715, 32.216217, 35.389465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442070, 32.106503, 35.304859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363220, 31.960474, 35.668808>,  <44.315910, 31.872858, 35.887177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363220, 31.960474, 35.668808>,  <44.442070, 32.106503, 35.304859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363220, 31.960474, 35.668808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477833, -0.846161, -0.235982,
		0.856048, 0.388250, 0.341238,
		-0.197122, -0.365067, 0.909873,
		44.304085, 31.850954, 35.941769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025890, 31.769339, 35.486752>,  <44.442070, 32.106503, 35.304859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025890, 31.769339, 35.486752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773170, 31.629042, 35.763248>,  <44.621540, 31.544863, 35.929146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.773170, 31.629042, 35.763248>,  <45.025890, 31.769339, 35.486752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773170, 31.629042, 35.763248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456330, -0.889158, -0.034080,
		0.626573, 0.293901, 0.721823,
		-0.631798, -0.350743, 0.691238,
		44.583630, 31.523819, 35.970619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487358, 31.405094, 36.025616>,  <45.025890, 31.769339, 35.486752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487358, 31.405094, 36.025616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113651, 31.262918, 36.036942>,  <44.889427, 31.177612, 36.043739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113651, 31.262918, 36.036942>,  <45.487358, 31.405094, 36.025616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113651, 31.262918, 36.036942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354740, -0.934577, -0.026952,
		0.036046, -0.015135, 0.999236,
		-0.934270, -0.355440, 0.028319,
		44.833370, 31.156286, 36.045437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481220, 30.933926, 36.595070>,  <45.487358, 31.405094, 36.025616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481220, 30.933926, 36.595070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168846, 30.822050, 36.371674>,  <44.981422, 30.754925, 36.237637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.168846, 30.822050, 36.371674>,  <45.481220, 30.933926, 36.595070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168846, 30.822050, 36.371674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358718, -0.932810, -0.034449,
		-0.511333, -0.227244, 0.828793,
		-0.780935, -0.279689, -0.558493,
		44.934566, 30.738144, 36.204124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222179, 30.245256, 36.897282>,  <45.481220, 30.933926, 36.595070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222179, 30.245256, 36.897282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126522, 30.290701, 36.511555>,  <45.069130, 30.317968, 36.280117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126522, 30.290701, 36.511555>,  <45.222179, 30.245256, 36.897282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126522, 30.290701, 36.511555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354894, -0.914191, -0.195716,
		-0.903804, -0.389033, 0.178300,
		-0.239140, 0.113612, -0.964315,
		45.054779, 30.324785, 36.222260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957516, 29.593399, 36.764271>,  <45.222179, 30.245256, 36.897282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957516, 29.593399, 36.764271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036427, 29.757046, 36.407909>,  <45.083771, 29.855234, 36.194092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036427, 29.757046, 36.407909>,  <44.957516, 29.593399, 36.764271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036427, 29.757046, 36.407909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330845, -0.883229, -0.332335,
		-0.922835, -0.229190, -0.309593,
		0.197274, 0.409118, -0.890901,
		45.095608, 29.879782, 36.140640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.884182, 29.052948, 36.478951>,  <44.957516, 29.593399, 36.764271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.884182, 29.052948, 36.478951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071964, 29.274254, 36.203701>,  <45.184635, 29.407038, 36.038551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071964, 29.274254, 36.203701>,  <44.884182, 29.052948, 36.478951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071964, 29.274254, 36.203701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431112, -0.823754, -0.368199,
		-0.770554, -0.123805, -0.625235,
		0.469455, 0.553264, -0.688121,
		45.212799, 29.440233, 35.997265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.862164, 28.561310, 35.920422>,  <44.884182, 29.052948, 36.478951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.862164, 28.561310, 35.920422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129120, 28.838589, 35.811558>,  <45.289291, 29.004957, 35.746239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129120, 28.838589, 35.811558>,  <44.862164, 28.561310, 35.920422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129120, 28.838589, 35.811558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526824, -0.697767, -0.485363,
		-0.526354, 0.180547, -0.830875,
		0.667388, 0.693198, -0.272156,
		45.329338, 29.046549, 35.729912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981327, 28.433088, 35.218021>,  <44.862164, 28.561310, 35.920422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981327, 28.433088, 35.218021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303875, 28.636787, 35.338306>,  <45.497406, 28.759007, 35.410477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303875, 28.636787, 35.338306>,  <44.981327, 28.433088, 35.218021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303875, 28.636787, 35.338306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590765, -0.669897, -0.449706,
		-0.027565, 0.540281, -0.841033,
		0.806373, 0.509249, 0.300713,
		45.545788, 28.789562, 35.428520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.391506, 28.383373, 34.620090>,  <44.981327, 28.433088, 35.218021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.391506, 28.383373, 34.620090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616844, 28.468681, 34.939377>,  <45.752048, 28.519867, 35.130951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.616844, 28.468681, 34.939377>,  <45.391506, 28.383373, 34.620090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616844, 28.468681, 34.939377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728723, -0.583541, -0.358389,
		0.389360, 0.783579, -0.484151,
		0.563348, 0.213270, 0.798220,
		45.785847, 28.532661, 35.178844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.032253, 28.392754, 34.298634>,  <45.391506, 28.383373, 34.620090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.032253, 28.392754, 34.298634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125584, 28.367964, 34.686802>,  <46.181583, 28.353090, 34.919704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125584, 28.367964, 34.686802>,  <46.032253, 28.392754, 34.298634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125584, 28.367964, 34.686802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805808, -0.546260, -0.228636,
		0.544271, 0.835320, -0.077519,
		0.233330, -0.061974, 0.970421,
		46.195583, 28.349371, 34.977928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719398, 28.566628, 34.339924>,  <46.032253, 28.392754, 34.298634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719398, 28.566628, 34.339924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630066, 28.360884, 34.671120>,  <46.576466, 28.237438, 34.869835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630066, 28.360884, 34.671120>,  <46.719398, 28.566628, 34.339924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630066, 28.360884, 34.671120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762511, -0.621339, -0.180319,
		0.607208, 0.591077, 0.530967,
		-0.223328, -0.514359, 0.827985,
		46.563068, 28.206575, 34.919514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.379311, 28.472281, 34.774899>,  <46.719398, 28.566628, 34.339924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.379311, 28.472281, 34.774899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.143787, 28.181852, 34.916950>,  <47.002472, 28.007595, 35.002182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.143787, 28.181852, 34.916950>,  <47.379311, 28.472281, 34.774899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.143787, 28.181852, 34.916950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755101, -0.650863, -0.078733,
		0.288308, 0.221801, 0.931495,
		-0.588813, -0.726073, 0.355131,
		46.967144, 27.964031, 35.023491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.827324, 28.008804, 35.225639>,  <47.379311, 28.472281, 34.774899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.827324, 28.008804, 35.225639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.511673, 27.770372, 35.166359>,  <47.322281, 27.627314, 35.130791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.511673, 27.770372, 35.166359>,  <47.827324, 28.008804, 35.225639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.511673, 27.770372, 35.166359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598306, -0.800544, 0.034054,
		-0.138938, -0.061795, 0.988371,
		-0.789130, -0.596080, -0.148198,
		47.274933, 27.591549, 35.121899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.036663, 27.547125, 35.740147>,  <47.827324, 28.008804, 35.225639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.036663, 27.547125, 35.740147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764709, 27.394260, 35.489799>,  <47.601540, 27.302542, 35.339592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.764709, 27.394260, 35.489799>,  <48.036663, 27.547125, 35.740147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.764709, 27.394260, 35.489799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503935, -0.863506, -0.020157,
		-0.532739, -0.329101, 0.779667,
		-0.679882, -0.382163, -0.625869,
		47.560745, 27.279612, 35.302040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.846428, 26.934677, 36.039055>,  <48.036663, 27.547125, 35.740147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.846428, 26.934677, 36.039055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.786373, 26.901318, 35.644997>,  <47.750340, 26.881302, 35.408562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.786373, 26.901318, 35.644997>,  <47.846428, 26.934677, 36.039055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.786373, 26.901318, 35.644997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395635, -0.918242, 0.017441,
		-0.906053, -0.387138, 0.170858,
		-0.150138, -0.083400, -0.985141,
		47.741333, 26.876297, 35.349453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.497349, 26.399450, 35.914928>,  <47.846428, 26.934677, 36.039055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.497349, 26.399450, 35.914928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703747, 26.442638, 35.575024>,  <47.827587, 26.468552, 35.371082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.703747, 26.442638, 35.575024>,  <47.497349, 26.399450, 35.914928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.703747, 26.442638, 35.575024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164225, -0.986091, -0.025571,
		-0.840702, -0.126358, -0.526549,
		0.515995, 0.107970, -0.849760,
		47.858543, 26.475029, 35.320095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.380775, 25.856365, 35.415401>,  <47.497349, 26.399450, 35.914928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.380775, 25.856365, 35.415401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758633, 25.974789, 35.358822>,  <47.985348, 26.045843, 35.324875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.758633, 25.974789, 35.358822>,  <47.380775, 25.856365, 35.415401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.758633, 25.974789, 35.358822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271048, -0.947057, -0.172092,
		-0.184906, 0.124226, -0.974873,
		0.944639, 0.296058, -0.141445,
		48.042023, 26.063606, 35.316387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.581104, 25.700834, 34.735870>,  <47.380775, 25.856365, 35.415401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.581104, 25.700834, 34.735870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865250, 25.696615, 35.017372>,  <48.035736, 25.694084, 35.186275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.865250, 25.696615, 35.017372>,  <47.581104, 25.700834, 34.735870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.865250, 25.696615, 35.017372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259618, -0.925453, -0.275926,
		0.654204, 0.378716, -0.654669,
		0.710363, -0.010548, 0.703756,
		48.078358, 25.693451, 35.228500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.935581, 25.846874, 34.117321>,  <47.581104, 25.700834, 34.735870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.935581, 25.846874, 34.117321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.981224, 26.211473, 33.959255>,  <48.008610, 26.430233, 33.864418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.981224, 26.211473, 33.959255>,  <47.935581, 25.846874, 34.117321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.981224, 26.211473, 33.959255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979448, -0.169805, -0.108843,
		-0.166311, -0.374619, -0.912141,
		0.114111, 0.911497, -0.395160,
		48.015457, 26.484922, 33.840706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.517883, 25.450539, 33.650146>,  <47.935581, 25.846874, 34.117321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.517883, 25.450539, 33.650146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221558, 25.705500, 33.734913>,  <47.043762, 25.858477, 33.785770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.221558, 25.705500, 33.734913>,  <47.517883, 25.450539, 33.650146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.221558, 25.705500, 33.734913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376805, 0.655522, -0.654454,
		-0.556065, -0.404980, -0.725798,
		-0.740817, 0.637403, 0.211914,
		46.999313, 25.896721, 33.798489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115593, 25.745579, 33.022068>,  <47.517883, 25.450539, 33.650146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115593, 25.745579, 33.022068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.135284, 25.986006, 33.341141>,  <47.147099, 26.130262, 33.532585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.135284, 25.986006, 33.341141>,  <47.115593, 25.745579, 33.022068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.135284, 25.986006, 33.341141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235079, 0.769241, -0.594143,
		-0.970729, 0.216767, -0.103430,
		0.049227, 0.601066, 0.797682,
		47.150051, 26.166325, 33.580444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514755, 26.198921, 32.989029>,  <47.115593, 25.745579, 33.022068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514755, 26.198921, 32.989029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843849, 26.338871, 33.168228>,  <47.041306, 26.422840, 33.275745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843849, 26.338871, 33.168228>,  <46.514755, 26.198921, 32.989029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843849, 26.338871, 33.168228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024066, 0.808861, -0.587507,
		-0.567918, 0.472580, 0.673897,
		0.822733, 0.349874, 0.447993,
		47.090668, 26.443832, 33.302628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.472385, 26.939592, 33.311546>,  <46.514755, 26.198921, 32.989029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.472385, 26.939592, 33.311546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.855434, 26.860365, 33.227898>,  <47.085262, 26.812828, 33.177708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.855434, 26.860365, 33.227898>,  <46.472385, 26.939592, 33.311546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.855434, 26.860365, 33.227898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053163, 0.835103, -0.547520,
		0.283083, 0.513199, 0.810242,
		0.957621, -0.198068, -0.209120,
		47.142719, 26.800945, 33.165161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.976013, 27.525635, 33.466694>,  <46.472385, 26.939592, 33.311546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.976013, 27.525635, 33.466694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085968, 27.307821, 33.149727>,  <47.151939, 27.177134, 32.959549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085968, 27.307821, 33.149727>,  <46.976013, 27.525635, 33.466694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.085968, 27.307821, 33.149727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012275, 0.826085, -0.563412,
		0.961399, 0.145146, 0.233760,
		0.274883, -0.544534, -0.792416,
		47.168434, 27.144461, 32.912003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.755329, 27.533857, 33.300087>,  <46.976013, 27.525635, 33.466694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.755329, 27.533857, 33.300087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497723, 27.494682, 32.996597>,  <47.343159, 27.471176, 32.814503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497723, 27.494682, 32.996597>,  <47.755329, 27.533857, 33.300087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.497723, 27.494682, 32.996597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101984, 0.971928, -0.212027,
		0.758187, -0.213925, -0.615945,
		-0.644012, -0.097940, -0.758720,
		47.304520, 27.465300, 32.768982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.915020, 27.867216, 32.618591>,  <47.755329, 27.533857, 33.300087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.915020, 27.867216, 32.618591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.517670, 27.821260, 32.617901>,  <47.279259, 27.793688, 32.617485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.517670, 27.821260, 32.617901>,  <47.915020, 27.867216, 32.618591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.517670, 27.821260, 32.617901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106280, 0.924458, -0.366173,
		0.043666, -0.363564, -0.930545,
		-0.993377, -0.114888, -0.001728,
		47.219658, 27.786795, 32.617382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.770004, 28.243874, 31.963551>,  <47.915020, 27.867216, 32.618591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.770004, 28.243874, 31.963551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451588, 28.190584, 32.199707>,  <47.260536, 28.158609, 32.341400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.451588, 28.190584, 32.199707>,  <47.770004, 28.243874, 31.963551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.451588, 28.190584, 32.199707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282286, 0.944601, -0.167460,
		-0.535376, -0.299965, -0.789553,
		-0.796045, -0.133225, 0.590393,
		47.212772, 28.150616, 32.376823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.150539, 28.607162, 31.626926>,  <47.770004, 28.243874, 31.963551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.150539, 28.607162, 31.626926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.033180, 28.569054, 32.007420>,  <46.962765, 28.546188, 32.235714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.033180, 28.569054, 32.007420>,  <47.150539, 28.607162, 31.626926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.033180, 28.569054, 32.007420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362191, 0.931923, -0.018376,
		-0.884723, -0.349919, -0.307932,
		-0.293399, -0.095272, 0.951231,
		46.945160, 28.540472, 32.292789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437080, 28.772804, 31.591883>,  <47.150539, 28.607162, 31.626926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437080, 28.772804, 31.591883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539108, 28.819738, 31.975794>,  <46.600327, 28.847898, 32.206139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.539108, 28.819738, 31.975794>,  <46.437080, 28.772804, 31.591883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539108, 28.819738, 31.975794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291324, 0.955812, -0.039428,
		-0.921991, -0.269549, 0.277985,
		0.255074, 0.117336, 0.959776,
		46.615631, 28.854939, 32.263725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725445, 29.004587, 31.968950>,  <46.437080, 28.772804, 31.591883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725445, 29.004587, 31.968950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042889, 29.107708, 32.189396>,  <46.233353, 29.169580, 32.321663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042889, 29.107708, 32.189396>,  <45.725445, 29.004587, 31.968950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042889, 29.107708, 32.189396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410967, 0.895066, 0.173100,
		-0.448659, -0.363863, 0.816278,
		0.793607, 0.257800, 0.551114,
		46.280972, 29.185047, 32.354729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497913, 29.127277, 32.720818>,  <45.725445, 29.004587, 31.968950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497913, 29.127277, 32.720818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837738, 29.315069, 32.624619>,  <46.041634, 29.427744, 32.566898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.837738, 29.315069, 32.624619>,  <45.497913, 29.127277, 32.720818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837738, 29.315069, 32.624619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373877, 0.857544, 0.353319,
		0.372111, -0.210250, 0.904062,
		0.849558, 0.469482, -0.240494,
		46.092606, 29.455914, 32.552471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.435616, 29.686834, 33.182415>,  <45.497913, 29.127277, 32.720818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.435616, 29.686834, 33.182415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753311, 29.815786, 32.976402>,  <45.943928, 29.893158, 32.852795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753311, 29.815786, 32.976402>,  <45.435616, 29.686834, 33.182415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753311, 29.815786, 32.976402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123557, 0.915621, 0.382587,
		0.594913, -0.240229, 0.767052,
		0.794237, 0.322381, -0.515032,
		45.991581, 29.912500, 32.821892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777233, 30.146534, 33.537781>,  <45.435616, 29.686834, 33.182415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777233, 30.146534, 33.537781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936825, 30.222387, 33.178928>,  <46.032581, 30.267900, 32.963615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936825, 30.222387, 33.178928>,  <45.777233, 30.146534, 33.537781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936825, 30.222387, 33.178928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052074, 0.981488, 0.184306,
		0.915478, -0.026818, 0.401473,
		0.398984, 0.189635, -0.897135,
		46.056519, 30.279278, 32.909786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299950, 30.729597, 33.634552>,  <45.777233, 30.146534, 33.537781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.299950, 30.729597, 33.634552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218044, 30.713619, 33.243355>,  <46.168900, 30.704033, 33.008636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218044, 30.713619, 33.243355>,  <46.299950, 30.729597, 33.634552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218044, 30.713619, 33.243355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186024, 0.982544, -0.001184,
		0.960972, 0.181689, -0.208620,
		-0.204763, -0.039946, -0.977996,
		46.156616, 30.701635, 32.949955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.813354, 31.215364, 33.310600>,  <46.299950, 30.729597, 33.634552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.813354, 31.215364, 33.310600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466576, 31.168396, 33.116856>,  <46.258507, 31.140215, 33.000607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466576, 31.168396, 33.116856>,  <46.813354, 31.215364, 33.310600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466576, 31.168396, 33.116856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255239, 0.939336, 0.229130,
		0.428076, 0.322273, -0.844328,
		-0.866951, -0.117420, -0.484364,
		46.206490, 31.133169, 32.971546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.791897, 31.834240, 32.979801>,  <46.813354, 31.215364, 33.310600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.791897, 31.834240, 32.979801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.418545, 31.699654, 32.929855>,  <46.194534, 31.618902, 32.899887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.418545, 31.699654, 32.929855>,  <46.791897, 31.834240, 32.979801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.418545, 31.699654, 32.929855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358887, 0.873502, 0.328930,
		-0.001603, 0.351830, -0.936063,
		-0.933380, -0.336468, -0.124866,
		46.138531, 31.598713, 32.892395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428207, 32.424374, 32.785122>,  <46.791897, 31.834240, 32.979801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428207, 32.424374, 32.785122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139080, 32.165733, 32.882645>,  <45.965603, 32.010548, 32.941158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139080, 32.165733, 32.882645>,  <46.428207, 32.424374, 32.785122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139080, 32.165733, 32.882645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582696, 0.759960, 0.287971,
		-0.371484, 0.066087, -0.926084,
		-0.722818, -0.646602, 0.243805,
		45.922234, 31.971752, 32.955788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892097, 32.634140, 32.432343>,  <46.428207, 32.424374, 32.785122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892097, 32.634140, 32.432343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.762798, 32.428783, 32.750320>,  <45.685219, 32.305569, 32.941109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.762798, 32.428783, 32.750320>,  <45.892097, 32.634140, 32.432343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762798, 32.428783, 32.750320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474265, 0.814819, 0.333382,
		-0.818892, -0.269250, -0.506872,
		-0.323246, -0.513395, 0.794945,
		45.665825, 32.274765, 32.988804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186062, 32.639080, 32.482281>,  <45.892097, 32.634140, 32.432343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186062, 32.639080, 32.482281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291142, 32.572208, 32.862396>,  <45.354187, 32.532085, 33.090466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.291142, 32.572208, 32.862396>,  <45.186062, 32.639080, 32.482281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.291142, 32.572208, 32.862396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575797, 0.763126, 0.293422,
		-0.774241, -0.624252, 0.104210,
		0.262694, -0.167176, 0.950286,
		45.369949, 32.522057, 33.147484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587978, 32.875832, 32.982441>,  <45.186062, 32.639080, 32.482281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587978, 32.875832, 32.982441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898487, 32.850574, 33.233330>,  <45.084793, 32.835423, 33.383865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898487, 32.850574, 33.233330>,  <44.587978, 32.875832, 32.982441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898487, 32.850574, 33.233330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330885, 0.806083, 0.490659,
		-0.536575, -0.588425, 0.604850,
		0.776275, -0.063140, 0.627225,
		45.131371, 32.831635, 33.421497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296356, 32.973709, 33.640736>,  <44.587978, 32.875832, 32.982441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296356, 32.973709, 33.640736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683174, 33.043530, 33.714874>,  <44.915264, 33.085423, 33.759357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.683174, 33.043530, 33.714874>,  <44.296356, 32.973709, 33.640736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683174, 33.043530, 33.714874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245002, 0.835995, 0.491005,
		-0.069241, -0.520234, 0.851212,
		0.967047, 0.174551, 0.185343,
		44.973289, 33.095894, 33.770477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389526, 32.928844, 34.367859>,  <44.296356, 32.973709, 33.640736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389526, 32.928844, 34.367859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668304, 33.171795, 34.215355>,  <44.835571, 33.317566, 34.123852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668304, 33.171795, 34.215355>,  <44.389526, 32.928844, 34.367859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668304, 33.171795, 34.215355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200439, 0.675455, 0.709637,
		0.688544, -0.418157, 0.592497,
		0.696944, 0.607375, -0.381265,
		44.877388, 33.354008, 34.100975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804512, 33.114388, 34.915985>,  <44.389526, 32.928844, 34.367859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804512, 33.114388, 34.915985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891350, 33.389851, 34.639256>,  <44.943455, 33.555126, 34.473217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891350, 33.389851, 34.639256>,  <44.804512, 33.114388, 34.915985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891350, 33.389851, 34.639256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221568, 0.724994, 0.652144,
		0.950671, 0.011707, 0.309979,
		0.217098, 0.688656, -0.691824,
		44.956478, 33.596447, 34.431709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129089, 33.631832, 35.351261>,  <44.804512, 33.114388, 34.915985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129089, 33.631832, 35.351261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032967, 33.846661, 35.027828>,  <44.975292, 33.975559, 34.833767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032967, 33.846661, 35.027828>,  <45.129089, 33.631832, 35.351261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032967, 33.846661, 35.027828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129182, 0.807890, 0.575001,
		0.962063, 0.242631, -0.124762,
		-0.240307, 0.537071, -0.808584,
		44.960876, 34.007782, 34.785252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700569, 34.110039, 35.168503>,  <45.129089, 33.631832, 35.351261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700569, 34.110039, 35.168503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312588, 34.177402, 35.098274>,  <45.079800, 34.217819, 35.056137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312588, 34.177402, 35.098274>,  <45.700569, 34.110039, 35.168503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312588, 34.177402, 35.098274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008034, 0.743459, 0.668733,
		0.243147, 0.647231, -0.722476,
		-0.969956, 0.168405, -0.175570,
		45.021603, 34.227924, 35.045605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.990578, 33.441032, 34.710953>,  <45.700569, 34.110039, 35.168503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.990578, 33.441032, 34.710953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693066, 33.432735, 34.443710>,  <45.514557, 33.427757, 34.283367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693066, 33.432735, 34.443710>,  <45.990578, 33.441032, 34.710953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.693066, 33.432735, 34.443710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665365, -0.072569, 0.742983,
		-0.063895, 0.997148, 0.040173,
		-0.743779, -0.020743, -0.668104,
		45.469933, 33.426514, 34.243279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156498, 34.130177, 34.452126>,  <45.990578, 33.441032, 34.710953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156498, 34.130177, 34.452126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330173, 34.091961, 34.810421>,  <46.434380, 34.069031, 35.025398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.330173, 34.091961, 34.810421>,  <46.156498, 34.130177, 34.452126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.330173, 34.091961, 34.810421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630208, 0.742728, -0.226260,
		-0.643677, 0.662743, 0.382690,
		0.434186, -0.095536, 0.895743,
		46.460430, 34.063301, 35.079144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.240074, 34.767853, 34.840183>,  <46.156498, 34.130177, 34.452126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.240074, 34.767853, 34.840183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525852, 34.490906, 34.880558>,  <46.697319, 34.324738, 34.904781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525852, 34.490906, 34.880558>,  <46.240074, 34.767853, 34.840183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525852, 34.490906, 34.880558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678692, 0.650689, -0.340559,
		0.170113, 0.311818, 0.934789,
		0.714450, -0.692368, 0.100938,
		46.740189, 34.283195, 34.910839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.797253, 35.009781, 35.244343>,  <46.240074, 34.767853, 34.840183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.797253, 35.009781, 35.244343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920666, 34.731930, 34.984406>,  <46.994713, 34.565220, 34.828442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920666, 34.731930, 34.984406>,  <46.797253, 35.009781, 35.244343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920666, 34.731930, 34.984406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645273, 0.654787, -0.393544,
		0.698878, -0.297907, 0.650247,
		0.308534, -0.694626, -0.649847,
		47.013226, 34.523540, 34.789452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.551426, 34.986820, 35.310158>,  <46.797253, 35.009781, 35.244343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.551426, 34.986820, 35.310158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.453026, 34.890564, 34.934589>,  <47.393986, 34.832809, 34.709248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.453026, 34.890564, 34.934589>,  <47.551426, 34.986820, 35.310158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.453026, 34.890564, 34.934589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706439, 0.618736, -0.343672,
		0.663646, -0.747835, 0.017788,
		-0.246004, -0.240643, -0.938921,
		47.379223, 34.818371, 34.652912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.047722, 37.868275, 45.176754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.695477, 37.687565, 45.119602>,  <32.484127, 37.579140, 45.085312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.695477, 37.687565, 45.119602>,  <33.047722, 37.868275, 45.176754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695477, 37.687565, 45.119602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134936, 0.049957, -0.989594,
		0.454213, -0.890731, 0.016968,
		-0.880615, -0.451776, -0.142883,
		32.431293, 37.552032, 45.076736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241177, 37.268414, 44.844505>,  <33.047722, 37.868275, 45.176754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241177, 37.268414, 44.844505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853642, 37.297184, 44.749695>,  <32.621120, 37.314445, 44.692806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853642, 37.297184, 44.749695>,  <33.241177, 37.268414, 44.844505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853642, 37.297184, 44.749695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209783, -0.270559, -0.939568,
		-0.131706, -0.960013, 0.247040,
		-0.968837, 0.071922, -0.237028,
		32.562992, 37.318760, 44.678585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012821, 36.658508, 44.434643>,  <33.241177, 37.268414, 44.844505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012821, 36.658508, 44.434643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.774929, 36.969429, 44.352573>,  <32.632195, 37.155983, 44.303333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.774929, 36.969429, 44.352573>,  <33.012821, 36.658508, 44.434643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774929, 36.969429, 44.352573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130102, -0.158789, -0.978703,
		-0.793327, -0.608759, -0.006692,
		-0.594732, 0.777302, -0.205173,
		32.596508, 37.202621, 44.291023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603371, 36.412876, 43.896572>,  <33.012821, 36.658508, 44.434643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603371, 36.412876, 43.896572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.527107, 36.803791, 43.859550>,  <32.481350, 37.038338, 43.837337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.527107, 36.803791, 43.859550>,  <32.603371, 36.412876, 43.896572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527107, 36.803791, 43.859550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140265, -0.066194, -0.987899,
		-0.971583, -0.201338, -0.124458,
		-0.190663, 0.977283, -0.092554,
		32.469910, 37.096977, 43.831783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967222, 36.471127, 43.484135>,  <32.603371, 36.412876, 43.896572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967222, 36.471127, 43.484135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.169182, 36.814140, 43.444714>,  <32.290356, 37.019947, 43.421062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.169182, 36.814140, 43.444714>,  <31.967222, 36.471127, 43.484135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169182, 36.814140, 43.444714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036865, -0.092644, -0.995017,
		-0.862391, 0.506016, -0.015163,
		0.504899, 0.857534, -0.098550,
		32.320652, 37.071400, 43.415150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663595, 36.709743, 42.901882>,  <31.967222, 36.471127, 43.484135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663595, 36.709743, 42.901882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.999706, 36.923325, 42.939449>,  <32.201374, 37.051476, 42.961990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.999706, 36.923325, 42.939449>,  <31.663595, 36.709743, 42.901882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999706, 36.923325, 42.939449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123142, -0.019269, -0.992202,
		-0.527983, 0.845292, -0.081944,
		0.840280, 0.533957, 0.093917,
		32.251789, 37.083511, 42.967625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577929, 37.141708, 42.450516>,  <31.663595, 36.709743, 42.901882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577929, 37.141708, 42.450516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.967604, 37.152306, 42.540188>,  <32.201408, 37.158665, 42.593990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.967604, 37.152306, 42.540188>,  <31.577929, 37.141708, 42.450516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967604, 37.152306, 42.540188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221318, 0.083499, -0.971620,
		-0.044464, 0.996156, 0.075480,
		0.974187, 0.026497, 0.224180,
		32.259861, 37.160255, 42.607441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886381, 37.728600, 42.090664>,  <31.577929, 37.141708, 42.450516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886381, 37.728600, 42.090664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.171379, 37.457142, 42.161995>,  <32.342377, 37.294270, 42.204792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.171379, 37.457142, 42.161995>,  <31.886381, 37.728600, 42.090664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171379, 37.457142, 42.161995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203972, -0.042852, -0.978038,
		0.671378, 0.733219, 0.107892,
		0.712493, -0.678641, 0.178327,
		32.385128, 37.253551, 42.215492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485664, 37.863567, 41.731777>,  <31.886381, 37.728600, 42.090664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485664, 37.863567, 41.731777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.632050, 37.513210, 41.857563>,  <32.719879, 37.302998, 41.933033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.632050, 37.513210, 41.857563>,  <32.485664, 37.863567, 41.731777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632050, 37.513210, 41.857563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355613, -0.180646, -0.917009,
		0.860007, 0.447417, 0.245369,
		0.365961, -0.875891, 0.314465,
		32.741837, 37.250443, 41.951904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289478, 37.823143, 41.587967>,  <32.485664, 37.863567, 41.731777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289478, 37.823143, 41.587967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.189037, 37.438194, 41.629517>,  <33.128773, 37.207226, 41.654446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.189037, 37.438194, 41.629517>,  <33.289478, 37.823143, 41.587967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189037, 37.438194, 41.629517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583848, -0.236179, -0.776750,
		0.772055, -0.134396, 0.621183,
		-0.251103, -0.962371, 0.103876,
		33.113705, 37.149483, 41.660679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936043, 37.449169, 41.671860>,  <33.289478, 37.823143, 41.587967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936043, 37.449169, 41.671860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.658268, 37.195522, 41.535831>,  <33.491604, 37.043335, 41.454212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.658268, 37.195522, 41.535831>,  <33.936043, 37.449169, 41.671860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658268, 37.195522, 41.535831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603375, -0.255676, -0.755360,
		0.392040, -0.729741, 0.560162,
		-0.694437, -0.634119, -0.340072,
		33.449936, 37.005287, 41.433811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340046, 36.962315, 41.444244>,  <33.936043, 37.449169, 41.671860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340046, 36.962315, 41.444244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.991474, 36.841305, 41.289791>,  <33.782333, 36.768700, 41.197121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.991474, 36.841305, 41.289791>,  <34.340046, 36.962315, 41.444244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991474, 36.841305, 41.289791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482998, -0.391775, -0.783087,
		0.085622, -0.868904, 0.487519,
		-0.871425, -0.302520, -0.386134,
		33.730045, 36.750549, 41.173950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429752, 36.202370, 41.195400>,  <34.340046, 36.962315, 41.444244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429752, 36.202370, 41.195400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.134357, 36.379364, 40.991894>,  <33.957119, 36.485561, 40.869789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.134357, 36.379364, 40.991894>,  <34.429752, 36.202370, 41.195400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134357, 36.379364, 40.991894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462057, -0.217418, -0.859786,
		-0.491057, -0.870021, -0.043893,
		-0.738489, 0.442486, -0.508764,
		33.912811, 36.512108, 40.839264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049820, 35.705170, 40.684982>,  <34.429752, 36.202370, 41.195400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049820, 35.705170, 40.684982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.018448, 36.084923, 40.563320>,  <33.999622, 36.312775, 40.490322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.018448, 36.084923, 40.563320>,  <34.049820, 35.705170, 40.684982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018448, 36.084923, 40.563320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409216, -0.247550, -0.878215,
		-0.909060, -0.193348, -0.369088,
		-0.078433, 0.949387, -0.304159,
		33.994919, 36.369740, 40.472073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993004, 35.555515, 39.861870>,  <34.049820, 35.705170, 40.684982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993004, 35.555515, 39.861870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084671, 35.936623, 39.941578>,  <34.139671, 36.165287, 39.989403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084671, 35.936623, 39.941578>,  <33.993004, 35.555515, 39.861870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084671, 35.936623, 39.941578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429868, 0.084615, -0.898918,
		-0.873324, 0.291666, -0.390174,
		0.229169, 0.952770, 0.199274,
		34.153423, 36.222454, 40.001362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815598, 35.836971, 39.252964>,  <33.993004, 35.555515, 39.861870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815598, 35.836971, 39.252964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.049217, 36.106613, 39.433838>,  <34.189388, 36.268398, 39.542362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.049217, 36.106613, 39.433838>,  <33.815598, 35.836971, 39.252964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049217, 36.106613, 39.433838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442108, 0.203020, -0.873684,
		-0.680754, 0.710191, -0.179452,
		0.584050, 0.674101, 0.452188,
		34.224434, 36.308842, 39.569496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822906, 36.304832, 38.749054>,  <33.815598, 35.836971, 39.252964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822906, 36.304832, 38.749054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.141380, 36.336369, 38.989014>,  <34.332462, 36.355289, 39.132992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.141380, 36.336369, 38.989014>,  <33.822906, 36.304832, 38.749054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141380, 36.336369, 38.989014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593208, 0.093566, -0.799593,
		-0.119167, 0.992487, 0.027729,
		0.796181, 0.078836, 0.599901,
		34.380234, 36.360020, 39.168983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101524, 36.841736, 38.461857>,  <33.822906, 36.304832, 38.749054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101524, 36.841736, 38.461857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382072, 36.656094, 38.678257>,  <34.550404, 36.544708, 38.808098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.382072, 36.656094, 38.678257>,  <34.101524, 36.841736, 38.461857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382072, 36.656094, 38.678257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650053, 0.105111, -0.752584,
		0.292415, 0.879520, 0.375416,
		0.701373, -0.464108, 0.540999,
		34.592484, 36.516861, 38.840557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682076, 37.108513, 38.181816>,  <34.101524, 36.841736, 38.461857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682076, 37.108513, 38.181816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.824200, 36.798546, 38.390911>,  <34.909473, 36.612564, 38.516369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.824200, 36.798546, 38.390911>,  <34.682076, 37.108513, 38.181816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824200, 36.798546, 38.390911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799326, -0.038030, -0.599693,
		0.484593, 0.630916, 0.605900,
		0.355314, -0.774918, 0.522737,
		34.930794, 36.566071, 38.547733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359371, 37.198784, 38.087963>,  <34.682076, 37.108513, 38.181816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359371, 37.198784, 38.087963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315338, 36.817211, 38.199608>,  <35.288918, 36.588268, 38.266594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.315338, 36.817211, 38.199608>,  <35.359371, 37.198784, 38.087963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315338, 36.817211, 38.199608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763913, -0.260856, -0.590246,
		0.635860, 0.148241, 0.757434,
		-0.110082, -0.953928, 0.279111,
		35.282314, 36.531033, 38.283340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978386, 36.932655, 38.097401>,  <35.359371, 37.198784, 38.087963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978386, 36.932655, 38.097401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764000, 36.595036, 38.090275>,  <35.635368, 36.392464, 38.085999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.764000, 36.595036, 38.090275>,  <35.978386, 36.932655, 38.097401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764000, 36.595036, 38.090275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720853, -0.446546, -0.530064,
		0.439449, -0.296934, 0.847771,
		-0.535962, -0.844054, -0.017812,
		35.603210, 36.341820, 38.084930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480350, 36.461494, 38.167530>,  <35.978386, 36.932655, 38.097401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480350, 36.461494, 38.167530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168976, 36.267529, 38.008083>,  <35.982151, 36.151150, 37.912415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168976, 36.267529, 38.008083>,  <36.480350, 36.461494, 38.167530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168976, 36.267529, 38.008083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622930, -0.518446, -0.585809,
		0.077407, -0.704325, 0.705645,
		-0.778438, -0.484913, -0.398614,
		35.935444, 36.122055, 37.888500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237537, 36.483307, 38.358955>,  <36.480350, 36.461494, 38.167530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237537, 36.483307, 38.358955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426609, 36.827728, 38.283947>,  <37.540054, 37.034382, 38.238941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426609, 36.827728, 38.283947>,  <37.237537, 36.483307, 38.358955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426609, 36.827728, 38.283947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126205, 0.276745, 0.952620,
		0.872149, -0.426621, 0.239482,
		0.472683, 0.861050, -0.187521,
		37.568413, 37.086044, 38.227692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645130, 36.549473, 38.995667>,  <37.237537, 36.483307, 38.358955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645130, 36.549473, 38.995667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675777, 36.924324, 38.859482>,  <37.694164, 37.149235, 38.777771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675777, 36.924324, 38.859482>,  <37.645130, 36.549473, 38.995667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675777, 36.924324, 38.859482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409708, 0.340894, 0.846127,
		0.908994, 0.074665, 0.410068,
		0.076614, 0.937132, -0.340461,
		37.698761, 37.205463, 38.757343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964230, 36.939758, 39.479050>,  <37.645130, 36.549473, 38.995667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964230, 36.939758, 39.479050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786537, 37.218082, 39.253304>,  <37.679924, 37.385075, 39.117855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786537, 37.218082, 39.253304>,  <37.964230, 36.939758, 39.479050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786537, 37.218082, 39.253304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337476, 0.453579, 0.824849,
		0.829923, 0.556882, 0.033326,
		-0.444228, 0.695808, -0.564370,
		37.653267, 37.426826, 39.083992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109730, 37.611420, 39.762821>,  <37.964230, 36.939758, 39.479050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109730, 37.611420, 39.762821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762283, 37.629082, 39.565414>,  <37.553814, 37.639679, 39.446972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.762283, 37.629082, 39.565414>,  <38.109730, 37.611420, 39.762821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762283, 37.629082, 39.565414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456831, 0.314324, 0.832169,
		0.191867, 0.948288, -0.252856,
		-0.868615, 0.044153, -0.493516,
		37.501698, 37.642326, 39.417358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844013, 37.921654, 40.210999>,  <38.109730, 37.611420, 39.762821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844013, 37.921654, 40.210999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541084, 37.828911, 39.966801>,  <37.359325, 37.773266, 39.820282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.541084, 37.828911, 39.966801>,  <37.844013, 37.921654, 40.210999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541084, 37.828911, 39.966801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652659, 0.300610, 0.695464,
		0.022269, 0.925135, -0.378985,
		-0.757324, -0.231861, -0.610492,
		37.313889, 37.759354, 39.783653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512714, 38.531826, 40.037975>,  <37.844013, 37.921654, 40.210999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512714, 38.531826, 40.037975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252983, 38.227879, 40.025524>,  <37.097145, 38.045509, 40.018055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252983, 38.227879, 40.025524>,  <37.512714, 38.531826, 40.037975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252983, 38.227879, 40.025524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530960, 0.423660, 0.733890,
		-0.544475, 0.493062, -0.678555,
		-0.649329, -0.759870, -0.031124,
		37.058186, 37.999916, 40.016186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828400, 38.832397, 40.128880>,  <37.512714, 38.531826, 40.037975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828400, 38.832397, 40.128880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776569, 38.445896, 40.217930>,  <36.745472, 38.213997, 40.271358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776569, 38.445896, 40.217930>,  <36.828400, 38.832397, 40.128880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776569, 38.445896, 40.217930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561449, 0.256556, 0.786737,
		-0.817303, -0.023046, -0.575747,
		-0.129580, -0.966254, 0.222623,
		36.737694, 38.156021, 40.284718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158173, 38.871273, 40.382126>,  <36.828400, 38.832397, 40.128880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158173, 38.871273, 40.382126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264606, 38.511341, 40.520405>,  <36.328465, 38.295383, 40.603371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264606, 38.511341, 40.520405>,  <36.158173, 38.871273, 40.382126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264606, 38.511341, 40.520405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540020, 0.157920, 0.826704,
		-0.798485, -0.406655, -0.443906,
		0.266082, -0.899829, 0.345698,
		36.344433, 38.241394, 40.624115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564278, 38.532181, 40.616058>,  <36.158173, 38.871273, 40.382126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564278, 38.532181, 40.616058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.858398, 38.331196, 40.797989>,  <36.034870, 38.210606, 40.907146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.858398, 38.331196, 40.797989>,  <35.564278, 38.532181, 40.616058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858398, 38.331196, 40.797989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534730, -0.017781, 0.844836,
		-0.416416, -0.864413, -0.281759,
		0.735297, -0.502468, 0.454824,
		36.078987, 38.180454, 40.934437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260296, 38.099678, 41.066158>,  <35.564278, 38.532181, 40.616058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260296, 38.099678, 41.066158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627666, 38.141346, 41.218807>,  <35.848091, 38.166348, 41.310398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627666, 38.141346, 41.218807>,  <35.260296, 38.099678, 41.066158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627666, 38.141346, 41.218807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383907, 0.002055, 0.923370,
		0.095409, -0.994557, 0.041882,
		0.918430, 0.104177, 0.381621,
		35.903194, 38.172600, 41.333294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285374, 37.732529, 41.688732>,  <35.260296, 38.099678, 41.066158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285374, 37.732529, 41.688732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.615376, 37.945663, 41.764053>,  <35.813377, 38.073544, 41.809246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.615376, 37.945663, 41.764053>,  <35.285374, 37.732529, 41.688732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615376, 37.945663, 41.764053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204624, -0.028938, 0.978413,
		0.526786, -0.845721, 0.085157,
		0.825000, 0.532840, 0.188299,
		35.862877, 38.105515, 41.820541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413742, 37.516319, 42.277199>,  <35.285374, 37.732529, 41.688732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413742, 37.516319, 42.277199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687489, 37.807957, 42.274231>,  <35.851738, 37.982941, 42.272449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.687489, 37.807957, 42.274231>,  <35.413742, 37.516319, 42.277199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687489, 37.807957, 42.274231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003507, 0.013469, 0.999903,
		0.729127, -0.684277, 0.011775,
		0.684369, 0.729098, -0.007421,
		35.892799, 38.026688, 42.272003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142681, 37.415253, 42.498322>,  <35.413742, 37.516319, 42.277199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142681, 37.415253, 42.498322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.104118, 37.806282, 42.573215>,  <36.080978, 38.040901, 42.618153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.104118, 37.806282, 42.573215>,  <36.142681, 37.415253, 42.498322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104118, 37.806282, 42.573215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018080, -0.186361, 0.982315,
		0.995177, 0.098091, 0.000293,
		-0.096411, 0.977572, 0.187236,
		36.075195, 38.099552, 42.629387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718037, 37.658558, 42.928848>,  <36.142681, 37.415253, 42.498322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718037, 37.658558, 42.928848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401672, 37.899418, 42.972435>,  <36.211853, 38.043934, 42.998589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.401672, 37.899418, 42.972435>,  <36.718037, 37.658558, 42.928848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401672, 37.899418, 42.972435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046465, -0.118462, 0.991871,
		0.610161, 0.789548, 0.065715,
		-0.790914, 0.602147, 0.108968,
		36.164398, 38.080063, 43.005127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857231, 37.942284, 43.567184>,  <36.718037, 37.658558, 42.928848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857231, 37.942284, 43.567184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.478157, 38.061302, 43.520954>,  <36.250713, 38.132713, 43.493217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.478157, 38.061302, 43.520954>,  <36.857231, 37.942284, 43.567184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478157, 38.061302, 43.520954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065235, 0.173902, 0.982600,
		0.312464, 0.938737, -0.145394,
		-0.947687, 0.297543, -0.115576,
		36.193851, 38.150566, 43.486282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658184, 38.503090, 43.850498>,  <36.857231, 37.942284, 43.567184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658184, 38.503090, 43.850498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284367, 38.362602, 43.827610>,  <36.060078, 38.278309, 43.813877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284367, 38.362602, 43.827610>,  <36.658184, 38.503090, 43.850498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284367, 38.362602, 43.827610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126654, 0.178023, 0.975842,
		-0.332545, 0.919214, -0.210853,
		-0.934544, -0.351217, -0.057221,
		36.004002, 38.257236, 43.810444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293182, 38.971596, 44.267841>,  <36.658184, 38.503090, 43.850498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293182, 38.971596, 44.267841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052620, 38.655136, 44.223309>,  <35.908283, 38.465260, 44.196590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052620, 38.655136, 44.223309>,  <36.293182, 38.971596, 44.267841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052620, 38.655136, 44.223309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325716, 0.115548, 0.938380,
		-0.729533, 0.600612, -0.327181,
		-0.601407, -0.791147, -0.111333,
		35.872196, 38.417793, 44.189907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507389, 39.268223, 44.611073>,  <36.293182, 38.971596, 44.267841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507389, 39.268223, 44.611073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535385, 38.869762, 44.589973>,  <35.552185, 38.630688, 44.577316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.535385, 38.869762, 44.589973>,  <35.507389, 39.268223, 44.611073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535385, 38.869762, 44.589973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413613, -0.077096, 0.907183,
		-0.907758, -0.041680, -0.417418,
		0.069992, -0.996152, -0.052745,
		35.556381, 38.570915, 44.574150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.694492, 38.924885, 44.682392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973125, 38.647423, 44.755730>,  <35.140305, 38.480946, 44.799732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973125, 38.647423, 44.755730>,  <34.694492, 38.924885, 44.682392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973125, 38.647423, 44.755730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524190, -0.317539, 0.790186,
		-0.489901, -0.646534, -0.584800,
		0.696579, -0.693659, 0.183344,
		35.182098, 38.439323, 44.810734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388412, 38.310055, 44.671379>,  <34.694492, 38.924885, 44.682392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388412, 38.310055, 44.671379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.711483, 38.233585, 44.894489>,  <34.905327, 38.187706, 45.028355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.711483, 38.233585, 44.894489>,  <34.388412, 38.310055, 44.671379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711483, 38.233585, 44.894489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586849, -0.352371, 0.729001,
		0.057180, -0.916127, -0.396790,
		0.807675, -0.191171, 0.557777,
		34.953785, 38.176235, 45.061821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224751, 37.610809, 44.945362>,  <34.388412, 38.310055, 44.671379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224751, 37.610809, 44.945362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.500458, 37.763206, 45.191860>,  <34.665882, 37.854645, 45.339760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.500458, 37.763206, 45.191860>,  <34.224751, 37.610809, 44.945362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500458, 37.763206, 45.191860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510308, -0.348481, 0.786223,
		0.514292, -0.856393, -0.045775,
		0.689267, 0.380989, 0.616245,
		34.707237, 37.877502, 45.376732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222729, 37.233513, 45.453121>,  <34.224751, 37.610809, 44.945362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222729, 37.233513, 45.453121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423035, 37.525204, 45.639656>,  <34.543217, 37.700218, 45.751575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423035, 37.525204, 45.639656>,  <34.222729, 37.233513, 45.453121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423035, 37.525204, 45.639656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286959, -0.368423, 0.884262,
		0.816633, -0.576627, 0.024763,
		0.500766, 0.729223, 0.466335,
		34.573265, 37.743969, 45.779556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373993, 36.990990, 46.093754>,  <34.222729, 37.233513, 45.453121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373993, 36.990990, 46.093754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.408134, 37.385735, 46.148632>,  <34.428619, 37.622581, 46.181561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.408134, 37.385735, 46.148632>,  <34.373993, 36.990990, 46.093754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408134, 37.385735, 46.148632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387015, -0.094046, 0.917265,
		0.918114, -0.131392, 0.373902,
		0.085357, 0.986859, 0.137196,
		34.433743, 37.681793, 46.189793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743164, 37.175129, 46.739002>,  <34.373993, 36.990990, 46.093754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743164, 37.175129, 46.739002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521641, 37.497944, 46.657032>,  <34.388729, 37.691631, 46.607849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521641, 37.497944, 46.657032>,  <34.743164, 37.175129, 46.739002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521641, 37.497944, 46.657032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294864, 0.040083, 0.954698,
		0.778689, 0.589141, 0.215767,
		-0.553804, 0.807035, -0.204929,
		34.355499, 37.740055, 46.595554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908756, 37.592865, 47.201920>,  <34.743164, 37.175129, 46.739002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908756, 37.592865, 47.201920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.549587, 37.702145, 47.063873>,  <34.334087, 37.767712, 46.981045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.549587, 37.702145, 47.063873>,  <34.908756, 37.592865, 47.201920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549587, 37.702145, 47.063873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357047, 0.006455, 0.934064,
		0.257409, 0.961937, 0.091747,
		-0.897919, 0.273194, -0.345118,
		34.280212, 37.784103, 46.960339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812004, 38.255028, 47.501602>,  <34.908756, 37.592865, 47.201920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812004, 38.255028, 47.501602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.441334, 38.147995, 47.396015>,  <34.218933, 38.083775, 47.332664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.441334, 38.147995, 47.396015>,  <34.812004, 38.255028, 47.501602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441334, 38.147995, 47.396015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318981, 0.188380, 0.928851,
		-0.198818, 0.944941, -0.259920,
		-0.926673, -0.267582, -0.263965,
		34.163330, 38.067722, 47.316826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265259, 38.817829, 47.835339>,  <34.812004, 38.255028, 47.501602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265259, 38.817829, 47.835339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073502, 38.475372, 47.758186>,  <33.958447, 38.269897, 47.711895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073502, 38.475372, 47.758186>,  <34.265259, 38.817829, 47.835339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073502, 38.475372, 47.758186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367833, -0.003527, 0.929885,
		-0.796797, 0.516723, -0.313228,
		-0.479389, -0.856145, -0.192878,
		33.929684, 38.218529, 47.700321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626484, 39.068130, 47.969154>,  <34.265259, 38.817829, 47.835339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626484, 39.068130, 47.969154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.638939, 38.668697, 47.986439>,  <33.646412, 38.429039, 47.996811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.638939, 38.668697, 47.986439>,  <33.626484, 39.068130, 47.969154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638939, 38.668697, 47.986439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502203, 0.021750, 0.864476,
		-0.864189, -0.048618, -0.500813,
		0.031137, -0.998580, 0.043213,
		33.648281, 38.369122, 47.999401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862171, 38.861988, 48.148731>,  <33.626484, 39.068130, 47.969154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862171, 38.861988, 48.148731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134266, 38.585560, 48.246464>,  <33.297523, 38.419704, 48.305103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134266, 38.585560, 48.246464>,  <32.862171, 38.861988, 48.148731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134266, 38.585560, 48.246464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301594, 0.039932, 0.952600,
		-0.668068, -0.721686, -0.181258,
		0.680240, -0.691068, 0.244333,
		33.338337, 38.378239, 48.319763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499935, 38.437023, 48.688526>,  <32.862171, 38.861988, 48.148731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499935, 38.437023, 48.688526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.891758, 38.361332, 48.715816>,  <33.126854, 38.315918, 48.732189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.891758, 38.361332, 48.715816>,  <32.499935, 38.437023, 48.688526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891758, 38.361332, 48.715816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059885, 0.049448, 0.996980,
		-0.192028, -0.980688, 0.037106,
		0.979561, -0.189226, 0.068224,
		33.185627, 38.304565, 48.736282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557102, 38.167358, 49.376980>,  <32.499935, 38.437023, 48.688526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557102, 38.167358, 49.376980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949337, 38.217117, 49.316338>,  <33.184677, 38.246971, 49.279953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949337, 38.217117, 49.316338>,  <32.557102, 38.167358, 49.376980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949337, 38.217117, 49.316338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126803, 0.187550, 0.974036,
		0.149593, -0.974347, 0.168135,
		0.980583, 0.124389, -0.151606,
		33.243511, 38.254436, 49.270855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019951, 37.597458, 49.743462>,  <32.557102, 38.167358, 49.376980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019951, 37.597458, 49.743462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244888, 37.925594, 49.701885>,  <33.379852, 38.122478, 49.676941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244888, 37.925594, 49.701885>,  <33.019951, 37.597458, 49.743462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244888, 37.925594, 49.701885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198824, -0.012134, 0.979960,
		0.802643, -0.571742, -0.169928,
		0.562347, 0.820344, -0.103936,
		33.413593, 38.171696, 49.670704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710945, 37.538773, 50.150299>,  <33.019951, 37.597458, 49.743462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710945, 37.538773, 50.150299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658802, 37.931927, 50.098221>,  <33.627518, 38.167820, 50.066975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658802, 37.931927, 50.098221>,  <33.710945, 37.538773, 50.150299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658802, 37.931927, 50.098221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313567, 0.165443, 0.935043,
		0.940576, 0.081063, -0.329766,
		-0.130355, 0.982882, -0.130193,
		33.619694, 38.226791, 50.059162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356506, 37.793911, 50.317055>,  <33.710945, 37.538773, 50.150299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356506, 37.793911, 50.317055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100887, 38.099079, 50.356174>,  <33.947517, 38.282181, 50.379646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.100887, 38.099079, 50.356174>,  <34.356506, 37.793911, 50.317055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100887, 38.099079, 50.356174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185200, 0.029207, 0.982267,
		0.746538, 0.645829, -0.159958,
		-0.639048, 0.762923, 0.097803,
		33.909172, 38.327957, 50.385517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719856, 38.279209, 50.806274>,  <34.356506, 37.793911, 50.317055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719856, 38.279209, 50.806274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326962, 38.354183, 50.809700>,  <34.091225, 38.399170, 50.811756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326962, 38.354183, 50.809700>,  <34.719856, 38.279209, 50.806274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326962, 38.354183, 50.809700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060168, 0.271433, 0.960575,
		0.177727, 0.944029, -0.277890,
		-0.982239, 0.187440, 0.008560,
		34.032291, 38.410416, 50.812267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623348, 38.864853, 51.376534>,  <34.719856, 38.279209, 50.806274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623348, 38.864853, 51.376534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269485, 38.681503, 51.342411>,  <34.057167, 38.571491, 51.321938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.269485, 38.681503, 51.342411>,  <34.623348, 38.864853, 51.376534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269485, 38.681503, 51.342411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228058, 0.265839, 0.936653,
		-0.406663, 0.848069, -0.339712,
		-0.884655, -0.458376, -0.085302,
		34.004089, 38.543991, 51.316822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208221, 39.179596, 51.920841>,  <34.623348, 38.864853, 51.376534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208221, 39.179596, 51.920841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983379, 38.866524, 51.813927>,  <33.848473, 38.678680, 51.749779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983379, 38.866524, 51.813927>,  <34.208221, 39.179596, 51.920841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983379, 38.866524, 51.813927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479896, 0.045443, 0.876148,
		-0.673599, 0.620760, -0.401150,
		-0.562107, -0.782683, -0.267289,
		33.814747, 38.631718, 51.733742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648033, 39.306812, 52.324013>,  <34.208221, 39.179596, 51.920841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648033, 39.306812, 52.324013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600044, 38.927662, 52.205936>,  <33.571251, 38.700172, 52.135090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.600044, 38.927662, 52.205936>,  <33.648033, 39.306812, 52.324013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600044, 38.927662, 52.205936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488681, -0.202438, 0.848651,
		-0.864174, 0.246073, -0.438921,
		-0.119976, -0.947875, -0.295193,
		33.564053, 38.643299, 52.117378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950344, 39.156040, 52.367771>,  <33.648033, 39.306812, 52.324013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950344, 39.156040, 52.367771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.165089, 38.820145, 52.400326>,  <33.293934, 38.618607, 52.419857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.165089, 38.820145, 52.400326>,  <32.950344, 39.156040, 52.367771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165089, 38.820145, 52.400326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448042, -0.202041, 0.870883,
		-0.714870, -0.504006, -0.484705,
		0.536861, -0.839737, 0.081383,
		33.326145, 38.568222, 52.424740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418488, 38.647278, 52.504135>,  <32.950344, 39.156040, 52.367771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418488, 38.647278, 52.504135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.774548, 38.504963, 52.618015>,  <32.988182, 38.419575, 52.686344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.774548, 38.504963, 52.618015>,  <32.418488, 38.647278, 52.504135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774548, 38.504963, 52.618015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391141, -0.276059, 0.877952,
		-0.233763, -0.892867, -0.384894,
		0.890148, -0.355780, 0.284704,
		33.041592, 38.398228, 52.703426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341366, 37.985519, 52.741131>,  <32.418488, 38.647278, 52.504135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341366, 37.985519, 52.741131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.662205, 38.150345, 52.914032>,  <32.854710, 38.249241, 53.017773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.662205, 38.150345, 52.914032>,  <32.341366, 37.985519, 52.741131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662205, 38.150345, 52.914032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392370, -0.182027, 0.901616,
		0.450209, -0.892785, 0.015680,
		0.802096, 0.412068, 0.432253,
		32.902832, 38.273964, 53.043709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762791, 37.430771, 52.974098>,  <32.341366, 37.985519, 52.741131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762791, 37.430771, 52.974098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.708082, 37.046684, 53.071480>,  <31.675257, 36.816231, 53.129910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.708082, 37.046684, 53.071480>,  <31.762791, 37.430771, 52.974098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708082, 37.046684, 53.071480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039871, -0.240227, -0.969898,
		0.989800, -0.142361, -0.005429,
		-0.136771, -0.960221, 0.243453,
		31.667051, 36.758617, 53.144516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179882, 36.914822, 52.601532>,  <31.762791, 37.430771, 52.974098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179882, 36.914822, 52.601532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828718, 36.755169, 52.707333>,  <31.618019, 36.659378, 52.770813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828718, 36.755169, 52.707333>,  <32.179882, 36.914822, 52.601532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828718, 36.755169, 52.707333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184877, -0.227018, -0.956182,
		0.441687, -0.888346, 0.125512,
		-0.877914, -0.399129, 0.264506,
		31.565344, 36.635429, 52.786686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093956, 36.213699, 52.311432>,  <32.179882, 36.914822, 52.601532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093956, 36.213699, 52.311432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730232, 36.374496, 52.354431>,  <31.511997, 36.470974, 52.380230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.730232, 36.374496, 52.354431>,  <32.093956, 36.213699, 52.311432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730232, 36.374496, 52.354431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191696, -0.175383, -0.965657,
		-0.369335, -0.898689, 0.236538,
		-0.909310, 0.401994, 0.107500,
		31.457439, 36.495094, 52.386681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587185, 35.724609, 52.110855>,  <32.093956, 36.213699, 52.311432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587185, 35.724609, 52.110855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.433102, 36.092346, 52.078808>,  <31.340652, 36.312988, 52.059582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.433102, 36.092346, 52.078808>,  <31.587185, 35.724609, 52.110855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433102, 36.092346, 52.078808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233005, -0.180894, -0.955503,
		-0.892929, -0.349401, 0.283894,
		-0.385209, 0.919345, -0.080114,
		31.317539, 36.368149, 52.054775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004101, 35.601406, 51.740631>,  <31.587185, 35.724609, 52.110855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004101, 35.601406, 51.740631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.060381, 35.992489, 51.678291>,  <31.094149, 36.227139, 51.640888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.060381, 35.992489, 51.678291>,  <31.004101, 35.601406, 51.740631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060381, 35.992489, 51.678291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187300, -0.128287, -0.973890,
		-0.972174, 0.166216, 0.165075,
		0.140699, 0.977709, -0.155850,
		31.102591, 36.285801, 51.631535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446737, 35.810940, 51.380558>,  <31.004101, 35.601406, 51.740631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446737, 35.810940, 51.380558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.720736, 36.094948, 51.315254>,  <30.885134, 36.265354, 51.276073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.720736, 36.094948, 51.315254>,  <30.446737, 35.810940, 51.380558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720736, 36.094948, 51.315254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126183, -0.105081, -0.986426,
		-0.717538, 0.696297, 0.017613,
		0.684994, 0.710020, -0.163261,
		30.926233, 36.307953, 51.266277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125629, 36.258759, 50.874210>,  <30.446737, 35.810940, 51.380558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125629, 36.258759, 50.874210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.505186, 36.373981, 50.822632>,  <30.732920, 36.443115, 50.791683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.505186, 36.373981, 50.822632>,  <30.125629, 36.258759, 50.874210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505186, 36.373981, 50.822632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160004, 0.086895, -0.983284,
		-0.272038, 0.953662, 0.128544,
		0.948891, 0.288058, -0.128951,
		30.789854, 36.460400, 50.783947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146004, 36.864521, 50.457684>,  <30.125629, 36.258759, 50.874210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146004, 36.864521, 50.457684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.508902, 36.702000, 50.414200>,  <30.726641, 36.604485, 50.388107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.508902, 36.702000, 50.414200>,  <30.146004, 36.864521, 50.457684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508902, 36.702000, 50.414200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150043, -0.071186, -0.986113,
		0.392926, 0.910959, -0.125547,
		0.907246, -0.406307, -0.108712,
		30.781076, 36.580109, 50.381588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447048, 37.157700, 49.807095>,  <30.146004, 36.864521, 50.457684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447048, 37.157700, 49.807095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.698030, 36.859146, 49.895832>,  <30.848619, 36.680016, 49.949074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.698030, 36.859146, 49.895832>,  <30.447048, 37.157700, 49.807095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698030, 36.859146, 49.895832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280938, -0.048713, -0.958489,
		0.726204, 0.663734, 0.179122,
		0.627456, -0.746381, 0.221844,
		30.886267, 36.635231, 49.962387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095037, 37.402920, 49.656342>,  <30.447048, 37.157700, 49.807095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095037, 37.402920, 49.656342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.082369, 37.004749, 49.620289>,  <31.074768, 36.765846, 49.598656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.082369, 37.004749, 49.620289>,  <31.095037, 37.402920, 49.656342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082369, 37.004749, 49.620289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253416, 0.079235, -0.964107,
		0.966839, -0.053374, 0.249747,
		-0.031669, -0.995426, -0.090133,
		31.072868, 36.706123, 49.593250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723511, 37.245720, 49.440079>,  <31.095037, 37.402920, 49.656342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723511, 37.245720, 49.440079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492561, 36.927628, 49.366058>,  <31.353991, 36.736771, 49.321648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492561, 36.927628, 49.366058>,  <31.723511, 37.245720, 49.440079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492561, 36.927628, 49.366058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265992, 0.031078, -0.963474,
		0.771937, -0.605508, 0.193581,
		-0.577375, -0.795232, -0.185051,
		31.319349, 36.689056, 49.310543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115448, 36.848793, 49.132999>,  <31.723511, 37.245720, 49.440079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115448, 36.848793, 49.132999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.756399, 36.716324, 49.016663>,  <31.540968, 36.636841, 48.946861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.756399, 36.716324, 49.016663>,  <32.115448, 36.848793, 49.132999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756399, 36.716324, 49.016663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321335, -0.040056, -0.946118,
		0.301679, -0.942719, 0.142373,
		-0.897627, -0.331173, -0.290845,
		31.487110, 36.616974, 48.929409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210133, 36.298008, 48.550259>,  <32.115448, 36.848793, 49.132999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210133, 36.298008, 48.550259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.817205, 36.369415, 48.527729>,  <31.581448, 36.412262, 48.514214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.817205, 36.369415, 48.527729>,  <32.210133, 36.298008, 48.550259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817205, 36.369415, 48.527729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085343, 0.159313, -0.983532,
		-0.166610, -0.970953, -0.171732,
		-0.982322, 0.178523, -0.056321,
		31.522509, 36.422974, 48.510834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933290, 35.876625, 48.102322>,  <32.210133, 36.298008, 48.550259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933290, 35.876625, 48.102322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.696083, 36.198635, 48.108833>,  <31.553759, 36.391842, 48.112740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.696083, 36.198635, 48.108833>,  <31.933290, 35.876625, 48.102322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696083, 36.198635, 48.108833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071416, -0.032447, -0.996919,
		-0.802014, -0.592356, 0.076733,
		-0.593020, 0.805022, 0.016281,
		31.518177, 36.440144, 48.113716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554300, 35.849796, 47.516766>,  <31.933290, 35.876625, 48.102322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554300, 35.849796, 47.516766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.488478, 36.224743, 47.639580>,  <31.448984, 36.449711, 47.713268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.488478, 36.224743, 47.639580>,  <31.554300, 35.849796, 47.516766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488478, 36.224743, 47.639580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147712, 0.284350, -0.947273,
		-0.975245, -0.201231, 0.091669,
		-0.164555, 0.937364, 0.307035,
		31.439112, 36.505951, 47.731689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986135, 36.040932, 47.062325>,  <31.554300, 35.849796, 47.516766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986135, 36.040932, 47.062325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197681, 36.358292, 47.182873>,  <31.324610, 36.548706, 47.255199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.197681, 36.358292, 47.182873>,  <30.986135, 36.040932, 47.062325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197681, 36.358292, 47.182873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006985, 0.359149, -0.933254,
		-0.848676, 0.491463, 0.195484,
		0.528867, 0.793396, 0.301369,
		31.356342, 36.596310, 47.273285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769278, 36.488644, 46.611549>,  <30.986135, 36.040932, 47.062325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769278, 36.488644, 46.611549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095909, 36.661499, 46.764629>,  <31.291889, 36.765213, 46.856476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.095909, 36.661499, 46.764629>,  <30.769278, 36.488644, 46.611549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095909, 36.661499, 46.764629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233715, 0.358693, -0.903724,
		-0.527800, 0.827405, 0.191906,
		0.816581, 0.432134, 0.382695,
		31.340883, 36.791138, 46.879436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845402, 37.149105, 46.361031>,  <30.769278, 36.488644, 46.611549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845402, 37.149105, 46.361031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217892, 37.057621, 46.474525>,  <31.441385, 37.002731, 46.542622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217892, 37.057621, 46.474525>,  <30.845402, 37.149105, 46.361031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217892, 37.057621, 46.474525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356323, 0.407987, -0.840584,
		0.076490, 0.883877, 0.461423,
		0.931227, -0.228712, 0.283739,
		31.497259, 36.989006, 46.559647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104845, 37.803555, 46.203236>,  <30.845402, 37.149105, 46.361031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104845, 37.803555, 46.203236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432011, 37.574429, 46.224770>,  <31.628309, 37.436951, 46.237690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432011, 37.574429, 46.224770>,  <31.104845, 37.803555, 46.203236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432011, 37.574429, 46.224770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363042, 0.441248, -0.820671,
		0.446342, 0.690781, 0.568859,
		0.817912, -0.572819, 0.053835,
		31.677383, 37.402584, 46.240921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749964, 38.247337, 45.940918>,  <31.104845, 37.803555, 46.203236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749964, 38.247337, 45.940918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848591, 37.861561, 45.902832>,  <31.907766, 37.630096, 45.879982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848591, 37.861561, 45.902832>,  <31.749964, 38.247337, 45.940918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848591, 37.861561, 45.902832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416512, 0.194164, -0.888154,
		0.875056, 0.179333, 0.449574,
		0.246567, -0.964438, -0.095210,
		31.922562, 37.572231, 45.874268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525520, 38.223335, 45.708103>,  <31.749964, 38.247337, 45.940918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525520, 38.223335, 45.708103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.365055, 37.870605, 45.608940>,  <32.268776, 37.658970, 45.549442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.365055, 37.870605, 45.608940>,  <32.525520, 38.223335, 45.708103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365055, 37.870605, 45.608940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299006, 0.129757, -0.945388,
		0.865832, -0.453379, 0.211617,
		-0.401161, -0.881822, -0.247911,
		32.244705, 37.606060, 45.534565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.521572, 26.783594, 34.070400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.578983, 26.805523, 34.465652>,  <47.613430, 26.818680, 34.702805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.578983, 26.805523, 34.465652>,  <47.521572, 26.783594, 34.070400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.578983, 26.805523, 34.465652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716928, 0.694052, 0.065630,
		-0.682212, -0.717835, 0.138923,
		0.143531, 0.054824, 0.988126,
		47.622044, 26.821970, 34.762089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.888317, 26.682560, 34.357338>,  <47.521572, 26.783594, 34.070400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.888317, 26.682560, 34.357338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.090271, 26.868744, 34.648113>,  <47.211445, 26.980453, 34.822578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.090271, 26.868744, 34.648113>,  <46.888317, 26.682560, 34.357338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.090271, 26.868744, 34.648113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769046, 0.625001, 0.133947,
		-0.391989, -0.626675, 0.673515,
		0.504888, 0.465459, 0.726936,
		47.241737, 27.008381, 34.866196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288052, 26.787973, 34.813309>,  <46.888317, 26.682560, 34.357338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288052, 26.787973, 34.813309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587448, 27.016499, 34.947987>,  <46.767086, 27.153614, 35.028793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587448, 27.016499, 34.947987>,  <46.288052, 26.787973, 34.813309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587448, 27.016499, 34.947987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656426, 0.710401, 0.253841,
		-0.094168, -0.411015, 0.906752,
		0.748490, 0.571311, 0.336698,
		46.811996, 27.187893, 35.048996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192135, 26.992994, 35.451874>,  <46.288052, 26.787973, 34.813309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192135, 26.992994, 35.451874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.405502, 27.291370, 35.292355>,  <46.533524, 27.470396, 35.196644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.405502, 27.291370, 35.292355>,  <46.192135, 26.992994, 35.451874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.405502, 27.291370, 35.292355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630545, 0.664934, 0.400345,
		0.563808, 0.037909, 0.825035,
		0.533418, 0.745940, -0.398798,
		46.565529, 27.515152, 35.172714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167328, 27.472469, 35.960018>,  <46.192135, 26.992994, 35.451874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167328, 27.472469, 35.960018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280857, 27.685398, 35.640999>,  <46.348976, 27.813156, 35.449589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280857, 27.685398, 35.640999>,  <46.167328, 27.472469, 35.960018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280857, 27.685398, 35.640999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628874, 0.731221, 0.264259,
		0.723851, 0.426550, 0.542305,
		0.283825, 0.532326, -0.797542,
		46.366005, 27.845095, 35.401737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.349033, 28.117107, 36.202347>,  <46.167328, 27.472469, 35.960018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.349033, 28.117107, 36.202347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.326729, 28.202032, 35.812103>,  <46.313347, 28.252987, 35.577957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.326729, 28.202032, 35.812103>,  <46.349033, 28.117107, 36.202347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326729, 28.202032, 35.812103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406584, 0.887614, 0.216402,
		0.911910, 0.408734, 0.036828,
		-0.055762, 0.212313, -0.975609,
		46.310001, 28.265726, 35.519421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.535984, 28.744089, 36.205959>,  <46.349033, 28.117107, 36.202347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.535984, 28.744089, 36.205959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.307201, 28.691641, 35.882065>,  <46.169933, 28.660172, 35.687729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.307201, 28.691641, 35.882065>,  <46.535984, 28.744089, 36.205959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.307201, 28.691641, 35.882065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428587, 0.889453, 0.158705,
		0.699414, 0.437815, -0.564924,
		-0.571957, -0.131119, -0.809737,
		46.135616, 28.652306, 35.639145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.593681, 29.391077, 35.878662>,  <46.535984, 28.744089, 36.205959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.593681, 29.391077, 35.878662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.265190, 29.210999, 35.738434>,  <46.068096, 29.102951, 35.654297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.265190, 29.210999, 35.738434>,  <46.593681, 29.391077, 35.878662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.265190, 29.210999, 35.738434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476537, 0.879065, -0.012567,
		0.313831, 0.156740, -0.936452,
		-0.821232, -0.450198, -0.350570,
		46.018822, 29.075939, 35.633263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.285671, 29.909201, 35.493729>,  <46.593681, 29.391077, 35.878662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.285671, 29.909201, 35.493729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988609, 29.654972, 35.578114>,  <45.810371, 29.502434, 35.628746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.988609, 29.654972, 35.578114>,  <46.285671, 29.909201, 35.493729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988609, 29.654972, 35.578114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624192, 0.771089, 0.125720,
		-0.242577, -0.038315, -0.969375,
		-0.742658, -0.635573, 0.210965,
		45.765812, 29.464300, 35.641403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856533, 30.160913, 35.130058>,  <46.285671, 29.909201, 35.493729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856533, 30.160913, 35.130058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.654015, 29.934029, 35.389885>,  <45.532505, 29.797897, 35.545780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.654015, 29.934029, 35.389885>,  <45.856533, 30.160913, 35.130058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654015, 29.934029, 35.389885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689514, 0.718646, 0.090105,
		-0.517918, -0.402267, -0.754945,
		-0.506292, -0.567212, 0.649568,
		45.502129, 29.763865, 35.584755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089756, 30.252840, 34.899261>,  <45.856533, 30.160913, 35.130058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089756, 30.252840, 34.899261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100826, 30.158405, 35.287796>,  <45.107468, 30.101746, 35.520916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100826, 30.158405, 35.287796>,  <45.089756, 30.252840, 34.899261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100826, 30.158405, 35.287796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622552, 0.756184, 0.201531,
		-0.782089, -0.610286, -0.126047,
		0.027677, -0.236086, 0.971338,
		45.109131, 30.087580, 35.579197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426666, 30.220009, 35.122013>,  <45.089756, 30.252840, 34.899261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426666, 30.220009, 35.122013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641506, 30.300367, 35.449711>,  <44.770409, 30.348583, 35.646332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641506, 30.300367, 35.449711>,  <44.426666, 30.220009, 35.122013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641506, 30.300367, 35.449711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671659, 0.689405, 0.271283,
		-0.510293, -0.695961, 0.505213,
		0.537099, 0.200897, 0.819247,
		44.802635, 30.360636, 35.695484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.908321, 30.335728, 35.570698>,  <44.426666, 30.220009, 35.122013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.908321, 30.335728, 35.570698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.238327, 30.481091, 35.743801>,  <44.436333, 30.568308, 35.847664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.238327, 30.481091, 35.743801>,  <43.908321, 30.335728, 35.570698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.238327, 30.481091, 35.743801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537286, 0.741753, 0.401407,
		-0.175125, -0.563682, 0.807213,
		0.825019, 0.363408, 0.432758,
		44.485832, 30.590113, 35.873627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616032, 30.707754, 36.110497>,  <43.908321, 30.335728, 35.570698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616032, 30.707754, 36.110497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.991325, 30.845840, 36.101265>,  <44.216503, 30.928692, 36.095726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.991325, 30.845840, 36.101265>,  <43.616032, 30.707754, 36.110497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991325, 30.845840, 36.101265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315179, 0.880306, 0.354577,
		0.142726, -0.325402, 0.934742,
		0.938239, 0.345218, -0.023082,
		44.272797, 30.949406, 36.094341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825279, 30.890631, 36.823956>,  <43.616032, 30.707754, 36.110497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825279, 30.890631, 36.823956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.046124, 31.099255, 36.563755>,  <44.178631, 31.224428, 36.407635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.046124, 31.099255, 36.563755>,  <43.825279, 30.890631, 36.823956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046124, 31.099255, 36.563755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393581, 0.850825, 0.348124,
		0.735028, 0.063822, 0.675026,
		0.552111, 0.521558, -0.650500,
		44.211758, 31.255722, 36.368607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997986, 31.435740, 37.170876>,  <43.825279, 30.890631, 36.823956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997986, 31.435740, 37.170876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.090141, 31.538414, 36.795422>,  <44.145435, 31.600018, 36.570148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.090141, 31.538414, 36.795422>,  <43.997986, 31.435740, 37.170876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090141, 31.538414, 36.795422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118128, 0.964826, 0.234853,
		0.965902, 0.056771, 0.252607,
		0.230389, 0.256685, -0.938634,
		44.159260, 31.615419, 36.513832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420753, 32.042839, 37.257023>,  <43.997986, 31.435740, 37.170876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420753, 32.042839, 37.257023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.293308, 32.064087, 36.878464>,  <44.216843, 32.076836, 36.651329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.293308, 32.064087, 36.878464>,  <44.420753, 32.042839, 37.257023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293308, 32.064087, 36.878464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331766, 0.929026, 0.163834,
		0.887930, 0.366182, -0.278374,
		-0.318610, 0.053118, -0.946397,
		44.197727, 32.080021, 36.594543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742573, 32.614162, 36.801937>,  <44.420753, 32.042839, 37.257023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742573, 32.614162, 36.801937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374783, 32.532776, 36.667377>,  <44.154106, 32.483944, 36.586643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374783, 32.532776, 36.667377>,  <44.742573, 32.614162, 36.801937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374783, 32.532776, 36.667377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287993, 0.931055, 0.224045,
		0.267619, 0.302885, -0.914681,
		-0.919478, -0.203463, -0.336397,
		44.098938, 32.471737, 36.566460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496845, 33.286495, 36.703938>,  <44.742573, 32.614162, 36.801937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496845, 33.286495, 36.703938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164680, 33.095772, 36.588650>,  <43.965382, 32.981339, 36.519478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164680, 33.095772, 36.588650>,  <44.496845, 33.286495, 36.703938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164680, 33.095772, 36.588650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473235, 0.876651, -0.086786,
		0.294047, 0.064327, -0.953624,
		-0.830413, -0.476807, -0.288218,
		43.915558, 32.952728, 36.502186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214405, 33.721046, 36.053543>,  <44.496845, 33.286495, 36.703938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214405, 33.721046, 36.053543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911896, 33.515812, 36.215927>,  <43.730392, 33.392670, 36.313358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911896, 33.515812, 36.215927>,  <44.214405, 33.721046, 36.053543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911896, 33.515812, 36.215927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549949, 0.834645, 0.030385,
		-0.354421, -0.200277, -0.913387,
		-0.756269, -0.513085, 0.405958,
		43.685017, 33.361885, 36.337715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658096, 33.984600, 35.638138>,  <44.214405, 33.721046, 36.053543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658096, 33.984600, 35.638138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520206, 33.813374, 35.972305>,  <43.437473, 33.710636, 36.172806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.520206, 33.813374, 35.972305>,  <43.658096, 33.984600, 35.638138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520206, 33.813374, 35.972305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549104, 0.813777, 0.190399,
		-0.761349, -0.393097, -0.515579,
		-0.344721, -0.428067, 0.835420,
		43.416790, 33.684952, 36.222931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912617, 34.421658, 34.986431>,  <43.658096, 33.984600, 35.638138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912617, 34.421658, 34.986431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192322, 34.664940, 34.836170>,  <44.360146, 34.810909, 34.746014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.192322, 34.664940, 34.836170>,  <43.912617, 34.421658, 34.986431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.192322, 34.664940, 34.836170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498165, -0.791468, -0.354133,
		-0.512705, 0.060494, -0.856431,
		0.699260, 0.608210, -0.375654,
		44.402100, 34.847404, 34.723473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016029, 34.372730, 34.179962>,  <43.912617, 34.421658, 34.986431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016029, 34.372730, 34.179962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.340309, 34.432926, 34.406281>,  <44.534878, 34.469044, 34.542068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.340309, 34.432926, 34.406281>,  <44.016029, 34.372730, 34.179962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340309, 34.432926, 34.406281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394778, -0.854160, -0.338468,
		0.432340, 0.497758, -0.751877,
		0.810699, 0.150492, 0.565791,
		44.583519, 34.478073, 34.576019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597404, 34.571468, 33.694008>,  <44.016029, 34.372730, 34.179962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597404, 34.571468, 33.694008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756493, 34.411465, 34.024296>,  <44.851944, 34.315464, 34.222469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756493, 34.411465, 34.024296>,  <44.597404, 34.571468, 33.694008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756493, 34.411465, 34.024296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404462, -0.731359, -0.549113,
		0.823546, 0.552366, -0.129089,
		0.397721, -0.400008, 0.825718,
		44.875809, 34.291462, 34.272011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345604, 34.562469, 33.617218>,  <44.597404, 34.571468, 33.694008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345604, 34.562469, 33.617218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188786, 34.275661, 33.847759>,  <45.094696, 34.103577, 33.986084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188786, 34.275661, 33.847759>,  <45.345604, 34.562469, 33.617218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188786, 34.275661, 33.847759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404349, -0.697057, -0.592127,
		0.826318, 0.000908, 0.563204,
		-0.392047, -0.717015, 0.576358,
		45.071171, 34.060558, 34.020668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801506, 34.100559, 33.610416>,  <45.345604, 34.562469, 33.617218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801506, 34.100559, 33.610416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.519489, 33.872879, 33.779621>,  <45.350281, 33.736271, 33.881142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.519489, 33.872879, 33.779621>,  <45.801506, 34.100559, 33.610416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519489, 33.872879, 33.779621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475627, -0.821965, -0.313292,
		0.526024, -0.019688, 0.850242,
		-0.705038, -0.569197, 0.423009,
		45.307980, 33.702122, 33.906525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187275, 33.466980, 33.934483>,  <45.801506, 34.100559, 33.610416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187275, 33.466980, 33.934483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.809948, 33.336823, 33.908348>,  <45.583553, 33.258728, 33.892666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.809948, 33.336823, 33.908348>,  <46.187275, 33.466980, 33.934483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809948, 33.336823, 33.908348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323577, -0.857891, -0.399149,
		0.073827, -0.397666, 0.914555,
		-0.943317, -0.325397, -0.065340,
		45.526955, 33.239204, 33.888744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162086, 32.769211, 34.215820>,  <46.187275, 33.466980, 33.934483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.162086, 32.769211, 34.215820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850998, 32.795269, 33.965729>,  <45.664345, 32.810905, 33.815674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.850998, 32.795269, 33.965729>,  <46.162086, 32.769211, 34.215820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850998, 32.795269, 33.965729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144545, -0.949429, -0.278731,
		-0.611766, -0.307148, 0.728974,
		-0.777721, 0.065149, -0.625225,
		45.617683, 32.814816, 33.778160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741146, 32.133751, 34.335651>,  <46.162086, 32.769211, 34.215820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741146, 32.133751, 34.335651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.623341, 32.265598, 33.976852>,  <45.552658, 32.344707, 33.761574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.623341, 32.265598, 33.976852>,  <45.741146, 32.133751, 34.335651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623341, 32.265598, 33.976852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095665, -0.923748, -0.370860,
		-0.950847, -0.195035, 0.240523,
		-0.294513, 0.329621, -0.897002,
		45.534985, 32.364483, 33.707752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431072, 31.573460, 34.048714>,  <45.741146, 32.133751, 34.335651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431072, 31.573460, 34.048714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.474476, 31.795713, 33.718987>,  <45.500519, 31.929066, 33.521152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.474476, 31.795713, 33.718987>,  <45.431072, 31.573460, 34.048714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474476, 31.795713, 33.718987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237730, -0.819655, -0.521201,
		-0.965252, -0.139410, -0.221029,
		0.108507, 0.555635, -0.824315,
		45.507027, 31.962404, 33.471691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014313, 31.240267, 33.543026>,  <45.431072, 31.573460, 34.048714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014313, 31.240267, 33.543026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.282436, 31.465517, 33.349705>,  <45.443310, 31.600666, 33.233711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.282436, 31.465517, 33.349705>,  <45.014313, 31.240267, 33.543026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282436, 31.465517, 33.349705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143610, -0.737402, -0.660011,
		-0.728057, 0.373001, -0.575155,
		0.670305, 0.563124, -0.483304,
		45.483528, 31.634455, 33.204712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986164, 31.055099, 32.793152>,  <45.014313, 31.240267, 33.543026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986164, 31.055099, 32.793152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340607, 31.236500, 32.831421>,  <45.553272, 31.345341, 32.854382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.340607, 31.236500, 32.831421>,  <44.986164, 31.055099, 32.793152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340607, 31.236500, 32.831421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438049, -0.752010, -0.492538,
		-0.151422, 0.478349, -0.865017,
		0.886106, 0.453500, 0.095669,
		45.606438, 31.372549, 32.860123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215569, 30.971220, 32.104404>,  <44.986164, 31.055099, 32.793152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215569, 30.971220, 32.104404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.501354, 31.012060, 32.381275>,  <45.672825, 31.036564, 32.547398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.501354, 31.012060, 32.381275>,  <45.215569, 30.971220, 32.104404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.501354, 31.012060, 32.381275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449703, -0.824899, -0.342504,
		0.536009, 0.555983, -0.635277,
		0.714466, 0.102102, 0.692180,
		45.715694, 31.042690, 32.588928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722408, 30.731905, 31.743004>,  <45.215569, 30.971220, 32.104404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722408, 30.731905, 31.743004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.873470, 30.734097, 32.113377>,  <45.964108, 30.735411, 32.335602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.873470, 30.734097, 32.113377>,  <45.722408, 30.731905, 31.743004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.873470, 30.734097, 32.113377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311945, -0.942279, -0.121657,
		0.871819, 0.334784, -0.357562,
		0.377652, 0.005477, 0.925931,
		45.986767, 30.735739, 32.391155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413540, 30.446171, 31.697426>,  <45.722408, 30.731905, 31.743004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413540, 30.446171, 31.697426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.331863, 30.420820, 32.088177>,  <46.282856, 30.405609, 32.322628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.331863, 30.420820, 32.088177>,  <46.413540, 30.446171, 31.697426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331863, 30.420820, 32.088177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353316, -0.935411, 0.013166,
		0.912948, 0.347835, 0.213394,
		-0.204191, -0.063376, 0.976877,
		46.270607, 30.401808, 32.381241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.033382, 30.222479, 32.150608>,  <46.413540, 30.446171, 31.697426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.033382, 30.222479, 32.150608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.694370, 30.122726, 32.338009>,  <46.490963, 30.062876, 32.450451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.694370, 30.122726, 32.338009>,  <47.033382, 30.222479, 32.150608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.694370, 30.122726, 32.338009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349480, -0.926574, 0.139010,
		0.399436, 0.281548, 0.872457,
		-0.847535, -0.249381, 0.468502,
		46.440109, 30.047913, 32.478561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.188065, 30.048195, 32.856400>,  <47.033382, 30.222479, 32.150608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.188065, 30.048195, 32.856400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.855648, 29.852961, 32.749706>,  <46.656197, 29.735821, 32.685692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.855648, 29.852961, 32.749706>,  <47.188065, 30.048195, 32.856400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.855648, 29.852961, 32.749706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490354, -0.869253, 0.062860,
		-0.262537, -0.078552, 0.961719,
		-0.831040, -0.488086, -0.266729,
		46.606335, 29.706535, 32.669689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.375351, 29.418577, 33.128960>,  <47.188065, 30.048195, 32.856400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.375351, 29.418577, 33.128960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.039524, 29.350183, 32.922703>,  <46.838028, 29.309147, 32.798950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.039524, 29.350183, 32.922703>,  <47.375351, 29.418577, 33.128960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039524, 29.350183, 32.922703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163928, -0.984670, 0.059607,
		-0.517930, -0.034484, 0.854728,
		-0.839569, -0.170986, -0.515643,
		46.787655, 29.298887, 32.768009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.981213, 29.035625, 33.498623>,  <47.375351, 29.418577, 33.128960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.981213, 29.035625, 33.498623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.873917, 28.966259, 33.119576>,  <46.809540, 28.924639, 32.892147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.873917, 28.966259, 33.119576>,  <46.981213, 29.035625, 33.498623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.873917, 28.966259, 33.119576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195223, -0.973040, 0.122805,
		-0.943362, -0.152054, 0.294866,
		-0.268244, -0.173415, -0.947614,
		46.793442, 28.914234, 32.835293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697731, 28.365654, 33.564674>,  <46.981213, 29.035625, 33.498623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697731, 28.365654, 33.564674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.756863, 28.427130, 33.173874>,  <46.792343, 28.464016, 32.939396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.756863, 28.427130, 33.173874>,  <46.697731, 28.365654, 33.564674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.756863, 28.427130, 33.173874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009501, -0.987586, -0.156792,
		-0.988967, 0.032460, -0.144532,
		0.147827, 0.153689, -0.976999,
		46.801212, 28.473236, 32.880775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.156147, 28.113764, 33.144970>,  <46.697731, 28.365654, 33.564674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.156147, 28.113764, 33.144970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.491611, 28.106022, 32.927242>,  <46.692890, 28.101377, 32.796608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.491611, 28.106022, 32.927242>,  <46.156147, 28.113764, 33.144970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491611, 28.106022, 32.927242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003283, -0.999530, 0.030482,
		-0.544649, -0.023777, -0.838327,
		0.838658, -0.019355, -0.544315,
		46.743210, 28.100216, 32.763947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957520, 27.558180, 32.677547>,  <46.156147, 28.113764, 33.144970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957520, 27.558180, 32.677547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.349545, 27.632786, 32.650185>,  <46.584759, 27.677549, 32.633766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.349545, 27.632786, 32.650185>,  <45.957520, 27.558180, 32.677547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349545, 27.632786, 32.650185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174801, -0.973233, -0.149208,
		-0.094410, 0.134275, -0.986437,
		0.980067, 0.186516, -0.068411,
		46.643566, 27.688742, 32.629662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.347633, 39.295811, 42.197273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229046, 38.915936, 42.237663>,  <36.157894, 38.688011, 42.261898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229046, 38.915936, 42.237663>,  <36.347633, 39.295811, 42.197273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229046, 38.915936, 42.237663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293869, -0.191312, -0.936505,
		0.908708, -0.247967, 0.335802,
		-0.296465, -0.949691, 0.100977,
		36.140106, 38.631027, 42.267956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880657, 38.801815, 42.136833>,  <36.347633, 39.295811, 42.197273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880657, 38.801815, 42.136833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553394, 38.595982, 42.034210>,  <36.357037, 38.472481, 41.972637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553394, 38.595982, 42.034210>,  <36.880657, 38.801815, 42.136833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553394, 38.595982, 42.034210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453406, -0.302962, -0.838235,
		0.353614, -0.802133, 0.481185,
		-0.818157, -0.514583, -0.256560,
		36.307949, 38.441608, 41.957241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117805, 38.208771, 41.795227>,  <36.880657, 38.801815, 42.136833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117805, 38.208771, 41.795227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741512, 38.199074, 41.659912>,  <36.515736, 38.193256, 41.578724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741512, 38.199074, 41.659912>,  <37.117805, 38.208771, 41.795227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741512, 38.199074, 41.659912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328087, -0.317790, -0.889589,
		-0.085938, -0.947851, 0.306909,
		-0.940731, -0.024243, -0.338288,
		36.459293, 38.191799, 41.558426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051975, 37.578407, 41.541622>,  <37.117805, 38.208771, 41.795227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051975, 37.578407, 41.541622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762512, 37.786633, 41.360371>,  <36.588833, 37.911568, 41.251617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762512, 37.786633, 41.360371>,  <37.051975, 37.578407, 41.541622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762512, 37.786633, 41.360371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337846, -0.305319, -0.890304,
		-0.601812, -0.797365, 0.045076,
		-0.723659, 0.520566, -0.453131,
		36.545414, 37.942802, 41.224430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887051, 37.179623, 41.018330>,  <37.051975, 37.578407, 41.541622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887051, 37.179623, 41.018330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692829, 37.506248, 40.893463>,  <36.576294, 37.702225, 40.818542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692829, 37.506248, 40.893463>,  <36.887051, 37.179623, 41.018330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692829, 37.506248, 40.893463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297711, -0.181292, -0.937284,
		-0.821951, -0.548041, -0.155074,
		-0.485557, 0.816568, -0.312170,
		36.547161, 37.751221, 40.799812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397942, 36.950478, 40.502777>,  <36.887051, 37.179623, 41.018330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397942, 36.950478, 40.502777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501530, 37.327549, 40.418591>,  <36.563683, 37.553791, 40.368076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501530, 37.327549, 40.418591>,  <36.397942, 36.950478, 40.502777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501530, 37.327549, 40.418591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368189, -0.297793, -0.880770,
		-0.892957, 0.150598, -0.424202,
		0.258967, 0.942677, -0.210468,
		36.579220, 37.610352, 40.355450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102768, 37.173367, 39.834591>,  <36.397942, 36.950478, 40.502777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102768, 37.173367, 39.834591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421383, 37.404636, 39.905304>,  <36.612553, 37.543396, 39.947731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421383, 37.404636, 39.905304>,  <36.102768, 37.173367, 39.834591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421383, 37.404636, 39.905304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347948, -0.199259, -0.916094,
		-0.494434, 0.791211, -0.359890,
		0.796535, 0.578170, 0.176780,
		36.660343, 37.578087, 39.958340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146961, 37.482460, 39.307346>,  <36.102768, 37.173367, 39.834591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146961, 37.482460, 39.307346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522930, 37.544888, 39.428802>,  <36.748512, 37.582344, 39.501675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522930, 37.544888, 39.428802>,  <36.146961, 37.482460, 39.307346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522930, 37.544888, 39.428802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313334, -0.041200, -0.948749,
		-0.135557, 0.986887, -0.087625,
		0.939918, 0.156065, 0.303640,
		36.804905, 37.591705, 39.519894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435574, 37.790539, 38.753891>,  <36.146961, 37.482460, 39.307346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435574, 37.790539, 38.753891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778976, 37.740829, 38.952900>,  <36.985016, 37.711002, 39.072304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778976, 37.740829, 38.952900>,  <36.435574, 37.790539, 38.753891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778976, 37.740829, 38.952900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501213, -0.001789, -0.865322,
		0.108426, 0.992247, 0.060751,
		0.858504, -0.124273, 0.497520,
		37.036530, 37.703548, 39.102158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943272, 38.231514, 38.421429>,  <36.435574, 37.790539, 38.753891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943272, 38.231514, 38.421429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204945, 38.004494, 38.621403>,  <37.361946, 37.868282, 38.741386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204945, 38.004494, 38.621403>,  <36.943272, 38.231514, 38.421429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204945, 38.004494, 38.621403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522186, -0.139256, -0.841385,
		0.547150, 0.811475, 0.205270,
		0.654178, -0.567553, 0.499935,
		37.401199, 37.834229, 38.771381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663116, 38.407585, 38.182552>,  <36.943272, 38.231514, 38.421429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663116, 38.407585, 38.182552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676773, 38.050190, 38.361668>,  <37.684967, 37.835754, 38.469135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676773, 38.050190, 38.361668>,  <37.663116, 38.407585, 38.182552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676773, 38.050190, 38.361668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683284, -0.306108, -0.662888,
		0.729354, 0.328598, 0.600056,
		0.034141, -0.893488, 0.447787,
		37.687016, 37.782143, 38.496002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299641, 38.215424, 38.155525>,  <37.663116, 38.407585, 38.182552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299641, 38.215424, 38.155525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109756, 37.863586, 38.167969>,  <37.995827, 37.652485, 38.175434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109756, 37.863586, 38.167969>,  <38.299641, 38.215424, 38.155525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109756, 37.863586, 38.167969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584538, -0.341504, -0.735995,
		0.657998, -0.331203, 0.676271,
		-0.474714, -0.879590, 0.031108,
		37.967342, 37.599709, 38.177299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857014, 37.695076, 38.262913>,  <38.299641, 38.215424, 38.155525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857014, 37.695076, 38.262913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526638, 37.560677, 38.081837>,  <38.328411, 37.480038, 37.973190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526638, 37.560677, 38.081837>,  <38.857014, 37.695076, 38.262913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526638, 37.560677, 38.081837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558752, -0.381095, -0.736589,
		0.074979, -0.861318, 0.502504,
		-0.825939, -0.336004, -0.452689,
		38.278858, 37.459877, 37.946030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119640, 37.037193, 38.136169>,  <38.857014, 37.695076, 38.262913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119640, 37.037193, 38.136169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847187, 37.167347, 37.873817>,  <38.683716, 37.245438, 37.716404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847187, 37.167347, 37.873817>,  <39.119640, 37.037193, 38.136169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847187, 37.167347, 37.873817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556318, -0.352385, -0.752552,
		-0.475991, -0.877468, 0.059005,
		-0.681133, 0.325383, -0.655884,
		38.642845, 37.264961, 37.677052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079380, 36.508835, 37.686985>,  <39.119640, 37.037193, 38.136169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079380, 36.508835, 37.686985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995281, 36.846939, 37.490482>,  <38.944820, 37.049801, 37.372581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995281, 36.846939, 37.490482>,  <39.079380, 36.508835, 37.686985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995281, 36.846939, 37.490482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517150, -0.330279, -0.789603,
		-0.829670, -0.420067, -0.367684,
		-0.210248, 0.845257, -0.491260,
		38.932205, 37.100517, 37.343105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118050, 35.820232, 37.707344>,  <39.079380, 36.508835, 37.686985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118050, 35.820232, 37.707344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452538, 35.667919, 37.865200>,  <39.653229, 35.576530, 37.959915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452538, 35.667919, 37.865200>,  <39.118050, 35.820232, 37.707344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452538, 35.667919, 37.865200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458745, -0.091406, 0.883854,
		-0.300481, -0.920137, -0.251117,
		0.836220, -0.380780, 0.394642,
		39.703403, 35.553684, 37.983593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954681, 35.147644, 38.085896>,  <39.118050, 35.820232, 37.707344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954681, 35.147644, 38.085896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295879, 35.267536, 38.256805>,  <39.500599, 35.339470, 38.359352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295879, 35.267536, 38.256805>,  <38.954681, 35.147644, 38.085896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295879, 35.267536, 38.256805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352975, -0.271748, 0.895300,
		0.384456, -0.914503, -0.126004,
		0.852996, 0.299727, 0.427272,
		39.551777, 35.357456, 38.384987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200546, 34.585602, 38.424923>,  <38.954681, 35.147644, 38.085896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200546, 34.585602, 38.424923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376781, 34.897411, 38.603008>,  <39.482525, 35.084499, 38.709862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376781, 34.897411, 38.603008>,  <39.200546, 34.585602, 38.424923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376781, 34.897411, 38.603008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510001, -0.190789, 0.838749,
		0.738769, -0.596606, 0.313499,
		0.440590, 0.779527, 0.445218,
		39.508957, 35.131268, 38.736572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379307, 34.365246, 39.131611>,  <39.200546, 34.585602, 38.424923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379307, 34.365246, 39.131611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406796, 34.759712, 39.191944>,  <39.423290, 34.996391, 39.228146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406796, 34.759712, 39.191944>,  <39.379307, 34.365246, 39.131611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406796, 34.759712, 39.191944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359328, -0.116577, 0.925901,
		0.930678, -0.117831, 0.346345,
		0.068724, 0.986167, 0.150836,
		39.427414, 35.055561, 39.237194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636356, 34.465397, 39.809952>,  <39.379307, 34.365246, 39.131611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636356, 34.465397, 39.809952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480297, 34.818806, 39.706280>,  <39.386662, 35.030849, 39.644077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480297, 34.818806, 39.706280>,  <39.636356, 34.465397, 39.809952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480297, 34.818806, 39.706280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550569, 0.001764, 0.834788,
		0.738008, 0.468392, 0.485749,
		-0.390151, 0.883519, -0.259184,
		39.363251, 35.083862, 39.628525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746254, 34.855824, 40.356533>,  <39.636356, 34.465397, 39.809952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746254, 34.855824, 40.356533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449978, 35.037518, 40.158524>,  <39.272213, 35.146534, 40.039719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449978, 35.037518, 40.158524>,  <39.746254, 34.855824, 40.356533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449978, 35.037518, 40.158524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539374, 0.037271, 0.841241,
		0.400570, 0.890103, 0.217395,
		-0.740688, 0.454233, -0.495028,
		39.227772, 35.173786, 40.010014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530331, 35.274357, 40.831276>,  <39.746254, 34.855824, 40.356533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530331, 35.274357, 40.831276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236687, 35.271412, 40.559677>,  <39.060501, 35.269646, 40.396717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236687, 35.271412, 40.559677>,  <39.530331, 35.274357, 40.831276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236687, 35.271412, 40.559677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674786, 0.119560, 0.728264,
		0.075820, 0.992800, -0.092737,
		-0.734108, -0.007361, -0.678992,
		39.016453, 35.269203, 40.355980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173176, 35.793896, 41.012985>,  <39.530331, 35.274357, 40.831276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173176, 35.793896, 41.012985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923870, 35.595627, 40.771046>,  <38.774284, 35.476665, 40.625881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923870, 35.595627, 40.771046>,  <39.173176, 35.793896, 41.012985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923870, 35.595627, 40.771046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727568, 0.084017, 0.680871,
		-0.286674, 0.864434, -0.413004,
		-0.623267, -0.495677, -0.604849,
		38.736889, 35.446922, 40.589592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480656, 36.238930, 40.972031>,  <39.173176, 35.793896, 41.012985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480656, 36.238930, 40.972031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413387, 35.852772, 40.892303>,  <38.373024, 35.621078, 40.844467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413387, 35.852772, 40.892303>,  <38.480656, 36.238930, 40.972031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413387, 35.852772, 40.892303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663022, -0.038850, 0.747591,
		-0.729465, 0.257876, -0.633545,
		-0.168173, -0.965397, -0.199317,
		38.362934, 35.563152, 40.832508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737885, 36.153748, 40.795921>,  <38.480656, 36.238930, 40.972031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737885, 36.153748, 40.795921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878773, 35.798145, 40.912960>,  <37.963306, 35.584785, 40.983185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878773, 35.798145, 40.912960>,  <37.737885, 36.153748, 40.795921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878773, 35.798145, 40.912960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715341, -0.054119, 0.696676,
		-0.603512, -0.454692, -0.655002,
		0.352221, -0.889003, 0.292599,
		37.984440, 35.531445, 41.000740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202038, 35.760132, 40.875168>,  <37.737885, 36.153748, 40.795921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202038, 35.760132, 40.875168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482788, 35.577751, 41.094067>,  <37.651237, 35.468323, 41.225407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482788, 35.577751, 41.094067>,  <37.202038, 35.760132, 40.875168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482788, 35.577751, 41.094067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614484, 0.000973, 0.788929,
		-0.360247, -0.890003, -0.279493,
		0.701877, -0.455953, 0.547243,
		37.693352, 35.440964, 41.258240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808998, 35.276752, 41.255142>,  <37.202038, 35.760132, 40.875168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808998, 35.276752, 41.255142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162926, 35.301826, 41.439823>,  <37.375282, 35.316872, 41.550632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162926, 35.301826, 41.439823>,  <36.808998, 35.276752, 41.255142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162926, 35.301826, 41.439823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460538, -0.032797, 0.887034,
		0.070746, -0.997494, -0.000151,
		0.884816, 0.062685, 0.461704,
		37.428371, 35.320629, 41.578335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711201, 34.812916, 41.744328>,  <36.808998, 35.276752, 41.255142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711201, 34.812916, 41.744328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012066, 35.050041, 41.859440>,  <37.192585, 35.192318, 41.928505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012066, 35.050041, 41.859440>,  <36.711201, 34.812916, 41.744328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012066, 35.050041, 41.859440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413843, 0.085098, 0.906362,
		0.512815, -0.800830, 0.309340,
		0.752167, 0.592815, 0.287778,
		37.237717, 35.227886, 41.945774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924751, 34.136875, 41.813061>,  <36.711201, 34.812916, 41.744328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924751, 34.136875, 41.813061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787365, 33.761696, 41.832195>,  <36.704933, 33.536591, 41.843678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787365, 33.761696, 41.832195>,  <36.924751, 34.136875, 41.813061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787365, 33.761696, 41.832195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213702, -0.127653, -0.968523,
		0.914528, -0.322434, 0.244285,
		-0.343469, -0.937945, 0.047837,
		36.684326, 33.480312, 41.846546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437099, 33.818958, 41.525768>,  <36.924751, 34.136875, 41.813061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437099, 33.818958, 41.525768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092415, 33.619892, 41.486191>,  <36.885605, 33.500454, 41.462444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092415, 33.619892, 41.486191>,  <37.437099, 33.818958, 41.525768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092415, 33.619892, 41.486191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157046, -0.076165, -0.984650,
		0.482491, -0.864018, 0.143788,
		-0.861707, -0.497666, -0.098942,
		36.833904, 33.470592, 41.456509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481335, 33.431465, 40.880108>,  <37.437099, 33.818958, 41.525768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481335, 33.431465, 40.880108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083908, 33.409611, 40.919800>,  <36.845451, 33.396496, 40.943615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083908, 33.409611, 40.919800>,  <37.481335, 33.431465, 40.880108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083908, 33.409611, 40.919800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091806, -0.124743, -0.987933,
		0.066361, -0.990683, 0.118923,
		-0.993563, -0.054642, 0.099229,
		36.785839, 33.393219, 40.949570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267391, 32.987358, 40.357910>,  <37.481335, 33.431465, 40.880108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267391, 32.987358, 40.357910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917191, 33.155582, 40.453102>,  <36.707069, 33.256516, 40.510216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917191, 33.155582, 40.453102>,  <37.267391, 32.987358, 40.357910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917191, 33.155582, 40.453102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316816, -0.127703, -0.939851,
		-0.364875, -0.898232, 0.245044,
		-0.875497, 0.420562, 0.237979,
		36.654541, 33.281750, 40.524494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893970, 32.744324, 39.917202>,  <37.267391, 32.987358, 40.357910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893970, 32.744324, 39.917202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648697, 33.043926, 40.017601>,  <36.501534, 33.223686, 40.077839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648697, 33.043926, 40.017601>,  <36.893970, 32.744324, 39.917202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648697, 33.043926, 40.017601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242055, 0.124303, -0.962267,
		-0.751943, -0.650800, 0.105080,
		-0.613181, 0.749005, 0.250998,
		36.464741, 33.268627, 40.092899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186600, 32.526367, 39.583244>,  <36.893970, 32.744324, 39.917202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186600, 32.526367, 39.583244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205166, 32.918701, 39.658932>,  <36.216305, 33.154102, 39.704346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205166, 32.918701, 39.658932>,  <36.186600, 32.526367, 39.583244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205166, 32.918701, 39.658932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201337, 0.194721, -0.959972,
		-0.978422, 0.006457, 0.206516,
		0.046412, 0.980837, 0.189219,
		36.219090, 33.212952, 39.715698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643696, 32.763206, 39.167267>,  <36.186600, 32.526367, 39.583244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643696, 32.763206, 39.167267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865955, 33.087563, 39.240704>,  <35.999313, 33.282177, 39.284763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865955, 33.087563, 39.240704>,  <35.643696, 32.763206, 39.167267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865955, 33.087563, 39.240704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253924, 0.375777, -0.891243,
		-0.791691, 0.448603, 0.414706,
		0.555651, 0.810893, 0.183588,
		36.032650, 33.330830, 39.295780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280891, 33.308792, 38.797794>,  <35.643696, 32.763206, 39.167267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280891, 33.308792, 38.797794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643749, 33.463474, 38.864182>,  <35.861465, 33.556282, 38.904015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643749, 33.463474, 38.864182>,  <35.280891, 33.308792, 38.797794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643749, 33.463474, 38.864182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009450, 0.375578, -0.926743,
		-0.420711, 0.842259, 0.337050,
		0.907146, 0.386705, 0.165969,
		35.915894, 33.579487, 38.913971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158775, 34.029354, 38.691177>,  <35.280891, 33.308792, 38.797794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158775, 34.029354, 38.691177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533466, 33.911434, 38.615681>,  <35.758282, 33.840683, 38.570381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533466, 33.911434, 38.615681>,  <35.158775, 34.029354, 38.691177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533466, 33.911434, 38.615681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063006, 0.388394, -0.919337,
		0.344332, 0.873064, 0.345246,
		0.936731, -0.294804, -0.188745,
		35.814487, 33.822994, 38.559055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436035, 34.574905, 38.271221>,  <35.158775, 34.029354, 38.691177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436035, 34.574905, 38.271221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722736, 34.299885, 38.224682>,  <35.894756, 34.134872, 38.196758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722736, 34.299885, 38.224682>,  <35.436035, 34.574905, 38.271221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722736, 34.299885, 38.224682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092486, 0.259102, -0.961412,
		0.691168, 0.678333, 0.249301,
		0.716752, -0.687554, -0.116347,
		35.937763, 34.093620, 38.189777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083504, 34.808754, 38.060108>,  <35.436035, 34.574905, 38.271221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083504, 34.808754, 38.060108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081894, 34.432281, 37.924953>,  <36.080929, 34.206398, 37.843861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081894, 34.432281, 37.924953>,  <36.083504, 34.808754, 38.060108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081894, 34.432281, 37.924953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110594, 0.335396, -0.935563,
		0.993858, -0.041135, 0.102738,
		-0.004026, -0.941179, -0.337885,
		36.080685, 34.149929, 37.823589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727425, 34.721691, 37.692364>,  <36.083504, 34.808754, 38.060108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727425, 34.721691, 37.692364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427872, 34.486111, 37.570835>,  <36.248138, 34.344761, 37.497917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427872, 34.486111, 37.570835>,  <36.727425, 34.721691, 37.692364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427872, 34.486111, 37.570835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001493, 0.459956, -0.887940,
		0.662697, -0.664512, -0.345334,
		-0.748886, -0.588951, -0.303819,
		36.203205, 34.309425, 37.479691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.839569, 33.113762, 45.498905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482464, 32.961540, 45.402447>,  <36.268200, 32.870205, 45.344574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482464, 32.961540, 45.402447>,  <36.839569, 33.113762, 45.498905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482464, 32.961540, 45.402447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329694, -0.187074, -0.925368,
		0.307045, -0.905637, 0.292481,
		-0.892763, -0.380558, -0.241143,
		36.214634, 32.847374, 45.330105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970955, 32.485737, 45.018116>,  <36.839569, 33.113762, 45.498905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970955, 32.485737, 45.018116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588917, 32.597866, 44.979706>,  <36.359695, 32.665142, 44.956661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.588917, 32.597866, 44.979706>,  <36.970955, 32.485737, 45.018116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588917, 32.597866, 44.979706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119352, 0.067328, -0.990567,
		-0.271209, -0.957543, -0.097761,
		-0.955092, 0.280319, -0.096024,
		36.302391, 32.681961, 44.950897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770466, 32.024242, 44.512539>,  <36.970955, 32.485737, 45.018116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770466, 32.024242, 44.512539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518791, 32.334843, 44.526287>,  <36.367786, 32.521202, 44.534538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518791, 32.334843, 44.526287>,  <36.770466, 32.024242, 44.512539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518791, 32.334843, 44.526287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074359, -0.016112, -0.997101,
		-0.773692, -0.629916, 0.067877,
		-0.629183, 0.776497, 0.034374,
		36.330036, 32.567791, 44.536598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286915, 31.892160, 43.983997>,  <36.770466, 32.024242, 44.512539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286915, 31.892160, 43.983997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.248463, 32.284706, 44.050549>,  <36.225391, 32.520233, 44.090477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.248463, 32.284706, 44.050549>,  <36.286915, 31.892160, 43.983997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248463, 32.284706, 44.050549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010115, 0.166176, -0.986044,
		-0.995317, -0.096470, -0.006047,
		-0.096129, 0.981366, 0.166374,
		36.219624, 32.579117, 44.100460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816555, 32.085613, 43.544178>,  <36.286915, 31.892160, 43.983997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816555, 32.085613, 43.544178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001034, 32.426086, 43.644409>,  <36.111721, 32.630371, 43.704548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001034, 32.426086, 43.644409>,  <35.816555, 32.085613, 43.544178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001034, 32.426086, 43.644409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062448, 0.312844, -0.947749,
		-0.885098, 0.421449, 0.197436,
		0.461195, 0.851181, 0.250579,
		36.139393, 32.681442, 43.719582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478264, 32.624451, 43.085514>,  <35.816555, 32.085613, 43.544178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478264, 32.624451, 43.085514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.839161, 32.753132, 43.200386>,  <36.055698, 32.830341, 43.269310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.839161, 32.753132, 43.200386>,  <35.478264, 32.624451, 43.085514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839161, 32.753132, 43.200386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189928, 0.301442, -0.934377,
		-0.387161, 0.897574, 0.210872,
		0.902238, 0.321704, 0.287181,
		36.109833, 32.849644, 43.286541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420406, 33.310665, 43.005215>,  <35.478264, 32.624451, 43.085514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420406, 33.310665, 43.005215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805382, 33.202137, 43.001270>,  <36.036366, 33.137020, 42.998901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.805382, 33.202137, 43.001270>,  <35.420406, 33.310665, 43.005215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805382, 33.202137, 43.001270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120421, 0.459166, -0.880151,
		0.243328, 0.845904, 0.474592,
		0.962440, -0.271317, -0.009863,
		36.094112, 33.120743, 42.998310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719341, 33.771473, 42.581448>,  <35.420406, 33.310665, 43.005215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719341, 33.771473, 42.581448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029263, 33.519760, 42.605701>,  <36.215218, 33.368732, 42.620255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029263, 33.519760, 42.605701>,  <35.719341, 33.771473, 42.581448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029263, 33.519760, 42.605701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250464, 0.217489, -0.943380,
		0.580468, 0.746123, 0.326125,
		0.774806, -0.629285, 0.060632,
		36.261703, 33.330975, 42.623890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336422, 34.159588, 42.327290>,  <35.719341, 33.771473, 42.581448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336422, 34.159588, 42.327290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442291, 33.776978, 42.278297>,  <36.505814, 33.547409, 42.248901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442291, 33.776978, 42.278297>,  <36.336422, 34.159588, 42.327290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442291, 33.776978, 42.278297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248352, 0.190340, -0.949785,
		0.931810, 0.220962, 0.287933,
		0.264672, -0.956528, -0.122485,
		36.521694, 33.490021, 42.241550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848095, 34.590420, 42.602139>,  <36.336422, 34.159588, 42.327290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848095, 34.590420, 42.602139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035496, 34.939610, 42.547848>,  <37.147934, 35.149124, 42.515274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035496, 34.939610, 42.547848>,  <36.848095, 34.590420, 42.602139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035496, 34.939610, 42.547848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008124, 0.157881, 0.987425,
		0.883427, -0.461504, 0.081059,
		0.468498, 0.872976, -0.135727,
		37.176044, 35.201504, 42.507130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509899, 34.647144, 43.064861>,  <36.848095, 34.590420, 42.602139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509899, 34.647144, 43.064861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411983, 35.023777, 42.972343>,  <37.353233, 35.249756, 42.916832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.411983, 35.023777, 42.972343>,  <37.509899, 34.647144, 43.064861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411983, 35.023777, 42.972343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083215, 0.258073, 0.962535,
		0.965998, 0.216375, -0.141528,
		-0.244793, 0.941584, -0.231293,
		37.338547, 35.306252, 42.902954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912079, 34.977116, 43.530796>,  <37.509899, 34.647144, 43.064861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912079, 34.977116, 43.530796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.657143, 35.258064, 43.404007>,  <37.504181, 35.426632, 43.327934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.657143, 35.258064, 43.404007>,  <37.912079, 34.977116, 43.530796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657143, 35.258064, 43.404007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119522, 0.316259, 0.941113,
		0.761256, 0.637696, -0.117617,
		-0.637341, 0.702370, -0.316973,
		37.465939, 35.468777, 43.308914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125309, 35.535271, 43.845581>,  <37.912079, 34.977116, 43.530796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125309, 35.535271, 43.845581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741718, 35.586983, 43.744659>,  <37.511566, 35.618011, 43.684105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.741718, 35.586983, 43.744659>,  <38.125309, 35.535271, 43.845581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741718, 35.586983, 43.744659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207469, 0.286490, 0.935350,
		0.193206, 0.949321, -0.247914,
		-0.958973, 0.129281, -0.252306,
		37.454025, 35.625767, 43.668968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976620, 36.185516, 44.141598>,  <38.125309, 35.535271, 43.845581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976620, 36.185516, 44.141598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625393, 36.010521, 44.064037>,  <37.414658, 35.905525, 44.017502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625393, 36.010521, 44.064037>,  <37.976620, 36.185516, 44.141598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625393, 36.010521, 44.064037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335948, 0.274997, 0.900841,
		-0.340784, 0.856143, -0.388440,
		-0.878069, -0.437488, -0.193905,
		37.361973, 35.879276, 44.005867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511162, 36.675804, 44.285652>,  <37.976620, 36.185516, 44.141598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511162, 36.675804, 44.285652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.318237, 36.327560, 44.324459>,  <37.202484, 36.118614, 44.347744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.318237, 36.327560, 44.324459>,  <37.511162, 36.675804, 44.285652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318237, 36.327560, 44.324459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248314, 0.242083, 0.937942,
		-0.840070, 0.428287, -0.332944,
		-0.482309, -0.870612, 0.097017,
		37.173546, 36.066376, 44.353565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898781, 36.801693, 44.593815>,  <37.511162, 36.675804, 44.285652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898781, 36.801693, 44.593815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.907665, 36.412468, 44.685596>,  <36.912994, 36.178932, 44.740665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.907665, 36.412468, 44.685596>,  <36.898781, 36.801693, 44.593815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907665, 36.412468, 44.685596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094100, 0.226456, 0.969465,
		-0.995315, -0.043121, -0.086536,
		0.022207, -0.973067, 0.229452,
		36.914326, 36.120548, 44.754433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345097, 36.711758, 45.098389>,  <36.898781, 36.801693, 44.593815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345097, 36.711758, 45.098389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618874, 36.421154, 45.122784>,  <36.783142, 36.246792, 45.137421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618874, 36.421154, 45.122784>,  <36.345097, 36.711758, 45.098389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618874, 36.421154, 45.122784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043169, 0.043117, 0.998137,
		-0.727784, -0.685804, -0.001851,
		0.684447, -0.726508, 0.060986,
		36.824207, 36.203201, 45.141079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104858, 36.239208, 45.605541>,  <36.345097, 36.711758, 45.098389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104858, 36.239208, 45.605541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.493793, 36.145897, 45.600960>,  <36.727154, 36.089909, 45.598209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.493793, 36.145897, 45.600960>,  <36.104858, 36.239208, 45.605541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493793, 36.145897, 45.600960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011334, -0.001867, 0.999934,
		-0.233288, -0.972407, 0.000829,
		0.972341, -0.233282, -0.011456,
		36.785496, 36.075912, 45.597523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218357, 35.576294, 46.001137>,  <36.104858, 36.239208, 45.605541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218357, 35.576294, 46.001137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.574566, 35.757919, 46.012375>,  <36.788292, 35.866894, 46.019119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.574566, 35.757919, 46.012375>,  <36.218357, 35.576294, 46.001137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574566, 35.757919, 46.012375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032673, -0.125442, 0.991563,
		0.453758, -0.882094, -0.126545,
		0.890526, 0.454064, 0.028099,
		36.841724, 35.894138, 46.020805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669693, 35.219536, 46.450623>,  <36.218357, 35.576294, 46.001137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669693, 35.219536, 46.450623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850285, 35.575916, 46.431126>,  <36.958641, 35.789745, 46.419430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850285, 35.575916, 46.431126>,  <36.669693, 35.219536, 46.450623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850285, 35.575916, 46.431126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184858, -0.039958, 0.981953,
		0.872921, -0.452345, -0.182739,
		0.451483, 0.890948, -0.048739,
		36.985729, 35.843201, 46.416504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381741, 35.065693, 46.751415>,  <36.669693, 35.219536, 46.450623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381741, 35.065693, 46.751415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278286, 35.450924, 46.781322>,  <37.216213, 35.682064, 46.799267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278286, 35.450924, 46.781322>,  <37.381741, 35.065693, 46.751415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278286, 35.450924, 46.781322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017389, -0.082034, 0.996478,
		0.965819, 0.256423, 0.037964,
		-0.258634, 0.963077, 0.074771,
		37.200695, 35.739845, 46.803753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502373, 35.104729, 47.382038>,  <37.381741, 35.065693, 46.751415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502373, 35.104729, 47.382038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307503, 35.448383, 47.319374>,  <37.190578, 35.654575, 47.281776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307503, 35.448383, 47.319374>,  <37.502373, 35.104729, 47.382038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307503, 35.448383, 47.319374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111062, 0.116980, 0.986905,
		0.866212, 0.498197, 0.038427,
		-0.487178, 0.859136, -0.156660,
		37.161350, 35.706123, 47.272377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836090, 35.618958, 47.881088>,  <37.502373, 35.104729, 47.382038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836090, 35.618958, 47.881088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478287, 35.762085, 47.773888>,  <37.263607, 35.847961, 47.709568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478287, 35.762085, 47.773888>,  <37.836090, 35.618958, 47.881088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478287, 35.762085, 47.773888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157442, 0.308924, 0.937965,
		0.418413, 0.881210, -0.219998,
		-0.894507, 0.357820, -0.267998,
		37.209934, 35.869431, 47.693489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.631844, 34.401474, 46.307999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.020721, 34.319378, 46.353100>,  <31.254047, 34.270123, 46.380161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.020721, 34.319378, 46.353100>,  <30.631844, 34.401474, 46.307999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020721, 34.319378, 46.353100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175617, 0.320497, -0.930828,
		0.154903, 0.924748, 0.347629,
		0.972195, -0.205238, 0.112755,
		31.312380, 34.257805, 46.386925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883575, 34.895214, 45.989265>,  <30.631844, 34.401474, 46.307999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883575, 34.895214, 45.989265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.181381, 34.629513, 46.016006>,  <31.360065, 34.470093, 46.032051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.181381, 34.629513, 46.016006>,  <30.883575, 34.895214, 45.989265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181381, 34.629513, 46.016006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250584, 0.185228, -0.950210,
		0.618795, 0.724197, 0.304355,
		0.744514, -0.664251, 0.066854,
		31.404736, 34.430237, 46.036064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405148, 35.222694, 45.715412>,  <30.883575, 34.895214, 45.989265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405148, 35.222694, 45.715412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.556450, 34.853287, 45.689980>,  <31.647232, 34.631641, 45.674721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.556450, 34.853287, 45.689980>,  <31.405148, 35.222694, 45.715412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556450, 34.853287, 45.689980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366921, 0.212630, -0.905625,
		0.849877, 0.319230, 0.419286,
		0.378255, -0.923515, -0.063578,
		31.669926, 34.576233, 45.670906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978561, 35.295952, 45.376015>,  <31.405148, 35.222694, 45.715412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978561, 35.295952, 45.376015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913904, 34.906769, 45.310017>,  <31.875109, 34.673260, 45.270416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.913904, 34.906769, 45.310017>,  <31.978561, 35.295952, 45.376015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913904, 34.906769, 45.310017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211598, 0.129133, -0.968789,
		0.963897, -0.191511, 0.185002,
		-0.161644, -0.972959, -0.164994,
		31.865412, 34.614880, 45.260517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416115, 35.160156, 44.920311>,  <31.978561, 35.295952, 45.376015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416115, 35.160156, 44.920311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186611, 34.834011, 44.889393>,  <32.048908, 34.638325, 44.870842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186611, 34.834011, 44.889393>,  <32.416115, 35.160156, 44.920311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186611, 34.834011, 44.889393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224824, -0.066046, -0.972159,
		0.787560, -0.575166, 0.221208,
		-0.573763, -0.815366, -0.077296,
		32.014481, 34.589401, 44.866203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846947, 34.619064, 44.641884>,  <32.416115, 35.160156, 44.920311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846947, 34.619064, 44.641884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469025, 34.522289, 44.553516>,  <32.242271, 34.464226, 44.500496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469025, 34.522289, 44.553516>,  <32.846947, 34.619064, 44.641884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469025, 34.522289, 44.553516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263678, -0.161315, -0.951026,
		0.194451, -0.956789, 0.216205,
		-0.944808, -0.241937, -0.220916,
		32.185581, 34.449707, 44.487240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806152, 34.233971, 43.967201>,  <32.846947, 34.619064, 44.641884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806152, 34.233971, 43.967201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425976, 34.347111, 44.018826>,  <32.197868, 34.414993, 44.049801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425976, 34.347111, 44.018826>,  <32.806152, 34.233971, 43.967201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425976, 34.347111, 44.018826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176849, -0.150456, -0.972670,
		-0.255703, -0.947290, 0.193022,
		-0.950442, 0.282851, 0.129056,
		32.140842, 34.431965, 44.057541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364037, 33.703915, 43.704281>,  <32.806152, 34.233971, 43.967201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364037, 33.703915, 43.704281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.185429, 34.061302, 43.684929>,  <32.078266, 34.275734, 43.673317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.185429, 34.061302, 43.684929>,  <32.364037, 33.703915, 43.704281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185429, 34.061302, 43.684929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014986, -0.046592, -0.998802,
		-0.894649, -0.446708, 0.007415,
		-0.446518, 0.893466, -0.048378,
		32.051472, 34.329342, 43.670414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862110, 33.552910, 43.135330>,  <32.364037, 33.703915, 43.704281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862110, 33.552910, 43.135330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.862619, 33.950558, 43.178635>,  <31.862925, 34.189148, 43.204617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.862619, 33.950558, 43.178635>,  <31.862110, 33.552910, 43.135330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862619, 33.950558, 43.178635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001455, 0.108266, -0.994121,
		-0.999998, 0.001110, 0.001585,
		0.001275, 0.994121, 0.108264,
		31.863003, 34.248795, 43.211113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235706, 33.818626, 42.799412>,  <31.862110, 33.552910, 43.135330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235706, 33.818626, 42.799412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477112, 34.135784, 42.833096>,  <31.621956, 34.326077, 42.853306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.477112, 34.135784, 42.833096>,  <31.235706, 33.818626, 42.799412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477112, 34.135784, 42.833096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088405, 0.171503, -0.981209,
		-0.792436, 0.584730, 0.173600,
		0.603515, 0.792892, 0.084212,
		31.658167, 34.373653, 42.858360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928347, 34.259392, 42.324333>,  <31.235706, 33.818626, 42.799412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928347, 34.259392, 42.324333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.300810, 34.393124, 42.382534>,  <31.524288, 34.473362, 42.417454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.300810, 34.393124, 42.382534>,  <30.928347, 34.259392, 42.324333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300810, 34.393124, 42.382534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075698, 0.213103, -0.974093,
		-0.356673, 0.918048, 0.173124,
		0.931157, 0.334328, 0.145503,
		31.580156, 34.493423, 42.426186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008755, 34.890556, 41.811951>,  <30.928347, 34.259392, 42.324333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008755, 34.890556, 41.811951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.372498, 34.781189, 41.937370>,  <31.590744, 34.715569, 42.012623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.372498, 34.781189, 41.937370>,  <31.008755, 34.890556, 41.811951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372498, 34.781189, 41.937370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334508, 0.032467, -0.941833,
		0.247332, 0.961348, 0.120984,
		0.909358, -0.273416, 0.313548,
		31.645306, 34.699165, 42.031433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400940, 35.404781, 41.531296>,  <31.008755, 34.890556, 41.811951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400940, 35.404781, 41.531296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.628914, 35.081814, 41.592281>,  <31.765697, 34.888031, 41.628872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.628914, 35.081814, 41.592281>,  <31.400940, 35.404781, 41.531296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628914, 35.081814, 41.592281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473172, 0.170798, -0.864255,
		0.671777, 0.564711, 0.479393,
		0.569934, -0.807421, 0.152467,
		31.799894, 34.839588, 41.638023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131622, 35.615089, 41.457661>,  <31.400940, 35.404781, 41.531296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131622, 35.615089, 41.457661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046894, 35.232342, 41.378139>,  <31.996056, 35.002693, 41.330425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046894, 35.232342, 41.378139>,  <32.131622, 35.615089, 41.457661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046894, 35.232342, 41.378139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262477, 0.140247, -0.954692,
		0.941401, -0.254408, 0.221449,
		-0.211824, -0.956874, -0.198805,
		31.983347, 34.945278, 41.318497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698929, 35.958714, 41.713486>,  <32.131622, 35.615089, 41.457661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698929, 35.958714, 41.713486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810921, 36.341263, 41.680122>,  <32.878117, 36.570793, 41.660107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810921, 36.341263, 41.680122>,  <32.698929, 35.958714, 41.713486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810921, 36.341263, 41.680122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236042, 0.152793, 0.959655,
		0.930535, -0.248997, 0.268524,
		0.279981, 0.956376, -0.083406,
		32.894917, 36.628174, 41.655102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932148, 36.049023, 42.414188>,  <32.698929, 35.958714, 41.713486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932148, 36.049023, 42.414188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886257, 36.410881, 42.250015>,  <32.858723, 36.627995, 42.151512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.886257, 36.410881, 42.250015>,  <32.932148, 36.049023, 42.414188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886257, 36.410881, 42.250015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145014, 0.393480, 0.907824,
		0.982755, 0.163671, 0.086043,
		-0.114729, 0.904647, -0.410429,
		32.851837, 36.682274, 42.126888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410275, 36.597832, 42.680145>,  <32.932148, 36.049023, 42.414188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410275, 36.597832, 42.680145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110634, 36.805328, 42.515347>,  <32.930847, 36.929829, 42.416466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.110634, 36.805328, 42.515347>,  <33.410275, 36.597832, 42.680145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110634, 36.805328, 42.515347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208761, 0.405384, 0.889990,
		0.628696, 0.752707, -0.195382,
		-0.749106, 0.518745, -0.411999,
		32.885902, 36.960953, 42.391747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558025, 37.264191, 42.806637>,  <33.410275, 36.597832, 42.680145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558025, 37.264191, 42.806637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162273, 37.255405, 42.749153>,  <32.924824, 37.250134, 42.714661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162273, 37.255405, 42.749153>,  <33.558025, 37.264191, 42.806637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162273, 37.255405, 42.749153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138211, 0.448690, 0.882935,
		0.045090, 0.893417, -0.446959,
		-0.989376, -0.021964, -0.143712,
		32.865459, 37.248817, 42.706039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308300, 37.839523, 43.095688>,  <33.558025, 37.264191, 42.806637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308300, 37.839523, 43.095688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.986652, 37.602757, 43.073689>,  <32.793663, 37.460697, 43.060490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.986652, 37.602757, 43.073689>,  <33.308300, 37.839523, 43.095688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986652, 37.602757, 43.073689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283838, 0.301007, 0.910401,
		-0.522326, 0.747684, -0.410054,
		-0.804122, -0.591915, -0.054998,
		32.745415, 37.425182, 43.057190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807507, 38.279034, 43.314865>,  <33.308300, 37.839523, 43.095688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807507, 38.279034, 43.314865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.679283, 37.901600, 43.348064>,  <32.602348, 37.675140, 43.367985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.679283, 37.901600, 43.348064>,  <32.807507, 38.279034, 43.314865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679283, 37.901600, 43.348064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264445, 0.173284, 0.948705,
		-0.909565, 0.282171, -0.305074,
		-0.320562, -0.943585, 0.082994,
		32.583115, 37.618523, 43.372963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124535, 38.321712, 43.718395>,  <32.807507, 38.279034, 43.314865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124535, 38.321712, 43.718395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.243797, 37.942314, 43.761200>,  <32.315357, 37.714676, 43.786884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.243797, 37.942314, 43.761200>,  <32.124535, 38.321712, 43.718395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243797, 37.942314, 43.761200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381011, -0.015474, 0.924441,
		-0.875175, -0.316405, -0.366002,
		0.298161, -0.948498, 0.107012,
		32.333244, 37.657764, 43.793304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648993, 38.031986, 44.017925>,  <32.124535, 38.321712, 43.718395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648993, 38.031986, 44.017925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.947474, 37.779987, 44.103981>,  <32.126560, 37.628788, 44.155613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.947474, 37.779987, 44.103981>,  <31.648993, 38.031986, 44.017925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947474, 37.779987, 44.103981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227648, 0.062204, 0.971755,
		-0.625588, -0.774099, -0.097002,
		0.746201, -0.630001, 0.215137,
		32.171333, 37.590988, 44.168522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358582, 37.693050, 44.505886>,  <31.648993, 38.031986, 44.017925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358582, 37.693050, 44.505886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.739706, 37.571846, 44.513229>,  <31.968380, 37.499123, 44.517635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.739706, 37.571846, 44.513229>,  <31.358582, 37.693050, 44.505886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739706, 37.571846, 44.513229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074617, -0.175154, 0.981709,
		-0.294251, -0.936753, -0.189499,
		0.952811, -0.303009, 0.018358,
		32.025551, 37.480942, 44.518738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346098, 36.971493, 44.776615>,  <31.358582, 37.693050, 44.505886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346098, 36.971493, 44.776615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673317, 37.172638, 44.888279>,  <31.869648, 37.293324, 44.955276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673317, 37.172638, 44.888279>,  <31.346098, 36.971493, 44.776615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673317, 37.172638, 44.888279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192938, -0.217315, 0.956843,
		0.541824, -0.836604, -0.080753,
		0.818047, 0.502860, 0.279159,
		31.918732, 37.323498, 44.972027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644175, 36.510868, 45.214756>,  <31.346098, 36.971493, 44.776615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644175, 36.510868, 45.214756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.835587, 36.847885, 45.313652>,  <31.950434, 37.050095, 45.372990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.835587, 36.847885, 45.313652>,  <31.644175, 36.510868, 45.214756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835587, 36.847885, 45.313652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113683, -0.219752, 0.968909,
		0.870682, -0.491758, -0.009374,
		0.478529, 0.842546, 0.247238,
		31.979145, 37.100651, 45.387825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207088, 36.350414, 45.670277>,  <31.644175, 36.510868, 45.214756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207088, 36.350414, 45.670277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127747, 36.734798, 45.747433>,  <32.080139, 36.965431, 45.793728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127747, 36.734798, 45.747433>,  <32.207088, 36.350414, 45.670277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127747, 36.734798, 45.747433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159496, -0.225825, 0.961023,
		0.967066, 0.159860, 0.198063,
		-0.198356, 0.960962, 0.192891,
		32.068241, 37.023087, 45.805302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677059, 36.548336, 46.213280>,  <32.207088, 36.350414, 45.670277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677059, 36.548336, 46.213280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362450, 36.795036, 46.225967>,  <32.173683, 36.943054, 46.233578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.362450, 36.795036, 46.225967>,  <32.677059, 36.548336, 46.213280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362450, 36.795036, 46.225967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018773, -0.075209, 0.996991,
		0.617278, 0.783559, 0.070732,
		-0.786521, 0.616749, 0.031715,
		32.126492, 36.980061, 46.235481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731407, 36.889256, 46.902225>,  <32.677059, 36.548336, 46.213280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731407, 36.889256, 46.902225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.347385, 36.935890, 46.800480>,  <32.116970, 36.963871, 46.739433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.347385, 36.935890, 46.800480>,  <32.731407, 36.889256, 46.902225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347385, 36.935890, 46.800480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265665, -0.094473, 0.959425,
		0.087828, 0.988677, 0.121673,
		-0.960056, 0.116588, -0.254360,
		32.059368, 36.970867, 46.724171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035885, 37.568996, 46.931053>,  <32.731407, 36.889256, 46.902225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035885, 37.568996, 46.931053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377979, 37.726166, 47.066216>,  <33.583237, 37.820465, 47.147312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377979, 37.726166, 47.066216>,  <33.035885, 37.568996, 46.931053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377979, 37.726166, 47.066216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285769, 0.186379, -0.940000,
		-0.432323, 0.900487, 0.047115,
		0.855239, 0.392919, 0.337907,
		33.634552, 37.844040, 47.167587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143467, 38.328899, 46.609055>,  <33.035885, 37.568996, 46.931053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143467, 38.328899, 46.609055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.495319, 38.164898, 46.705509>,  <33.706429, 38.066498, 46.763382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.495319, 38.164898, 46.705509>,  <33.143467, 38.328899, 46.609055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495319, 38.164898, 46.705509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388108, 0.325555, -0.862198,
		0.275001, 0.852003, 0.445494,
		0.879629, -0.410005, 0.241141,
		33.759209, 38.041897, 46.777851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732525, 38.807003, 46.348392>,  <33.143467, 38.328899, 46.609055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732525, 38.807003, 46.348392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934807, 38.471287, 46.428246>,  <34.056175, 38.269855, 46.476158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.934807, 38.471287, 46.428246>,  <33.732525, 38.807003, 46.348392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934807, 38.471287, 46.428246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631162, 0.202182, -0.748837,
		0.588133, 0.504687, 0.631974,
		0.505702, -0.839293, 0.199629,
		34.086517, 38.219498, 46.488132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398151, 38.978203, 46.305267>,  <33.732525, 38.807003, 46.348392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398151, 38.978203, 46.305267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.433208, 38.580399, 46.282391>,  <34.454243, 38.341717, 46.268665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.433208, 38.580399, 46.282391>,  <34.398151, 38.978203, 46.305267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433208, 38.580399, 46.282391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754179, 0.103753, -0.648421,
		0.650794, 0.013701, 0.759131,
		0.087646, -0.994509, -0.057189,
		34.459503, 38.282047, 46.265232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081482, 38.836071, 46.319843>,  <34.398151, 38.978203, 46.305267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081482, 38.836071, 46.319843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927395, 38.501400, 46.164112>,  <34.834942, 38.300598, 46.070675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927395, 38.501400, 46.164112>,  <35.081482, 38.836071, 46.319843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927395, 38.501400, 46.164112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713071, -0.002072, -0.701089,
		0.585782, -0.547686, 0.597411,
		-0.385215, -0.836681, -0.389325,
		34.811829, 38.250397, 46.047314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588669, 38.280006, 46.287971>,  <35.081482, 38.836071, 46.319843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588669, 38.280006, 46.287971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.328659, 38.221581, 45.989674>,  <35.172653, 38.186523, 45.810696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.328659, 38.221581, 45.989674>,  <35.588669, 38.280006, 46.287971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328659, 38.221581, 45.989674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736616, 0.120025, -0.665575,
		0.186728, -0.981966, 0.029578,
		-0.650022, -0.146069, -0.745745,
		35.133652, 38.177761, 45.765949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971920, 37.913349, 45.803570>,  <35.588669, 38.280006, 46.287971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971920, 37.913349, 45.803570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.653332, 38.007751, 45.580887>,  <35.462177, 38.064392, 45.447277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.653332, 38.007751, 45.580887>,  <35.971920, 37.913349, 45.803570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653332, 38.007751, 45.580887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564644, -0.039120, -0.824407,
		-0.216347, -0.970963, -0.102103,
		-0.796474, 0.236010, -0.556712,
		35.414391, 38.078556, 45.413872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006905, 37.482922, 45.209084>,  <35.971920, 37.913349, 45.803570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006905, 37.482922, 45.209084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775032, 37.778824, 45.072422>,  <35.635910, 37.956364, 44.990425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775032, 37.778824, 45.072422>,  <36.006905, 37.482922, 45.209084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775032, 37.778824, 45.072422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447189, -0.061692, -0.892309,
		-0.681170, -0.670040, -0.295050,
		-0.579680, 0.739757, -0.341657,
		35.601128, 38.000751, 44.969925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584690, 37.210064, 44.622528>,  <36.006905, 37.482922, 45.209084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584690, 37.210064, 44.622528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.577324, 37.609459, 44.601776>,  <35.572903, 37.849094, 44.589325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.577324, 37.609459, 44.601776>,  <35.584690, 37.210064, 44.622528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577324, 37.609459, 44.601776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026799, -0.051378, -0.998320,
		-0.999471, -0.019777, -0.025812,
		-0.018418, 0.998483, -0.051881,
		35.571800, 37.909004, 44.586212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991627, 37.487400, 44.099964>,  <35.584690, 37.210064, 44.622528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991627, 37.487400, 44.099964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.257290, 37.785404, 44.124790>,  <35.416687, 37.964207, 44.139687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.257290, 37.785404, 44.124790>,  <34.991627, 37.487400, 44.099964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257290, 37.785404, 44.124790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092946, 0.000091, -0.995671,
		-0.741792, 0.667051, -0.069186,
		0.664158, 0.745012, 0.062067,
		35.456535, 38.008907, 44.143410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830597, 37.904095, 43.568012>,  <34.991627, 37.487400, 44.099964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830597, 37.904095, 43.568012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.197456, 38.042042, 43.647923>,  <35.417572, 38.124809, 43.695869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.197456, 38.042042, 43.647923>,  <34.830597, 37.904095, 43.568012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197456, 38.042042, 43.647923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153345, 0.157315, -0.975570,
		-0.367872, 0.925374, 0.091397,
		0.917145, 0.344870, 0.199774,
		35.472599, 38.145504, 43.707855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937099, 38.348610, 43.097118>,  <34.830597, 37.904095, 43.568012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937099, 38.348610, 43.097118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313217, 38.318619, 43.229919>,  <35.538887, 38.300625, 43.309601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313217, 38.318619, 43.229919>,  <34.937099, 38.348610, 43.097118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313217, 38.318619, 43.229919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340158, 0.172809, -0.924354,
		0.011930, 0.982097, 0.187995,
		0.940293, -0.074976, 0.332007,
		35.595306, 38.296127, 43.329521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239613, 39.028805, 43.097256>,  <34.937099, 38.348610, 43.097118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239613, 39.028805, 43.097256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.526321, 38.751259, 43.069572>,  <35.698349, 38.584732, 43.052963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.526321, 38.751259, 43.069572>,  <35.239613, 39.028805, 43.097256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526321, 38.751259, 43.069572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213009, 0.312388, -0.925765,
		0.663974, 0.648822, 0.371710,
		0.716775, -0.693861, -0.069213,
		35.741352, 38.543102, 43.048809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872757, 39.354134, 42.877472>,  <35.239613, 39.028805, 43.097256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872757, 39.354134, 42.877472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913239, 38.964497, 42.796581>,  <35.937527, 38.730713, 42.748047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.913239, 38.964497, 42.796581>,  <35.872757, 39.354134, 42.877472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913239, 38.964497, 42.796581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289131, 0.223295, -0.930882,
		0.951924, 0.035743, 0.304241,
		0.101208, -0.974095, -0.202225,
		35.943600, 38.672268, 42.735912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.932516, 42.572887, 35.273270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635435, 42.452694, 35.033905>,  <27.457186, 42.380577, 34.890285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.635435, 42.452694, 35.033905>,  <27.932516, 42.572887, 35.273270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635435, 42.452694, 35.033905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026962, -0.906360, 0.421646,
		-0.669077, 0.297024, 0.681258,
		-0.742704, -0.300481, -0.598416,
		27.412624, 42.362549, 34.854382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528473, 42.221558, 35.678520>,  <27.932516, 42.572887, 35.273270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528473, 42.221558, 35.678520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398056, 42.082439, 35.326897>,  <27.319805, 41.998970, 35.115925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398056, 42.082439, 35.326897>,  <27.528473, 42.221558, 35.678520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398056, 42.082439, 35.326897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026287, -0.926172, 0.376184,
		-0.944990, 0.145759, 0.292828,
		-0.326042, -0.347792, -0.879055,
		27.300243, 41.978100, 35.063179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839588, 41.917267, 35.808674>,  <27.528473, 42.221558, 35.678520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839588, 41.917267, 35.808674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001875, 41.755043, 35.481037>,  <27.099247, 41.657707, 35.284454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001875, 41.755043, 35.481037>,  <26.839588, 41.917267, 35.808674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001875, 41.755043, 35.481037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078791, -0.908347, 0.410729,
		-0.910600, -0.102100, -0.400480,
		0.405710, -0.405564, -0.819095,
		27.123590, 41.633373, 35.235310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418884, 41.397495, 35.624409>,  <26.839588, 41.917267, 35.808674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418884, 41.397495, 35.624409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767553, 41.302883, 35.452717>,  <26.976755, 41.246117, 35.349701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767553, 41.302883, 35.452717>,  <26.418884, 41.397495, 35.624409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767553, 41.302883, 35.452717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095966, -0.941247, 0.323797,
		-0.480599, -0.241054, -0.843159,
		0.871674, -0.236531, -0.429229,
		27.029055, 41.231922, 35.323948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257631, 40.776855, 35.328068>,  <26.418884, 41.397495, 35.624409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257631, 40.776855, 35.328068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657257, 40.766914, 35.313915>,  <26.897032, 40.760948, 35.305424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.657257, 40.766914, 35.313915>,  <26.257631, 40.776855, 35.328068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657257, 40.766914, 35.313915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015157, -0.967672, 0.251758,
		-0.040499, -0.250986, -0.967143,
		0.999065, -0.024855, -0.035386,
		26.956976, 40.759457, 35.303299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422714, 40.204575, 34.956219>,  <26.257631, 40.776855, 35.328068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422714, 40.204575, 34.956219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.770485, 40.256905, 35.146790>,  <26.979147, 40.288303, 35.261131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.770485, 40.256905, 35.146790>,  <26.422714, 40.204575, 34.956219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770485, 40.256905, 35.146790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088651, -0.989964, 0.110053,
		0.486046, -0.053447, -0.872297,
		0.869425, 0.130821, 0.476430,
		27.031313, 40.296150, 35.289719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848242, 39.699070, 34.615360>,  <26.422714, 40.204575, 34.956219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848242, 39.699070, 34.615360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027277, 39.791981, 34.960777>,  <27.134699, 39.847725, 35.168030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027277, 39.791981, 34.960777>,  <26.848242, 39.699070, 34.615360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027277, 39.791981, 34.960777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295254, -0.949908, 0.102471,
		0.844091, 0.209101, -0.493748,
		0.447588, 0.232275, 0.863547,
		27.161554, 39.861664, 35.219841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549841, 39.487686, 34.516323>,  <26.848242, 39.699070, 34.615360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549841, 39.487686, 34.516323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.414928, 39.483585, 34.892860>,  <27.333981, 39.481125, 35.118782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.414928, 39.483585, 34.892860>,  <27.549841, 39.487686, 34.516323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.414928, 39.483585, 34.892860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243419, -0.966885, 0.076686,
		0.909388, 0.255006, 0.328610,
		-0.337283, -0.010253, 0.941347,
		27.313744, 39.480511, 35.175266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161428, 39.165764, 34.857876>,  <27.549841, 39.487686, 34.516323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161428, 39.165764, 34.857876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821110, 39.160381, 35.068005>,  <27.616919, 39.157150, 35.194080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821110, 39.160381, 35.068005>,  <28.161428, 39.165764, 34.857876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821110, 39.160381, 35.068005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079661, -0.991422, 0.103621,
		0.519418, 0.130008, 0.844572,
		-0.850799, -0.013456, 0.525319,
		27.565870, 39.156345, 35.225601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357552, 38.809486, 35.384674>,  <28.161428, 39.165764, 34.857876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357552, 38.809486, 35.384674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.960932, 38.772884, 35.421448>,  <27.722960, 38.750923, 35.443512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.960932, 38.772884, 35.421448>,  <28.357552, 38.809486, 35.384674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960932, 38.772884, 35.421448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103082, -0.986107, 0.130256,
		0.078743, 0.138632, 0.987209,
		-0.991551, -0.091507, 0.091939,
		27.663465, 38.745434, 35.449028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330730, 38.211384, 35.839325>,  <28.357552, 38.809486, 35.384674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330730, 38.211384, 35.839325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950083, 38.257561, 35.725414>,  <27.721695, 38.285267, 35.657066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.950083, 38.257561, 35.725414>,  <28.330730, 38.211384, 35.839325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950083, 38.257561, 35.725414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140961, -0.987484, 0.070750,
		-0.273048, 0.107470, 0.955978,
		-0.951617, 0.115438, -0.284780,
		27.664598, 38.292191, 35.639980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935471, 37.890003, 36.402462>,  <28.330730, 38.211384, 35.839325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935471, 37.890003, 36.402462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.715673, 37.899502, 36.068398>,  <27.583796, 37.905201, 35.867958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.715673, 37.899502, 36.068398>,  <27.935471, 37.890003, 36.402462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715673, 37.899502, 36.068398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026307, -0.998609, -0.045697,
		-0.835086, -0.047080, 0.548102,
		-0.549491, 0.023742, -0.835163,
		27.550827, 37.906624, 35.817848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546423, 37.254120, 36.449806>,  <27.935471, 37.890003, 36.402462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546423, 37.254120, 36.449806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.515364, 37.357746, 36.064713>,  <27.496729, 37.419922, 35.833656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.515364, 37.357746, 36.064713>,  <27.546423, 37.254120, 36.449806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515364, 37.357746, 36.064713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054060, -0.965321, -0.255404,
		-0.995514, 0.032214, 0.088961,
		-0.077649, 0.259068, -0.962732,
		27.492069, 37.435467, 35.775894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969440, 36.816982, 36.160599>,  <27.546423, 37.254120, 36.449806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969440, 36.816982, 36.160599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179201, 36.934978, 35.841103>,  <27.305058, 37.005775, 35.649406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179201, 36.934978, 35.841103>,  <26.969440, 36.816982, 36.160599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179201, 36.934978, 35.841103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023945, -0.942807, -0.332478,
		-0.851135, 0.155227, -0.501473,
		0.524401, 0.294992, -0.798739,
		27.336521, 37.023476, 35.601482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648130, 36.503155, 35.612740>,  <26.969440, 36.816982, 36.160599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648130, 36.503155, 35.612740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.012951, 36.598682, 35.479393>,  <27.231842, 36.655998, 35.399387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.012951, 36.598682, 35.479393>,  <26.648130, 36.503155, 35.612740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.012951, 36.598682, 35.479393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091913, -0.911286, -0.401384,
		-0.399648, 0.335441, -0.853089,
		0.912049, 0.238822, -0.333362,
		27.286566, 36.670330, 35.379383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644028, 36.227062, 34.968655>,  <26.648130, 36.503155, 35.612740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644028, 36.227062, 34.968655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041082, 36.264156, 34.999832>,  <27.279316, 36.286411, 35.018539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041082, 36.264156, 34.999832>,  <26.644028, 36.227062, 34.968655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041082, 36.264156, 34.999832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106743, -0.973782, -0.200882,
		0.057269, 0.207722, -0.976510,
		0.992636, 0.092732, 0.077941,
		27.338873, 36.291977, 35.023216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890711, 35.782383, 34.442745>,  <26.644028, 36.227062, 34.968655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890711, 35.782383, 34.442745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.197233, 35.857738, 34.688442>,  <27.381145, 35.902950, 34.835861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.197233, 35.857738, 34.688442>,  <26.890711, 35.782383, 34.442745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197233, 35.857738, 34.688442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324525, -0.938614, -0.116993,
		0.554493, 0.288988, -0.780400,
		0.766304, 0.188388, 0.614238,
		27.427124, 35.914253, 34.872715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327936, 35.447132, 34.149662>,  <26.890711, 35.782383, 34.442745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327936, 35.447132, 34.149662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471619, 35.466671, 34.522453>,  <27.557827, 35.478394, 34.746128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471619, 35.466671, 34.522453>,  <27.327936, 35.447132, 34.149662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471619, 35.466671, 34.522453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367595, -0.925306, -0.093178,
		0.857815, 0.376061, -0.350332,
		0.359205, 0.048851, 0.931979,
		27.579380, 35.481327, 34.802048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090355, 35.262291, 34.036789>,  <27.327936, 35.447132, 34.149662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090355, 35.262291, 34.036789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983778, 35.186451, 34.414795>,  <27.919832, 35.140945, 34.641598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.983778, 35.186451, 34.414795>,  <28.090355, 35.262291, 34.036789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983778, 35.186451, 34.414795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480604, -0.876014, -0.040251,
		0.835481, 0.443455, 0.324530,
		-0.266443, -0.189599, 0.945019,
		27.903845, 35.129570, 34.698299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663836, 34.911667, 34.331173>,  <28.090355, 35.262291, 34.036789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663836, 34.911667, 34.331173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.348988, 34.811256, 34.556534>,  <28.160078, 34.751011, 34.691750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.348988, 34.811256, 34.556534>,  <28.663836, 34.911667, 34.331173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348988, 34.811256, 34.556534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248995, -0.965019, -0.082096,
		0.564306, 0.075666, 0.822091,
		-0.787121, -0.251024, 0.563407,
		28.112852, 34.735950, 34.725555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895571, 35.521084, 33.955818>,  <28.663836, 34.911667, 34.331173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895571, 35.521084, 33.955818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262583, 35.368587, 34.001060>,  <29.482790, 35.277092, 34.028206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.262583, 35.368587, 34.001060>,  <28.895571, 35.521084, 33.955818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262583, 35.368587, 34.001060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397561, 0.885841, -0.239231,
		-0.008987, 0.264467, 0.964353,
		0.917532, -0.381239, 0.113102,
		29.537842, 35.254215, 34.034992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262516, 35.786537, 34.618275>,  <28.895571, 35.521084, 33.955818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262516, 35.786537, 34.618275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503038, 35.671635, 34.320034>,  <29.647352, 35.602692, 34.141090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.503038, 35.671635, 34.320034>,  <29.262516, 35.786537, 34.618275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503038, 35.671635, 34.320034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210480, 0.957128, -0.199008,
		0.770799, -0.037269, 0.635987,
		0.601305, -0.287258, -0.745598,
		29.683430, 35.585457, 34.096355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837643, 36.100525, 34.744080>,  <29.262516, 35.786537, 34.618275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837643, 36.100525, 34.744080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.850595, 36.007992, 34.355145>,  <29.858368, 35.952473, 34.121784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.850595, 36.007992, 34.355145>,  <29.837643, 36.100525, 34.744080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850595, 36.007992, 34.355145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241859, 0.945746, -0.216952,
		0.969771, -0.228143, 0.086576,
		0.032383, -0.231333, -0.972335,
		29.860310, 35.938591, 34.063442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515879, 36.296638, 34.475056>,  <29.837643, 36.100525, 34.744080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515879, 36.296638, 34.475056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239611, 36.278954, 34.186329>,  <30.073851, 36.268341, 34.013092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.239611, 36.278954, 34.186329>,  <30.515879, 36.296638, 34.475056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239611, 36.278954, 34.186329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170533, 0.960023, -0.221977,
		0.702777, -0.276407, -0.655518,
		-0.690669, -0.044213, -0.721818,
		30.032410, 36.265690, 33.969784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785152, 36.782917, 33.966942>,  <30.515879, 36.296638, 34.475056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785152, 36.782917, 33.966942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.421621, 36.708141, 33.817764>,  <30.203503, 36.663277, 33.728256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.421621, 36.708141, 33.817764>,  <30.785152, 36.782917, 33.966942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421621, 36.708141, 33.817764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030687, 0.921511, -0.387138,
		0.416044, -0.340397, -0.843230,
		-0.908826, -0.186943, -0.372944,
		30.148973, 36.652058, 33.705883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747484, 37.192459, 33.413067>,  <30.785152, 36.782917, 33.966942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747484, 37.192459, 33.413067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.352724, 37.155823, 33.466190>,  <30.115868, 37.133842, 33.498066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.352724, 37.155823, 33.466190>,  <30.747484, 37.192459, 33.413067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352724, 37.155823, 33.466190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141582, 0.886365, -0.440808,
		-0.077347, -0.453838, -0.887721,
		-0.986900, -0.091590, 0.132813,
		30.056654, 37.128345, 33.506035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537083, 37.525188, 32.895557>,  <30.747484, 37.192459, 33.413067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537083, 37.525188, 32.895557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.199978, 37.517467, 33.110733>,  <29.997715, 37.512833, 33.239838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.199978, 37.517467, 33.110733>,  <30.537083, 37.525188, 32.895557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199978, 37.517467, 33.110733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284930, 0.863869, -0.415386,
		-0.456689, -0.503347, -0.733537,
		-0.842763, -0.019305, 0.537938,
		29.947149, 37.511677, 33.272114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026718, 37.671974, 32.455078>,  <30.537083, 37.525188, 32.895557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026718, 37.671974, 32.455078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.859423, 37.778191, 32.802540>,  <29.759047, 37.841919, 33.011017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.859423, 37.778191, 32.802540>,  <30.026718, 37.671974, 32.455078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859423, 37.778191, 32.802540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399233, 0.805254, -0.438381,
		-0.815899, -0.530144, -0.230773,
		-0.418237, 0.265542, 0.868657,
		29.733952, 37.857853, 33.063137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333658, 37.913898, 32.241348>,  <30.026718, 37.671974, 32.455078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333658, 37.913898, 32.241348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398361, 38.051197, 32.611431>,  <29.437183, 38.133575, 32.833481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.398361, 38.051197, 32.611431>,  <29.333658, 37.913898, 32.241348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398361, 38.051197, 32.611431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266349, 0.917948, -0.293989,
		-0.950206, -0.198873, 0.239912,
		0.161760, 0.343251, 0.925210,
		29.446890, 38.154171, 32.888992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722879, 38.133671, 32.330601>,  <29.333658, 37.913898, 32.241348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722879, 38.133671, 32.330601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960272, 38.316719, 32.595436>,  <29.102707, 38.426548, 32.754337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.960272, 38.316719, 32.595436>,  <28.722879, 38.133671, 32.330601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960272, 38.316719, 32.595436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529753, 0.841412, -0.106709,
		-0.605922, -0.287414, 0.741790,
		0.593482, 0.457622, 0.662088,
		29.138317, 38.454006, 32.794064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357782, 38.569489, 32.700146>,  <28.722879, 38.133671, 32.330601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357782, 38.569489, 32.700146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.711926, 38.735668, 32.783611>,  <28.924412, 38.835377, 32.833691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.711926, 38.735668, 32.783611>,  <28.357782, 38.569489, 32.700146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711926, 38.735668, 32.783611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443848, 0.888890, 0.113458,
		-0.138344, -0.193067, 0.971384,
		0.885359, 0.415451, 0.208665,
		28.977533, 38.860302, 32.846210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220772, 39.192917, 33.279804>,  <28.357782, 38.569489, 32.700146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220772, 39.192917, 33.279804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553507, 39.257801, 33.067490>,  <28.753147, 39.296730, 32.940102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553507, 39.257801, 33.067490>,  <28.220772, 39.192917, 33.279804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553507, 39.257801, 33.067490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286975, 0.944284, -0.161163,
		0.475070, 0.286383, 0.832042,
		0.831838, 0.162212, -0.530785,
		28.803059, 39.306465, 32.908253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548702, 39.699078, 33.552818>,  <28.220772, 39.192917, 33.279804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548702, 39.699078, 33.552818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729113, 39.709190, 33.195957>,  <28.837358, 39.715260, 32.981842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.729113, 39.709190, 33.195957>,  <28.548702, 39.699078, 33.552818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729113, 39.709190, 33.195957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226731, 0.970052, -0.087131,
		0.863232, 0.241577, 0.443252,
		0.451026, 0.025285, -0.892153,
		28.864420, 39.716774, 32.928310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931515, 40.255825, 33.588505>,  <28.548702, 39.699078, 33.552818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931515, 40.255825, 33.588505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867161, 40.176044, 33.201862>,  <28.828548, 40.128178, 32.969875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.867161, 40.176044, 33.201862>,  <28.931515, 40.255825, 33.588505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867161, 40.176044, 33.201862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088702, 0.978327, -0.187105,
		0.982980, 0.055639, -0.175087,
		-0.160882, -0.199451, -0.966611,
		28.818895, 40.116211, 32.911880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280809, 40.715405, 33.315594>,  <28.931515, 40.255825, 33.588505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280809, 40.715405, 33.315594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063234, 40.584354, 33.006584>,  <28.932690, 40.505722, 32.821178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063234, 40.584354, 33.006584>,  <29.280809, 40.715405, 33.315594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063234, 40.584354, 33.006584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138643, 0.943064, -0.302337,
		0.827591, -0.057349, -0.558394,
		-0.543940, -0.327629, -0.772521,
		28.900053, 40.486065, 32.774826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632074, 40.987099, 32.693123>,  <29.280809, 40.715405, 33.315594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632074, 40.987099, 32.693123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.249193, 40.920406, 32.598499>,  <29.019464, 40.880390, 32.541725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.249193, 40.920406, 32.598499>,  <29.632074, 40.987099, 32.693123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249193, 40.920406, 32.598499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110077, 0.965685, -0.235237,
		0.267666, -0.199129, -0.942710,
		-0.957203, -0.166736, -0.236561,
		28.962032, 40.870384, 32.527531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532288, 41.321777, 32.096901>,  <29.632074, 40.987099, 32.693123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532288, 41.321777, 32.096901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154633, 41.259731, 32.213203>,  <28.928040, 41.222504, 32.282986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154633, 41.259731, 32.213203>,  <29.532288, 41.321777, 32.096901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154633, 41.259731, 32.213203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204266, 0.967819, -0.146976,
		-0.258604, -0.198158, -0.945440,
		-0.944139, -0.155113, 0.290759,
		28.871391, 41.213196, 32.300430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095707, 41.678955, 31.591410>,  <29.532288, 41.321777, 32.096901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095707, 41.678955, 31.591410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.916719, 41.632286, 31.946074>,  <28.809328, 41.604286, 32.158871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.916719, 41.632286, 31.946074>,  <29.095707, 41.678955, 31.591410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916719, 41.632286, 31.946074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213092, 0.976807, 0.020990,
		-0.868542, -0.179547, -0.461950,
		-0.447468, -0.116668, 0.886657,
		28.782478, 41.597286, 32.212070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430513, 41.879498, 31.475079>,  <29.095707, 41.678955, 31.591410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430513, 41.879498, 31.475079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.480915, 41.910564, 31.870672>,  <28.511156, 41.929207, 32.108028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.480915, 41.910564, 31.870672>,  <28.430513, 41.879498, 31.475079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480915, 41.910564, 31.870672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397130, 0.917511, -0.021461,
		-0.909071, -0.390051, 0.146456,
		0.126005, 0.077672, 0.988984,
		28.518717, 41.933865, 32.167366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821535, 42.198158, 31.851564>,  <28.430513, 41.879498, 31.475079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821535, 42.198158, 31.851564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112991, 42.272404, 32.115269>,  <28.287865, 42.316952, 32.273491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112991, 42.272404, 32.115269>,  <27.821535, 42.198158, 31.851564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112991, 42.272404, 32.115269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290620, 0.955413, 0.052209,
		-0.620178, -0.229637, 0.750098,
		0.728642, 0.185615, 0.659263,
		28.331585, 42.328087, 32.313049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513275, 42.584911, 32.334949>,  <27.821535, 42.198158, 31.851564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513275, 42.584911, 32.334949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.901997, 42.647991, 32.405064>,  <28.135229, 42.685841, 32.447132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.901997, 42.647991, 32.405064>,  <27.513275, 42.584911, 32.334949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901997, 42.647991, 32.405064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171940, 0.982676, 0.069165,
		-0.161340, -0.097354, 0.982085,
		0.971806, 0.157701, 0.175284,
		28.193539, 42.695301, 32.457649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.455486, 43.236088, 32.633743>,  <27.513275, 42.584911, 32.334949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.455486, 43.236088, 32.633743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.851494, 43.198483, 32.591736>,  <28.089098, 43.175919, 32.566532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.851494, 43.198483, 32.591736>,  <27.455486, 43.236088, 32.633743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851494, 43.198483, 32.591736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101523, 0.992464, 0.068616,
		0.097772, -0.078592, 0.992101,
		0.990017, -0.094012, -0.105015,
		28.148499, 43.170280, 32.560230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.600632, 36.848873, 48.055347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247345, 36.673969, 47.987553>,  <37.035374, 36.569027, 47.946877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247345, 36.673969, 47.987553>,  <37.600632, 36.848873, 48.055347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247345, 36.673969, 47.987553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260104, 0.156024, 0.952892,
		-0.390219, 0.885696, -0.251537,
		-0.883218, -0.437263, -0.169490,
		36.982380, 36.542789, 47.936707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096588, 37.301521, 48.233086>,  <37.600632, 36.848873, 48.055347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096588, 37.301521, 48.233086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909153, 36.950085, 48.269962>,  <36.796692, 36.739223, 48.292088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909153, 36.950085, 48.269962>,  <37.096588, 37.301521, 48.233086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909153, 36.950085, 48.269962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437076, 0.321268, 0.840090,
		-0.767715, 0.353363, -0.534555,
		-0.468592, -0.878591, 0.092196,
		36.768574, 36.686508, 48.297623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450127, 37.369816, 48.476376>,  <37.096588, 37.301521, 48.233086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450127, 37.369816, 48.476376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472206, 36.980118, 48.563820>,  <36.485455, 36.746300, 48.616287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472206, 36.980118, 48.563820>,  <36.450127, 37.369816, 48.476376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472206, 36.980118, 48.563820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244864, 0.199054, 0.948904,
		-0.967985, -0.105905, -0.227571,
		0.055195, -0.974249, 0.218614,
		36.488766, 36.687843, 48.629402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828011, 37.108021, 48.738224>,  <36.450127, 37.369816, 48.476376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828011, 37.108021, 48.738224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081081, 36.825130, 48.864437>,  <36.232922, 36.655396, 48.940166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081081, 36.825130, 48.864437>,  <35.828011, 37.108021, 48.738224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081081, 36.825130, 48.864437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448475, -0.002426, 0.893792,
		-0.631344, -0.706988, -0.318706,
		0.632673, -0.707222, 0.315535,
		36.270882, 36.612965, 48.959099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358574, 36.520172, 49.061836>,  <35.828011, 37.108021, 48.738224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358574, 36.520172, 49.061836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740036, 36.500881, 49.180645>,  <35.968914, 36.489307, 49.251930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.740036, 36.500881, 49.180645>,  <35.358574, 36.520172, 49.061836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740036, 36.500881, 49.180645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284299, 0.179048, 0.941868,
		-0.098605, -0.982658, 0.157038,
		0.953651, -0.048227, 0.297024,
		36.026131, 36.486412, 49.269753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364964, 35.878674, 49.525528>,  <35.358574, 36.520172, 49.061836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364964, 35.878674, 49.525528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704105, 36.051682, 49.648205>,  <35.907593, 36.155487, 49.721813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704105, 36.051682, 49.648205>,  <35.364964, 35.878674, 49.525528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704105, 36.051682, 49.648205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320251, -0.043261, 0.946344,
		0.422583, -0.900585, 0.101837,
		0.847858, 0.432522, 0.306695,
		35.958462, 36.181438, 49.740211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752857, 35.362003, 50.001007>,  <35.364964, 35.878674, 49.525528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752857, 35.362003, 50.001007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885754, 35.733509, 50.066738>,  <35.965492, 35.956413, 50.106178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885754, 35.733509, 50.066738>,  <35.752857, 35.362003, 50.001007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885754, 35.733509, 50.066738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246606, -0.082629, 0.965587,
		0.910384, -0.361335, 0.201587,
		0.332243, 0.928768, 0.164332,
		35.985428, 36.012138, 50.116039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204922, 35.389111, 50.572262>,  <35.752857, 35.362003, 50.001007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204922, 35.389111, 50.572262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069557, 35.763771, 50.536137>,  <35.988338, 35.988567, 50.514462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.069557, 35.763771, 50.536137>,  <36.204922, 35.389111, 50.572262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069557, 35.763771, 50.536137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155632, 0.038946, 0.987047,
		0.928041, 0.348080, 0.132594,
		-0.338407, 0.936655, -0.090316,
		35.968037, 36.044769, 50.509041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177799, 35.606426, 51.245415>,  <36.204922, 35.389111, 50.572262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177799, 35.606426, 51.245415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022270, 35.941750, 51.092545>,  <35.928951, 36.142944, 51.000824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022270, 35.941750, 51.092545>,  <36.177799, 35.606426, 51.245415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022270, 35.941750, 51.092545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309428, 0.271894, 0.911223,
		0.867797, 0.472559, 0.153677,
		-0.388823, 0.838308, -0.382172,
		35.905624, 36.193241, 50.977894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325420, 35.995651, 51.717365>,  <36.177799, 35.606426, 51.245415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325420, 35.995651, 51.717365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012360, 36.149208, 51.521370>,  <35.824524, 36.241341, 51.403770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.012360, 36.149208, 51.521370>,  <36.325420, 35.995651, 51.717365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012360, 36.149208, 51.521370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444435, 0.206516, 0.871682,
		0.435823, 0.899988, 0.008985,
		-0.782647, 0.383892, -0.489990,
		35.777565, 36.264374, 51.374374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204849, 36.675354, 51.985950>,  <36.325420, 35.995651, 51.717365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204849, 36.675354, 51.985950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.859673, 36.547920, 51.829063>,  <35.652565, 36.471458, 51.734932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.859673, 36.547920, 51.829063>,  <36.204849, 36.675354, 51.985950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859673, 36.547920, 51.829063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459779, 0.173073, 0.871005,
		-0.209607, 0.931960, -0.295830,
		-0.862941, -0.318585, -0.392219,
		35.600792, 36.452343, 51.711399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751560, 37.057552, 52.346497>,  <36.204849, 36.675354, 51.985950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751560, 37.057552, 52.346497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488873, 36.797947, 52.192871>,  <35.331261, 36.642185, 52.100697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488873, 36.797947, 52.192871>,  <35.751560, 37.057552, 52.346497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488873, 36.797947, 52.192871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552207, 0.067007, 0.831010,
		-0.513599, 0.757824, -0.402393,
		-0.656723, -0.649009, -0.384060,
		35.291855, 36.603245, 52.077652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046223, 37.302120, 52.649765>,  <35.751560, 37.057552, 52.346497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046223, 37.302120, 52.649765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.067917, 36.909397, 52.576969>,  <35.080933, 36.673763, 52.533291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.067917, 36.909397, 52.576969>,  <35.046223, 37.302120, 52.649765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067917, 36.909397, 52.576969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320464, -0.189734, 0.928065,
		-0.945707, 0.007990, -0.324922,
		0.054233, -0.981803, -0.181993,
		35.084187, 36.614857, 52.522369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447052, 36.993748, 52.904297>,  <35.046223, 37.302120, 52.649765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447052, 36.993748, 52.904297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735455, 36.716648, 52.898010>,  <34.908497, 36.550388, 52.894238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735455, 36.716648, 52.898010>,  <34.447052, 36.993748, 52.904297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735455, 36.716648, 52.898010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287483, -0.319688, 0.902858,
		-0.630481, -0.646447, -0.429651,
		0.721004, -0.692752, -0.015714,
		34.951756, 36.508823, 52.893295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207798, 37.773407, 52.904240>,  <34.447052, 36.993748, 52.904297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207798, 37.773407, 52.904240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858471, 37.962608, 52.857605>,  <33.648876, 38.076130, 52.829624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858471, 37.962608, 52.857605>,  <34.207798, 37.773407, 52.904240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858471, 37.962608, 52.857605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176280, 0.083726, -0.980773,
		-0.454143, -0.877076, -0.156499,
		-0.873315, 0.472999, -0.116587,
		33.596478, 38.104507, 52.822628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926346, 37.392067, 52.421310>,  <34.207798, 37.773407, 52.904240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926346, 37.392067, 52.421310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750275, 37.750805, 52.438839>,  <33.644630, 37.966045, 52.449356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750275, 37.750805, 52.438839>,  <33.926346, 37.392067, 52.421310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750275, 37.750805, 52.438839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231309, 0.160410, -0.959565,
		-0.867606, -0.412243, -0.278056,
		-0.440177, 0.896841, 0.043818,
		33.618221, 38.019855, 52.451984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612396, 37.388065, 51.773693>,  <33.926346, 37.392067, 52.421310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612396, 37.388065, 51.773693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562206, 37.771023, 51.877731>,  <33.532093, 38.000797, 51.940155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562206, 37.771023, 51.877731>,  <33.612396, 37.388065, 51.773693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562206, 37.771023, 51.877731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085634, 0.271644, -0.958580,
		-0.988394, -0.098009, -0.116071,
		-0.125479, 0.957394, 0.260098,
		33.524563, 38.058243, 51.955761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014992, 37.649014, 51.410774>,  <33.612396, 37.388065, 51.773693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014992, 37.649014, 51.410774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237984, 37.963085, 51.518639>,  <33.371780, 38.151527, 51.583359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237984, 37.963085, 51.518639>,  <33.014992, 37.649014, 51.410774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237984, 37.963085, 51.518639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109178, 0.252659, -0.961376,
		-0.822981, 0.565388, 0.055128,
		0.557479, 0.785175, 0.269662,
		33.405228, 38.198639, 51.599537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753345, 38.190632, 51.192608>,  <33.014992, 37.649014, 51.410774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753345, 38.190632, 51.192608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131245, 38.317562, 51.225494>,  <33.357983, 38.393719, 51.245224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131245, 38.317562, 51.225494>,  <32.753345, 38.190632, 51.192608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131245, 38.317562, 51.225494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062962, 0.070474, -0.995525,
		-0.321699, 0.945695, 0.046600,
		0.944746, 0.317325, 0.082214,
		33.414669, 38.412758, 51.250160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801277, 38.735996, 50.749260>,  <32.753345, 38.190632, 51.192608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801277, 38.735996, 50.749260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.180584, 38.618484, 50.797382>,  <33.408169, 38.547977, 50.826256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.180584, 38.618484, 50.797382>,  <32.801277, 38.735996, 50.749260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180584, 38.618484, 50.797382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177029, 0.174776, -0.968563,
		0.263518, 0.939758, 0.217743,
		0.948272, -0.293781, 0.120307,
		33.465065, 38.530350, 50.833473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149212, 39.319454, 50.357956>,  <32.801277, 38.735996, 50.749260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149212, 39.319454, 50.357956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.367554, 38.984310, 50.360394>,  <33.498558, 38.783226, 50.361855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.367554, 38.984310, 50.360394>,  <33.149212, 39.319454, 50.357956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367554, 38.984310, 50.360394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208919, 0.129060, -0.969379,
		0.811416, 0.530413, 0.245492,
		0.545855, -0.837858, 0.006092,
		33.531311, 38.732952, 50.362221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610832, 39.513130, 49.879692>,  <33.149212, 39.319454, 50.357956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610832, 39.513130, 49.879692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624695, 39.116421, 49.928967>,  <33.633015, 38.878395, 49.958530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.624695, 39.116421, 49.928967>,  <33.610832, 39.513130, 49.879692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624695, 39.116421, 49.928967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059823, -0.125098, -0.990339,
		0.997607, 0.026956, -0.063667,
		0.034661, -0.991778, 0.123186,
		33.635094, 38.818886, 49.965923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080803, 39.286846, 49.432495>,  <33.610832, 39.513130, 49.879692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080803, 39.286846, 49.432495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878994, 38.948353, 49.501015>,  <33.757908, 38.745255, 49.542126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.878994, 38.948353, 49.501015>,  <34.080803, 39.286846, 49.432495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878994, 38.948353, 49.501015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023362, -0.211709, -0.977053,
		0.863083, -0.488943, 0.126582,
		-0.504521, -0.846235, 0.171299,
		33.727638, 38.694481, 49.552406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436798, 38.724621, 49.148815>,  <34.080803, 39.286846, 49.432495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436798, 38.724621, 49.148815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060841, 38.589062, 49.165569>,  <33.835266, 38.507725, 49.175621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.060841, 38.589062, 49.165569>,  <34.436798, 38.724621, 49.148815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060841, 38.589062, 49.165569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095592, -0.378871, -0.920499,
		0.327822, -0.861165, 0.388493,
		-0.939891, -0.338896, 0.041881,
		33.778873, 38.487392, 49.178135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343746, 37.960793, 48.970726>,  <34.436798, 38.724621, 49.148815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343746, 37.960793, 48.970726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.996529, 38.117554, 48.848808>,  <33.788197, 38.211613, 48.775658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.996529, 38.117554, 48.848808>,  <34.343746, 37.960793, 48.970726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996529, 38.117554, 48.848808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040672, -0.555723, -0.830372,
		-0.494808, -0.733201, 0.466455,
		-0.868050, 0.391903, -0.304797,
		33.736115, 38.235126, 48.757370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058064, 37.371819, 48.636551>,  <34.343746, 37.960793, 48.970726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058064, 37.371819, 48.636551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873745, 37.712372, 48.536297>,  <33.763153, 37.916702, 48.476143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873745, 37.712372, 48.536297>,  <34.058064, 37.371819, 48.636551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873745, 37.712372, 48.536297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026453, -0.295454, -0.954990,
		-0.887111, -0.433428, 0.158667,
		-0.460798, 0.851379, -0.250635,
		33.735504, 37.967785, 48.461105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484253, 37.111099, 48.205299>,  <34.058064, 37.371819, 48.636551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484253, 37.111099, 48.205299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552212, 37.497433, 48.127022>,  <33.592987, 37.729233, 48.080055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552212, 37.497433, 48.127022>,  <33.484253, 37.111099, 48.205299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552212, 37.497433, 48.127022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254766, -0.234880, -0.938043,
		-0.951960, 0.109518, -0.285969,
		0.169901, 0.965835, -0.195695,
		33.603184, 37.787182, 48.068314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201279, 37.184071, 47.520000>,  <33.484253, 37.111099, 48.205299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201279, 37.184071, 47.520000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.441860, 37.491932, 47.605694>,  <33.586208, 37.676647, 47.657112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.441860, 37.491932, 47.605694>,  <33.201279, 37.184071, 47.520000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441860, 37.491932, 47.605694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225350, 0.093834, -0.969749,
		-0.766469, 0.631534, -0.117004,
		0.601450, 0.769649, 0.214237,
		33.622295, 37.722828, 47.669964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449402, 37.415096, 47.315956>,  <33.201279, 37.184071, 47.520000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449402, 37.415096, 47.315956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130516, 37.203758, 47.199131>,  <31.939184, 37.076954, 47.129036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130516, 37.203758, 47.199131>,  <32.449402, 37.415096, 47.315956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130516, 37.203758, 47.199131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274239, -0.114038, 0.954876,
		-0.537811, 0.841336, -0.053980,
		-0.797215, -0.528346, -0.292058,
		31.891352, 37.045254, 47.111515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868996, 37.741428, 47.659870>,  <32.449402, 37.415096, 47.315956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868996, 37.741428, 47.659870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.738180, 37.376308, 47.562016>,  <31.659691, 37.157238, 47.503304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.738180, 37.376308, 47.562016>,  <31.868996, 37.741428, 47.659870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738180, 37.376308, 47.562016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410223, -0.096079, 0.906910,
		-0.851330, 0.396949, -0.343029,
		-0.327039, -0.912798, -0.244632,
		31.640068, 37.102470, 47.488625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258968, 37.755554, 47.974300>,  <31.868996, 37.741428, 47.659870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258968, 37.755554, 47.974300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331469, 37.367462, 47.910057>,  <31.374969, 37.134605, 47.871510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.331469, 37.367462, 47.910057>,  <31.258968, 37.755554, 47.974300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331469, 37.367462, 47.910057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382031, -0.219955, 0.897593,
		-0.906201, -0.101331, -0.410526,
		0.181251, -0.970233, -0.160612,
		31.385843, 37.076393, 47.861874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646708, 37.400360, 48.232761>,  <31.258968, 37.755554, 47.974300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646708, 37.400360, 48.232761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.893246, 37.088932, 48.185532>,  <31.041168, 36.902077, 48.157192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.893246, 37.088932, 48.185532>,  <30.646708, 37.400360, 48.232761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893246, 37.088932, 48.185532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204405, -0.302981, 0.930818,
		-0.760484, -0.549571, -0.345885,
		0.616347, -0.778572, -0.118078,
		31.078150, 36.855362, 48.150108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311041, 36.885342, 48.556461>,  <30.646708, 37.400360, 48.232761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311041, 36.885342, 48.556461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.682137, 36.738026, 48.532246>,  <30.904793, 36.649635, 48.517715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.682137, 36.738026, 48.532246>,  <30.311041, 36.885342, 48.556461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682137, 36.738026, 48.532246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112807, -0.431301, 0.895128,
		-0.355776, -0.823615, -0.441680,
		0.927738, -0.368290, -0.060537,
		30.960457, 36.627537, 48.514084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264549, 36.190666, 48.743408>,  <30.311041, 36.885342, 48.556461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264549, 36.190666, 48.743408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.645731, 36.301632, 48.792267>,  <30.874439, 36.368214, 48.821583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.645731, 36.301632, 48.792267>,  <30.264549, 36.190666, 48.743408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645731, 36.301632, 48.792267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018592, -0.348721, 0.937042,
		0.302547, -0.895228, -0.327157,
		0.952953, 0.277417, 0.122149,
		30.931618, 36.384857, 48.828911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650190, 35.593704, 49.042538>,  <30.264549, 36.190666, 48.743408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650190, 35.593704, 49.042538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.839893, 35.938183, 49.115662>,  <30.953714, 36.144871, 49.159538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.839893, 35.938183, 49.115662>,  <30.650190, 35.593704, 49.042538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839893, 35.938183, 49.115662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140784, -0.130791, 0.981363,
		0.869057, -0.491156, 0.059214,
		0.474258, 0.861197, 0.182812,
		30.982170, 36.196541, 49.170506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371447, 35.237228, 49.013218>,  <30.650190, 35.593704, 49.042538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371447, 35.237228, 49.013218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.165121, 34.895058, 48.994522>,  <31.041327, 34.689754, 48.983303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.165121, 34.895058, 48.994522>,  <31.371447, 35.237228, 49.013218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165121, 34.895058, 48.994522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356671, -0.164824, -0.919575,
		0.778924, -0.491000, 0.390124,
		-0.515814, -0.855425, -0.046740,
		31.010378, 34.638432, 48.980499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834234, 34.751724, 48.799084>,  <31.371447, 35.237228, 49.013218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834234, 34.751724, 48.799084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463570, 34.617058, 48.732204>,  <31.241171, 34.536259, 48.692078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463570, 34.617058, 48.732204>,  <31.834234, 34.751724, 48.799084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463570, 34.617058, 48.732204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282485, -0.330269, -0.900625,
		0.247987, -0.881806, 0.401150,
		-0.926663, -0.336662, -0.167195,
		31.185570, 34.516060, 48.682045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770332, 33.985397, 48.756657>,  <31.834234, 34.751724, 48.799084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770332, 33.985397, 48.756657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.473459, 34.161392, 48.554440>,  <31.295336, 34.266991, 48.433109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.473459, 34.161392, 48.554440>,  <31.770332, 33.985397, 48.756657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.473459, 34.161392, 48.554440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286342, -0.473834, -0.832760,
		-0.605952, -0.762817, 0.225682,
		-0.742180, 0.439990, -0.505547,
		31.250805, 34.293388, 48.402775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625944, 33.561203, 48.287960>,  <31.770332, 33.985397, 48.756657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625944, 33.561203, 48.287960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435173, 33.870243, 48.120331>,  <31.320711, 34.055668, 48.019753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.435173, 33.870243, 48.120331>,  <31.625944, 33.561203, 48.287960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435173, 33.870243, 48.120331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105207, -0.423184, -0.899915,
		-0.872623, -0.473284, 0.120545,
		-0.476928, 0.772604, -0.419072,
		31.292095, 34.102024, 47.994610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327717, 33.225945, 47.784088>,  <31.625944, 33.561203, 48.287960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327717, 33.225945, 47.784088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306311, 33.615517, 47.695904>,  <31.293467, 33.849258, 47.642994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306311, 33.615517, 47.695904>,  <31.327717, 33.225945, 47.784088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306311, 33.615517, 47.695904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189155, -0.206891, -0.959904,
		-0.980488, -0.093071, -0.173152,
		-0.053516, 0.973927, -0.220459,
		31.290257, 33.907696, 47.629765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858923, 33.370667, 47.207741>,  <31.327717, 33.225945, 47.784088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858923, 33.370667, 47.207741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117785, 33.675598, 47.204952>,  <31.273102, 33.858559, 47.203281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.117785, 33.675598, 47.204952>,  <30.858923, 33.370667, 47.207741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117785, 33.675598, 47.204952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185894, -0.166660, -0.968333,
		-0.739349, 0.625364, -0.249566,
		0.647153, 0.762328, -0.006968,
		31.311930, 33.904297, 47.202862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698772, 33.557034, 46.555355>,  <30.858923, 33.370667, 47.207741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698772, 33.557034, 46.555355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.023613, 33.769325, 46.652370>,  <31.218517, 33.896698, 46.710579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.023613, 33.769325, 46.652370>,  <30.698772, 33.557034, 46.555355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023613, 33.769325, 46.652370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278330, 0.012996, -0.960398,
		-0.512859, 0.847444, -0.137163,
		0.812101, 0.530725, 0.242535,
		31.267242, 33.928543, 46.725132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.967743, 33.483391, 51.912991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.309929, 33.682026, 51.854240>,  <33.515240, 33.801208, 51.818989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.309929, 33.682026, 51.854240>,  <32.967743, 33.483391, 51.912991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309929, 33.682026, 51.854240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067723, -0.388465, -0.918971,
		-0.513410, 0.776203, -0.365950,
		0.855467, 0.496592, -0.146875,
		33.566570, 33.831005, 51.810177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170406, 33.160702, 51.322041>,  <32.967743, 33.483391, 51.912991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170406, 33.160702, 51.322041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.400150, 33.487755, 51.338017>,  <33.537998, 33.683987, 51.347603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.400150, 33.487755, 51.338017>,  <33.170406, 33.160702, 51.322041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400150, 33.487755, 51.338017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262960, -0.138078, -0.954875,
		-0.775218, 0.558944, -0.294310,
		0.574360, 0.817628, 0.039939,
		33.572456, 33.733044, 51.349998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975929, 33.557400, 50.911415>,  <33.170406, 33.160702, 51.322041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975929, 33.557400, 50.911415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.368378, 33.633499, 50.925323>,  <33.603848, 33.679161, 50.933670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.368378, 33.633499, 50.925323>,  <32.975929, 33.557400, 50.911415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368378, 33.633499, 50.925323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065911, -0.159893, -0.984932,
		-0.181826, 0.968627, -0.169414,
		0.981120, 0.190252, 0.034770,
		33.662712, 33.690575, 50.935753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071976, 33.963356, 50.289082>,  <32.975929, 33.557400, 50.911415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071976, 33.963356, 50.289082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439339, 33.853104, 50.402607>,  <33.659756, 33.786953, 50.470722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439339, 33.853104, 50.402607>,  <33.071976, 33.963356, 50.289082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439339, 33.853104, 50.402607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266857, -0.098009, -0.958740,
		0.292076, 0.956254, -0.016458,
		0.918411, -0.275633, 0.283809,
		33.714863, 33.770412, 50.487751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529858, 34.384327, 49.880604>,  <33.071976, 33.963356, 50.289082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529858, 34.384327, 49.880604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.785873, 34.089199, 49.966362>,  <33.939484, 33.912121, 50.017818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.785873, 34.089199, 49.966362>,  <33.529858, 34.384327, 49.880604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785873, 34.089199, 49.966362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290979, -0.025490, -0.956390,
		0.711109, 0.674516, 0.198375,
		0.640044, -0.737820, 0.214396,
		33.977886, 33.867851, 50.030682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133270, 34.510651, 49.416027>,  <33.529858, 34.384327, 49.880604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133270, 34.510651, 49.416027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.212788, 34.138927, 49.540520>,  <34.260498, 33.915894, 49.615215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.212788, 34.138927, 49.540520>,  <34.133270, 34.510651, 49.416027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212788, 34.138927, 49.540520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355099, -0.227695, -0.906675,
		0.913448, 0.290759, 0.284732,
		0.198792, -0.929308, 0.311236,
		34.272427, 33.860134, 49.633892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869667, 34.342773, 49.210873>,  <34.133270, 34.510651, 49.416027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869667, 34.342773, 49.210873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.684761, 33.992893, 49.269127>,  <34.573818, 33.782967, 49.304077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.684761, 33.992893, 49.269127>,  <34.869667, 34.342773, 49.210873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684761, 33.992893, 49.269127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476658, -0.383599, -0.790979,
		0.747735, -0.296225, 0.594258,
		-0.462265, -0.874701, 0.145633,
		34.546082, 33.730484, 49.312817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397102, 33.870811, 49.226185>,  <34.869667, 34.342773, 49.210873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397102, 33.870811, 49.226185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.085495, 33.638325, 49.132111>,  <34.898529, 33.498833, 49.075665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.085495, 33.638325, 49.132111>,  <35.397102, 33.870811, 49.226185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085495, 33.638325, 49.132111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513960, -0.377098, -0.770481,
		0.359131, -0.721096, 0.592491,
		-0.779018, -0.581221, -0.235187,
		34.851788, 33.463959, 49.061554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655067, 33.246136, 48.915569>,  <35.397102, 33.870811, 49.226185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655067, 33.246136, 48.915569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.283642, 33.243885, 48.767117>,  <35.060787, 33.242535, 48.678043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.283642, 33.243885, 48.767117>,  <35.655067, 33.246136, 48.915569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283642, 33.243885, 48.767117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340331, -0.411955, -0.845262,
		-0.148134, -0.911187, 0.384440,
		-0.928564, -0.005625, -0.371130,
		35.005074, 33.242199, 48.655777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605095, 32.607597, 48.639519>,  <35.655067, 33.246136, 48.915569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605095, 32.607597, 48.639519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.323296, 32.827942, 48.460529>,  <35.154217, 32.960148, 48.353138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.323296, 32.827942, 48.460529>,  <35.605095, 32.607597, 48.639519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323296, 32.827942, 48.460529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281020, -0.362442, -0.888630,
		-0.651696, -0.751788, 0.100537,
		-0.704500, 0.550863, -0.447470,
		35.111946, 32.993202, 48.326290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195354, 32.140285, 48.216152>,  <35.605095, 32.607597, 48.639519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195354, 32.140285, 48.216152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.123863, 32.503086, 48.063622>,  <35.080971, 32.720764, 47.972103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.123863, 32.503086, 48.063622>,  <35.195354, 32.140285, 48.216152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123863, 32.503086, 48.063622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212260, -0.342895, -0.915079,
		-0.960730, -0.244488, -0.131236,
		-0.178725, 0.907000, -0.381325,
		35.070244, 32.775185, 47.949223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714069, 32.132069, 47.764622>,  <35.195354, 32.140285, 48.216152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714069, 32.132069, 47.764622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895504, 32.469643, 47.650051>,  <35.004364, 32.672188, 47.581306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.895504, 32.469643, 47.650051>,  <34.714069, 32.132069, 47.764622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895504, 32.469643, 47.650051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245169, -0.427153, -0.870306,
		-0.856828, 0.324533, -0.400655,
		0.453584, 0.843930, -0.286431,
		35.031578, 32.722820, 47.564121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948803, 32.026119, 47.492550>,  <34.714069, 32.132069, 47.764622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948803, 32.026119, 47.492550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.633560, 31.813631, 47.368168>,  <33.444412, 31.686138, 47.293541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.633560, 31.813631, 47.368168>,  <33.948803, 32.026119, 47.492550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633560, 31.813631, 47.368168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352495, -0.024636, 0.935489,
		-0.504609, 0.846877, -0.167836,
		-0.788110, -0.531217, -0.310951,
		33.397125, 31.654266, 47.274883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300240, 32.320824, 47.863873>,  <33.948803, 32.026119, 47.492550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300240, 32.320824, 47.863873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.221653, 31.947199, 47.744595>,  <33.174503, 31.723022, 47.673027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.221653, 31.947199, 47.744595>,  <33.300240, 32.320824, 47.863873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221653, 31.947199, 47.744595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398229, -0.201899, 0.894791,
		-0.896000, 0.294546, -0.332306,
		-0.196464, -0.934066, -0.298198,
		33.162712, 31.666979, 47.655136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642517, 32.275719, 48.130363>,  <33.300240, 32.320824, 47.863873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642517, 32.275719, 48.130363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798168, 31.911345, 48.075565>,  <32.891560, 31.692719, 48.042686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798168, 31.911345, 48.075565>,  <32.642517, 32.275719, 48.130363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798168, 31.911345, 48.075565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342963, -0.281289, 0.896244,
		-0.854958, -0.301772, -0.421877,
		0.389131, -0.910939, -0.136994,
		32.914909, 31.638063, 48.034466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138336, 31.876963, 48.429703>,  <32.642517, 32.275719, 48.130363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138336, 31.876963, 48.429703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.461025, 31.641998, 48.403976>,  <32.654640, 31.501019, 48.388538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.461025, 31.641998, 48.403976>,  <32.138336, 31.876963, 48.429703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461025, 31.641998, 48.403976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278203, -0.473574, 0.835662,
		-0.521339, -0.656257, -0.545465,
		0.806727, -0.587413, -0.064319,
		32.703045, 31.465775, 48.384682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876682, 31.184797, 48.480278>,  <32.138336, 31.876963, 48.429703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876682, 31.184797, 48.480278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.260334, 31.146948, 48.586948>,  <32.490524, 31.124239, 48.650951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.260334, 31.146948, 48.586948>,  <31.876682, 31.184797, 48.480278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260334, 31.146948, 48.586948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275591, -0.526146, 0.804500,
		0.064189, -0.845113, -0.530719,
		0.959130, -0.094621, 0.266679,
		32.548073, 31.118561, 48.666950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973412, 30.470778, 48.665173>,  <31.876682, 31.184797, 48.480278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973412, 30.470778, 48.665173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251759, 30.699432, 48.839069>,  <32.418766, 30.836624, 48.943409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251759, 30.699432, 48.839069>,  <31.973412, 30.470778, 48.665173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251759, 30.699432, 48.839069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178760, -0.448428, 0.875761,
		0.695567, -0.687128, -0.209861,
		0.695868, 0.571635, 0.434742,
		32.460518, 30.870922, 48.969494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280212, 30.051754, 49.111183>,  <31.973412, 30.470778, 48.665173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280212, 30.051754, 49.111183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.382515, 30.409494, 49.257999>,  <32.443897, 30.624140, 49.346088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.382515, 30.409494, 49.257999>,  <32.280212, 30.051754, 49.111183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382515, 30.409494, 49.257999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153185, -0.337383, 0.928820,
		0.954527, -0.293780, 0.050713,
		0.255759, 0.894352, 0.367044,
		32.459244, 30.677799, 49.368114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627380, 29.895969, 49.735909>,  <32.280212, 30.051754, 49.111183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627380, 29.895969, 49.735909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.501575, 30.275229, 49.754242>,  <32.426094, 30.502783, 49.765240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.501575, 30.275229, 49.754242>,  <32.627380, 29.895969, 49.735909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501575, 30.275229, 49.754242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207559, -0.115803, 0.971344,
		0.926284, 0.295986, 0.233218,
		-0.314512, 0.948146, 0.045832,
		32.407223, 30.559673, 49.767990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701588, 30.074589, 50.452934>,  <32.627380, 29.895969, 49.735909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701588, 30.074589, 50.452934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.461609, 30.355433, 50.299519>,  <32.317619, 30.523939, 50.207470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.461609, 30.355433, 50.299519>,  <32.701588, 30.074589, 50.452934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461609, 30.355433, 50.299519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383984, 0.167874, 0.907951,
		0.701867, 0.691998, 0.168883,
		-0.599949, 0.702109, -0.383542,
		32.281624, 30.566065, 50.184456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736340, 30.687660, 50.803795>,  <32.701588, 30.074589, 50.452934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736340, 30.687660, 50.803795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370205, 30.672722, 50.643410>,  <32.150524, 30.663759, 50.547180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370205, 30.672722, 50.643410>,  <32.736340, 30.687660, 50.803795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370205, 30.672722, 50.643410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402370, 0.124957, 0.906909,
		0.016234, 0.991459, -0.129403,
		-0.915333, -0.037345, -0.400962,
		32.095604, 30.661518, 50.523121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582062, 31.201405, 51.111229>,  <32.736340, 30.687660, 50.803795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582062, 31.201405, 51.111229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.238445, 31.049393, 50.974037>,  <32.032276, 30.958185, 50.891724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.238445, 31.049393, 50.974037>,  <32.582062, 31.201405, 51.111229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238445, 31.049393, 50.974037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445166, 0.223768, 0.867038,
		-0.252752, 0.897500, -0.361401,
		-0.859037, -0.380029, -0.342978,
		31.980734, 30.935385, 50.871143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135738, 31.525652, 51.523251>,  <32.582062, 31.201405, 51.111229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135738, 31.525652, 51.523251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.913084, 31.228052, 51.375401>,  <31.779491, 31.049492, 51.286690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.913084, 31.228052, 51.375401>,  <32.135738, 31.525652, 51.523251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913084, 31.228052, 51.375401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718434, 0.207693, 0.663864,
		-0.417146, 0.635081, -0.650123,
		-0.556634, -0.743999, -0.369626,
		31.746094, 31.004852, 51.264511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456858, 31.733120, 51.531990>,  <32.135738, 31.525652, 51.523251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456858, 31.733120, 51.531990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.428448, 31.334129, 51.532124>,  <31.411402, 31.094736, 51.532204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.428448, 31.334129, 51.532124>,  <31.456858, 31.733120, 51.531990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428448, 31.334129, 51.532124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707307, 0.050604, 0.705093,
		-0.703330, 0.049841, -0.709115,
		-0.071027, -0.997474, 0.000338,
		31.407139, 31.034887, 51.532227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743620, 31.642319, 51.501873>,  <31.456858, 31.733120, 51.531990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743620, 31.642319, 51.501873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.879087, 31.296314, 51.649960>,  <30.960369, 31.088713, 51.738811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.879087, 31.296314, 51.649960>,  <30.743620, 31.642319, 51.501873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879087, 31.296314, 51.649960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633484, 0.081305, 0.769472,
		-0.695701, -0.495124, -0.520435,
		0.338671, -0.865010, 0.370217,
		30.980688, 31.036812, 51.761024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266996, 32.181599, 51.123581>,  <30.743620, 31.642319, 51.501873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266996, 32.181599, 51.123581> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.005320, 32.480362, 51.171185>,  <29.848314, 32.659618, 51.199745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.005320, 32.480362, 51.171185>,  <30.266996, 32.181599, 51.123581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005320, 32.480362, 51.171185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371979, 0.454740, -0.809224,
		-0.658533, -0.485119, -0.575321,
		-0.654191, 0.746908, 0.119007,
		29.809063, 32.704433, 51.206886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017637, 32.242386, 50.433765>,  <30.266996, 32.181599, 51.123581>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017637, 32.242386, 50.433765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.924576, 32.594074, 50.600063>,  <29.868738, 32.805088, 50.699841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.924576, 32.594074, 50.600063>,  <30.017637, 32.242386, 50.433765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924576, 32.594074, 50.600063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335850, 0.473806, -0.814072,
		-0.912731, -0.049770, -0.405519,
		-0.232654, 0.879221, 0.415742,
		29.854780, 32.857841, 50.724785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604261, 32.585209, 49.916637>,  <30.017637, 32.242386, 50.433765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604261, 32.585209, 49.916637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.788504, 32.852955, 50.149807>,  <29.899050, 33.013603, 50.289707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.788504, 32.852955, 50.149807>,  <29.604261, 32.585209, 49.916637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788504, 32.852955, 50.149807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251930, 0.531134, -0.808967,
		-0.851101, 0.519470, 0.076011,
		0.460606, 0.669364, 0.582919,
		29.926685, 33.053764, 50.324684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348608, 33.281452, 49.666664>,  <29.604261, 32.585209, 49.916637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348608, 33.281452, 49.666664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.664612, 33.387699, 49.887691>,  <29.854214, 33.451447, 50.020309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.664612, 33.387699, 49.887691>,  <29.348608, 33.281452, 49.666664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664612, 33.387699, 49.887691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124732, 0.812801, -0.569032,
		-0.600272, 0.518464, 0.608990,
		0.790010, 0.265614, 0.552570,
		29.901615, 33.467384, 50.053463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431784, 34.014870, 49.526897>,  <29.348608, 33.281452, 49.666664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431784, 34.014870, 49.526897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.769966, 33.933338, 49.724346>,  <29.972876, 33.884418, 49.842815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.769966, 33.933338, 49.724346>,  <29.431784, 34.014870, 49.526897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769966, 33.933338, 49.724346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447443, 0.774951, -0.446370,
		-0.291547, 0.598252, 0.746388,
		0.845456, -0.203828, 0.493618,
		30.023603, 33.872189, 49.872433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732298, 34.644939, 49.848579>,  <29.431784, 34.014870, 49.526897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732298, 34.644939, 49.848579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.008091, 34.370224, 49.756550>,  <30.173567, 34.205395, 49.701332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.008091, 34.370224, 49.756550>,  <29.732298, 34.644939, 49.848579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008091, 34.370224, 49.756550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535432, 0.697214, -0.476661,
		0.487780, 0.205457, 0.848445,
		0.689480, -0.686790, -0.230078,
		30.214935, 34.164188, 49.687527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458918, 34.959511, 50.001667>,  <29.732298, 34.644939, 49.848579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458918, 34.959511, 50.001667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.489288, 34.639576, 49.763512>,  <30.507511, 34.447613, 49.620617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.489288, 34.639576, 49.763512>,  <30.458918, 34.959511, 50.001667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489288, 34.639576, 49.763512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605713, 0.511312, -0.609648,
		0.792052, -0.314346, 0.523297,
		0.075928, -0.799841, -0.595390,
		30.512066, 34.399624, 49.584896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055933, 35.364498, 49.631714>,  <30.458918, 34.959511, 50.001667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055933, 35.364498, 49.631714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.035892, 35.763710, 49.616623>,  <31.023869, 36.003239, 49.607567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.035892, 35.763710, 49.616623>,  <31.055933, 35.364498, 49.631714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035892, 35.763710, 49.616623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364940, 0.053459, 0.929495,
		0.929682, 0.032800, -0.366900,
		-0.050102, 0.998031, -0.037730,
		31.020863, 36.063118, 49.605305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538029, 35.557308, 50.036480>,  <31.055933, 35.364498, 49.631714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538029, 35.557308, 50.036480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.347893, 35.907459, 50.001228>,  <31.233810, 36.117550, 49.980076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.347893, 35.907459, 50.001228>,  <31.538029, 35.557308, 50.036480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347893, 35.907459, 50.001228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238460, 0.224609, 0.944821,
		0.846869, 0.428096, -0.315509,
		-0.475341, 0.875377, -0.088131,
		31.205290, 36.170071, 49.974789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950394, 36.113281, 50.295464>,  <31.538029, 35.557308, 50.036480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950394, 36.113281, 50.295464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.582067, 36.268944, 50.305695>,  <31.361073, 36.362343, 50.311832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.582067, 36.268944, 50.305695>,  <31.950394, 36.113281, 50.295464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582067, 36.268944, 50.305695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215600, 0.453292, 0.864895,
		0.324986, 0.801924, -0.501300,
		-0.920815, 0.389159, 0.025581,
		31.305822, 36.385693, 50.313370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992937, 36.763344, 50.574905>,  <31.950394, 36.113281, 50.295464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992937, 36.763344, 50.574905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.610125, 36.672684, 50.647266>,  <31.380438, 36.618286, 50.690681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.610125, 36.672684, 50.647266>,  <31.992937, 36.763344, 50.574905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610125, 36.672684, 50.647266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096585, 0.339062, 0.935793,
		-0.273435, 0.913053, -0.302601,
		-0.957029, -0.226651, 0.180898,
		31.323015, 36.604687, 50.701534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729300, 37.271843, 50.987465>,  <31.992937, 36.763344, 50.574905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729300, 37.271843, 50.987465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.479582, 36.967365, 51.057709>,  <31.329752, 36.784679, 51.099854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.479582, 36.967365, 51.057709>,  <31.729300, 37.271843, 50.987465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479582, 36.967365, 51.057709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079375, 0.285439, 0.955105,
		-0.777147, 0.582327, -0.238617,
		-0.624293, -0.761197, 0.175606,
		31.292294, 36.739006, 51.110390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245834, 37.581562, 51.402519>,  <31.729300, 37.271843, 50.987465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245834, 37.581562, 51.402519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.220371, 37.190216, 51.481266>,  <31.205093, 36.955410, 51.528515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.220371, 37.190216, 51.481266>,  <31.245834, 37.581562, 51.402519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220371, 37.190216, 51.481266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102648, 0.202635, 0.973859,
		-0.992679, 0.041784, -0.113325,
		-0.063656, -0.978362, 0.196863,
		31.201275, 36.896706, 51.540325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688072, 37.487343, 51.889977>,  <31.245834, 37.581562, 51.402519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688072, 37.487343, 51.889977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.908028, 37.156307, 51.935074>,  <31.040001, 36.957684, 51.962132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.908028, 37.156307, 51.935074>,  <30.688072, 37.487343, 51.889977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908028, 37.156307, 51.935074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119575, 0.055591, 0.991268,
		-0.826633, -0.558570, -0.068391,
		0.549890, -0.827593, 0.112744,
		31.072994, 36.908028, 51.968899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366079, 37.115330, 52.367596>,  <30.688072, 37.487343, 51.889977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366079, 37.115330, 52.367596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.731213, 36.952297, 52.377460>,  <30.950293, 36.854477, 52.383381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.731213, 36.952297, 52.377460>,  <30.366079, 37.115330, 52.367596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731213, 36.952297, 52.377460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012165, 0.087522, 0.996088,
		-0.408148, -0.908964, 0.084852,
		0.912835, -0.407584, 0.024665,
		31.005062, 36.830021, 52.384861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417776, 36.487061, 52.845840>,  <30.366079, 37.115330, 52.367596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417776, 36.487061, 52.845840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.754707, 36.700928, 52.818687>,  <30.956867, 36.829250, 52.802395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.754707, 36.700928, 52.818687>,  <30.417776, 36.487061, 52.845840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754707, 36.700928, 52.818687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025784, 0.165789, 0.985824,
		0.538347, -0.828638, 0.153435,
		0.842329, 0.534672, -0.067886,
		31.007406, 36.861328, 52.798321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.758228, 35.700706, 37.341969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125088, 35.750824, 37.493301>,  <35.345203, 35.780895, 37.584103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125088, 35.750824, 37.493301>,  <34.758228, 35.700706, 37.341969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125088, 35.750824, 37.493301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396723, 0.196423, 0.896677,
		0.038031, -0.972481, 0.229855,
		0.917150, 0.125290, 0.378335,
		35.400234, 35.788410, 37.606800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865620, 35.305641, 37.881126>,  <34.758228, 35.700706, 37.341969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865620, 35.305641, 37.881126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110790, 35.614220, 37.949471>,  <35.257893, 35.799366, 37.990475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110790, 35.614220, 37.949471>,  <34.865620, 35.305641, 37.881126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110790, 35.614220, 37.949471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503705, 0.214883, 0.836723,
		0.608775, -0.598908, 0.520290,
		0.612922, 0.771450, 0.170858,
		35.294666, 35.845654, 38.000729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104366, 35.238140, 38.599941>,  <34.865620, 35.305641, 37.881126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104366, 35.238140, 38.599941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158821, 35.619503, 38.492249>,  <35.191494, 35.848320, 38.427631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158821, 35.619503, 38.492249>,  <35.104366, 35.238140, 38.599941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158821, 35.619503, 38.492249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357169, 0.300721, 0.884306,
		0.924065, -0.024226, 0.381467,
		0.136138, 0.953405, -0.269233,
		35.199661, 35.905525, 38.411480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276218, 35.527409, 39.222420>,  <35.104366, 35.238140, 38.599941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276218, 35.527409, 39.222420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182545, 35.850327, 39.005741>,  <35.126343, 36.044079, 38.875732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182545, 35.850327, 39.005741>,  <35.276218, 35.527409, 39.222420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182545, 35.850327, 39.005741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309008, 0.466487, 0.828797,
		0.921777, 0.361478, 0.140217,
		-0.234183, 0.807294, -0.541697,
		35.112289, 36.092514, 38.843231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555546, 36.098328, 39.535236>,  <35.276218, 35.527409, 39.222420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555546, 36.098328, 39.535236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244408, 36.238522, 39.326572>,  <35.057724, 36.322636, 39.201374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244408, 36.238522, 39.326572>,  <35.555546, 36.098328, 39.535236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244408, 36.238522, 39.326572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400884, 0.362545, 0.841340,
		0.483999, 0.863553, -0.141500,
		-0.777841, 0.350482, -0.521656,
		35.011055, 36.343666, 39.170074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391212, 36.583179, 39.940094>,  <35.555546, 36.098328, 39.535236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391212, 36.583179, 39.940094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075020, 36.512295, 39.705578>,  <34.885303, 36.469765, 39.564869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075020, 36.512295, 39.705578>,  <35.391212, 36.583179, 39.940094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075020, 36.512295, 39.705578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609760, 0.317910, 0.726035,
		0.057722, 0.931412, -0.359362,
		-0.790482, -0.177216, -0.586288,
		34.837875, 36.459129, 39.529690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993839, 37.152988, 40.111111>,  <35.391212, 36.583179, 39.940094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993839, 37.152988, 40.111111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759487, 36.877651, 39.940033>,  <34.618877, 36.712448, 39.837387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759487, 36.877651, 39.940033>,  <34.993839, 37.152988, 40.111111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759487, 36.877651, 39.940033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711534, 0.184316, 0.678046,
		-0.387899, 0.701575, -0.597768,
		-0.585879, -0.688346, -0.427699,
		34.583725, 36.671146, 39.811722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364204, 37.507175, 40.017742>,  <34.993839, 37.152988, 40.111111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364204, 37.507175, 40.017742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284855, 37.115124, 40.017513>,  <34.237244, 36.879894, 40.017376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284855, 37.115124, 40.017513>,  <34.364204, 37.507175, 40.017742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284855, 37.115124, 40.017513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784931, 0.158520, 0.598961,
		-0.586967, 0.119269, -0.800778,
		-0.198377, -0.980126, -0.000572,
		34.225342, 36.821087, 40.017342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619034, 37.433754, 39.916237>,  <34.364204, 37.507175, 40.017742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619034, 37.433754, 39.916237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745209, 37.106941, 40.109299>,  <33.820915, 36.910854, 40.225136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745209, 37.106941, 40.109299>,  <33.619034, 37.433754, 39.916237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745209, 37.106941, 40.109299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765801, 0.081193, 0.637932,
		-0.560400, -0.570845, -0.600074,
		0.315438, -0.817034, 0.482654,
		33.839840, 36.861832, 40.254093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981956, 37.105003, 40.141319>,  <33.619034, 37.433754, 39.916237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981956, 37.105003, 40.141319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272346, 36.928421, 40.352253>,  <33.446579, 36.822472, 40.478813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272346, 36.928421, 40.352253>,  <32.981956, 37.105003, 40.141319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272346, 36.928421, 40.352253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631733, -0.125023, 0.765038,
		-0.271800, -0.888531, -0.369644,
		0.725974, -0.441454, 0.527333,
		33.490139, 36.795986, 40.510452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717087, 36.586849, 40.445747>,  <32.981956, 37.105003, 40.141319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717087, 36.586849, 40.445747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029541, 36.619282, 40.693378>,  <33.217014, 36.638741, 40.841957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029541, 36.619282, 40.693378>,  <32.717087, 36.586849, 40.445747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029541, 36.619282, 40.693378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624351, 0.106922, 0.773791,
		-0.003449, -0.990955, 0.134147,
		0.781136, 0.081086, 0.619073,
		33.263882, 36.643608, 40.879101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575188, 36.171429, 41.041050>,  <32.717087, 36.586849, 40.445747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575188, 36.171429, 41.041050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875980, 36.396664, 41.178135>,  <33.056458, 36.531807, 41.260387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875980, 36.396664, 41.178135>,  <32.575188, 36.171429, 41.041050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875980, 36.396664, 41.178135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486317, 0.122937, 0.865091,
		0.444994, -0.817199, 0.366287,
		0.751981, 0.563092, 0.342711,
		33.101574, 36.565590, 41.280949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598423, 35.455502, 40.922375>,  <32.575188, 36.171429, 41.041050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598423, 35.455502, 40.922375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379093, 35.121006, 40.920013>,  <32.247494, 34.920307, 40.918598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379093, 35.121006, 40.920013>,  <32.598423, 35.455502, 40.922375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379093, 35.121006, 40.920013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144055, -0.087500, -0.985694,
		0.823762, -0.541335, 0.168443,
		-0.548329, -0.836242, -0.005903,
		32.214596, 34.870132, 40.918243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022747, 34.944782, 40.563786>,  <32.598423, 35.455502, 40.922375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022747, 34.944782, 40.563786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633457, 34.856991, 40.536495>,  <32.399883, 34.804314, 40.520123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633457, 34.856991, 40.536495>,  <33.022747, 34.944782, 40.563786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633457, 34.856991, 40.536495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114928, -0.207654, -0.971428,
		0.199046, -0.953261, 0.227320,
		-0.973228, -0.219484, -0.068223,
		32.341488, 34.791145, 40.516029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029942, 34.440441, 40.092556>,  <33.022747, 34.944782, 40.563786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029942, 34.440441, 40.092556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641712, 34.535759, 40.078671>,  <32.408775, 34.592949, 40.070339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641712, 34.535759, 40.078671>,  <33.029942, 34.440441, 40.092556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641712, 34.535759, 40.078671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009163, -0.180586, -0.983517,
		-0.240639, -0.954255, 0.177455,
		-0.970572, 0.238298, -0.034713,
		32.350540, 34.607246, 40.068256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683949, 33.975803, 39.626865>,  <33.029942, 34.440441, 40.092556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683949, 33.975803, 39.626865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417885, 34.273365, 39.652718>,  <32.258247, 34.451900, 39.668228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417885, 34.273365, 39.652718>,  <32.683949, 33.975803, 39.626865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417885, 34.273365, 39.652718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123039, -0.023817, -0.992116,
		-0.736497, -0.667865, 0.107371,
		-0.665157, 0.743901, 0.064632,
		32.218338, 34.496536, 39.672108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062550, 33.749191, 39.140575>,  <32.683949, 33.975803, 39.626865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062550, 33.749191, 39.140575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045433, 34.142227, 39.212883>,  <32.035164, 34.378048, 39.256268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045433, 34.142227, 39.212883>,  <32.062550, 33.749191, 39.140575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045433, 34.142227, 39.212883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091244, 0.176340, -0.980091,
		-0.994909, -0.058430, 0.082111,
		-0.042787, 0.982594, 0.180773,
		32.032597, 34.437004, 39.267117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521225, 34.020489, 38.779209>,  <32.062550, 33.749191, 39.140575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521225, 34.020489, 38.779209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770378, 34.330227, 38.823761>,  <31.919870, 34.516071, 38.850494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770378, 34.330227, 38.823761>,  <31.521225, 34.020489, 38.779209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770378, 34.330227, 38.823761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010339, 0.134217, -0.990898,
		-0.782248, 0.618364, 0.075595,
		0.622882, 0.774346, 0.111384,
		31.957243, 34.562531, 38.857178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414270, 34.344124, 38.125698>,  <31.521225, 34.020489, 38.779209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414270, 34.344124, 38.125698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736004, 34.544048, 38.254219>,  <31.929043, 34.664005, 38.331333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736004, 34.544048, 38.254219>,  <31.414270, 34.344124, 38.125698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736004, 34.544048, 38.254219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263046, 0.185346, -0.946812,
		-0.532782, 0.846069, 0.017606,
		0.804332, 0.499814, 0.321305,
		31.977303, 34.693993, 38.350609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396896, 35.009701, 37.769005>,  <31.414270, 34.344124, 38.125698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396896, 35.009701, 37.769005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766060, 34.927570, 37.899284>,  <31.987558, 34.878292, 37.977451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766060, 34.927570, 37.899284>,  <31.396896, 35.009701, 37.769005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766060, 34.927570, 37.899284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357497, 0.142944, -0.922910,
		0.142944, 0.968198, 0.205329,
		0.922910, -0.205329, 0.325695,
		32.042934, 34.865971, 37.996994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814514, 35.398903, 37.370441>,  <31.396896, 35.009701, 37.769005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814514, 35.398903, 37.370441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072624, 35.129642, 37.514931>,  <32.227489, 34.968086, 37.601624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.072624, 35.129642, 37.514931>,  <31.814514, 35.398903, 37.370441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072624, 35.129642, 37.514931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479048, -0.011784, -0.877709,
		0.595089, 0.739410, 0.314868,
		0.645277, -0.673152, 0.361226,
		32.266209, 34.927696, 37.623299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545052, 35.645916, 37.201843>,  <31.814514, 35.398903, 37.370441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545052, 35.645916, 37.201843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583633, 35.251965, 37.259418>,  <32.606785, 35.015594, 37.293964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583633, 35.251965, 37.259418>,  <32.545052, 35.645916, 37.201843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583633, 35.251965, 37.259418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481296, -0.080426, -0.872861,
		0.871235, 0.153468, 0.466259,
		0.096456, -0.984875, 0.143934,
		32.612572, 34.956501, 37.302597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256092, 35.427940, 36.863380>,  <32.545052, 35.645916, 37.201843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256092, 35.427940, 36.863380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049065, 35.089081, 36.911491>,  <32.924850, 34.885765, 36.940357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049065, 35.089081, 36.911491>,  <33.256092, 35.427940, 36.863380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049065, 35.089081, 36.911491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222666, -0.269080, -0.937025,
		0.826163, -0.458189, 0.327897,
		-0.517565, -0.847147, 0.120281,
		32.893795, 34.834938, 36.947575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669052, 34.974480, 36.583496>,  <33.256092, 35.427940, 36.863380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669052, 34.974480, 36.583496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303280, 34.813416, 36.599930>,  <33.083817, 34.716778, 36.609791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303280, 34.813416, 36.599930>,  <33.669052, 34.974480, 36.583496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303280, 34.813416, 36.599930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100656, -0.324538, -0.940502,
		0.392037, -0.855884, 0.337297,
		-0.914426, -0.402663, 0.041081,
		33.028954, 34.692616, 36.612255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745022, 34.233376, 36.338394>,  <33.669052, 34.974480, 36.583496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745022, 34.233376, 36.338394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356873, 34.320671, 36.296940>,  <33.123981, 34.373047, 36.272068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356873, 34.320671, 36.296940>,  <33.745022, 34.233376, 36.338394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356873, 34.320671, 36.296940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038503, -0.283779, -0.958117,
		-0.238502, -0.933726, 0.266970,
		-0.970378, 0.218233, -0.103633,
		33.065758, 34.386143, 36.265850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422997, 33.925442, 35.693119>,  <33.745022, 34.233376, 36.338394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422997, 33.925442, 35.693119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139069, 34.186340, 35.799492>,  <32.968712, 34.342880, 35.863316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139069, 34.186340, 35.799492>,  <33.422997, 33.925442, 35.693119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139069, 34.186340, 35.799492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393211, -0.053685, -0.917880,
		-0.584412, -0.756099, 0.294579,
		-0.709822, 0.652251, 0.265932,
		32.926121, 34.382015, 35.879272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339622, 33.388134, 36.165478>,  <33.422997, 33.925442, 35.693119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339622, 33.388134, 36.165478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720570, 33.427963, 36.050182>,  <33.949139, 33.451862, 35.981007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720570, 33.427963, 36.050182>,  <33.339622, 33.388134, 36.165478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720570, 33.427963, 36.050182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189262, 0.548128, 0.814699,
		0.239115, -0.830446, 0.503174,
		0.952368, 0.099575, -0.288238,
		34.006279, 33.457836, 35.963711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547146, 32.774612, 36.566723>,  <33.339622, 33.388134, 36.165478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547146, 32.774612, 36.566723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823128, 32.490040, 36.620113>,  <33.988716, 32.319294, 36.652145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823128, 32.490040, 36.620113>,  <33.547146, 32.774612, 36.566723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823128, 32.490040, 36.620113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138305, 0.051428, 0.989054,
		-0.710512, -0.700867, -0.062912,
		0.689959, -0.711436, 0.133473,
		34.030117, 32.276608, 36.660156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363529, 32.099567, 36.942757>,  <33.547146, 32.774612, 36.566723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363529, 32.099567, 36.942757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753532, 32.157982, 37.009731>,  <33.987534, 32.193031, 37.049915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753532, 32.157982, 37.009731>,  <33.363529, 32.099567, 36.942757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753532, 32.157982, 37.009731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170085, 0.005758, 0.985413,
		0.142946, -0.989262, 0.030454,
		0.975006, 0.146041, 0.167436,
		34.046036, 32.201794, 37.059963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584187, 31.621801, 37.445522>,  <33.363529, 32.099567, 36.942757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584187, 31.621801, 37.445522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813179, 31.948614, 37.473007>,  <33.950573, 32.144703, 37.489498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813179, 31.948614, 37.473007>,  <33.584187, 31.621801, 37.445522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813179, 31.948614, 37.473007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259811, 0.101279, 0.960333,
		0.777666, -0.567625, 0.270255,
		0.572480, 0.817034, 0.068714,
		33.984924, 32.193726, 37.493622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917789, 31.584326, 38.063141>,  <33.584187, 31.621801, 37.445522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917789, 31.584326, 38.063141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011776, 31.965017, 37.984150>,  <34.068169, 32.193432, 37.936756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011776, 31.965017, 37.984150>,  <33.917789, 31.584326, 38.063141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011776, 31.965017, 37.984150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124559, 0.230977, 0.964953,
		0.963989, -0.202136, 0.172819,
		0.234968, 0.951730, -0.197482,
		34.082268, 32.250538, 37.924904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362236, 31.674995, 38.590885>,  <33.917789, 31.584326, 38.063141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362236, 31.674995, 38.590885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192924, 32.009968, 38.452583>,  <34.091339, 32.210953, 38.369602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192924, 32.009968, 38.452583>,  <34.362236, 31.674995, 38.590885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192924, 32.009968, 38.452583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229280, 0.270197, 0.935106,
		0.876509, 0.475082, 0.077639,
		-0.423275, 0.837431, -0.345758,
		34.065941, 32.261196, 38.348858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711510, 32.104317, 38.976646>,  <34.362236, 31.674995, 38.590885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711510, 32.104317, 38.976646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398426, 32.326134, 38.863617>,  <34.210575, 32.459225, 38.795799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398426, 32.326134, 38.863617>,  <34.711510, 32.104317, 38.976646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398426, 32.326134, 38.863617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222171, 0.175160, 0.959145,
		0.581379, 0.813514, -0.013897,
		-0.782712, 0.554539, -0.282573,
		34.163612, 32.492496, 38.778847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791843, 32.811722, 39.339245>,  <34.711510, 32.104317, 38.976646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791843, 32.811722, 39.339245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411552, 32.776546, 39.220325>,  <34.183380, 32.755440, 39.148972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411552, 32.776546, 39.220325>,  <34.791843, 32.811722, 39.339245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411552, 32.776546, 39.220325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305386, 0.100213, 0.946941,
		-0.053479, 0.991072, -0.122130,
		-0.950726, -0.087938, -0.297300,
		34.126335, 32.750164, 39.131134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526432, 33.266872, 39.742439>,  <34.791843, 32.811722, 39.339245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526432, 33.266872, 39.742439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210716, 33.062790, 39.605782>,  <34.021286, 32.940342, 39.523788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210716, 33.062790, 39.605782>,  <34.526432, 33.266872, 39.742439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210716, 33.062790, 39.605782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425736, 0.053782, 0.903248,
		-0.442465, 0.858371, -0.259661,
		-0.789287, -0.510202, -0.341643,
		33.973930, 32.909729, 39.503288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866989, 33.635868, 40.004761>,  <34.526432, 33.266872, 39.742439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866989, 33.635868, 40.004761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784298, 33.251724, 39.929962>,  <33.734684, 33.021236, 39.885082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784298, 33.251724, 39.929962>,  <33.866989, 33.635868, 40.004761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784298, 33.251724, 39.929962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455899, -0.074557, 0.886903,
		-0.865689, 0.268604, -0.422414,
		-0.206732, -0.960361, -0.187000,
		33.722279, 32.963615, 39.873863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231739, 33.501930, 40.295128>,  <33.866989, 33.635868, 40.004761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231739, 33.501930, 40.295128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369358, 33.132652, 40.226604>,  <33.451931, 32.911087, 40.185490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369358, 33.132652, 40.226604>,  <33.231739, 33.501930, 40.295128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369358, 33.132652, 40.226604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330988, -0.289983, 0.897973,
		-0.878679, -0.252244, -0.405334,
		0.344049, -0.923192, -0.171312,
		33.472572, 32.855694, 40.175209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717892, 33.104088, 40.452526>,  <33.231739, 33.501930, 40.295128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717892, 33.104088, 40.452526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058994, 32.901775, 40.504662>,  <33.263657, 32.780388, 40.535942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058994, 32.901775, 40.504662>,  <32.717892, 33.104088, 40.452526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058994, 32.901775, 40.504662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255989, -0.187204, 0.948380,
		-0.455270, -0.842106, -0.289114,
		0.852759, -0.505779, 0.130342,
		33.314823, 32.750042, 40.543766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636078, 32.432766, 40.916107>,  <32.717892, 33.104088, 40.452526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636078, 32.432766, 40.916107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026031, 32.514126, 40.952381>,  <33.260006, 32.562943, 40.974144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026031, 32.514126, 40.952381>,  <32.636078, 32.432766, 40.916107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026031, 32.514126, 40.952381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029715, -0.284746, 0.958142,
		0.220706, -0.936776, -0.271551,
		0.974887, 0.203399, 0.090681,
		33.318497, 32.575146, 40.979584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878380, 32.025486, 41.404808>,  <32.636078, 32.432766, 40.916107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878380, 32.025486, 41.404808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209480, 32.249771, 41.396599>,  <33.408142, 32.384342, 41.391674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209480, 32.249771, 41.396599>,  <32.878380, 32.025486, 41.404808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209480, 32.249771, 41.396599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245115, -0.328465, 0.912156,
		0.504717, -0.760073, -0.409328,
		0.827755, 0.560714, -0.020523,
		33.457806, 32.417984, 41.390442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382278, 31.680811, 41.542698>,  <32.878380, 32.025486, 41.404808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382278, 31.680811, 41.542698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527676, 32.037605, 41.650204>,  <33.614914, 32.251682, 41.714706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527676, 32.037605, 41.650204>,  <33.382278, 31.680811, 41.542698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527676, 32.037605, 41.650204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086871, -0.319694, 0.943530,
		0.927540, -0.319615, -0.193693,
		0.363489, 0.891988, 0.268764,
		33.636723, 32.305202, 41.730831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031281, 31.552992, 41.948906>,  <33.382278, 31.680811, 41.542698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031281, 31.552992, 41.948906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902454, 31.914953, 42.060207>,  <33.825157, 32.132130, 42.126987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902454, 31.914953, 42.060207>,  <34.031281, 31.552992, 41.948906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902454, 31.914953, 42.060207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285124, -0.187550, 0.939963,
		0.902760, 0.382067, -0.197606,
		-0.322068, 0.904903, 0.278249,
		33.805836, 32.186424, 42.143681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510689, 31.832037, 42.454002>,  <34.031281, 31.552992, 41.948906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510689, 31.832037, 42.454002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171753, 32.034752, 42.517487>,  <33.968391, 32.156380, 42.555576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171753, 32.034752, 42.517487>,  <34.510689, 31.832037, 42.454002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171753, 32.034752, 42.517487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071212, -0.187731, 0.979636,
		0.526262, 0.841382, 0.122982,
		-0.847335, 0.506787, 0.158712,
		33.917553, 32.186787, 42.565102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603283, 32.158485, 43.183243>,  <34.510689, 31.832037, 42.454002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603283, 32.158485, 43.183243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208870, 32.181225, 43.120628>,  <33.972221, 32.194866, 43.083061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208870, 32.181225, 43.120628>,  <34.603283, 32.158485, 43.183243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208870, 32.181225, 43.120628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161958, -0.108350, 0.980831,
		0.038795, 0.992486, 0.116044,
		-0.986035, 0.056845, -0.156538,
		33.913059, 32.198277, 43.073666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353661, 32.770000, 43.569355>,  <34.603283, 32.158485, 43.183243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353661, 32.770000, 43.569355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059555, 32.508530, 43.497700>,  <33.883091, 32.351646, 43.454708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059555, 32.508530, 43.497700>,  <34.353661, 32.770000, 43.569355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059555, 32.508530, 43.497700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202010, -0.040941, 0.978527,
		-0.646976, 0.755665, -0.101947,
		-0.735265, -0.653678, -0.179139,
		33.838974, 32.312428, 43.443958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807552, 32.949059, 44.042694>,  <34.353661, 32.770000, 43.569355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807552, 32.949059, 44.042694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669361, 32.591103, 43.929684>,  <33.586449, 32.376328, 43.861877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669361, 32.591103, 43.929684>,  <33.807552, 32.949059, 44.042694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669361, 32.591103, 43.929684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322446, -0.169534, 0.931282,
		-0.881292, 0.412834, -0.229983,
		-0.345475, -0.894889, -0.282525,
		33.565720, 32.322636, 43.844925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115322, 32.923851, 44.371960>,  <33.807552, 32.949059, 44.042694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115322, 32.923851, 44.371960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239273, 32.558521, 44.266273>,  <33.313644, 32.339321, 44.202862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239273, 32.558521, 44.266273>,  <33.115322, 32.923851, 44.371960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239273, 32.558521, 44.266273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253075, -0.347098, 0.903037,
		-0.916477, -0.212963, -0.338698,
		0.309875, -0.913329, -0.264212,
		33.332237, 32.284523, 44.187012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635475, 32.563091, 44.645699>,  <33.115322, 32.923851, 44.371960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635475, 32.563091, 44.645699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943909, 32.310791, 44.610844>,  <33.128967, 32.159412, 44.589931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943909, 32.310791, 44.610844>,  <32.635475, 32.563091, 44.645699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943909, 32.310791, 44.610844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107012, -0.263280, 0.958766,
		-0.627683, -0.729959, -0.270507,
		0.771079, -0.630749, -0.087142,
		33.175232, 32.121567, 44.584702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390709, 31.880043, 44.879498>,  <32.635475, 32.563091, 44.645699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390709, 31.880043, 44.879498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788517, 31.913643, 44.904419>,  <33.027203, 31.933802, 44.919373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788517, 31.913643, 44.904419>,  <32.390709, 31.880043, 44.879498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788517, 31.913643, 44.904419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044019, -0.204216, 0.977936,
		0.094868, -0.975315, -0.199399,
		0.994516, 0.083998, 0.062306,
		33.086872, 31.938843, 44.923111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510532, 31.244572, 45.294353>,  <32.390709, 31.880043, 44.879498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510532, 31.244572, 45.294353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797333, 31.523079, 45.307789>,  <32.969414, 31.690184, 45.315849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797333, 31.523079, 45.307789>,  <32.510532, 31.244572, 45.294353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797333, 31.523079, 45.307789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113096, -0.163735, 0.980000,
		0.687840, -0.698859, -0.196143,
		0.716998, 0.696266, 0.033586,
		33.012432, 31.731958, 45.317863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955090, 30.837509, 45.663502>,  <32.510532, 31.244572, 45.294353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955090, 30.837509, 45.663502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118568, 31.199236, 45.712784>,  <33.216656, 31.416271, 45.742352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118568, 31.199236, 45.712784>,  <32.955090, 30.837509, 45.663502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118568, 31.199236, 45.712784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200225, -0.220544, 0.954605,
		0.890435, -0.365479, -0.271202,
		0.408700, 0.904315, 0.123202,
		33.241180, 31.470530, 45.749744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624737, 30.765688, 46.033508>,  <32.955090, 30.837509, 45.663502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624737, 30.765688, 46.033508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482616, 31.138552, 46.061337>,  <33.397343, 31.362270, 46.078033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482616, 31.138552, 46.061337>,  <33.624737, 30.765688, 46.033508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482616, 31.138552, 46.061337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065118, -0.049567, 0.996646,
		0.932479, 0.358644, -0.043089,
		-0.355306, 0.932157, 0.069575,
		33.376026, 31.418200, 46.082211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123840, 31.073675, 46.394596>,  <33.624737, 30.765688, 46.033508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123840, 31.073675, 46.394596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791748, 31.289503, 46.450558>,  <33.592491, 31.419001, 46.484135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791748, 31.289503, 46.450558>,  <34.123840, 31.073675, 46.394596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791748, 31.289503, 46.450558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097334, -0.106794, 0.989505,
		0.548849, 0.835140, 0.036146,
		-0.830235, 0.539571, 0.139901,
		33.542679, 31.451374, 46.492527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236912, 31.614368, 46.964100>,  <34.123840, 31.073675, 46.394596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236912, 31.614368, 46.964100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842468, 31.562794, 46.922215>,  <33.605801, 31.531849, 46.897083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842468, 31.562794, 46.922215>,  <34.236912, 31.614368, 46.964100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842468, 31.562794, 46.922215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086140, -0.142018, 0.986109,
		-0.142018, 0.981431, 0.128938,
		-0.986109, -0.128938, -0.104709,
		33.546635, 31.524113, 46.890800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438328, 32.310394, 47.020596>,  <34.236912, 31.614368, 46.964100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438328, 32.310394, 47.020596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757282, 32.547115, 47.067833>,  <34.948654, 32.689148, 47.096176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757282, 32.547115, 47.067833>,  <34.438328, 32.310394, 47.020596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757282, 32.547115, 47.067833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135327, 0.015357, -0.990682,
		-0.588101, 0.805937, -0.067841,
		0.797386, 0.591802, 0.118096,
		34.996498, 32.724655, 47.103260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432610, 32.726589, 46.418621>,  <34.438328, 32.310394, 47.020596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432610, 32.726589, 46.418621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815319, 32.744301, 46.533596>,  <35.044945, 32.754929, 46.602581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815319, 32.744301, 46.533596>,  <34.432610, 32.726589, 46.418621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815319, 32.744301, 46.533596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290778, -0.164382, -0.942564,
		0.005510, 0.985402, -0.170153,
		0.956775, 0.044283, 0.287439,
		35.102352, 32.757587, 46.619827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763660, 33.327381, 45.988018>,  <34.432610, 32.726589, 46.418621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763660, 33.327381, 45.988018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036491, 33.077911, 46.140751>,  <35.200191, 32.928230, 46.232391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036491, 33.077911, 46.140751>,  <34.763660, 33.327381, 45.988018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036491, 33.077911, 46.140751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329946, -0.203515, -0.921801,
		0.652611, 0.754728, 0.066965,
		0.682080, -0.623673, 0.381836,
		35.241116, 32.890808, 46.255302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435093, 33.669373, 45.895256>,  <34.763660, 33.327381, 45.988018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435093, 33.669373, 45.895256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495750, 33.275108, 45.924877>,  <35.532146, 33.038551, 45.942650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495750, 33.275108, 45.924877>,  <35.435093, 33.669373, 45.895256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495750, 33.275108, 45.924877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598047, 0.031842, -0.800828,
		0.786984, 0.165732, 0.594297,
		0.151646, -0.985657, 0.074057,
		35.541245, 32.979412, 45.947094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160717, 33.637115, 45.789108>,  <35.435093, 33.669373, 45.895256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160717, 33.637115, 45.789108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992912, 33.280891, 45.718788>,  <35.892227, 33.067158, 45.676598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992912, 33.280891, 45.718788>,  <36.160717, 33.637115, 45.789108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992912, 33.280891, 45.718788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564758, -0.104439, -0.818621,
		0.710673, -0.442708, 0.546766,
		-0.419514, -0.890563, -0.175801,
		35.867058, 33.013721, 45.666046>
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
