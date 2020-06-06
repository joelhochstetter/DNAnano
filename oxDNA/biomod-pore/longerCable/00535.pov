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
	<24.193928, 34.847054, 34.609913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398533, 35.062752, 34.877518>,  <24.521296, 35.192169, 35.038078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398533, 35.062752, 34.877518>,  <24.193928, 34.847054, 34.609913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.398533, 35.062752, 34.877518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077718, 0.804413, -0.588965,
		-0.855755, 0.249268, 0.453375,
		0.511511, 0.539245, 0.669008,
		24.551987, 35.224525, 35.078220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.066423, 35.401192, 34.267937>,  <24.193928, 34.847054, 34.609913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.066423, 35.401192, 34.267937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338604, 35.479626, 34.550365>,  <24.501911, 35.526688, 34.719822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338604, 35.479626, 34.550365>,  <24.066423, 35.401192, 34.267937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338604, 35.479626, 34.550365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163951, 0.898373, -0.407488,
		-0.714218, 0.393036, 0.579150,
		0.680450, 0.196084, 0.706073,
		24.542740, 35.538452, 34.762188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.003847, 36.090389, 34.642235>,  <24.066423, 35.401192, 34.267937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.003847, 36.090389, 34.642235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379169, 35.952999, 34.626209>,  <24.604362, 35.870564, 34.616592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379169, 35.952999, 34.626209>,  <24.003847, 36.090389, 34.642235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379169, 35.952999, 34.626209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270905, 0.802134, -0.532157,
		0.214921, 0.488472, 0.845697,
		0.938307, -0.343475, -0.040066,
		24.660662, 35.849957, 34.614189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.386841, 36.541153, 34.923988>,  <24.003847, 36.090389, 34.642235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.386841, 36.541153, 34.923988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577085, 36.341778, 34.634064>,  <24.691233, 36.222153, 34.460110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577085, 36.341778, 34.634064>,  <24.386841, 36.541153, 34.923988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577085, 36.341778, 34.634064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078799, 0.844804, -0.529242,
		0.876118, 0.194600, 0.441076,
		0.475613, -0.498434, -0.724814,
		24.719769, 36.192249, 34.416618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127859, 36.822903, 34.783657>,  <24.386841, 36.541153, 34.923988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127859, 36.822903, 34.783657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933117, 36.701668, 34.455971>,  <24.816271, 36.628929, 34.259361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933117, 36.701668, 34.455971>,  <25.127859, 36.822903, 34.783657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933117, 36.701668, 34.455971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091404, 0.915044, -0.392860,
		0.868686, -0.266146, -0.417793,
		-0.486858, -0.303084, -0.819213,
		24.787060, 36.610741, 34.210205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868593, 36.912560, 34.740574>,  <25.127859, 36.822903, 34.783657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868593, 36.912560, 34.740574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789873, 36.544182, 34.875111>,  <25.742641, 36.323154, 34.955833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789873, 36.544182, 34.875111>,  <25.868593, 36.912560, 34.740574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789873, 36.544182, 34.875111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751859, -0.361935, -0.551100,
		0.629268, 0.144424, 0.763652,
		-0.196800, -0.920947, 0.336341,
		25.730833, 36.267899, 34.976013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434433, 36.513248, 34.963634>,  <25.868593, 36.912560, 34.740574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434433, 36.513248, 34.963634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128897, 36.329926, 34.781864>,  <25.945576, 36.219933, 34.672802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128897, 36.329926, 34.781864>,  <26.434433, 36.513248, 34.963634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128897, 36.329926, 34.781864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606687, -0.269657, -0.747808,
		0.220185, -0.846901, 0.484023,
		-0.763839, -0.458306, -0.454429,
		25.899746, 36.192432, 34.645535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616777, 37.224583, 35.221481>,  <26.434433, 36.513248, 34.963634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616777, 37.224583, 35.221481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492374, 37.270813, 35.598824>,  <26.417732, 37.298553, 35.825230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.492374, 37.270813, 35.598824>,  <26.616777, 37.224583, 35.221481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.492374, 37.270813, 35.598824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482191, 0.874532, 0.051825,
		-0.819003, 0.470994, -0.327718,
		-0.311009, 0.115578, 0.943353,
		26.399073, 37.305485, 35.881828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284678, 37.946457, 35.310692>,  <26.616777, 37.224583, 35.221481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284678, 37.946457, 35.310692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484926, 37.795586, 35.622364>,  <26.605076, 37.705063, 35.809368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484926, 37.795586, 35.622364>,  <26.284678, 37.946457, 35.310692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484926, 37.795586, 35.622364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454925, 0.880407, 0.133891,
		-0.736493, 0.287438, 0.612337,
		0.500620, -0.377177, 0.779177,
		26.635113, 37.682434, 35.856117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230223, 38.440479, 35.856880>,  <26.284678, 37.946457, 35.310692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230223, 38.440479, 35.856880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534731, 38.214314, 35.983860>,  <26.717436, 38.078613, 36.060047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.534731, 38.214314, 35.983860>,  <26.230223, 38.440479, 35.856880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.534731, 38.214314, 35.983860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476220, 0.819775, 0.318094,
		-0.440091, -0.090981, 0.893332,
		0.761272, -0.565413, 0.317448,
		26.763113, 38.044689, 36.079094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502949, 38.639389, 36.588734>,  <26.230223, 38.440479, 35.856880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502949, 38.639389, 36.588734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804346, 38.474453, 36.383904>,  <26.985184, 38.375492, 36.261005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804346, 38.474453, 36.383904>,  <26.502949, 38.639389, 36.588734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804346, 38.474453, 36.383904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572237, 0.794822, 0.201999,
		0.323716, -0.445233, 0.834850,
		0.753494, -0.412342, -0.512075,
		27.030394, 38.350750, 36.230282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136875, 38.862366, 36.923424>,  <26.502949, 38.639389, 36.588734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136875, 38.862366, 36.923424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213444, 38.738365, 36.550919>,  <27.259384, 38.663963, 36.327415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213444, 38.738365, 36.550919>,  <27.136875, 38.862366, 36.923424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213444, 38.738365, 36.550919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814449, 0.579672, -0.025556,
		0.547751, -0.753577, 0.363443,
		0.191420, -0.310004, -0.931266,
		27.270870, 38.645363, 36.271538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884754, 38.588741, 36.897247>,  <27.136875, 38.862366, 36.923424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884754, 38.588741, 36.897247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730164, 38.726967, 36.555202>,  <27.637409, 38.809902, 36.349976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.730164, 38.726967, 36.555202>,  <27.884754, 38.588741, 36.897247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730164, 38.726967, 36.555202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758135, 0.647026, -0.081174,
		0.525230, -0.679664, -0.512046,
		-0.386478, 0.345565, -0.855114,
		27.614220, 38.830635, 36.298668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269743, 38.628506, 36.154583>,  <27.884754, 38.588741, 36.897247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269743, 38.628506, 36.154583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.001768, 38.922279, 36.198017>,  <27.840982, 39.098545, 36.224075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.001768, 38.922279, 36.198017>,  <28.269743, 38.628506, 36.154583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001768, 38.922279, 36.198017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652614, 0.652297, -0.385493,
		-0.353946, -0.187395, -0.916300,
		-0.669939, 0.734433, 0.108581,
		27.800787, 39.142609, 36.230591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322805, 39.029217, 35.594711>,  <28.269743, 38.628506, 36.154583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322805, 39.029217, 35.594711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161089, 39.320572, 35.815979>,  <28.064058, 39.495384, 35.948738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.161089, 39.320572, 35.815979>,  <28.322805, 39.029217, 35.594711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161089, 39.320572, 35.815979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702890, 0.634415, -0.321658,
		-0.585230, 0.258771, -0.768468,
		-0.404291, 0.728393, 0.553166,
		28.039801, 39.539089, 35.981930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629704, 38.556278, 35.785900>,  <28.322805, 39.029217, 35.594711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629704, 38.556278, 35.785900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550188, 38.519508, 36.176189>,  <27.502480, 38.497448, 36.410362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550188, 38.519508, 36.176189>,  <27.629704, 38.556278, 35.785900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550188, 38.519508, 36.176189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415693, -0.893687, -0.168887,
		0.887515, -0.439174, 0.139442,
		-0.198788, -0.091925, 0.975722,
		27.490551, 38.491932, 36.468906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930136, 37.921951, 36.050751>,  <27.629704, 38.556278, 35.785900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930136, 37.921951, 36.050751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596729, 38.023411, 36.247082>,  <27.396685, 38.084286, 36.364880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596729, 38.023411, 36.247082>,  <27.930136, 37.921951, 36.050751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596729, 38.023411, 36.247082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382927, -0.905618, -0.182274,
		0.398267, -0.339879, 0.851977,
		-0.833517, 0.253651, 0.490826,
		27.346674, 38.099506, 36.394329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747738, 37.367897, 36.619167>,  <27.930136, 37.921951, 36.050751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747738, 37.367897, 36.619167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433298, 37.558838, 36.462101>,  <27.244635, 37.673401, 36.367863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433298, 37.558838, 36.462101>,  <27.747738, 37.367897, 36.619167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433298, 37.558838, 36.462101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458459, -0.876379, -0.147567,
		-0.414563, 0.064018, 0.907766,
		-0.786100, 0.477349, -0.392664,
		27.197468, 37.702042, 36.344303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232599, 36.960003, 36.761307>,  <27.747738, 37.367897, 36.619167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232599, 36.960003, 36.761307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057287, 37.183956, 36.480042>,  <26.952101, 37.318329, 36.311283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057287, 37.183956, 36.480042>,  <27.232599, 36.960003, 36.761307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057287, 37.183956, 36.480042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524727, -0.794534, -0.305576,
		-0.729775, 0.235041, 0.642016,
		-0.438281, 0.559885, -0.703164,
		26.925802, 37.351921, 36.269093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586241, 36.707573, 36.761768>,  <27.232599, 36.960003, 36.761307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586241, 36.707573, 36.761768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654707, 36.881290, 36.408024>,  <26.695787, 36.985519, 36.195778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654707, 36.881290, 36.408024>,  <26.586241, 36.707573, 36.761768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654707, 36.881290, 36.408024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486861, -0.743073, -0.459138,
		-0.856544, 0.509149, 0.084251,
		0.171165, 0.434291, -0.884361,
		26.706057, 37.011578, 36.142715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.516703, 36.093666, 37.335873>,  <26.586241, 36.707573, 36.761768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.516703, 36.093666, 37.335873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897726, 35.992611, 37.267982>,  <27.126341, 35.931976, 37.227249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.897726, 35.992611, 37.267982>,  <26.516703, 36.093666, 37.335873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.897726, 35.992611, 37.267982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131917, -0.845263, 0.517810,
		-0.274282, -0.470854, -0.838490,
		0.952558, -0.252637, -0.169726,
		27.183493, 35.916821, 37.217064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490499, 35.381176, 37.240532>,  <26.516703, 36.093666, 37.335873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490499, 35.381176, 37.240532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875259, 35.443375, 37.330482>,  <27.106115, 35.480694, 37.384453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875259, 35.443375, 37.330482>,  <26.490499, 35.381176, 37.240532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875259, 35.443375, 37.330482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016899, -0.787124, 0.616563,
		0.272880, -0.596872, -0.754507,
		0.961900, 0.155497, 0.224877,
		27.163830, 35.490025, 37.397945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962475, 34.922001, 37.067287>,  <26.490499, 35.381176, 37.240532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962475, 34.922001, 37.067287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060236, 35.078445, 37.422207>,  <27.118893, 35.172314, 37.635159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060236, 35.078445, 37.422207>,  <26.962475, 34.922001, 37.067287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060236, 35.078445, 37.422207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355004, -0.815429, 0.457218,
		0.902352, -0.426740, -0.060446,
		0.244402, 0.391113, 0.887298,
		27.133556, 35.195778, 37.688396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585655, 35.116596, 36.801022>,  <26.962475, 34.922001, 37.067287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585655, 35.116596, 36.801022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727262, 35.137154, 37.174553>,  <27.812227, 35.149487, 37.398670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727262, 35.137154, 37.174553>,  <27.585655, 35.116596, 36.801022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727262, 35.137154, 37.174553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891784, 0.282273, -0.353615,
		-0.281766, 0.957957, 0.054100,
		0.354019, 0.051391, 0.933825,
		27.833467, 35.152573, 37.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980774, 34.580112, 37.200344>,  <27.585655, 35.116596, 36.801022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980774, 34.580112, 37.200344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902243, 34.429863, 36.838047>,  <27.855124, 34.339714, 36.620670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902243, 34.429863, 36.838047>,  <27.980774, 34.580112, 37.200344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902243, 34.429863, 36.838047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980242, -0.097923, -0.171865,
		-0.024136, -0.921584, 0.387427,
		-0.196326, -0.375624, -0.905739,
		27.843346, 34.317177, 36.566326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190989, 34.736340, 37.919933>,  <27.980774, 34.580112, 37.200344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190989, 34.736340, 37.919933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284946, 35.039707, 37.676743>,  <28.341322, 35.221725, 37.530830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284946, 35.039707, 37.676743>,  <28.190989, 34.736340, 37.919933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284946, 35.039707, 37.676743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119997, 0.643315, 0.756139,
		0.964586, -0.104659, 0.242119,
		0.234895, 0.758414, -0.607974,
		28.355415, 35.267231, 37.494350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838793, 35.115658, 38.139362>,  <28.190989, 34.736340, 37.919933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838793, 35.115658, 38.139362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581394, 35.366829, 37.964264>,  <28.426956, 35.517532, 37.859203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581394, 35.366829, 37.964264>,  <28.838793, 35.115658, 38.139362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581394, 35.366829, 37.964264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089490, 0.629678, 0.771685,
		0.760201, 0.457401, -0.461388,
		-0.643495, 0.627925, -0.437749,
		28.388346, 35.555206, 37.832939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104731, 35.783882, 38.323956>,  <28.838793, 35.115658, 38.139362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104731, 35.783882, 38.323956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711969, 35.807262, 38.251896>,  <28.476313, 35.821289, 38.208660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711969, 35.807262, 38.251896>,  <29.104731, 35.783882, 38.323956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711969, 35.807262, 38.251896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090532, 0.690622, 0.717527,
		0.166354, 0.720850, -0.672831,
		-0.981902, 0.058451, -0.180147,
		28.417398, 35.824799, 38.197853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801601, 36.474861, 38.100861>,  <29.104731, 35.783882, 38.323956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801601, 36.474861, 38.100861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574472, 36.224548, 38.314766>,  <28.438196, 36.074360, 38.443108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574472, 36.224548, 38.314766>,  <28.801601, 36.474861, 38.100861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574472, 36.224548, 38.314766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030641, 0.665273, 0.745972,
		-0.822582, 0.407193, -0.396930,
		-0.567821, -0.625785, 0.534764,
		28.404127, 36.036812, 38.475197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850288, 36.860210, 38.736488>,  <28.801601, 36.474861, 38.100861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850288, 36.860210, 38.736488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619400, 36.542179, 38.810963>,  <28.480867, 36.351360, 38.855648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619400, 36.542179, 38.810963>,  <28.850288, 36.860210, 38.736488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619400, 36.542179, 38.810963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138867, 0.320256, 0.937098,
		-0.804692, 0.515060, -0.295269,
		-0.577223, -0.795079, 0.186183,
		28.446234, 36.303654, 38.866817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605497, 36.910076, 38.762871>,  <28.850288, 36.860210, 38.736488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605497, 36.910076, 38.762871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914478, 37.018166, 38.532986>,  <30.099867, 37.083019, 38.395054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914478, 37.018166, 38.532986>,  <29.605497, 36.910076, 38.762871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914478, 37.018166, 38.532986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276621, 0.957765, 0.078534,
		0.571665, 0.098315, 0.814575,
		0.772450, 0.270224, -0.574717,
		30.146214, 37.099232, 38.360569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814472, 37.572735, 38.980827>,  <29.605497, 36.910076, 38.762871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814472, 37.572735, 38.980827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900743, 37.533276, 38.592239>,  <29.952507, 37.509598, 38.359085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900743, 37.533276, 38.592239>,  <29.814472, 37.572735, 38.980827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900743, 37.533276, 38.592239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424514, 0.886472, -0.184267,
		0.879358, 0.452145, 0.149315,
		0.215679, -0.098650, -0.971469,
		29.965446, 37.503681, 38.300800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265991, 38.144753, 38.679974>,  <29.814472, 37.572735, 38.980827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265991, 38.144753, 38.679974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029377, 37.988777, 38.397686>,  <29.887407, 37.895191, 38.228313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029377, 37.988777, 38.397686>,  <30.265991, 38.144753, 38.679974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029377, 37.988777, 38.397686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356055, 0.911642, -0.205267,
		0.723400, 0.129850, -0.678108,
		-0.591538, -0.389934, -0.705716,
		29.851915, 37.871796, 38.185970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341299, 38.592690, 38.156532>,  <30.265991, 38.144753, 38.679974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341299, 38.592690, 38.156532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006634, 38.414635, 38.028877>,  <29.805834, 38.307804, 37.952282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006634, 38.414635, 38.028877>,  <30.341299, 38.592690, 38.156532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006634, 38.414635, 38.028877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354491, 0.884257, -0.304016,
		0.417529, -0.141227, -0.897621,
		-0.836663, -0.445135, -0.319139,
		29.755634, 38.281094, 37.933136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278831, 38.774349, 37.471657>,  <30.341299, 38.592690, 38.156532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278831, 38.774349, 37.471657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928173, 38.696571, 37.647697>,  <29.717779, 38.649906, 37.753323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928173, 38.696571, 37.647697>,  <30.278831, 38.774349, 37.471657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928173, 38.696571, 37.647697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307446, 0.929981, -0.201527,
		-0.370097, -0.311974, -0.875043,
		-0.876644, -0.194444, 0.440098,
		29.665180, 38.638237, 37.779728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996054, 39.323273, 37.418709>,  <30.278831, 38.774349, 37.471657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996054, 39.323273, 37.418709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673042, 39.120140, 37.538712>,  <29.479237, 38.998260, 37.610714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673042, 39.120140, 37.538712>,  <29.996054, 39.323273, 37.418709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673042, 39.120140, 37.538712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546097, 0.835919, -0.054935,
		-0.222885, -0.208195, -0.952353,
		-0.807528, -0.507833, 0.300008,
		29.430784, 38.967789, 37.628716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403887, 39.336811, 36.944309>,  <29.996054, 39.323273, 37.418709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403887, 39.336811, 36.944309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285753, 39.298275, 37.324520>,  <29.214874, 39.275154, 37.552647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.285753, 39.298275, 37.324520>,  <29.403887, 39.336811, 36.944309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285753, 39.298275, 37.324520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651095, 0.748389, -0.126447,
		-0.699181, -0.656226, -0.283748,
		-0.295332, -0.096338, 0.950525,
		29.197153, 39.269375, 37.609676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609774, 39.393219, 36.889278>,  <29.403887, 39.336811, 36.944309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609774, 39.393219, 36.889278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674744, 39.397369, 37.283943>,  <28.713726, 39.399860, 37.520744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674744, 39.397369, 37.283943>,  <28.609774, 39.393219, 36.889278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674744, 39.397369, 37.283943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889799, 0.433727, 0.141915,
		-0.426471, -0.900985, 0.079683,
		0.162423, 0.010379, 0.986667,
		28.723471, 39.400482, 37.579945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960749, 39.223259, 37.280613>,  <28.609774, 39.393219, 36.889278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960749, 39.223259, 37.280613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204762, 39.450218, 37.501850>,  <28.351170, 39.586395, 37.634594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204762, 39.450218, 37.501850>,  <27.960749, 39.223259, 37.280613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204762, 39.450218, 37.501850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723709, 0.683206, 0.097335,
		-0.322650, -0.459658, 0.827413,
		0.610034, 0.567401, 0.553095,
		28.387772, 39.620438, 37.667778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603508, 39.480873, 37.856285>,  <27.960749, 39.223259, 37.280613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603508, 39.480873, 37.856285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920450, 39.723526, 37.830452>,  <28.110617, 39.869118, 37.814953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920450, 39.723526, 37.830452>,  <27.603508, 39.480873, 37.856285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920450, 39.723526, 37.830452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567583, 0.771858, 0.286505,
		0.223651, -0.190359, 0.955899,
		0.792357, 0.606630, -0.064583,
		28.158157, 39.905514, 37.811077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718672, 39.783249, 38.562073>,  <27.603508, 39.480873, 37.856285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718672, 39.783249, 38.562073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809782, 40.011284, 38.246323>,  <27.864449, 40.148106, 38.056873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809782, 40.011284, 38.246323>,  <27.718672, 39.783249, 38.562073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809782, 40.011284, 38.246323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673604, 0.677652, 0.295033,
		0.703118, 0.464525, 0.538370,
		0.227777, 0.570091, -0.789375,
		27.878115, 40.182312, 38.009510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141569, 39.235264, 38.308197>,  <27.718672, 39.783249, 38.562073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141569, 39.235264, 38.308197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296844, 39.567204, 38.468525>,  <28.390011, 39.766369, 38.564720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296844, 39.567204, 38.468525>,  <28.141569, 39.235264, 38.308197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296844, 39.567204, 38.468525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885168, -0.214695, -0.412774,
		-0.256487, 0.515028, -0.817900,
		0.388190, 0.829851, 0.400820,
		28.413301, 39.816158, 38.588772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753620, 38.825500, 38.840858>,  <28.141569, 39.235264, 38.308197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753620, 38.825500, 38.840858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682568, 38.707153, 39.216286>,  <27.639936, 38.636147, 39.441544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682568, 38.707153, 39.216286>,  <27.753620, 38.825500, 38.840858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682568, 38.707153, 39.216286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601494, 0.787490, 0.134404,
		-0.778879, -0.540670, -0.317842,
		-0.177629, -0.295865, 0.938569,
		27.629278, 38.618393, 39.497856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407795, 39.157520, 39.188812>,  <27.753620, 38.825500, 38.840858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407795, 39.157520, 39.188812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550827, 39.298454, 38.842865>,  <28.636646, 39.383015, 38.635296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.550827, 39.298454, 38.842865>,  <28.407795, 39.157520, 39.188812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.550827, 39.298454, 38.842865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686085, -0.727411, -0.012674,
		-0.633579, -0.588841, -0.501840,
		0.357581, 0.352335, -0.864868,
		28.658102, 39.404156, 38.583405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984674, 38.660103, 38.880581>,  <28.407795, 39.157520, 39.188812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984674, 38.660103, 38.880581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949097, 38.733379, 38.488964>,  <28.927750, 38.777344, 38.253994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949097, 38.733379, 38.488964>,  <28.984674, 38.660103, 38.880581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949097, 38.733379, 38.488964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566361, -0.799271, -0.201002,
		-0.819344, -0.572371, -0.032662,
		-0.088942, 0.183188, -0.979046,
		28.922415, 38.788338, 38.195251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648216, 38.165009, 38.461231>,  <28.984674, 38.660103, 38.880581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648216, 38.165009, 38.461231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869896, 38.295017, 38.154709>,  <29.002903, 38.373020, 37.970795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869896, 38.295017, 38.154709>,  <28.648216, 38.165009, 38.461231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869896, 38.295017, 38.154709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282556, -0.939410, -0.194093,
		-0.782961, -0.108959, -0.612454,
		0.554197, 0.325019, -0.766308,
		29.036156, 38.392525, 37.924816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.597862, 37.669182, 37.821217>,  <28.648216, 38.165009, 38.461231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.597862, 37.669182, 37.821217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949879, 37.859009, 37.814148>,  <29.161089, 37.972904, 37.809906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949879, 37.859009, 37.814148>,  <28.597862, 37.669182, 37.821217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949879, 37.859009, 37.814148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471781, -0.877923, -0.081690,
		-0.054282, 0.063553, -0.996501,
		0.880043, 0.474565, -0.017672,
		29.213892, 38.001377, 37.808846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146109, 37.344604, 37.227837>,  <28.597862, 37.669182, 37.821217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146109, 37.344604, 37.227837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334728, 37.496071, 37.546398>,  <29.447901, 37.586948, 37.737534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334728, 37.496071, 37.546398>,  <29.146109, 37.344604, 37.227837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334728, 37.496071, 37.546398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615747, -0.787880, 0.010027,
		0.631264, 0.485653, -0.604687,
		0.471551, 0.378664, 0.796400,
		29.476194, 37.609669, 37.785316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950720, 37.231964, 37.058064>,  <29.146109, 37.344604, 37.227837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950720, 37.231964, 37.058064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942677, 37.329147, 37.445995>,  <29.937851, 37.387459, 37.678753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942677, 37.329147, 37.445995>,  <29.950720, 37.231964, 37.058064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942677, 37.329147, 37.445995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642122, -0.740379, 0.198793,
		0.766339, 0.626745, -0.141124,
		-0.020107, 0.242962, 0.969828,
		29.936644, 37.402035, 37.736942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660160, 37.399132, 37.380363>,  <29.950720, 37.231964, 37.058064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660160, 37.399132, 37.380363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426315, 37.208187, 37.642769>,  <30.286009, 37.093620, 37.800213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426315, 37.208187, 37.642769>,  <30.660160, 37.399132, 37.380363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426315, 37.208187, 37.642769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629318, -0.777134, -0.004672,
		0.512044, 0.410113, 0.754731,
		-0.584611, -0.477358, 0.656018,
		30.250933, 37.064980, 37.839573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009575, 37.010284, 37.936470>,  <30.660160, 37.399132, 37.380363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009575, 37.010284, 37.936470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675243, 36.795879, 37.889008>,  <30.474644, 36.667236, 37.860531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675243, 36.795879, 37.889008>,  <31.009575, 37.010284, 37.936470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675243, 36.795879, 37.889008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535123, -0.843731, 0.041958,
		-0.122603, -0.028425, 0.992049,
		-0.835830, -0.536013, -0.118655,
		30.424494, 36.635075, 37.853413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934771, 36.607750, 38.579323>,  <31.009575, 37.010284, 37.936470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934771, 36.607750, 38.579323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772188, 36.452560, 38.248440>,  <30.674639, 36.359447, 38.049911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772188, 36.452560, 38.248440>,  <30.934771, 36.607750, 38.579323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772188, 36.452560, 38.248440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570940, -0.814686, 0.101562,
		-0.713317, -0.431005, 0.552642,
		-0.406456, -0.387971, -0.827208,
		30.650251, 36.336170, 38.000278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625395, 35.908611, 38.674713>,  <30.934771, 36.607750, 38.579323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625395, 35.908611, 38.674713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808876, 35.986023, 38.327808>,  <30.918964, 36.032471, 38.119667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808876, 35.986023, 38.327808>,  <30.625395, 35.908611, 38.674713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808876, 35.986023, 38.327808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576052, -0.807891, 0.124399,
		-0.676575, -0.556649, -0.482066,
		0.458704, 0.193530, -0.867258,
		30.946487, 36.044083, 38.067631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756449, 35.233295, 38.418671>,  <30.625395, 35.908611, 38.674713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756449, 35.233295, 38.418671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983320, 35.535290, 38.287025>,  <31.119442, 35.716484, 38.208038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983320, 35.535290, 38.287025>,  <30.756449, 35.233295, 38.418671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983320, 35.535290, 38.287025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822325, -0.541316, 0.175381,
		-0.045743, -0.370108, -0.927862,
		0.567177, 0.754982, -0.329110,
		31.153473, 35.761784, 38.188293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098793, 34.949486, 37.911015>,  <30.756449, 35.233295, 38.418671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098793, 34.949486, 37.911015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288662, 35.266201, 38.064774>,  <31.402582, 35.456230, 38.157028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288662, 35.266201, 38.064774>,  <31.098793, 34.949486, 37.911015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288662, 35.266201, 38.064774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796948, -0.572006, 0.194119,
		0.373579, 0.214204, -0.902527,
		0.474670, 0.791786, 0.384399,
		31.431063, 35.503738, 38.180092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757814, 35.088345, 37.636784>,  <31.098793, 34.949486, 37.911015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757814, 35.088345, 37.636784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764851, 35.219009, 38.014774>,  <31.769073, 35.297409, 38.241570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764851, 35.219009, 38.014774>,  <31.757814, 35.088345, 37.636784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764851, 35.219009, 38.014774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508241, -0.816833, 0.272902,
		0.861035, 0.475476, -0.180391,
		0.017591, 0.326661, 0.944978,
		31.770128, 35.317009, 38.298267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441364, 35.298729, 37.804138>,  <31.757814, 35.088345, 37.636784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441364, 35.298729, 37.804138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232819, 35.133854, 38.103012>,  <32.107693, 35.034927, 38.282337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232819, 35.133854, 38.103012>,  <32.441364, 35.298729, 37.804138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232819, 35.133854, 38.103012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641650, -0.766596, 0.024824,
		0.562554, 0.492371, 0.664157,
		-0.521363, -0.412191, 0.747181,
		32.076408, 35.010197, 38.327168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810688, 34.988167, 38.493179>,  <32.441364, 35.298729, 37.804138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810688, 34.988167, 38.493179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495777, 34.767414, 38.383183>,  <32.306831, 34.634964, 38.317184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495777, 34.767414, 38.383183>,  <32.810688, 34.988167, 38.493179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495777, 34.767414, 38.383183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588865, -0.805202, -0.069916,
		-0.182836, -0.216975, 0.958902,
		-0.787280, -0.551881, -0.274989,
		32.259594, 34.601849, 38.300686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020878, 34.861538, 39.200420>,  <32.810688, 34.988167, 38.493179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020878, 34.861538, 39.200420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106045, 34.680058, 39.546558>,  <33.157146, 34.571171, 39.754242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106045, 34.680058, 39.546558>,  <33.020878, 34.861538, 39.200420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106045, 34.680058, 39.546558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960797, -0.063742, -0.269828,
		0.177580, 0.888871, 0.422343,
		0.212921, -0.453702, 0.865343,
		33.169922, 34.543945, 39.806160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410797, 35.194801, 39.728161>,  <33.020878, 34.861538, 39.200420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410797, 35.194801, 39.728161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494419, 34.804485, 39.753864>,  <33.544594, 34.570297, 39.769287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494419, 34.804485, 39.753864>,  <33.410797, 35.194801, 39.728161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494419, 34.804485, 39.753864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946235, 0.185264, -0.265172,
		0.246847, 0.116243, 0.962057,
		0.209059, -0.975789, 0.064261,
		33.557137, 34.511749, 39.773144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061863, 35.037128, 40.119316>,  <33.410797, 35.194801, 39.728161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061863, 35.037128, 40.119316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974949, 34.772705, 39.832043>,  <33.922798, 34.614052, 39.659679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974949, 34.772705, 39.832043>,  <34.061863, 35.037128, 40.119316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974949, 34.772705, 39.832043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852775, 0.229427, -0.469190,
		0.474933, -0.714396, 0.513884,
		-0.217289, -0.661061, -0.718181,
		33.909763, 34.574387, 39.616589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660675, 34.910854, 39.720467>,  <34.061863, 35.037128, 40.119316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660675, 34.910854, 39.720467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412151, 34.748672, 39.452263>,  <34.263039, 34.651363, 39.291340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412151, 34.748672, 39.452263>,  <34.660675, 34.910854, 39.720467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412151, 34.748672, 39.452263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644852, 0.221548, -0.731493,
		0.445137, -0.886862, 0.123807,
		-0.621305, -0.405452, -0.670514,
		34.225761, 34.627037, 39.251110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026489, 34.444092, 39.273605>,  <34.660675, 34.910854, 39.720467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026489, 34.444092, 39.273605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723331, 34.622787, 39.083439>,  <34.541435, 34.730003, 38.969337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723331, 34.622787, 39.083439>,  <35.026489, 34.444092, 39.273605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723331, 34.622787, 39.083439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614637, 0.244710, -0.749892,
		-0.218665, -0.860549, -0.460045,
		-0.757896, 0.446736, -0.475416,
		34.495964, 34.756809, 38.940815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880016, 34.161171, 38.562347>,  <35.026489, 34.444092, 39.273605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880016, 34.161171, 38.562347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698009, 34.517307, 38.568642>,  <34.588806, 34.730991, 38.572418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698009, 34.517307, 38.568642>,  <34.880016, 34.161171, 38.562347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698009, 34.517307, 38.568642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462797, 0.251536, -0.850028,
		-0.760774, -0.379498, -0.526502,
		-0.455018, 0.890343, 0.015732,
		34.561504, 34.784409, 38.573360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693287, 33.722942, 38.006874>,  <34.880016, 34.161171, 38.562347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693287, 33.722942, 38.006874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306309, 33.622276, 37.996231>,  <34.074120, 33.561878, 37.989845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306309, 33.622276, 37.996231>,  <34.693287, 33.722942, 38.006874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306309, 33.622276, 37.996231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013136, 0.154940, -0.987837,
		0.252725, -0.955332, -0.153202,
		-0.967449, -0.251663, -0.026608,
		34.016075, 33.546776, 37.988247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650639, 33.171173, 37.543880>,  <34.693287, 33.722942, 38.006874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650639, 33.171173, 37.543880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321068, 33.397060, 37.562813>,  <34.123325, 33.532593, 37.574173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321068, 33.397060, 37.562813>,  <34.650639, 33.171173, 37.543880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321068, 33.397060, 37.562813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018712, 0.110584, -0.993691,
		-0.566390, -0.817841, -0.101680,
		-0.823925, 0.564719, 0.047330,
		34.073891, 33.566475, 37.577011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995453, 32.930595, 37.244400>,  <34.650639, 33.171173, 37.543880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995453, 32.930595, 37.244400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008579, 33.328053, 37.201313>,  <34.016457, 33.566525, 37.175461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008579, 33.328053, 37.201313>,  <33.995453, 32.930595, 37.244400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008579, 33.328053, 37.201313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071146, -0.105181, -0.991905,
		-0.996926, 0.040216, 0.067241,
		0.032818, 0.993640, -0.107719,
		34.018425, 33.626144, 37.168999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424622, 33.164467, 36.787918>,  <33.995453, 32.930595, 37.244400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424622, 33.164467, 36.787918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739841, 33.410580, 36.779968>,  <33.928974, 33.558247, 36.775200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739841, 33.410580, 36.779968>,  <33.424622, 33.164467, 36.787918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739841, 33.410580, 36.779968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029343, 0.005303, -0.999555,
		-0.614907, 0.788286, 0.022234,
		0.788054, 0.615286, -0.019870,
		33.976257, 33.595165, 36.774006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239742, 33.641632, 36.322884>,  <33.424622, 33.164467, 36.787918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239742, 33.641632, 36.322884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631142, 33.700378, 36.380814>,  <33.865982, 33.735626, 36.415573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631142, 33.700378, 36.380814>,  <33.239742, 33.641632, 36.322884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631142, 33.700378, 36.380814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098997, 0.281589, -0.954415,
		-0.180953, 0.948229, 0.260995,
		0.978497, 0.146866, 0.144826,
		33.924690, 33.744438, 36.424263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444149, 34.324791, 35.969410>,  <33.239742, 33.641632, 36.322884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444149, 34.324791, 35.969410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784565, 34.121437, 36.021973>,  <33.988815, 33.999424, 36.053509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784565, 34.121437, 36.021973>,  <33.444149, 34.324791, 35.969410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784565, 34.121437, 36.021973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343221, 0.349182, -0.871936,
		0.397395, 0.787157, 0.471657,
		0.851045, -0.508385, 0.131406,
		34.039879, 33.968922, 36.061394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935448, 34.806824, 35.801853>,  <33.444149, 34.324791, 35.969410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935448, 34.806824, 35.801853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082127, 34.437412, 35.756924>,  <34.170135, 34.215763, 35.729965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082127, 34.437412, 35.756924>,  <33.935448, 34.806824, 35.801853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082127, 34.437412, 35.756924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328933, 0.241641, -0.912914,
		0.870249, 0.297820, 0.392391,
		0.366702, -0.923533, -0.112325,
		34.192139, 34.160351, 35.723225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535046, 35.082699, 35.475704>,  <33.935448, 34.806824, 35.801853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535046, 35.082699, 35.475704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509846, 34.691822, 35.394588>,  <34.494724, 34.457294, 35.345921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509846, 34.691822, 35.394588>,  <34.535046, 35.082699, 35.475704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509846, 34.691822, 35.394588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559940, 0.133588, -0.817692,
		0.826134, -0.165064, 0.538754,
		-0.063000, -0.977194, -0.202788,
		34.490944, 34.398663, 35.333752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182255, 34.900036, 35.118011>,  <34.535046, 35.082699, 35.475704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182255, 34.900036, 35.118011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935692, 34.589321, 35.066406>,  <34.787754, 34.402893, 35.035442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935692, 34.589321, 35.066406>,  <35.182255, 34.900036, 35.118011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935692, 34.589321, 35.066406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377468, -0.147703, -0.914167,
		0.691061, -0.612193, 0.384258,
		-0.616403, -0.776790, -0.129011,
		34.750771, 34.356285, 35.027702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561962, 34.425575, 34.828156>,  <35.182255, 34.900036, 35.118011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561962, 34.425575, 34.828156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192017, 34.306427, 34.733585>,  <34.970047, 34.234940, 34.676846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192017, 34.306427, 34.733585>,  <35.561962, 34.425575, 34.828156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192017, 34.306427, 34.733585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229161, 0.059605, -0.971562,
		0.303493, -0.952743, 0.013134,
		-0.924866, -0.297873, -0.236421,
		34.914558, 34.217064, 34.662659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529648, 33.770031, 34.489929>,  <35.561962, 34.425575, 34.828156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529648, 33.770031, 34.489929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199528, 33.950939, 34.354679>,  <35.001453, 34.059483, 34.273529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199528, 33.950939, 34.354679>,  <35.529648, 33.770031, 34.489929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199528, 33.950939, 34.354679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332033, -0.095672, -0.938403,
		-0.456758, -0.886737, -0.071209,
		-0.825304, 0.452267, -0.338125,
		34.951935, 34.086620, 34.253242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432434, 33.511845, 33.921360>,  <35.529648, 33.770031, 34.489929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432434, 33.511845, 33.921360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188496, 33.824707, 33.870262>,  <35.042133, 34.012424, 33.839603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.188496, 33.824707, 33.870262>,  <35.432434, 33.511845, 33.921360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188496, 33.824707, 33.870262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284824, 0.065890, -0.956312,
		-0.739570, -0.619588, -0.262960,
		-0.609846, 0.782157, -0.127743,
		35.005543, 34.059353, 33.831940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073662, 33.416286, 33.262608>,  <35.432434, 33.511845, 33.921360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073662, 33.416286, 33.262608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025204, 33.806293, 33.337082>,  <34.996128, 34.040298, 33.381767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025204, 33.806293, 33.337082>,  <35.073662, 33.416286, 33.262608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025204, 33.806293, 33.337082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084532, 0.197018, -0.976749,
		-0.989029, -0.102593, -0.106289,
		-0.121148, 0.975017, 0.186184,
		34.988857, 34.098797, 33.392937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670097, 33.636978, 32.692039>,  <35.073662, 33.416286, 33.262608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670097, 33.636978, 32.692039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814205, 33.974232, 32.851707>,  <34.900669, 34.176582, 32.947510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814205, 33.974232, 32.851707>,  <34.670097, 33.636978, 32.692039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814205, 33.974232, 32.851707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031177, 0.416784, -0.908471,
		-0.932329, 0.339736, 0.123866,
		0.360265, 0.843131, 0.399172,
		34.922283, 34.227173, 32.971458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314739, 34.206772, 32.298935>,  <34.670097, 33.636978, 32.692039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314739, 34.206772, 32.298935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637939, 34.357349, 32.480232>,  <34.831860, 34.447697, 32.589008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637939, 34.357349, 32.480232>,  <34.314739, 34.206772, 32.298935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637939, 34.357349, 32.480232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251400, 0.475441, -0.843062,
		-0.532855, 0.795139, 0.289518,
		0.808000, 0.376445, 0.453239,
		34.880341, 34.470284, 32.616203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294567, 34.989017, 32.198154>,  <34.314739, 34.206772, 32.298935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294567, 34.989017, 32.198154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673214, 34.864689, 32.232338>,  <34.900402, 34.790092, 32.252850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673214, 34.864689, 32.232338>,  <34.294567, 34.989017, 32.198154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673214, 34.864689, 32.232338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268417, 0.613210, -0.742917,
		0.178511, 0.726198, 0.663905,
		0.946618, -0.310823, 0.085459,
		34.957199, 34.771442, 32.257977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613853, 35.647873, 32.140682>,  <34.294567, 34.989017, 32.198154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613853, 35.647873, 32.140682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903316, 35.373367, 32.111378>,  <35.076996, 35.208664, 32.093796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903316, 35.373367, 32.111378>,  <34.613853, 35.647873, 32.140682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903316, 35.373367, 32.111378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523807, 0.615247, -0.589150,
		0.449386, 0.387966, 0.804695,
		0.723656, -0.686261, -0.073264,
		35.120415, 35.167488, 32.089397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221867, 36.050312, 32.374496>,  <34.613853, 35.647873, 32.140682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221867, 36.050312, 32.374496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331772, 35.746540, 32.138607>,  <35.397717, 35.564278, 31.997074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331772, 35.746540, 32.138607>,  <35.221867, 36.050312, 32.374496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331772, 35.746540, 32.138607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186364, 0.643760, -0.742187,
		0.943278, 0.094023, 0.318412,
		0.274764, -0.759429, -0.589722,
		35.414200, 35.518711, 31.961691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825249, 36.223522, 32.097382>,  <35.221867, 36.050312, 32.374496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825249, 36.223522, 32.097382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701691, 35.948467, 31.834553>,  <35.627556, 35.783436, 31.676855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701691, 35.948467, 31.834553>,  <35.825249, 36.223522, 32.097382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701691, 35.948467, 31.834553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285888, 0.591777, -0.753703,
		0.907113, -0.420660, 0.013792,
		-0.308891, -0.687637, -0.657071,
		35.609024, 35.742176, 31.637432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389530, 36.081100, 31.650520>,  <35.825249, 36.223522, 32.097382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389530, 36.081100, 31.650520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053368, 35.988312, 31.454599>,  <35.851669, 35.932636, 31.337048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053368, 35.988312, 31.454599>,  <36.389530, 36.081100, 31.650520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053368, 35.988312, 31.454599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284414, 0.580533, -0.762948,
		0.461330, -0.780493, -0.421907,
		-0.840407, -0.231974, -0.489801,
		35.801247, 35.918720, 31.307659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646820, 36.092384, 30.989956>,  <36.389530, 36.081100, 31.650520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646820, 36.092384, 30.989956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250282, 36.081223, 30.938650>,  <36.012360, 36.074524, 30.907867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250282, 36.081223, 30.938650>,  <36.646820, 36.092384, 30.989956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250282, 36.081223, 30.938650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072310, 0.699408, -0.711055,
		0.109551, -0.714178, -0.691339,
		-0.991348, -0.027905, -0.128263,
		35.952877, 36.072849, 30.900171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509998, 35.935532, 30.264147>,  <36.646820, 36.092384, 30.989956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509998, 35.935532, 30.264147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187801, 36.129799, 30.399969>,  <35.994484, 36.246361, 30.481462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187801, 36.129799, 30.399969>,  <36.509998, 35.935532, 30.264147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187801, 36.129799, 30.399969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033757, 0.534459, -0.844520,
		-0.591640, -0.691719, -0.414109,
		-0.805495, 0.485673, 0.339558,
		35.946152, 36.275501, 30.501837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030285, 35.944752, 29.601707>,  <36.509998, 35.935532, 30.264147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030285, 35.944752, 29.601707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896671, 36.224037, 29.854980>,  <35.816505, 36.391609, 30.006945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896671, 36.224037, 29.854980>,  <36.030285, 35.944752, 29.601707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896671, 36.224037, 29.854980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206788, 0.601119, -0.771942,
		-0.919599, -0.388788, -0.056410,
		-0.334031, 0.698212, 0.633185,
		35.796463, 36.433502, 30.044935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599907, 36.270191, 29.288328>,  <36.030285, 35.944752, 29.601707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599907, 36.270191, 29.288328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664684, 36.551334, 29.565390>,  <35.703552, 36.720020, 29.731627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664684, 36.551334, 29.565390>,  <35.599907, 36.270191, 29.288328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664684, 36.551334, 29.565390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121790, 0.710788, -0.692783,
		-0.979255, 0.027835, 0.200710,
		0.161946, 0.702856, 0.692652,
		35.713268, 36.762192, 29.773186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340576, 36.868389, 28.988220>,  <35.599907, 36.270191, 29.288328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340576, 36.868389, 28.988220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540363, 36.998882, 29.309244>,  <35.660236, 37.077179, 29.501860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540363, 36.998882, 29.309244>,  <35.340576, 36.868389, 28.988220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540363, 36.998882, 29.309244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012438, 0.928996, -0.369881,
		-0.866241, 0.174762, 0.468064,
		0.499471, 0.326228, 0.802561,
		35.690205, 37.096752, 29.550013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960251, 37.462986, 29.296247>,  <35.340576, 36.868389, 28.988220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960251, 37.462986, 29.296247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349998, 37.491169, 29.381695>,  <35.583847, 37.508080, 29.432962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349998, 37.491169, 29.381695>,  <34.960251, 37.462986, 29.296247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349998, 37.491169, 29.381695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043014, 0.873793, -0.484392,
		-0.220785, 0.481168, 0.848370,
		0.974374, 0.070454, 0.213617,
		35.642311, 37.512306, 29.445780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117718, 38.185276, 29.308556>,  <34.960251, 37.462986, 29.296247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117718, 38.185276, 29.308556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489208, 38.043827, 29.263973>,  <35.712101, 37.958958, 29.237223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489208, 38.043827, 29.263973>,  <35.117718, 38.185276, 29.308556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489208, 38.043827, 29.263973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176310, 0.685656, -0.706252,
		0.326164, 0.636263, 0.699132,
		0.928726, -0.353618, -0.111457,
		35.767826, 37.937740, 29.230536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588951, 38.746243, 29.446934>,  <35.117718, 38.185276, 29.308556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588951, 38.746243, 29.446934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781647, 38.468178, 29.233515>,  <35.897266, 38.301338, 29.105463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781647, 38.468178, 29.233515>,  <35.588951, 38.746243, 29.446934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781647, 38.468178, 29.233515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376582, 0.713995, -0.590251,
		0.791272, 0.083423, 0.605747,
		0.481741, -0.695163, -0.533549,
		35.926170, 38.259628, 29.073450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221497, 38.979572, 29.512209>,  <35.588951, 38.746243, 29.446934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221497, 38.979572, 29.512209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239895, 38.736523, 29.195053>,  <36.250935, 38.590694, 29.004759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239895, 38.736523, 29.195053>,  <36.221497, 38.979572, 29.512209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239895, 38.736523, 29.195053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393937, 0.740440, -0.544576,
		0.917986, -0.287301, 0.273422,
		0.045996, -0.607624, -0.792892,
		36.253693, 38.554234, 28.957186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858517, 39.130348, 29.189734>,  <36.221497, 38.979572, 29.512209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858517, 39.130348, 29.189734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661903, 38.956509, 28.887867>,  <36.543934, 38.852207, 28.706747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661903, 38.956509, 28.887867>,  <36.858517, 39.130348, 29.189734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661903, 38.956509, 28.887867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468580, 0.598451, -0.649837,
		0.734047, -0.673039, -0.090517,
		-0.491535, -0.434597, -0.754665,
		36.514442, 38.826130, 28.661469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302986, 38.892223, 28.665268>,  <36.858517, 39.130348, 29.189734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302986, 38.892223, 28.665268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966171, 38.916836, 28.450907>,  <36.764084, 38.931602, 28.322290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966171, 38.916836, 28.450907>,  <37.302986, 38.892223, 28.665268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966171, 38.916836, 28.450907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443155, 0.645350, -0.622203,
		0.307560, -0.761404, -0.570675,
		-0.842034, 0.061533, -0.535904,
		36.713562, 38.935295, 28.290136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468983, 38.703232, 27.911711>,  <37.302986, 38.892223, 28.665268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468983, 38.703232, 27.911711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144176, 38.935192, 27.938065>,  <36.949291, 39.074368, 27.953876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144176, 38.935192, 27.938065>,  <37.468983, 38.703232, 27.911711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144176, 38.935192, 27.938065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428798, 0.669365, -0.606698,
		-0.395924, -0.464400, -0.792197,
		-0.812020, 0.579899, 0.065884,
		36.900570, 39.109161, 27.957830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381931, 39.078144, 27.327665>,  <37.468983, 38.703232, 27.911711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381931, 39.078144, 27.327665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142807, 39.308990, 27.550215>,  <36.999332, 39.447498, 27.683744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142807, 39.308990, 27.550215>,  <37.381931, 39.078144, 27.327665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142807, 39.308990, 27.550215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252156, 0.794198, -0.552872,
		-0.760943, -0.190222, -0.620307,
		-0.597815, 0.577118, 0.556374,
		36.963463, 39.482124, 27.717127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982185, 39.462063, 26.851240>,  <37.381931, 39.078144, 27.327665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982185, 39.462063, 26.851240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923454, 39.662125, 27.192598>,  <36.888214, 39.782162, 27.397413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923454, 39.662125, 27.192598>,  <36.982185, 39.462063, 26.851240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923454, 39.662125, 27.192598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296486, 0.845333, -0.444420,
		-0.943683, 0.187765, -0.272410,
		-0.146830, 0.500157, 0.853396,
		36.879406, 39.812172, 27.448616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586018, 40.001717, 26.622604>,  <36.982185, 39.462063, 26.851240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586018, 40.001717, 26.622604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721886, 40.117340, 26.980614>,  <36.803406, 40.186714, 27.195419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721886, 40.117340, 26.980614>,  <36.586018, 40.001717, 26.622604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721886, 40.117340, 26.980614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328585, 0.855173, -0.400889,
		-0.881279, 0.430263, 0.195500,
		0.339674, 0.289056, 0.895024,
		36.823788, 40.204056, 27.249121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458427, 40.770382, 26.619587>,  <36.586018, 40.001717, 26.622604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458427, 40.770382, 26.619587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719505, 40.744354, 26.921515>,  <36.876152, 40.728737, 27.102671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.719505, 40.744354, 26.921515>,  <36.458427, 40.770382, 26.619587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719505, 40.744354, 26.921515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402664, 0.873732, -0.272864,
		-0.641754, 0.482036, 0.596484,
		0.652697, -0.065071, 0.754819,
		36.915314, 40.724834, 27.147961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622021, 41.443836, 26.755051>,  <36.458427, 40.770382, 26.619587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622021, 41.443836, 26.755051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938969, 41.243996, 26.895079>,  <37.129135, 41.124092, 26.979095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938969, 41.243996, 26.895079>,  <36.622021, 41.443836, 26.755051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938969, 41.243996, 26.895079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600486, 0.739939, -0.303160,
		-0.107570, 0.450426, 0.886310,
		0.792367, -0.499606, 0.350070,
		37.176678, 41.094112, 27.000099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068497, 41.845917, 27.241184>,  <36.622021, 41.443836, 26.755051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068497, 41.845917, 27.241184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311584, 41.553608, 27.116833>,  <37.457436, 41.378220, 27.042223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311584, 41.553608, 27.116833>,  <37.068497, 41.845917, 27.241184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311584, 41.553608, 27.116833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662604, 0.682370, -0.308753,
		0.437763, -0.018354, 0.898903,
		0.607718, -0.730777, -0.310878,
		37.493900, 41.334373, 27.023569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715393, 42.169968, 27.328831>,  <37.068497, 41.845917, 27.241184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715393, 42.169968, 27.328831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792049, 41.871376, 27.073942>,  <37.838043, 41.692223, 26.921009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792049, 41.871376, 27.073942>,  <37.715393, 42.169968, 27.328831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792049, 41.871376, 27.073942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590246, 0.606379, -0.532835,
		0.784145, -0.274006, 0.556809,
		0.191637, -0.746475, -0.637220,
		37.849541, 41.647434, 26.882776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456852, 42.296227, 27.185747>,  <37.715393, 42.169968, 27.328831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456852, 42.296227, 27.185747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364059, 42.038387, 26.894358>,  <38.308384, 41.883682, 26.719524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364059, 42.038387, 26.894358>,  <38.456852, 42.296227, 27.185747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364059, 42.038387, 26.894358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657574, 0.447936, -0.605763,
		0.716786, -0.619550, 0.319961,
		-0.231979, -0.644601, -0.728475,
		38.294464, 41.845009, 26.675816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107285, 42.017021, 26.915575>,  <38.456852, 42.296227, 27.185747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107285, 42.017021, 26.915575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815105, 41.985897, 26.644169>,  <38.639797, 41.967220, 26.481325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815105, 41.985897, 26.644169>,  <39.107285, 42.017021, 26.915575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815105, 41.985897, 26.644169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593013, 0.420557, -0.686635,
		0.338784, -0.903923, -0.261053,
		-0.730453, -0.077813, -0.678516,
		38.595970, 41.962551, 26.440615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412067, 41.812790, 26.409618>,  <39.107285, 42.017021, 26.915575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412067, 41.812790, 26.409618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077103, 41.973083, 26.260939>,  <38.876125, 42.069260, 26.171730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077103, 41.973083, 26.260939>,  <39.412067, 41.812790, 26.409618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077103, 41.973083, 26.260939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537263, 0.478499, -0.694541,
		-0.100466, -0.781316, -0.615997,
		-0.837410, 0.400730, -0.371699,
		38.825878, 42.093304, 26.149429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501369, 41.891193, 25.682241>,  <39.412067, 41.812790, 26.409618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501369, 41.891193, 25.682241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177174, 42.117950, 25.741215>,  <38.982655, 42.254005, 25.776600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177174, 42.117950, 25.741215>,  <39.501369, 41.891193, 25.682241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177174, 42.117950, 25.741215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288967, 0.605910, -0.741196,
		-0.509509, -0.558130, -0.654898,
		-0.810493, 0.566889, 0.147435,
		38.934025, 42.288017, 25.785446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175575, 41.890209, 24.958866>,  <39.501369, 41.891193, 25.682241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175575, 41.890209, 24.958866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058228, 42.201508, 25.180952>,  <38.987820, 42.388287, 25.314203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058228, 42.201508, 25.180952>,  <39.175575, 41.890209, 24.958866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058228, 42.201508, 25.180952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364342, 0.627957, -0.687695,
		-0.883850, 0.000540, -0.467771,
		-0.293368, 0.778248, 0.555217,
		38.970219, 42.434982, 25.347517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976295, 42.396618, 24.457060>,  <39.175575, 41.890209, 24.958866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976295, 42.396618, 24.457060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032539, 42.634300, 24.773830>,  <39.066284, 42.776909, 24.963892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032539, 42.634300, 24.773830>,  <38.976295, 42.396618, 24.457060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032539, 42.634300, 24.773830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449980, 0.674130, -0.585719,
		-0.881900, 0.438706, -0.172595,
		0.140607, 0.594210, 0.791924,
		39.074722, 42.812565, 25.011408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654873, 43.039963, 24.364315>,  <38.976295, 42.396618, 24.457060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654873, 43.039963, 24.364315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946232, 43.103580, 24.630892>,  <39.121048, 43.141750, 24.790838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946232, 43.103580, 24.630892>,  <38.654873, 43.039963, 24.364315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946232, 43.103580, 24.630892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382651, 0.712428, -0.588239,
		-0.568347, 0.683485, 0.458071,
		0.728396, 0.159042, 0.666442,
		39.164749, 43.151295, 24.830824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913998, 43.826843, 24.481276>,  <38.654873, 43.039963, 24.364315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913998, 43.826843, 24.481276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212551, 43.569969, 24.551138>,  <39.391685, 43.415844, 24.593056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212551, 43.569969, 24.551138>,  <38.913998, 43.826843, 24.481276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212551, 43.569969, 24.551138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659527, 0.678629, -0.323245,
		0.089058, 0.356455, 0.930058,
		0.746386, -0.642186, 0.174655,
		39.436466, 43.377312, 24.603535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430267, 44.119801, 25.083363>,  <38.913998, 43.826843, 24.481276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430267, 44.119801, 25.083363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604160, 43.857826, 24.836117>,  <39.708496, 43.700642, 24.687769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604160, 43.857826, 24.836117>,  <39.430267, 44.119801, 25.083363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604160, 43.857826, 24.836117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606885, 0.720167, -0.336229,
		0.665355, -0.228954, 0.710551,
		0.434735, -0.654935, -0.618115,
		39.734581, 43.661346, 24.650682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691769, 44.127842, 24.387300>,  <39.430267, 44.119801, 25.083363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691769, 44.127842, 24.387300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373631, 44.285412, 24.571585>,  <39.182747, 44.379955, 24.682156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.373631, 44.285412, 24.571585>,  <39.691769, 44.127842, 24.387300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373631, 44.285412, 24.571585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578762, 0.719437, 0.383986,
		-0.180188, 0.572041, -0.800188,
		-0.795341, 0.393929, 0.460709,
		39.135029, 44.403591, 24.709797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655231, 44.759647, 24.328159>,  <39.691769, 44.127842, 24.387300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655231, 44.759647, 24.328159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425968, 44.771545, 24.655720>,  <39.288410, 44.778683, 24.852257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425968, 44.771545, 24.655720>,  <39.655231, 44.759647, 24.328159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425968, 44.771545, 24.655720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553363, 0.751114, 0.360023,
		-0.604380, 0.659502, -0.446970,
		-0.573162, 0.029746, 0.818902,
		39.254021, 44.780468, 24.901390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450062, 45.422085, 24.397434>,  <39.655231, 44.759647, 24.328159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450062, 45.422085, 24.397434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483746, 45.224682, 24.743698>,  <39.503956, 45.106239, 24.951456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483746, 45.224682, 24.743698>,  <39.450062, 45.422085, 24.397434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483746, 45.224682, 24.743698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472363, 0.784700, 0.401397,
		-0.877372, 0.375101, 0.299195,
		0.084214, -0.493503, 0.865657,
		39.509010, 45.076630, 25.003395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139713, 45.817108, 24.946373>,  <39.450062, 45.422085, 24.397434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139713, 45.817108, 24.946373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428856, 45.568851, 25.067883>,  <39.602341, 45.419895, 25.140787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428856, 45.568851, 25.067883>,  <39.139713, 45.817108, 24.946373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428856, 45.568851, 25.067883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477664, 0.766478, 0.429358,
		-0.499314, -0.165263, 0.850514,
		0.722857, -0.620644, 0.303773,
		39.645714, 45.382660, 25.159014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199413, 45.835861, 25.759527>,  <39.139713, 45.817108, 24.946373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199413, 45.835861, 25.759527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560925, 45.775635, 25.599270>,  <39.777832, 45.739498, 25.503117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560925, 45.775635, 25.599270>,  <39.199413, 45.835861, 25.759527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560925, 45.775635, 25.599270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326030, 0.848652, 0.416527,
		0.277289, -0.507069, 0.816083,
		0.903779, -0.150569, -0.400641,
		39.832058, 45.730465, 25.479078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649364, 46.320850, 26.189270>,  <39.199413, 45.835861, 25.759527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649364, 46.320850, 26.189270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279236, 46.372448, 26.046646>,  <39.057159, 46.403408, 25.961071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279236, 46.372448, 26.046646>,  <39.649364, 46.320850, 26.189270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279236, 46.372448, 26.046646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371413, -0.497638, 0.783842,
		-0.076327, 0.857739, 0.508387,
		-0.925325, 0.128994, -0.356559,
		39.001637, 46.411144, 25.939678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221046, 45.955936, 26.579210>,  <39.649364, 46.320850, 26.189270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221046, 45.955936, 26.579210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959480, 45.680317, 26.454241>,  <39.802540, 45.514946, 26.379259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959480, 45.680317, 26.454241>,  <40.221046, 45.955936, 26.579210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959480, 45.680317, 26.454241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220889, -0.568835, 0.792234,
		-0.723603, 0.449044, 0.524174,
		-0.653917, -0.689047, -0.312422,
		39.763306, 45.473602, 26.360514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825523, 45.759903, 27.131239>,  <40.221046, 45.955936, 26.579210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825523, 45.759903, 27.131239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786263, 45.438328, 26.896616>,  <39.762707, 45.245380, 26.755842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786263, 45.438328, 26.896616>,  <39.825523, 45.759903, 27.131239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786263, 45.438328, 26.896616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160311, -0.568931, 0.806609,
		-0.982175, 0.173199, -0.073040,
		-0.098149, -0.803940, -0.586556,
		39.756817, 45.197147, 26.720650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217110, 45.395012, 27.339785>,  <39.825523, 45.759903, 27.131239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217110, 45.395012, 27.339785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460602, 45.128361, 27.167717>,  <39.606697, 44.968369, 27.064476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460602, 45.128361, 27.167717>,  <39.217110, 45.395012, 27.339785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460602, 45.128361, 27.167717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228290, -0.666450, 0.709738,
		-0.759820, -0.333838, -0.557876,
		0.608735, -0.666631, -0.430170,
		39.643223, 44.928371, 27.038666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007633, 44.753963, 27.502771>,  <39.217110, 45.395012, 27.339785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007633, 44.753963, 27.502771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350983, 44.631992, 27.337746>,  <39.556992, 44.558811, 27.238731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350983, 44.631992, 27.337746>,  <39.007633, 44.753963, 27.502771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350983, 44.631992, 27.337746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020436, -0.783222, 0.621406,
		-0.512612, -0.541832, -0.666069,
		0.858377, -0.304928, -0.412562,
		39.608498, 44.540512, 27.213978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980949, 44.058689, 27.448648>,  <39.007633, 44.753963, 27.502771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980949, 44.058689, 27.448648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379559, 44.084927, 27.428131>,  <39.618725, 44.100670, 27.415821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379559, 44.084927, 27.428131>,  <38.980949, 44.058689, 27.448648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379559, 44.084927, 27.428131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080195, -0.921870, 0.379111,
		-0.022419, -0.381908, -0.923928,
		0.996527, 0.065595, -0.051295,
		39.678516, 44.104607, 27.412743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271263, 43.397865, 27.118307>,  <38.980949, 44.058689, 27.448648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271263, 43.397865, 27.118307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608189, 43.548443, 27.272604>,  <39.810345, 43.638790, 27.365183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608189, 43.548443, 27.272604>,  <39.271263, 43.397865, 27.118307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608189, 43.548443, 27.272604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203141, -0.884632, 0.419715,
		0.499238, -0.275172, -0.821609,
		0.842315, 0.376440, 0.385744,
		39.860882, 43.661373, 27.388327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747429, 42.972092, 26.911707>,  <39.271263, 43.397865, 27.118307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747429, 42.972092, 26.911707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847126, 43.170929, 27.244160>,  <39.906944, 43.290230, 27.443632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.847126, 43.170929, 27.244160>,  <39.747429, 42.972092, 26.911707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847126, 43.170929, 27.244160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212997, -0.865340, 0.453673,
		0.944727, 0.063953, -0.321559,
		0.249244, 0.497088, 0.831132,
		39.921898, 43.320057, 27.493500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441830, 42.619053, 27.228865>,  <39.747429, 42.972092, 26.911707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441830, 42.619053, 27.228865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266052, 42.807190, 27.534981>,  <40.160587, 42.920074, 27.718651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266052, 42.807190, 27.534981>,  <40.441830, 42.619053, 27.228865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266052, 42.807190, 27.534981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294662, -0.729337, 0.617448,
		0.848568, 0.496832, 0.181906,
		-0.439439, 0.470345, 0.765290,
		40.134220, 42.948292, 27.764568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843201, 42.458889, 27.834993>,  <40.441830, 42.619053, 27.228865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843201, 42.458889, 27.834993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510876, 42.598415, 28.008461>,  <40.311481, 42.682133, 28.112541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510876, 42.598415, 28.008461>,  <40.843201, 42.458889, 27.834993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510876, 42.598415, 28.008461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145240, -0.616327, 0.773981,
		0.537262, 0.706022, 0.461392,
		-0.830816, 0.348818, 0.433671,
		40.261631, 42.703060, 28.138563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144428, 42.566021, 28.525774>,  <40.843201, 42.458889, 27.834993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144428, 42.566021, 28.525774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745258, 42.572830, 28.550640>,  <40.505756, 42.576916, 28.565559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745258, 42.572830, 28.550640>,  <41.144428, 42.566021, 28.525774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745258, 42.572830, 28.550640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053158, -0.328109, 0.943143,
		0.036451, 0.944486, 0.326522,
		-0.997921, 0.017021, 0.062167,
		40.445881, 42.577938, 28.569290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939556, 42.919067, 29.125053>,  <41.144428, 42.566021, 28.525774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939556, 42.919067, 29.125053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636139, 42.674328, 29.035381>,  <40.454090, 42.527485, 28.981579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636139, 42.674328, 29.035381>,  <40.939556, 42.919067, 29.125053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636139, 42.674328, 29.035381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047924, -0.395482, 0.917223,
		-0.649858, 0.685010, 0.329312,
		-0.758543, -0.611847, -0.224178,
		40.408577, 42.490772, 28.968128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596973, 42.913776, 29.736919>,  <40.939556, 42.919067, 29.125053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596973, 42.913776, 29.736919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440311, 42.617558, 29.518486>,  <40.346313, 42.439827, 29.387426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440311, 42.617558, 29.518486>,  <40.596973, 42.913776, 29.736919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440311, 42.617558, 29.518486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114930, -0.549472, 0.827569,
		-0.912907, 0.386881, 0.130091,
		-0.391653, -0.740542, -0.546081,
		40.322815, 42.395393, 29.354662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086502, 42.620277, 30.143923>,  <40.596973, 42.913776, 29.736919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086502, 42.620277, 30.143923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140282, 42.325367, 29.879093>,  <40.172550, 42.148418, 29.720196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140282, 42.325367, 29.879093>,  <40.086502, 42.620277, 30.143923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140282, 42.325367, 29.879093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104236, -0.674956, 0.730459,
		-0.985423, -0.029199, -0.167599,
		0.134451, -0.737280, -0.662073,
		40.180618, 42.104183, 29.680471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532604, 42.108219, 30.208649>,  <40.086502, 42.620277, 30.143923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532604, 42.108219, 30.208649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832386, 41.909756, 30.033308>,  <40.012253, 41.790676, 29.928104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832386, 41.909756, 30.033308>,  <39.532604, 42.108219, 30.208649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832386, 41.909756, 30.033308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147658, -0.770687, 0.619871,
		-0.645383, -0.399838, -0.650854,
		0.749452, -0.496158, -0.438348,
		40.057220, 41.760910, 29.901804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294472, 41.395107, 30.146383>,  <39.532604, 42.108219, 30.208649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294472, 41.395107, 30.146383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692638, 41.367172, 30.120258>,  <39.931538, 41.350410, 30.104584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692638, 41.367172, 30.120258>,  <39.294472, 41.395107, 30.146383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692638, 41.367172, 30.120258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004859, -0.719094, 0.694896,
		-0.095498, -0.691394, -0.716138,
		0.995418, -0.069841, -0.065313,
		39.991264, 41.346218, 30.100664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581245, 40.661186, 29.870975>,  <39.294472, 41.395107, 30.146383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581245, 40.661186, 29.870975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824047, 40.862450, 30.117023>,  <39.969730, 40.983208, 30.264652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824047, 40.862450, 30.117023>,  <39.581245, 40.661186, 29.870975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824047, 40.862450, 30.117023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085664, -0.728093, 0.680105,
		0.790065, -0.465523, -0.398856,
		0.607009, 0.503159, 0.615119,
		40.006149, 41.013397, 30.301559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541393, 40.324879, 30.536610>,  <39.581245, 40.661186, 29.870975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541393, 40.324879, 30.536610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821350, 40.591301, 30.639778>,  <39.989323, 40.751156, 30.701679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821350, 40.591301, 30.639778>,  <39.541393, 40.324879, 30.536610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821350, 40.591301, 30.639778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067531, -0.297779, 0.952243,
		0.711053, -0.683881, -0.163432,
		0.699888, 0.666059, 0.257920,
		40.031315, 40.791119, 30.717154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113007, 40.067127, 30.745687>,  <39.541393, 40.324879, 30.536610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113007, 40.067127, 30.745687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123009, 40.423962, 30.926155>,  <40.129009, 40.638062, 31.034435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123009, 40.423962, 30.926155>,  <40.113007, 40.067127, 30.745687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123009, 40.423962, 30.926155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022158, -0.450705, 0.892398,
		0.999442, -0.032308, 0.008498,
		0.025002, 0.892088, 0.451169,
		40.130508, 40.691589, 31.061506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633312, 40.015530, 31.308090>,  <40.113007, 40.067127, 30.745687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633312, 40.015530, 31.308090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395142, 40.327530, 31.385099>,  <40.252239, 40.514729, 31.431305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395142, 40.327530, 31.385099>,  <40.633312, 40.015530, 31.308090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395142, 40.327530, 31.385099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288009, -0.430936, 0.855187,
		0.750011, 0.453754, 0.481238,
		-0.595428, 0.780001, 0.192522,
		40.216515, 40.561531, 31.442856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824829, 40.183952, 31.982443>,  <40.633312, 40.015530, 31.308090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824829, 40.183952, 31.982443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449860, 40.317459, 31.942783>,  <40.224876, 40.397564, 31.918987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449860, 40.317459, 31.942783>,  <40.824829, 40.183952, 31.982443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449860, 40.317459, 31.942783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275710, -0.537679, 0.796797,
		0.212632, 0.774276, 0.596058,
		-0.937428, 0.333763, -0.099148,
		40.168633, 40.417587, 31.913038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616810, 40.246040, 32.605976>,  <40.824829, 40.183952, 31.982443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616810, 40.246040, 32.605976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256519, 40.290405, 32.437984>,  <40.040344, 40.317024, 32.337189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.256519, 40.290405, 32.437984>,  <40.616810, 40.246040, 32.605976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256519, 40.290405, 32.437984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431408, -0.341291, 0.835109,
		-0.050707, 0.933390, 0.355262,
		-0.900731, 0.110917, -0.419978,
		39.986301, 40.323681, 32.311993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116417, 40.479862, 33.188072>,  <40.616810, 40.246040, 32.605976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116417, 40.479862, 33.188072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884182, 40.346390, 32.890999>,  <39.744843, 40.266308, 32.712757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.884182, 40.346390, 32.890999>,  <40.116417, 40.479862, 33.188072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884182, 40.346390, 32.890999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619933, -0.410165, 0.668916,
		-0.527827, 0.848776, 0.031276,
		-0.580588, -0.333683, -0.742680,
		39.710007, 40.246284, 32.668194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431469, 40.622036, 33.395481>,  <40.116417, 40.479862, 33.188072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431469, 40.622036, 33.395481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433975, 40.308506, 33.147099>,  <39.435478, 40.120388, 32.998070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433975, 40.308506, 33.147099>,  <39.431469, 40.622036, 33.395481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433975, 40.308506, 33.147099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549770, -0.521398, 0.652608,
		-0.835292, 0.337291, -0.434191,
		0.006268, -0.783823, -0.620952,
		39.435856, 40.073360, 32.960812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723843, 40.393391, 33.408146>,  <39.431469, 40.622036, 33.395481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723843, 40.393391, 33.408146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934872, 40.087830, 33.259483>,  <39.061489, 39.904495, 33.170284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934872, 40.087830, 33.259483>,  <38.723843, 40.393391, 33.408146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934872, 40.087830, 33.259483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491787, -0.631366, 0.599602,
		-0.692688, -0.133554, -0.708764,
		0.527569, -0.763898, -0.371660,
		39.093143, 39.858662, 33.147984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160107, 39.933102, 33.220081>,  <38.723843, 40.393391, 33.408146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160107, 39.933102, 33.220081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482334, 39.697067, 33.241478>,  <38.675671, 39.555447, 33.254314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482334, 39.697067, 33.241478>,  <38.160107, 39.933102, 33.220081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482334, 39.697067, 33.241478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540096, -0.694195, 0.475804,
		-0.243633, -0.412181, -0.877924,
		0.805568, -0.590085, 0.053489,
		38.724003, 39.520042, 33.257526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003613, 39.311699, 32.929893>,  <38.160107, 39.933102, 33.220081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003613, 39.311699, 32.929893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298515, 39.234352, 33.188835>,  <38.475456, 39.187943, 33.344200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298515, 39.234352, 33.188835>,  <38.003613, 39.311699, 32.929893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298515, 39.234352, 33.188835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557061, -0.716140, 0.420508,
		0.382279, -0.670635, -0.635698,
		0.737256, -0.193371, 0.647350,
		38.519691, 39.176342, 33.383041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988415, 38.529346, 32.903400>,  <38.003613, 39.311699, 32.929893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988415, 38.529346, 32.903400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179081, 38.609173, 33.245853>,  <38.293480, 38.657070, 33.451324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179081, 38.609173, 33.245853>,  <37.988415, 38.529346, 32.903400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179081, 38.609173, 33.245853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475351, -0.760719, 0.441982,
		0.739483, -0.617641, -0.267741,
		0.476662, 0.199567, 0.856135,
		38.322079, 38.669044, 33.502693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172642, 37.849876, 33.200008>,  <37.988415, 38.529346, 32.903400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172642, 37.849876, 33.200008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180401, 38.112236, 33.501850>,  <38.185059, 38.269650, 33.682953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180401, 38.112236, 33.501850>,  <38.172642, 37.849876, 33.200008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180401, 38.112236, 33.501850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476224, -0.657565, 0.583797,
		0.879110, -0.370686, 0.299596,
		0.019401, 0.655896, 0.754602,
		38.186222, 38.309006, 33.728230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048126, 37.391708, 33.759216>,  <38.172642, 37.849876, 33.200008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048126, 37.391708, 33.759216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997467, 37.758007, 33.911728>,  <37.967072, 37.977787, 34.003235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997467, 37.758007, 33.911728>,  <38.048126, 37.391708, 33.759216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997467, 37.758007, 33.911728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452687, -0.395367, 0.799224,
		0.882630, -0.071379, 0.464618,
		-0.126647, 0.915746, 0.381275,
		37.959473, 38.032730, 34.026112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301029, 37.346302, 34.458584>,  <38.048126, 37.391708, 33.759216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301029, 37.346302, 34.458584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062901, 37.667580, 34.467228>,  <37.920021, 37.860348, 34.472416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062901, 37.667580, 34.467228>,  <38.301029, 37.346302, 34.458584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062901, 37.667580, 34.467228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537273, -0.417938, 0.732574,
		0.597432, 0.424509, 0.680344,
		-0.595326, 0.803193, 0.021613,
		37.884304, 37.908539, 34.473713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084724, 37.468529, 35.157562>,  <38.301029, 37.346302, 34.458584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084724, 37.468529, 35.157562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800953, 37.675694, 34.966362>,  <37.630692, 37.799992, 34.851643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800953, 37.675694, 34.966362>,  <38.084724, 37.468529, 35.157562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800953, 37.675694, 34.966362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694765, -0.399975, 0.597764,
		0.118402, 0.756165, 0.643580,
		-0.709424, 0.517913, -0.477999,
		37.588127, 37.831066, 34.822964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764137, 37.834579, 35.711975>,  <38.084724, 37.468529, 35.157562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764137, 37.834579, 35.711975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508827, 37.837120, 35.404064>,  <37.355640, 37.838646, 35.219318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508827, 37.837120, 35.404064>,  <37.764137, 37.834579, 35.711975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508827, 37.837120, 35.404064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758429, -0.176461, 0.627413,
		-0.131852, 0.984287, 0.117448,
		-0.638279, 0.006351, -0.769779,
		37.317345, 37.839024, 35.173130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249916, 38.434757, 35.778542>,  <37.764137, 37.834579, 35.711975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249916, 38.434757, 35.778542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081245, 38.153969, 35.548962>,  <36.980042, 37.985497, 35.411213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081245, 38.153969, 35.548962>,  <37.249916, 38.434757, 35.778542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081245, 38.153969, 35.548962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780296, -0.041501, 0.624032,
		-0.461875, 0.710991, -0.530248,
		-0.421676, -0.701975, -0.573951,
		36.954742, 37.943375, 35.376778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465702, 38.537754, 35.756413>,  <37.249916, 38.434757, 35.778542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465702, 38.537754, 35.756413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520447, 38.164806, 35.622570>,  <36.553295, 37.941040, 35.542263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520447, 38.164806, 35.622570>,  <36.465702, 38.537754, 35.756413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520447, 38.164806, 35.622570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761357, -0.315105, 0.566608,
		-0.633723, 0.177210, -0.752988,
		0.136862, -0.932366, -0.334610,
		36.561504, 37.885098, 35.522186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760490, 38.241699, 35.602562>,  <36.465702, 38.537754, 35.756413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760490, 38.241699, 35.602562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011097, 37.941860, 35.687965>,  <36.161461, 37.761959, 35.739208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011097, 37.941860, 35.687965>,  <35.760490, 38.241699, 35.602562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011097, 37.941860, 35.687965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717642, -0.447930, 0.533243,
		-0.304080, -0.487307, -0.818577,
		0.626518, -0.749594, 0.213505,
		36.199051, 37.716984, 35.752018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368034, 37.543354, 35.535175>,  <35.760490, 38.241699, 35.602562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368034, 37.543354, 35.535175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695309, 37.456650, 35.748188>,  <35.891674, 37.404629, 35.875996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695309, 37.456650, 35.748188>,  <35.368034, 37.543354, 35.535175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695309, 37.456650, 35.748188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517179, -0.682128, 0.516941,
		0.251205, -0.698368, -0.670208,
		0.818182, -0.216759, 0.532534,
		35.940762, 37.391621, 35.907948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416241, 36.833897, 35.480843>,  <35.368034, 37.543354, 35.535175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416241, 36.833897, 35.480843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637909, 36.924244, 35.801311>,  <35.770908, 36.978451, 35.993591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637909, 36.924244, 35.801311>,  <35.416241, 36.833897, 35.480843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637909, 36.924244, 35.801311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438257, -0.739111, 0.511513,
		0.707690, -0.634586, -0.310605,
		0.554171, 0.225868, 0.801173,
		35.804161, 36.992004, 36.041664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641670, 36.235249, 35.742844>,  <35.416241, 36.833897, 35.480843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641670, 36.235249, 35.742844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734749, 36.455387, 36.063583>,  <35.790596, 36.587471, 36.256027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734749, 36.455387, 36.063583>,  <35.641670, 36.235249, 35.742844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734749, 36.455387, 36.063583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267016, -0.756649, 0.596812,
		0.935177, -0.352982, -0.029115,
		0.232694, 0.550351, 0.801853,
		35.804558, 36.620491, 36.304138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113731, 35.837322, 36.189083>,  <35.641670, 36.235249, 35.742844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113731, 35.837322, 36.189083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928741, 36.121513, 36.401253>,  <35.817749, 36.292027, 36.528553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928741, 36.121513, 36.401253>,  <36.113731, 35.837322, 36.189083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928741, 36.121513, 36.401253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328202, -0.692923, 0.641982,
		0.823653, 0.122814, 0.553636,
		-0.462471, 0.710475, 0.530420,
		35.790001, 36.334656, 36.560379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426628, 35.691792, 36.859386>,  <36.113731, 35.837322, 36.189083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426628, 35.691792, 36.859386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081188, 35.891621, 36.886597>,  <35.873924, 36.011517, 36.902924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081188, 35.891621, 36.886597>,  <36.426628, 35.691792, 36.859386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081188, 35.891621, 36.886597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286972, -0.597982, 0.748375,
		0.414542, 0.626775, 0.659779,
		-0.863598, 0.499571, 0.068022,
		35.822109, 36.041492, 36.907001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454636, 35.791496, 37.545612>,  <36.426628, 35.691792, 36.859386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454636, 35.791496, 37.545612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074512, 35.850689, 37.436058>,  <35.846439, 35.886204, 37.370323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074512, 35.850689, 37.436058>,  <36.454636, 35.791496, 37.545612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074512, 35.850689, 37.436058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309443, -0.545177, 0.779119,
		-0.034023, 0.825157, 0.563878,
		-0.950309, 0.147980, -0.273887,
		35.789421, 35.895084, 37.353893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008171, 36.305092, 37.330338>,  <36.454636, 35.791496, 37.545612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008171, 36.305092, 37.330338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289486, 36.030025, 37.402454>,  <37.458275, 35.864986, 37.445724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289486, 36.030025, 37.402454>,  <37.008171, 36.305092, 37.330338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289486, 36.030025, 37.402454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710500, 0.671337, -0.210943,
		0.024022, 0.276449, 0.960728,
		0.703287, -0.687665, 0.180290,
		37.500473, 35.823727, 37.456543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473888, 36.514111, 37.918056>,  <37.008171, 36.305092, 37.330338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473888, 36.514111, 37.918056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699692, 36.264496, 37.701942>,  <37.835175, 36.114727, 37.572273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699692, 36.264496, 37.701942>,  <37.473888, 36.514111, 37.918056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699692, 36.264496, 37.701942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638771, 0.744830, -0.192874,
		0.522778, -0.236235, 0.819083,
		0.564513, -0.624037, -0.540281,
		37.869045, 36.077286, 37.539860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067226, 36.808933, 38.022793>,  <37.473888, 36.514111, 37.918056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067226, 36.808933, 38.022793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149250, 36.575928, 37.708183>,  <38.198463, 36.436123, 37.519417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.149250, 36.575928, 37.708183>,  <38.067226, 36.808933, 38.022793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149250, 36.575928, 37.708183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670797, 0.668829, -0.320466,
		0.712729, -0.461888, 0.527899,
		0.205055, -0.582518, -0.786527,
		38.210766, 36.401173, 37.472225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806732, 36.612438, 38.023335>,  <38.067226, 36.808933, 38.022793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806732, 36.612438, 38.023335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668217, 36.614342, 37.648087>,  <38.585106, 36.615482, 37.422939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668217, 36.614342, 37.648087>,  <38.806732, 36.612438, 38.023335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668217, 36.614342, 37.648087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779024, 0.558617, -0.284727,
		0.522692, -0.829412, -0.197151,
		-0.346288, 0.004761, -0.938116,
		38.564331, 36.615768, 37.366653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379536, 36.542809, 37.635201>,  <38.806732, 36.612438, 38.023335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379536, 36.542809, 37.635201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121723, 36.671463, 37.357746>,  <38.967037, 36.748657, 37.191273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121723, 36.671463, 37.357746>,  <39.379536, 36.542809, 37.635201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121723, 36.671463, 37.357746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707993, 0.593583, -0.382629,
		0.288662, -0.737705, -0.610300,
		-0.644531, 0.321637, -0.693635,
		38.928364, 36.767956, 37.149654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821171, 36.460121, 36.996853>,  <39.379536, 36.542809, 37.635201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821171, 36.460121, 36.996853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526447, 36.723152, 36.933968>,  <39.349613, 36.880970, 36.896236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526447, 36.723152, 36.933968>,  <39.821171, 36.460121, 36.996853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526447, 36.723152, 36.933968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650595, 0.626302, -0.429503,
		-0.183969, -0.418740, -0.889277,
		-0.736805, 0.657574, -0.157210,
		39.305405, 36.920425, 36.886803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928246, 36.608727, 36.273479>,  <39.821171, 36.460121, 36.996853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928246, 36.608727, 36.273479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709270, 36.905117, 36.429050>,  <39.577885, 37.082951, 36.522392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709270, 36.905117, 36.429050>,  <39.928246, 36.608727, 36.273479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709270, 36.905117, 36.429050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455131, 0.653630, -0.604668,
		-0.702258, -0.154007, -0.695065,
		-0.547438, 0.740979, 0.388924,
		39.545040, 37.127411, 36.545727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535679, 36.795856, 35.777237>,  <39.928246, 36.608727, 36.273479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535679, 36.795856, 35.777237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548092, 37.100208, 36.036495>,  <39.555538, 37.282818, 36.192051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548092, 37.100208, 36.036495>,  <39.535679, 36.795856, 35.777237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548092, 37.100208, 36.036495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369077, 0.593911, -0.714880,
		-0.928881, 0.261403, -0.262392,
		0.031034, 0.760880, 0.648150,
		39.557404, 37.328472, 36.230942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223812, 37.265221, 35.394108>,  <39.535679, 36.795856, 35.777237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223812, 37.265221, 35.394108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416824, 37.448940, 35.692429>,  <39.532631, 37.559170, 35.871422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416824, 37.448940, 35.692429>,  <39.223812, 37.265221, 35.394108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416824, 37.448940, 35.692429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356299, 0.674920, -0.646169,
		-0.800136, 0.577522, 0.162022,
		0.482529, 0.459295, 0.745798,
		39.561584, 37.586727, 35.916168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993401, 37.971943, 35.356197>,  <39.223812, 37.265221, 35.394108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993401, 37.971943, 35.356197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333427, 37.982143, 35.566624>,  <39.537441, 37.988266, 35.692879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333427, 37.982143, 35.566624>,  <38.993401, 37.971943, 35.356197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333427, 37.982143, 35.566624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383510, 0.654622, -0.651453,
		-0.360988, 0.755526, 0.546688,
		0.850064, 0.025506, 0.526062,
		39.588448, 37.989796, 35.724442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249035, 38.635525, 35.237923>,  <38.993401, 37.971943, 35.356197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249035, 38.635525, 35.237923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581573, 38.470764, 35.387161>,  <39.781097, 38.371906, 35.476704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581573, 38.470764, 35.387161>,  <39.249035, 38.635525, 35.237923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581573, 38.470764, 35.387161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536242, 0.418197, -0.733182,
		0.145973, 0.809597, 0.568546,
		0.831346, -0.411903, 0.373095,
		39.830978, 38.347195, 35.499088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797237, 39.206745, 35.336262>,  <39.249035, 38.635525, 35.237923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797237, 39.206745, 35.336262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024345, 38.878105, 35.315838>,  <40.160610, 38.680920, 35.303585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024345, 38.878105, 35.315838>,  <39.797237, 39.206745, 35.336262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024345, 38.878105, 35.315838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650363, 0.485728, -0.584035,
		0.504647, 0.298387, 0.810121,
		0.567767, -0.821604, -0.051061,
		40.194675, 38.631622, 35.300518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515118, 39.322056, 35.549995>,  <39.797237, 39.206745, 35.336262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515118, 39.322056, 35.549995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529495, 39.008659, 35.301853>,  <40.538120, 38.820621, 35.152966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529495, 39.008659, 35.301853>,  <40.515118, 39.322056, 35.549995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529495, 39.008659, 35.301853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647053, 0.491321, -0.583032,
		0.761598, -0.380449, 0.524622,
		0.035944, -0.783494, -0.620359,
		40.540279, 38.773613, 35.115746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247101, 39.054157, 35.503662>,  <40.515118, 39.322056, 35.549995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247101, 39.054157, 35.503662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068737, 38.927036, 35.168961>,  <40.961720, 38.850765, 34.968140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068737, 38.927036, 35.168961>,  <41.247101, 39.054157, 35.503662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068737, 38.927036, 35.168961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707040, 0.448192, -0.547009,
		0.548870, -0.835538, 0.024846,
		-0.445911, -0.317804, -0.836758,
		40.934963, 38.831696, 34.917934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743412, 39.006199, 35.169273>,  <41.247101, 39.054157, 35.503662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743412, 39.006199, 35.169273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473988, 38.984715, 34.874401>,  <41.312332, 38.971825, 34.697479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473988, 38.984715, 34.874401>,  <41.743412, 39.006199, 35.169273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473988, 38.984715, 34.874401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687437, 0.320912, -0.651495,
		0.271557, -0.945585, -0.179236,
		-0.673563, -0.053705, -0.737176,
		41.271919, 38.968601, 34.653248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078968, 38.689438, 34.542152>,  <41.743412, 39.006199, 35.169273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078968, 38.689438, 34.542152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770134, 38.914894, 34.424717>,  <41.584835, 39.050167, 34.354256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770134, 38.914894, 34.424717>,  <42.078968, 38.689438, 34.542152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770134, 38.914894, 34.424717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631329, 0.627290, -0.455994,
		-0.072850, -0.537418, -0.840163,
		-0.772086, 0.563639, -0.293589,
		41.538509, 39.083984, 34.336639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239109, 38.830658, 33.894073>,  <42.078968, 38.689438, 34.542152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239109, 38.830658, 33.894073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956669, 39.112324, 33.923931>,  <41.787205, 39.281322, 33.941845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.956669, 39.112324, 33.923931>,  <42.239109, 38.830658, 33.894073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956669, 39.112324, 33.923931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469373, 0.544359, -0.695242,
		-0.530202, -0.455873, -0.714889,
		-0.706098, 0.704168, 0.074646,
		41.744839, 39.323574, 33.946323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147446, 39.074104, 33.178188>,  <42.239109, 38.830658, 33.894073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147446, 39.074104, 33.178188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993633, 39.371342, 33.397259>,  <41.901344, 39.549683, 33.528702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.993633, 39.371342, 33.397259>,  <42.147446, 39.074104, 33.178188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.993633, 39.371342, 33.397259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415633, 0.669126, -0.616051,
		-0.824249, -0.009256, -0.566152,
		-0.384529, 0.743091, 0.547679,
		41.878273, 39.594269, 33.561562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899925, 39.526226, 32.683430>,  <42.147446, 39.074104, 33.178188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899925, 39.526226, 32.683430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940701, 39.744438, 33.016178>,  <41.965164, 39.875366, 33.215828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.940701, 39.744438, 33.016178>,  <41.899925, 39.526226, 32.683430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940701, 39.744438, 33.016178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239193, 0.798250, -0.552795,
		-0.965606, 0.255328, -0.049116,
		0.101937, 0.545531, 0.831868,
		41.971283, 39.908096, 33.265739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484474, 40.083286, 32.571922>,  <41.899925, 39.526226, 32.683430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484474, 40.083286, 32.571922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757374, 40.188629, 32.844738>,  <41.921112, 40.251835, 33.008427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757374, 40.188629, 32.844738>,  <41.484474, 40.083286, 32.571922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757374, 40.188629, 32.844738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307594, 0.742899, -0.594547,
		-0.663266, 0.615420, 0.425835,
		0.682249, 0.263359, 0.682039,
		41.962048, 40.267635, 33.049351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471519, 40.766026, 32.533756>,  <41.484474, 40.083286, 32.571922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471519, 40.766026, 32.533756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821693, 40.718353, 32.721119>,  <42.031799, 40.689751, 32.833538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821693, 40.718353, 32.721119>,  <41.471519, 40.766026, 32.533756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821693, 40.718353, 32.721119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416375, 0.678089, -0.605663,
		-0.245438, 0.725253, 0.643248,
		0.875438, -0.119179, 0.468406,
		42.084324, 40.682598, 32.861641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705387, 41.374714, 32.604343>,  <41.471519, 40.766026, 32.533756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705387, 41.374714, 32.604343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044071, 41.165123, 32.641285>,  <42.247280, 41.039368, 32.663452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044071, 41.165123, 32.641285>,  <41.705387, 41.374714, 32.604343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044071, 41.165123, 32.641285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449490, 0.611583, -0.651095,
		0.284675, 0.592802, 0.753356,
		0.846711, -0.523977, 0.092357,
		42.298084, 41.007931, 32.668991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238457, 41.846916, 32.531818>,  <41.705387, 41.374714, 32.604343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238457, 41.846916, 32.531818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405067, 41.495564, 32.438049>,  <42.505032, 41.284752, 32.381786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405067, 41.495564, 32.438049>,  <42.238457, 41.846916, 32.531818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405067, 41.495564, 32.438049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319168, 0.382726, -0.866979,
		0.851258, 0.286297, 0.439766,
		0.416524, -0.878382, -0.234422,
		42.530025, 41.232048, 32.367722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873199, 42.114429, 32.242077>,  <42.238457, 41.846916, 32.531818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873199, 42.114429, 32.242077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834766, 41.741547, 32.102501>,  <42.811707, 41.517818, 32.018753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834766, 41.741547, 32.102501>,  <42.873199, 42.114429, 32.242077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834766, 41.741547, 32.102501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204831, 0.324546, -0.923425,
		0.974070, -0.160196, 0.159763,
		-0.096079, -0.932206, -0.348944,
		42.805943, 41.461884, 31.997818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374737, 42.073761, 31.768324>,  <42.873199, 42.114429, 32.242077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374737, 42.073761, 31.768324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157784, 41.751453, 31.673195>,  <43.027611, 41.558067, 31.616117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157784, 41.751453, 31.673195>,  <43.374737, 42.073761, 31.768324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157784, 41.751453, 31.673195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066884, 0.240765, -0.968276,
		0.837465, -0.541082, -0.076694,
		-0.542382, -0.805768, -0.237822,
		42.995068, 41.509724, 31.601849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727818, 41.654186, 31.264597>,  <43.374737, 42.073761, 31.768324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727818, 41.654186, 31.264597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333214, 41.610287, 31.216002>,  <43.096451, 41.583946, 31.186844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333214, 41.610287, 31.216002>,  <43.727818, 41.654186, 31.264597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333214, 41.610287, 31.216002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097787, 0.200174, -0.974868,
		0.131308, -0.973594, -0.186741,
		-0.986507, -0.109747, -0.121489,
		43.037262, 41.577362, 31.179554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714195, 41.485371, 30.615685>,  <43.727818, 41.654186, 31.264597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714195, 41.485371, 30.615685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318970, 41.535885, 30.650982>,  <43.081837, 41.566193, 30.672161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318970, 41.535885, 30.650982>,  <43.714195, 41.485371, 30.615685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318970, 41.535885, 30.650982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065378, 0.174961, -0.982402,
		-0.139502, -0.976443, -0.164616,
		-0.988061, 0.126285, 0.088245,
		43.022552, 41.573769, 30.677456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464382, 40.932941, 30.215952>,  <43.714195, 41.485371, 30.615685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464382, 40.932941, 30.215952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187881, 41.221741, 30.227942>,  <43.021980, 41.395020, 30.235136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187881, 41.221741, 30.227942>,  <43.464382, 40.932941, 30.215952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187881, 41.221741, 30.227942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102419, -0.056826, -0.993117,
		-0.715322, -0.689561, 0.113227,
		-0.691249, 0.721995, 0.029975,
		42.980507, 41.438339, 30.236935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938946, 40.650311, 29.911673>,  <43.464382, 40.932941, 30.215952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938946, 40.650311, 29.911673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859848, 41.042019, 29.894089>,  <42.812389, 41.277042, 29.883537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859848, 41.042019, 29.894089>,  <42.938946, 40.650311, 29.911673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859848, 41.042019, 29.894089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407272, -0.122868, -0.905004,
		-0.891643, -0.161055, 0.423125,
		-0.197744, 0.979267, -0.043961,
		42.800526, 41.335800, 29.880901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333065, 40.671986, 29.415546>,  <42.938946, 40.650311, 29.911673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333065, 40.671986, 29.415546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450085, 41.054436, 29.409300>,  <42.520298, 41.283905, 29.405552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450085, 41.054436, 29.409300>,  <42.333065, 40.671986, 29.415546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450085, 41.054436, 29.409300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077346, 0.007382, -0.996977,
		-0.953116, 0.292877, 0.076112,
		0.292553, 0.956122, -0.015617,
		42.537849, 41.341270, 29.404615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964142, 40.990463, 28.893238>,  <42.333065, 40.671986, 29.415546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964142, 40.990463, 28.893238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277161, 41.236614, 28.931030>,  <42.464973, 41.384304, 28.953705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277161, 41.236614, 28.931030>,  <41.964142, 40.990463, 28.893238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277161, 41.236614, 28.931030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017338, 0.130157, -0.991342,
		-0.622349, 0.777411, 0.091185,
		0.782548, 0.615380, 0.094481,
		42.511925, 41.421227, 28.959375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851528, 41.573528, 28.550444>,  <41.964142, 40.990463, 28.893238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851528, 41.573528, 28.550444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251232, 41.575623, 28.565704>,  <42.491055, 41.576878, 28.574862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.251232, 41.575623, 28.565704>,  <41.851528, 41.573528, 28.550444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.251232, 41.575623, 28.565704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036774, 0.164357, -0.985715,
		-0.011429, 0.986387, 0.164042,
		0.999258, 0.005233, 0.038152,
		42.551010, 41.577194, 28.577150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008507, 42.045727, 28.104156>,  <41.851528, 41.573528, 28.550444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008507, 42.045727, 28.104156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331448, 41.815540, 28.156345>,  <42.525211, 41.677429, 28.187658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331448, 41.815540, 28.156345>,  <42.008507, 42.045727, 28.104156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331448, 41.815540, 28.156345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257115, 0.144067, -0.955582,
		0.531109, 0.805036, 0.264274,
		0.807351, -0.575467, 0.130472,
		42.573654, 41.642899, 28.195486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574699, 42.355335, 27.823463>,  <42.008507, 42.045727, 28.104156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574699, 42.355335, 27.823463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634338, 41.959816, 27.826344>,  <42.670120, 41.722504, 27.828072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634338, 41.959816, 27.826344>,  <42.574699, 42.355335, 27.823463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634338, 41.959816, 27.826344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274632, 0.034412, -0.960934,
		0.949920, 0.145248, 0.276686,
		0.149095, -0.988797, 0.007201,
		42.679066, 41.663177, 27.828505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123348, 42.378551, 27.452284>,  <42.574699, 42.355335, 27.823463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123348, 42.378551, 27.452284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990551, 42.001247, 27.455055>,  <42.910873, 41.774864, 27.456718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990551, 42.001247, 27.455055>,  <43.123348, 42.378551, 27.452284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990551, 42.001247, 27.455055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212957, -0.082105, -0.973606,
		0.918929, -0.321753, 0.228131,
		-0.331992, -0.943257, 0.006930,
		42.890953, 41.718269, 27.457134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496868, 42.055618, 26.907263>,  <43.123348, 42.378551, 27.452284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496868, 42.055618, 26.907263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214642, 41.780956, 26.977331>,  <43.045307, 41.616158, 27.019373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214642, 41.780956, 26.977331>,  <43.496868, 42.055618, 26.907263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214642, 41.780956, 26.977331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109832, -0.350166, -0.930226,
		0.700084, -0.637094, 0.322481,
		-0.705563, -0.686655, 0.175172,
		43.002972, 41.574959, 27.029882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682632, 41.399635, 26.474731>,  <43.496868, 42.055618, 26.907263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682632, 41.399635, 26.474731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289997, 41.373455, 26.546511>,  <43.054417, 41.357746, 26.589579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.289997, 41.373455, 26.546511>,  <43.682632, 41.399635, 26.474731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289997, 41.373455, 26.546511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133036, -0.439877, -0.888150,
		0.137070, -0.895670, 0.423069,
		-0.981587, -0.065455, 0.179451,
		42.995522, 41.353817, 26.600346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459251, 40.819370, 26.124928>,  <43.682632, 41.399635, 26.474731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459251, 40.819370, 26.124928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128773, 41.032925, 26.196888>,  <42.930485, 41.161057, 26.240065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128773, 41.032925, 26.196888>,  <43.459251, 40.819370, 26.124928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128773, 41.032925, 26.196888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392186, -0.315783, -0.863986,
		-0.404463, -0.784376, 0.470282,
		-0.826196, 0.533888, 0.179899,
		42.880913, 41.193089, 26.250858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.054630, 40.593937, 25.519239>,  <43.459251, 40.819370, 26.124928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.054630, 40.593937, 25.519239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133736, 40.260113, 25.313559>,  <43.181198, 40.059818, 25.190149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133736, 40.260113, 25.313559>,  <43.054630, 40.593937, 25.519239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133736, 40.260113, 25.313559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509769, -0.535609, 0.673245,
		-0.837273, 0.128982, -0.531355,
		0.197762, -0.834558, -0.514202,
		43.193066, 40.009747, 25.159298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356522, 40.192493, 25.472206>,  <43.054630, 40.593937, 25.519239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356522, 40.192493, 25.472206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654766, 39.931084, 25.420103>,  <42.833714, 39.774239, 25.388842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654766, 39.931084, 25.420103>,  <42.356522, 40.192493, 25.472206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654766, 39.931084, 25.420103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323775, -0.526133, 0.786355,
		-0.582437, -0.544141, -0.603886,
		0.745611, -0.653525, -0.130260,
		42.878448, 39.735027, 25.381025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040783, 39.629726, 25.577164>,  <42.356522, 40.192493, 25.472206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040783, 39.629726, 25.577164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426006, 39.539635, 25.636221>,  <42.657139, 39.485580, 25.671656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426006, 39.539635, 25.636221>,  <42.040783, 39.629726, 25.577164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426006, 39.539635, 25.636221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246149, -0.513759, 0.821865,
		-0.109252, -0.827844, -0.550217,
		0.963055, -0.225226, 0.147643,
		42.714924, 39.472065, 25.680513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039257, 38.940815, 25.527973>,  <42.040783, 39.629726, 25.577164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039257, 38.940815, 25.527973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387421, 39.024536, 25.706226>,  <42.596317, 39.074768, 25.813177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387421, 39.024536, 25.706226>,  <42.039257, 38.940815, 25.527973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387421, 39.024536, 25.706226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224549, -0.636750, 0.737649,
		0.438145, -0.742121, -0.507233,
		0.870406, 0.209299, 0.445632,
		42.648544, 39.087326, 25.839916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399097, 38.272686, 25.726767>,  <42.039257, 38.940815, 25.527973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399097, 38.272686, 25.726767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507099, 38.579987, 25.958935>,  <42.571899, 38.764366, 26.098236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507099, 38.579987, 25.958935>,  <42.399097, 38.272686, 25.726767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507099, 38.579987, 25.958935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160121, -0.558591, 0.813841,
		0.949451, -0.312681, -0.027811,
		0.270008, 0.768249, 0.580421,
		42.588100, 38.810463, 26.133060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786484, 37.860012, 26.269920>,  <42.399097, 38.272686, 25.726767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786484, 37.860012, 26.269920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694500, 38.229946, 26.391117>,  <42.639309, 38.451904, 26.463835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694500, 38.229946, 26.391117>,  <42.786484, 37.860012, 26.269920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694500, 38.229946, 26.391117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030649, -0.318063, 0.947574,
		0.972718, 0.208614, 0.101486,
		-0.229956, 0.924833, 0.302991,
		42.625515, 38.507397, 26.482014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.152473, 37.927738, 26.925913>,  <42.786484, 37.860012, 26.269920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.152473, 37.927738, 26.925913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869640, 38.209225, 26.953691>,  <42.699940, 38.378117, 26.970358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869640, 38.209225, 26.953691>,  <43.152473, 37.927738, 26.925913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869640, 38.209225, 26.953691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171329, -0.265769, 0.948690,
		0.686064, 0.658903, 0.308487,
		-0.707081, 0.703714, 0.069446,
		42.657516, 38.420338, 26.974525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297310, 38.267021, 27.518312>,  <43.152473, 37.927738, 26.925913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297310, 38.267021, 27.518312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913967, 38.358913, 27.450462>,  <42.683960, 38.414047, 27.409752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913967, 38.358913, 27.450462>,  <43.297310, 38.267021, 27.518312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913967, 38.358913, 27.450462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211498, -0.171891, 0.962144,
		0.191877, 0.957955, 0.213321,
		-0.958359, 0.229731, -0.169624,
		42.626461, 38.427834, 27.399574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160244, 38.817486, 27.962702>,  <43.297310, 38.267021, 27.518312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160244, 38.817486, 27.962702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798592, 38.665730, 27.884100>,  <42.581600, 38.574677, 27.836939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798592, 38.665730, 27.884100>,  <43.160244, 38.817486, 27.962702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798592, 38.665730, 27.884100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201189, -0.027704, 0.979161,
		-0.376927, 0.924822, -0.051281,
		-0.904129, -0.379389, -0.196506,
		42.527351, 38.551914, 27.825148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814400, 39.067291, 28.495718>,  <43.160244, 38.817486, 27.962702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814400, 39.067291, 28.495718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574673, 38.787876, 28.339321>,  <42.430836, 38.620228, 28.245483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.574673, 38.787876, 28.339321>,  <42.814400, 39.067291, 28.495718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574673, 38.787876, 28.339321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313140, -0.244935, 0.917578,
		-0.736726, 0.672353, -0.071946,
		-0.599314, -0.698533, -0.390991,
		42.394878, 38.578316, 28.222023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038807, 39.155762, 28.745941>,  <42.814400, 39.067291, 28.495718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038807, 39.155762, 28.745941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129147, 38.780968, 28.639320>,  <42.183350, 38.556091, 28.575348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.129147, 38.780968, 28.639320>,  <42.038807, 39.155762, 28.745941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.129147, 38.780968, 28.639320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280678, -0.324605, 0.903245,
		-0.932852, -0.129179, -0.336302,
		0.225846, -0.936987, -0.266551,
		42.196899, 38.499870, 28.559355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555523, 38.737347, 29.041309>,  <42.038807, 39.155762, 28.745941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555523, 38.737347, 29.041309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814564, 38.451038, 28.936790>,  <41.969990, 38.279251, 28.874079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814564, 38.451038, 28.936790>,  <41.555523, 38.737347, 29.041309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814564, 38.451038, 28.936790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230098, -0.510614, 0.828449,
		-0.726405, -0.476383, -0.495374,
		0.647604, -0.715774, -0.261298,
		42.008846, 38.236305, 28.858400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177971, 38.080475, 29.142599>,  <41.555523, 38.737347, 29.041309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177971, 38.080475, 29.142599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574902, 38.032185, 29.153227>,  <41.813061, 38.003212, 29.159603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574902, 38.032185, 29.153227>,  <41.177971, 38.080475, 29.142599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574902, 38.032185, 29.153227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082201, -0.483953, 0.871225,
		-0.092318, -0.866727, -0.490165,
		0.992331, -0.120721, 0.026568,
		41.872601, 37.995968, 29.161198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258858, 37.357224, 29.300440>,  <41.177971, 38.080475, 29.142599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258858, 37.357224, 29.300440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619301, 37.510544, 29.381521>,  <41.835567, 37.602535, 29.430170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619301, 37.510544, 29.381521>,  <41.258858, 37.357224, 29.300440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619301, 37.510544, 29.381521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021778, -0.506910, 0.861724,
		0.433053, -0.772090, -0.465127,
		0.901105, 0.383301, 0.202704,
		41.889633, 37.625534, 29.442333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559048, 36.839848, 29.729874>,  <41.258858, 37.357224, 29.300440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559048, 36.839848, 29.729874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790039, 37.163887, 29.770367>,  <41.928635, 37.358311, 29.794662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790039, 37.163887, 29.770367>,  <41.559048, 36.839848, 29.729874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790039, 37.163887, 29.770367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127784, -0.212162, 0.968844,
		0.806340, -0.546555, -0.226038,
		0.577483, 0.810102, 0.101234,
		41.963284, 37.406918, 29.800737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.164585, 36.655361, 30.199549>,  <41.559048, 36.839848, 29.729874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.164585, 36.655361, 30.199549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081223, 37.043240, 30.250557>,  <42.031204, 37.275967, 30.281162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081223, 37.043240, 30.250557>,  <42.164585, 36.655361, 30.199549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081223, 37.043240, 30.250557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155212, -0.095940, 0.983212,
		0.965648, 0.224703, -0.130513,
		-0.208409, 0.969693, 0.127521,
		42.018700, 37.334148, 30.288813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625809, 36.821232, 30.739767>,  <42.164585, 36.655361, 30.199549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625809, 36.821232, 30.739767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341976, 37.103027, 30.734343>,  <42.171677, 37.272106, 30.731089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341976, 37.103027, 30.734343>,  <42.625809, 36.821232, 30.739767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341976, 37.103027, 30.734343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009531, 0.009646, 0.999908,
		0.704556, 0.709649, -0.000130,
		-0.709585, 0.704490, -0.013560,
		42.129101, 37.314373, 30.730274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804058, 37.077549, 31.264029>,  <42.625809, 36.821232, 30.739767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804058, 37.077549, 31.264029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429043, 37.201401, 31.200605>,  <42.204033, 37.275711, 31.162552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429043, 37.201401, 31.200605>,  <42.804058, 37.077549, 31.264029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429043, 37.201401, 31.200605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131582, 0.106288, 0.985591,
		0.322025, 0.944897, -0.058907,
		-0.937542, 0.309634, -0.158559,
		42.147781, 37.294292, 31.153038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688530, 37.850761, 31.361181>,  <42.804058, 37.077549, 31.264029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688530, 37.850761, 31.361181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324043, 37.690380, 31.398951>,  <42.105350, 37.594151, 31.421612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324043, 37.690380, 31.398951>,  <42.688530, 37.850761, 31.361181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324043, 37.690380, 31.398951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086448, 0.037987, 0.995532,
		-0.402744, 0.915313, 0.000047,
		-0.911221, -0.400949, 0.094425,
		42.050678, 37.570095, 31.427279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419907, 38.206543, 31.940826>,  <42.688530, 37.850761, 31.361181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419907, 38.206543, 31.940826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169674, 37.897373, 31.898443>,  <42.019535, 37.711872, 31.873014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169674, 37.897373, 31.898443>,  <42.419907, 38.206543, 31.940826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169674, 37.897373, 31.898443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154086, -0.010728, 0.987999,
		-0.764790, 0.634402, -0.112386,
		-0.625583, -0.772929, -0.105957,
		41.981998, 37.665493, 31.866655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962543, 38.268539, 32.472054>,  <42.419907, 38.206543, 31.940826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962543, 38.268539, 32.472054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897240, 37.886295, 32.373943>,  <41.858055, 37.656948, 32.315079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.897240, 37.886295, 32.373943>,  <41.962543, 38.268539, 32.472054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897240, 37.886295, 32.373943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245123, -0.201526, 0.948316,
		-0.955646, 0.214947, -0.201340,
		-0.163262, -0.955607, -0.245276,
		41.848263, 37.599613, 32.300362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264076, 37.999557, 32.722656>,  <41.962543, 38.268539, 32.472054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264076, 37.999557, 32.722656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473148, 37.659836, 32.693027>,  <41.598591, 37.456001, 32.675251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473148, 37.659836, 32.693027>,  <41.264076, 37.999557, 32.722656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473148, 37.659836, 32.693027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263225, -0.243408, 0.933523,
		-0.810878, -0.468432, -0.350783,
		0.522676, -0.849308, -0.074071,
		41.629951, 37.405045, 32.670807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764526, 37.402832, 32.898766>,  <41.264076, 37.999557, 32.722656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764526, 37.402832, 32.898766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130333, 37.248703, 32.948063>,  <41.349815, 37.156223, 32.977642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130333, 37.248703, 32.948063>,  <40.764526, 37.402832, 32.898766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130333, 37.248703, 32.948063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287462, -0.404574, 0.868150,
		-0.284655, -0.829365, -0.480755,
		0.914514, -0.385323, 0.123247,
		41.404686, 37.133106, 32.985035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659981, 36.780781, 33.182037>,  <40.764526, 37.402832, 32.898766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659981, 36.780781, 33.182037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049076, 36.831474, 33.259731>,  <41.282532, 36.861893, 33.306347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049076, 36.831474, 33.259731>,  <40.659981, 36.780781, 33.182037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049076, 36.831474, 33.259731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099278, -0.529328, 0.842589,
		0.209598, -0.838898, -0.502313,
		0.972734, 0.126736, 0.194230,
		41.340897, 36.869495, 33.318001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023304, 36.065552, 33.188480>,  <40.659981, 36.780781, 33.182037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023304, 36.065552, 33.188480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225822, 36.339928, 33.397537>,  <41.347332, 36.504551, 33.522972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225822, 36.339928, 33.397537>,  <41.023304, 36.065552, 33.188480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225822, 36.339928, 33.397537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125081, -0.541242, 0.831512,
		0.853241, -0.486364, -0.188231,
		0.506296, 0.685936, 0.522644,
		41.377712, 36.545708, 33.554329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528816, 35.675770, 33.578304>,  <41.023304, 36.065552, 33.188480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528816, 35.675770, 33.578304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494465, 36.034870, 33.751122>,  <41.473854, 36.250332, 33.854813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494465, 36.034870, 33.751122>,  <41.528816, 35.675770, 33.578304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494465, 36.034870, 33.751122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059856, -0.428215, 0.901692,
		0.994506, 0.103294, -0.016963,
		-0.085876, 0.897754, 0.432045,
		41.468700, 36.304195, 33.880733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158798, 35.741100, 33.944290>,  <41.528816, 35.675770, 33.578304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158798, 35.741100, 33.944290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883209, 35.974644, 34.116070>,  <41.717857, 36.114769, 34.219135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883209, 35.974644, 34.116070>,  <42.158798, 35.741100, 33.944290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883209, 35.974644, 34.116070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178356, -0.437715, 0.881246,
		0.702501, 0.683748, 0.197438,
		-0.688971, 0.583862, 0.429445,
		41.676517, 36.149803, 34.244904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393902, 35.975647, 34.704292>,  <42.158798, 35.741100, 33.944290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393902, 35.975647, 34.704292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997414, 36.028126, 34.697765>,  <41.759521, 36.059612, 34.693848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997414, 36.028126, 34.697765>,  <42.393902, 35.975647, 34.704292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997414, 36.028126, 34.697765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046934, -0.233800, 0.971151,
		0.123594, 0.963393, 0.237905,
		-0.991222, 0.131194, -0.016319,
		41.700047, 36.067486, 34.692871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277557, 36.234360, 35.375748>,  <42.393902, 35.975647, 34.704292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277557, 36.234360, 35.375748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921654, 36.094879, 35.257950>,  <41.708111, 36.011189, 35.187271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921654, 36.094879, 35.257950>,  <42.277557, 36.234360, 35.375748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921654, 36.094879, 35.257950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151073, -0.383862, 0.910948,
		-0.430699, 0.855017, 0.288865,
		-0.889761, -0.348705, -0.294499,
		41.654724, 35.990269, 35.169601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882442, 36.275642, 35.939445>,  <42.277557, 36.234360, 35.375748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882442, 36.275642, 35.939445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679893, 36.021526, 35.706211>,  <41.558365, 35.869057, 35.566269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679893, 36.021526, 35.706211>,  <41.882442, 36.275642, 35.939445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679893, 36.021526, 35.706211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203509, -0.569048, 0.796723,
		-0.837957, 0.522103, 0.158863,
		-0.506372, -0.635290, -0.583090,
		41.527981, 35.830940, 35.531284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219906, 36.228550, 36.214256>,  <41.882442, 36.275642, 35.939445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219906, 36.228550, 36.214256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236076, 35.892056, 35.998596>,  <41.245777, 35.690159, 35.869198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.236076, 35.892056, 35.998596>,  <41.219906, 36.228550, 36.214256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.236076, 35.892056, 35.998596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339475, -0.519061, 0.784432,
		-0.939746, 0.151320, -0.306561,
		0.040424, -0.841236, -0.539154,
		41.248203, 35.639683, 35.836849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548004, 35.913746, 36.180492>,  <41.219906, 36.228550, 36.214256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548004, 35.913746, 36.180492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807831, 35.617691, 36.110909>,  <40.963726, 35.440060, 36.069157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807831, 35.617691, 36.110909>,  <40.548004, 35.913746, 36.180492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807831, 35.617691, 36.110909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356776, -0.498774, 0.789896,
		-0.671402, -0.451020, -0.588049,
		0.649562, -0.740139, -0.173965,
		41.002701, 35.395649, 36.058720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178070, 35.268089, 36.176147>,  <40.548004, 35.913746, 36.180492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178070, 35.268089, 36.176147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554012, 35.147854, 36.241035>,  <40.779579, 35.075710, 36.279968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554012, 35.147854, 36.241035>,  <40.178070, 35.268089, 36.176147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554012, 35.147854, 36.241035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329274, -0.671046, 0.664286,
		-0.090822, -0.677748, -0.729663,
		0.939856, -0.300591, 0.162219,
		40.835968, 35.057678, 36.289700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270523, 34.488548, 36.048538>,  <40.178070, 35.268089, 36.176147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270523, 34.488548, 36.048538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587589, 34.562054, 36.281055>,  <40.777828, 34.606159, 36.420567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587589, 34.562054, 36.281055>,  <40.270523, 34.488548, 36.048538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587589, 34.562054, 36.281055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155845, -0.860731, 0.484618,
		0.589397, -0.474734, -0.653636,
		0.792669, 0.183767, 0.581297,
		40.825390, 34.617184, 36.455444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478062, 33.871567, 36.230545>,  <40.270523, 34.488548, 36.048538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478062, 33.871567, 36.230545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730408, 34.060474, 36.476788>,  <40.881817, 34.173817, 36.624535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730408, 34.060474, 36.476788>,  <40.478062, 33.871567, 36.230545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730408, 34.060474, 36.476788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188753, -0.676167, 0.712159,
		0.752582, -0.565475, -0.337430,
		0.630867, 0.472267, 0.615606,
		40.919666, 34.202156, 36.661469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745483, 33.382320, 36.554447>,  <40.478062, 33.871567, 36.230545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745483, 33.382320, 36.554447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807034, 33.689754, 36.802834>,  <40.843964, 33.874214, 36.951866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807034, 33.689754, 36.802834>,  <40.745483, 33.382320, 36.554447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807034, 33.689754, 36.802834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180610, -0.595988, 0.782418,
		0.971443, -0.232548, 0.047106,
		0.153875, 0.768583, 0.620970,
		40.853195, 33.920330, 36.989124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146637, 33.104759, 36.972988>,  <40.745483, 33.382320, 36.554447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146637, 33.104759, 36.972988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982155, 33.418919, 37.158054>,  <40.883465, 33.607414, 37.269093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982155, 33.418919, 37.158054>,  <41.146637, 33.104759, 36.972988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982155, 33.418919, 37.158054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215386, -0.576904, 0.787903,
		0.885733, 0.224335, 0.406388,
		-0.411201, 0.785401, 0.462664,
		40.858795, 33.654537, 37.296852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367260, 33.106239, 37.659985>,  <41.146637, 33.104759, 36.972988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367260, 33.106239, 37.659985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047256, 33.342575, 37.701744>,  <40.855255, 33.484375, 37.726799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047256, 33.342575, 37.701744>,  <41.367260, 33.106239, 37.659985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047256, 33.342575, 37.701744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329893, -0.578499, 0.745995,
		0.501158, 0.562360, 0.657717,
		-0.800007, 0.590838, 0.104401,
		40.807255, 33.519825, 37.733063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303074, 33.150143, 38.393322>,  <41.367260, 33.106239, 37.659985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303074, 33.150143, 38.393322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947830, 33.261700, 38.247181>,  <40.734684, 33.328632, 38.159496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.947830, 33.261700, 38.247181>,  <41.303074, 33.150143, 38.393322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947830, 33.261700, 38.247181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457727, -0.464321, 0.758216,
		0.041821, 0.840610, 0.540025,
		-0.888109, 0.278893, -0.365351,
		40.681396, 33.345367, 38.137577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868752, 33.308216, 39.010830>,  <41.303074, 33.150143, 38.393322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868752, 33.308216, 39.010830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615368, 33.247459, 38.707340>,  <40.463337, 33.211006, 38.525246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615368, 33.247459, 38.707340>,  <40.868752, 33.308216, 39.010830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615368, 33.247459, 38.707340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503222, -0.663995, 0.553063,
		-0.587794, 0.732148, 0.344177,
		-0.633455, -0.151889, -0.758725,
		40.425331, 33.201893, 38.479721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135601, 33.383057, 39.293591>,  <40.868752, 33.308216, 39.010830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135601, 33.383057, 39.293591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192394, 33.165192, 38.962971>,  <40.226471, 33.034473, 38.764599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192394, 33.165192, 38.962971>,  <40.135601, 33.383057, 39.293591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192394, 33.165192, 38.962971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350335, -0.808611, 0.472666,
		-0.925801, 0.222458, -0.305623,
		0.141982, -0.544665, -0.826548,
		40.234989, 33.001793, 38.715008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549694, 32.997368, 39.196880>,  <40.135601, 33.383057, 39.293591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549694, 32.997368, 39.196880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807819, 32.784725, 38.977440>,  <39.962696, 32.657139, 38.845776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807819, 32.784725, 38.977440>,  <39.549694, 32.997368, 39.196880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807819, 32.784725, 38.977440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553910, -0.820169, 0.143200,
		-0.526071, 0.211466, -0.823730,
		0.645316, -0.531606, -0.548600,
		40.001415, 32.625244, 38.812859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222378, 32.492580, 38.691849>,  <39.549694, 32.997368, 39.196880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222378, 32.492580, 38.691849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576000, 32.368290, 38.831505>,  <39.788174, 32.293716, 38.915298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576000, 32.368290, 38.831505>,  <39.222378, 32.492580, 38.691849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576000, 32.368290, 38.831505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390049, -0.902050, 0.184845,
		0.257509, -0.299596, -0.918657,
		0.884054, -0.310722, 0.349143,
		39.841217, 32.275074, 38.936249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365047, 31.852709, 38.330536>,  <39.222378, 32.492580, 38.691849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365047, 31.852709, 38.330536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499954, 31.924887, 38.700119>,  <39.580898, 31.968193, 38.921867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499954, 31.924887, 38.700119>,  <39.365047, 31.852709, 38.330536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499954, 31.924887, 38.700119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413244, -0.853468, 0.317523,
		0.845861, -0.488908, -0.213277,
		0.337265, 0.180445, 0.923954,
		39.601135, 31.979021, 38.977306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535965, 31.246878, 38.572289>,  <39.365047, 31.852709, 38.330536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535965, 31.246878, 38.572289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542858, 31.442657, 38.921032>,  <39.546993, 31.560125, 39.130280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542858, 31.442657, 38.921032>,  <39.535965, 31.246878, 38.572289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542858, 31.442657, 38.921032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068974, -0.869332, 0.489391,
		0.997470, -0.068569, 0.018780,
		0.017231, 0.489448, 0.871862,
		39.548027, 31.589491, 39.182590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076088, 30.975529, 38.934261>,  <39.535965, 31.246878, 38.572289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076088, 30.975529, 38.934261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744930, 31.088654, 39.128010>,  <39.546238, 31.156528, 39.244259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744930, 31.088654, 39.128010>,  <40.076088, 30.975529, 38.934261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744930, 31.088654, 39.128010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142088, -0.941153, 0.306661,
		0.542591, 0.185060, 0.819358,
		-0.827892, 0.282813, 0.484367,
		39.496563, 31.173498, 39.273319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139137, 30.776018, 39.622326>,  <40.076088, 30.975529, 38.934261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139137, 30.776018, 39.622326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762730, 30.773882, 39.487007>,  <39.536884, 30.772600, 39.405815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762730, 30.773882, 39.487007>,  <40.139137, 30.776018, 39.622326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762730, 30.773882, 39.487007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018828, -0.997499, 0.068123,
		-0.337817, 0.070475, 0.938570,
		-0.941023, -0.005342, -0.338299,
		39.480423, 30.772280, 39.385517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644535, 30.458002, 40.032249>,  <40.139137, 30.776018, 39.622326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644535, 30.458002, 40.032249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450756, 30.351397, 39.698956>,  <39.334488, 30.287434, 39.498978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450756, 30.351397, 39.698956>,  <39.644535, 30.458002, 40.032249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450756, 30.351397, 39.698956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248084, -0.871511, 0.422993,
		-0.838907, 0.411630, 0.356085,
		-0.484449, -0.266513, -0.833235,
		39.305420, 30.271442, 39.448986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896351, 30.171661, 40.213257>,  <39.644535, 30.458002, 40.032249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896351, 30.171661, 40.213257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047337, 30.033880, 39.869427>,  <39.137928, 29.951212, 39.663128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047337, 30.033880, 39.869427>,  <38.896351, 30.171661, 40.213257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047337, 30.033880, 39.869427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200795, -0.936605, 0.287145,
		-0.903991, 0.064211, -0.422702,
		0.377467, -0.344454, -0.859576,
		39.160576, 29.930544, 39.611553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313389, 29.823004, 39.937984>,  <38.896351, 30.171661, 40.213257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313389, 29.823004, 39.937984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659927, 29.673735, 39.805202>,  <38.867851, 29.584173, 39.725533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659927, 29.673735, 39.805202>,  <38.313389, 29.823004, 39.937984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659927, 29.673735, 39.805202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326148, -0.926058, 0.189855,
		-0.378254, -0.056214, -0.923994,
		0.866344, -0.373172, -0.331951,
		38.919830, 29.561783, 39.705616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150646, 29.268686, 39.389145>,  <38.313389, 29.823004, 39.937984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150646, 29.268686, 39.389145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490471, 29.211262, 39.592178>,  <38.694366, 29.176807, 39.713997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490471, 29.211262, 39.592178>,  <38.150646, 29.268686, 39.389145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490471, 29.211262, 39.592178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238125, -0.963002, 0.126191,
		0.470687, -0.228074, -0.852312,
		0.849559, -0.143561, 0.507582,
		38.745338, 29.168194, 39.744453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112350, 28.780209, 38.771015>,  <38.150646, 29.268686, 39.389145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112350, 28.780209, 38.771015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794796, 28.953152, 38.942043>,  <37.604263, 29.056917, 39.044659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794796, 28.953152, 38.942043>,  <38.112350, 28.780209, 38.771015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794796, 28.953152, 38.942043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552294, 0.218507, 0.804504,
		0.254407, 0.874826, -0.412258,
		-0.793882, 0.432359, 0.427571,
		37.556633, 29.082859, 39.070316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771664, 28.511734, 38.673927>,  <38.112350, 28.780209, 38.771015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771664, 28.511734, 38.673927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049637, 28.338943, 38.443985>,  <39.216423, 28.235270, 38.306019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049637, 28.338943, 38.443985>,  <38.771664, 28.511734, 38.673927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049637, 28.338943, 38.443985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575163, 0.145874, -0.804927,
		0.431567, 0.890009, -0.147084,
		0.694937, -0.431977, -0.574855,
		39.258118, 28.209351, 38.271530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808025, 28.546593, 39.366627>,  <38.771664, 28.511734, 38.673927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808025, 28.546593, 39.366627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008781, 28.859571, 39.219173>,  <39.129234, 29.047358, 39.130703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008781, 28.859571, 39.219173>,  <38.808025, 28.546593, 39.366627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008781, 28.859571, 39.219173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793646, -0.247171, 0.555907,
		0.343852, -0.571565, -0.745037,
		0.501888, 0.782445, -0.368630,
		39.159348, 29.094305, 39.108585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444862, 28.357710, 38.932693>,  <38.808025, 28.546593, 39.366627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444862, 28.357710, 38.932693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504162, 28.698206, 39.134056>,  <39.539742, 28.902504, 39.254871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504162, 28.698206, 39.134056>,  <39.444862, 28.357710, 38.932693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504162, 28.698206, 39.134056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775153, -0.416121, 0.475375,
		0.614134, 0.319742, -0.721530,
		0.148246, 0.851240, 0.503403,
		39.548637, 28.953577, 39.285076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747131, 28.370285, 39.577358>,  <39.444862, 28.357710, 38.932693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747131, 28.370285, 39.577358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939369, 28.583132, 39.298538>,  <40.054710, 28.710840, 39.131245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939369, 28.583132, 39.298538>,  <39.747131, 28.370285, 39.577358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939369, 28.583132, 39.298538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029291, -0.804162, -0.593687,
		-0.876455, 0.264904, -0.402060,
		0.480591, 0.532117, -0.697053,
		40.083546, 28.742767, 39.089420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312279, 28.652166, 39.651917>,  <39.747131, 28.370285, 39.577358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312279, 28.652166, 39.651917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583267, 28.599304, 39.362484>,  <40.745861, 28.567587, 39.188824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583267, 28.599304, 39.362484>,  <40.312279, 28.652166, 39.651917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583267, 28.599304, 39.362484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648914, 0.355799, -0.672546,
		0.346330, 0.925171, 0.155285,
		0.677470, -0.132156, -0.723581,
		40.786507, 28.559658, 39.145409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437160, 29.341698, 39.300945>,  <40.312279, 28.652166, 39.651917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437160, 29.341698, 39.300945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506287, 29.030249, 39.059654>,  <40.547764, 28.843380, 38.914879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.506287, 29.030249, 39.059654>,  <40.437160, 29.341698, 39.300945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506287, 29.030249, 39.059654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344352, 0.526029, -0.777634,
		0.922798, 0.342111, -0.177214,
		0.172817, -0.778623, -0.603225,
		40.558132, 28.796661, 38.878685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911758, 29.433060, 38.599007>,  <40.437160, 29.341698, 39.300945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911758, 29.433060, 38.599007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613625, 29.168875, 38.562626>,  <40.434746, 29.010363, 38.540798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613625, 29.168875, 38.562626>,  <40.911758, 29.433060, 38.599007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613625, 29.168875, 38.562626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424570, 0.575387, -0.699049,
		0.514023, -0.482412, -0.709267,
		-0.745332, -0.660461, -0.090944,
		40.390026, 28.970736, 38.535343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828468, 29.352751, 37.919895>,  <40.911758, 29.433060, 38.599007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828468, 29.352751, 37.919895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473625, 29.281036, 38.090019>,  <40.260719, 29.238008, 38.192093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473625, 29.281036, 38.090019>,  <40.828468, 29.352751, 37.919895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473625, 29.281036, 38.090019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455522, 0.488594, -0.744161,
		-0.074388, -0.853893, -0.515106,
		-0.887111, -0.179285, 0.425313,
		40.207493, 29.227251, 38.217613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472019, 28.996851, 37.438644>,  <40.828468, 29.352751, 37.919895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472019, 28.996851, 37.438644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275330, 29.242727, 37.685337>,  <40.157314, 29.390253, 37.833351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275330, 29.242727, 37.685337>,  <40.472019, 28.996851, 37.438644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275330, 29.242727, 37.685337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391287, 0.476748, -0.787151,
		-0.777880, -0.628383, 0.006091,
		-0.491728, 0.614692, 0.616731,
		40.127811, 29.427135, 37.870358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808804, 29.098682, 37.244301>,  <40.472019, 28.996851, 37.438644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808804, 29.098682, 37.244301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892620, 29.437765, 37.439232>,  <39.942909, 29.641214, 37.556190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892620, 29.437765, 37.439232>,  <39.808804, 29.098682, 37.244301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892620, 29.437765, 37.439232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215873, 0.526197, -0.822506,
		-0.953673, 0.067149, 0.293258,
		0.209541, 0.847707, 0.487324,
		39.955482, 29.692078, 37.585430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245090, 29.623577, 37.282890>,  <39.808804, 29.098682, 37.244301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245090, 29.623577, 37.282890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580589, 29.839016, 37.314919>,  <39.781891, 29.968279, 37.334137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580589, 29.839016, 37.314919>,  <39.245090, 29.623577, 37.282890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580589, 29.839016, 37.314919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340465, 0.633495, -0.694815,
		-0.424949, 0.555516, 0.714717,
		0.838750, 0.538597, 0.080069,
		39.832214, 30.000595, 37.338940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025742, 30.375347, 37.197350>,  <39.245090, 29.623577, 37.282890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025742, 30.375347, 37.197350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416000, 30.339481, 37.117283>,  <39.650158, 30.317961, 37.069244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416000, 30.339481, 37.117283>,  <39.025742, 30.375347, 37.197350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416000, 30.339481, 37.117283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091595, 0.662655, -0.743303,
		0.199289, 0.743538, 0.638306,
		0.975651, -0.089666, -0.200165,
		39.708694, 30.312582, 37.057232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513729, 30.906109, 37.561157>,  <39.025742, 30.375347, 37.197350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513729, 30.906109, 37.561157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198856, 30.840837, 37.323257>,  <38.009933, 30.801674, 37.180519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198856, 30.840837, 37.323257>,  <38.513729, 30.906109, 37.561157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198856, 30.840837, 37.323257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411017, -0.857786, -0.308654,
		-0.459799, -0.487417, 0.742300,
		-0.787178, -0.163179, -0.594746,
		37.962704, 30.791883, 37.144833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109219, 30.316154, 37.610279>,  <38.513729, 30.906109, 37.561157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109219, 30.316154, 37.610279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076054, 30.391418, 37.218826>,  <38.056152, 30.436577, 36.983955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076054, 30.391418, 37.218826>,  <38.109219, 30.316154, 37.610279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076054, 30.391418, 37.218826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438431, -0.874985, -0.205379,
		-0.894932, -0.446092, -0.009945,
		-0.082916, 0.188161, -0.978632,
		38.051178, 30.447866, 36.925236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691681, 29.861208, 37.054314>,  <38.109219, 30.316154, 37.610279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691681, 29.861208, 37.054314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032215, 30.031265, 36.931362>,  <38.236534, 30.133299, 36.857590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032215, 30.031265, 36.931362>,  <37.691681, 29.861208, 37.054314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032215, 30.031265, 36.931362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448114, -0.893964, 0.004662,
		-0.272802, -0.141709, -0.951576,
		0.851336, 0.425143, -0.307377,
		38.287617, 30.158808, 36.839149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993343, 29.495663, 36.528137>,  <37.691681, 29.861208, 37.054314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993343, 29.495663, 36.528137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281670, 29.632030, 36.769535>,  <38.454666, 29.713850, 36.914371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.281670, 29.632030, 36.769535>,  <37.993343, 29.495663, 36.528137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281670, 29.632030, 36.769535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514944, -0.846200, -0.137028,
		0.463959, 0.409536, -0.785508,
		0.720815, 0.340917, 0.603490,
		38.497913, 29.734306, 36.950581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654011, 29.662033, 36.219738>,  <37.993343, 29.495663, 36.528137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654011, 29.662033, 36.219738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675442, 29.521635, 36.593674>,  <38.688301, 29.437397, 36.818035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675442, 29.521635, 36.593674>,  <38.654011, 29.662033, 36.219738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675442, 29.521635, 36.593674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362477, -0.865494, -0.345733,
		0.930451, 0.357384, 0.080853,
		0.053581, -0.350995, 0.934843,
		38.691517, 29.416336, 36.874126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160217, 29.213175, 36.064678>,  <38.654011, 29.662033, 36.219738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160217, 29.213175, 36.064678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399006, 29.512888, 36.179359>,  <39.542278, 29.692717, 36.248169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399006, 29.512888, 36.179359>,  <39.160217, 29.213175, 36.064678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399006, 29.512888, 36.179359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283040, 0.137685, -0.949174,
		-0.750676, 0.647777, -0.129883,
		0.596971, 0.749284, 0.286703,
		39.578098, 29.737673, 36.265369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188847, 29.775650, 35.533985>,  <39.160217, 29.213175, 36.064678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188847, 29.775650, 35.533985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539249, 29.738396, 35.723270>,  <39.749493, 29.716043, 35.836842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539249, 29.738396, 35.723270>,  <39.188847, 29.775650, 35.533985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539249, 29.738396, 35.723270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474849, -0.005205, -0.880052,
		0.084428, 0.995640, 0.039666,
		0.876008, -0.093136, 0.473218,
		39.802052, 29.710455, 35.865234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512306, 30.327354, 35.231026>,  <39.188847, 29.775650, 35.533985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512306, 30.327354, 35.231026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749752, 30.043898, 35.383575>,  <39.892220, 29.873823, 35.475105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749752, 30.043898, 35.383575>,  <39.512306, 30.327354, 35.231026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749752, 30.043898, 35.383575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527685, -0.015049, -0.849307,
		0.607592, 0.705410, 0.365006,
		0.593616, -0.708640, 0.381377,
		39.927837, 29.831306, 35.497990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165550, 30.572638, 35.230732>,  <39.512306, 30.327354, 35.231026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165550, 30.572638, 35.230732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147327, 30.177588, 35.170704>,  <40.136395, 29.940557, 35.134689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147327, 30.177588, 35.170704>,  <40.165550, 30.572638, 35.230732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147327, 30.177588, 35.170704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447627, 0.114116, -0.886909,
		0.893059, -0.107580, 0.436889,
		-0.045557, -0.987625, -0.150068,
		40.133659, 29.881300, 35.125683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826420, 30.251448, 34.985291>,  <40.165550, 30.572638, 35.230732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826420, 30.251448, 34.985291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523376, 30.043461, 34.827477>,  <40.341549, 29.918669, 34.732788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523376, 30.043461, 34.827477>,  <40.826420, 30.251448, 34.985291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523376, 30.043461, 34.827477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414785, 0.083179, -0.906110,
		0.503963, -0.850128, 0.152656,
		-0.757611, -0.519966, -0.394540,
		40.296093, 29.887472, 34.709114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019459, 29.690624, 34.511364>,  <40.826420, 30.251448, 34.985291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019459, 29.690624, 34.511364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651703, 29.774487, 34.378235>,  <40.431049, 29.824804, 34.298359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651703, 29.774487, 34.378235>,  <41.019459, 29.690624, 34.511364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651703, 29.774487, 34.378235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343721, 0.016775, -0.938922,
		-0.191268, -0.977631, -0.087486,
		-0.919387, 0.209656, -0.332824,
		40.375885, 29.837383, 34.278389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869881, 29.179285, 33.958286>,  <41.019459, 29.690624, 34.511364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869881, 29.179285, 33.958286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728981, 29.553621, 33.953800>,  <40.644444, 29.778223, 33.951107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728981, 29.553621, 33.953800>,  <40.869881, 29.179285, 33.958286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728981, 29.553621, 33.953800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506624, 0.180588, -0.843042,
		-0.786927, -0.302640, -0.537731,
		-0.352246, 0.935840, -0.011215,
		40.623306, 29.834373, 33.950436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681278, 29.670177, 33.478741>,  <40.869881, 29.179285, 33.958286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681278, 29.670177, 33.478741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656746, 29.483614, 33.125763>,  <40.642025, 29.371675, 32.913979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656746, 29.483614, 33.125763>,  <40.681278, 29.670177, 33.478741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656746, 29.483614, 33.125763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907136, 0.342741, -0.244199,
		0.416345, -0.815470, 0.402076,
		-0.061330, -0.466409, -0.882441,
		40.638348, 29.343691, 32.861031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300995, 29.127815, 33.394638>,  <40.681278, 29.670177, 33.478741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300995, 29.127815, 33.394638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152851, 29.352554, 33.098755>,  <41.063965, 29.487398, 32.921227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152851, 29.352554, 33.098755>,  <41.300995, 29.127815, 33.394638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152851, 29.352554, 33.098755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902235, 0.406981, -0.142612,
		0.220919, -0.720204, -0.657648,
		-0.370360, 0.561847, -0.739704,
		41.041744, 29.521109, 32.876842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627895, 28.935341, 32.722221>,  <41.300995, 29.127815, 33.394638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627895, 28.935341, 32.722221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506119, 29.313318, 32.770214>,  <41.433052, 29.540104, 32.799011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506119, 29.313318, 32.770214>,  <41.627895, 28.935341, 32.722221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506119, 29.313318, 32.770214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931703, 0.321610, -0.168808,
		-0.198101, 0.060397, -0.978319,
		-0.304441, 0.944944, 0.119984,
		41.414787, 29.596802, 32.806210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982113, 29.474936, 32.202682>,  <41.627895, 28.935341, 32.722221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982113, 29.474936, 32.202682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881702, 29.633348, 32.555984>,  <41.821457, 29.728397, 32.767967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881702, 29.633348, 32.555984>,  <41.982113, 29.474936, 32.202682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881702, 29.633348, 32.555984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958421, 0.229613, 0.169432,
		-0.135706, 0.889064, -0.437206,
		-0.251025, 0.396035, 0.883257,
		41.806396, 29.752159, 32.820961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245075, 30.263548, 32.178429>,  <41.982113, 29.474936, 32.202682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245075, 30.263548, 32.178429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235504, 30.066021, 32.526123>,  <42.229763, 29.947506, 32.734741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235504, 30.066021, 32.526123>,  <42.245075, 30.263548, 32.178429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235504, 30.066021, 32.526123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970846, 0.195963, 0.138048,
		-0.238509, 0.847198, 0.474730,
		-0.023924, -0.493815, 0.869238,
		42.228329, 29.917877, 32.786896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350418, 30.771217, 32.695557>,  <42.245075, 30.263548, 32.178429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350418, 30.771217, 32.695557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481487, 30.410030, 32.806751>,  <42.560127, 30.193317, 32.873466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481487, 30.410030, 32.806751>,  <42.350418, 30.771217, 32.695557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481487, 30.410030, 32.806751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940770, 0.338951, -0.007924,
		-0.087068, 0.264118, 0.960552,
		0.327673, -0.902969, 0.277987,
		42.579788, 30.139139, 32.890148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853939, 30.890894, 33.119518>,  <42.350418, 30.771217, 32.695557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853939, 30.890894, 33.119518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921349, 30.514502, 33.002113>,  <42.961796, 30.288666, 32.931671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921349, 30.514502, 33.002113>,  <42.853939, 30.890894, 33.119518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921349, 30.514502, 33.002113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958726, 0.225659, -0.172979,
		0.229004, -0.252247, 0.940175,
		0.168526, -0.940983, -0.293513,
		42.971905, 30.232206, 32.914059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333427, 30.507519, 33.463402>,  <42.853939, 30.890894, 33.119518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333427, 30.507519, 33.463402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338696, 30.312899, 33.113979>,  <43.341858, 30.196127, 32.904327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.338696, 30.312899, 33.113979>,  <43.333427, 30.507519, 33.463402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338696, 30.312899, 33.113979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989621, 0.131366, -0.058246,
		0.143095, -0.863720, 0.483230,
		0.013172, -0.486549, -0.873554,
		43.342648, 30.166933, 32.851913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806713, 29.977428, 33.527088>,  <43.333427, 30.507519, 33.463402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806713, 29.977428, 33.527088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754795, 30.138266, 33.164547>,  <43.723644, 30.234768, 32.947021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754795, 30.138266, 33.164547>,  <43.806713, 29.977428, 33.527088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754795, 30.138266, 33.164547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951495, 0.307665, 0.000236,
		0.278948, -0.862360, -0.422520,
		-0.129791, 0.402092, -0.906353,
		43.715858, 30.258894, 32.892639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398273, 29.952909, 34.115341>,  <43.806713, 29.977428, 33.527088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398273, 29.952909, 34.115341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254993, 29.953688, 34.488800>,  <43.169025, 29.954155, 34.712875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254993, 29.953688, 34.488800>,  <43.398273, 29.952909, 34.115341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254993, 29.953688, 34.488800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774673, 0.558784, 0.296046,
		-0.521128, 0.829311, -0.201665,
		-0.358201, 0.001947, 0.933642,
		43.147533, 29.954271, 34.768894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369572, 30.666965, 34.436604>,  <43.398273, 29.952909, 34.115341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369572, 30.666965, 34.436604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447723, 30.376368, 34.700127>,  <43.494614, 30.202009, 34.858242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447723, 30.376368, 34.700127>,  <43.369572, 30.666965, 34.436604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447723, 30.376368, 34.700127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833953, 0.476570, 0.278215,
		-0.516092, 0.495062, 0.698973,
		0.195376, -0.726495, 0.658812,
		43.506336, 30.158419, 34.897770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225269, 30.849062, 35.138748>,  <43.369572, 30.666965, 34.436604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225269, 30.849062, 35.138748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515030, 30.580784, 35.074986>,  <43.688889, 30.419817, 35.036728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515030, 30.580784, 35.074986>,  <43.225269, 30.849062, 35.138748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515030, 30.580784, 35.074986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662921, 0.614281, 0.428012,
		-0.189145, -0.415727, 0.889604,
		0.724403, -0.670694, -0.159406,
		43.732349, 30.379576, 35.027164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626568, 30.792688, 35.695801>,  <43.225269, 30.849062, 35.138748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626568, 30.792688, 35.695801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849216, 30.706942, 35.374748>,  <43.982807, 30.655495, 35.182117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849216, 30.706942, 35.374748>,  <43.626568, 30.792688, 35.695801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849216, 30.706942, 35.374748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635078, 0.732648, 0.244751,
		0.535581, -0.645968, 0.543947,
		0.556623, -0.214365, -0.802632,
		44.016205, 30.642632, 35.133957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321819, 31.434647, 35.833645>,  <43.626568, 30.792688, 35.695801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321819, 31.434647, 35.833645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254955, 31.197392, 36.148666>,  <43.214836, 31.055038, 36.337681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254955, 31.197392, 36.148666>,  <43.321819, 31.434647, 35.833645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254955, 31.197392, 36.148666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312727, 0.725651, 0.612889,
		-0.935019, 0.348741, 0.064189,
		-0.167160, -0.593136, 0.787558,
		43.204807, 31.019451, 36.384933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766190, 31.738928, 36.276745>,  <43.321819, 31.434647, 35.833645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766190, 31.738928, 36.276745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088970, 31.553267, 36.422832>,  <43.282639, 31.441870, 36.510487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088970, 31.553267, 36.422832>,  <42.766190, 31.738928, 36.276745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088970, 31.553267, 36.422832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268630, 0.839153, 0.472927,
		-0.525986, -0.283521, 0.801844,
		0.806955, -0.464152, 0.365220,
		43.331059, 31.414021, 36.532398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707325, 31.779747, 37.046986>,  <42.766190, 31.738928, 36.276745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707325, 31.779747, 37.046986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069252, 31.737659, 36.881943>,  <43.286407, 31.712408, 36.782917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069252, 31.737659, 36.881943>,  <42.707325, 31.779747, 37.046986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069252, 31.737659, 36.881943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239085, 0.927363, 0.287814,
		0.352350, -0.359066, 0.864246,
		0.904814, -0.105217, -0.412603,
		43.340694, 31.706095, 36.758163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158215, 31.877293, 37.616844>,  <42.707325, 31.779747, 37.046986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158215, 31.877293, 37.616844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356617, 31.969149, 37.281883>,  <43.475658, 32.024261, 37.080906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356617, 31.969149, 37.281883>,  <43.158215, 31.877293, 37.616844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356617, 31.969149, 37.281883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219725, 0.899813, 0.376906,
		0.840056, -0.370948, 0.395860,
		0.496012, 0.229642, -0.837399,
		43.505421, 32.038040, 37.030663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952259, 31.923038, 37.628109>,  <43.158215, 31.877293, 37.616844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952259, 31.923038, 37.628109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801552, 32.165852, 37.348236>,  <43.711128, 32.311539, 37.180313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801552, 32.165852, 37.348236>,  <43.952259, 31.923038, 37.628109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801552, 32.165852, 37.348236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433584, 0.783060, 0.445893,
		0.818564, -0.135370, -0.558236,
		-0.376771, 0.607035, -0.699680,
		43.688522, 32.347961, 37.138332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494530, 32.560677, 37.459816>,  <43.952259, 31.923038, 37.628109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494530, 32.560677, 37.459816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116970, 32.674759, 37.393238>,  <43.890434, 32.743210, 37.353291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.116970, 32.674759, 37.393238>,  <44.494530, 32.560677, 37.459816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116970, 32.674759, 37.393238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155641, 0.828787, 0.537484,
		0.291244, 0.481426, -0.826684,
		-0.943903, 0.285204, -0.166449,
		43.833797, 32.760319, 37.343304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519260, 33.284199, 37.334270>,  <44.494530, 32.560677, 37.459816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519260, 33.284199, 37.334270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141277, 33.215656, 37.445763>,  <43.914486, 33.174530, 37.512657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.141277, 33.215656, 37.445763>,  <44.519260, 33.284199, 37.334270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141277, 33.215656, 37.445763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004298, 0.845324, 0.534237,
		-0.327162, 0.506030, -0.798059,
		-0.944958, -0.171352, 0.278733,
		43.857788, 33.164249, 37.529381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133175, 33.375755, 36.732746>,  <44.519260, 33.284199, 37.334270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133175, 33.375755, 36.732746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174267, 33.749672, 36.868759>,  <44.198921, 33.974022, 36.950367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174267, 33.749672, 36.868759>,  <44.133175, 33.375755, 36.732746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174267, 33.749672, 36.868759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923331, 0.037545, -0.382166,
		-0.370010, 0.353218, -0.859261,
		0.102727, 0.934787, 0.340029,
		44.205086, 34.030109, 36.970768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245422, 33.916351, 36.198654>,  <44.133175, 33.375755, 36.732746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245422, 33.916351, 36.198654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411407, 34.007614, 36.550961>,  <44.510998, 34.062370, 36.762344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411407, 34.007614, 36.550961>,  <44.245422, 33.916351, 36.198654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411407, 34.007614, 36.550961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867328, 0.193251, -0.458689,
		-0.274861, 0.954253, -0.117693,
		0.414962, 0.228155, 0.880768,
		44.535896, 34.076061, 36.815189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633453, 34.569180, 36.292603>,  <44.245422, 33.916351, 36.198654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633453, 34.569180, 36.292603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807838, 34.292809, 36.523273>,  <44.912468, 34.126987, 36.661678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.807838, 34.292809, 36.523273>,  <44.633453, 34.569180, 36.292603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807838, 34.292809, 36.523273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899190, 0.307784, -0.311008,
		0.037391, 0.654131, 0.755456,
		0.435958, -0.690928, 0.576680,
		44.938625, 34.085529, 36.696278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002350, 34.921497, 36.785873>,  <44.633453, 34.569180, 36.292603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002350, 34.921497, 36.785873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154499, 34.583622, 36.635235>,  <45.245789, 34.380898, 36.544853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154499, 34.583622, 36.635235>,  <45.002350, 34.921497, 36.785873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154499, 34.583622, 36.635235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786668, 0.509614, -0.348493,
		0.486285, -0.163697, 0.858330,
		0.380370, -0.844687, -0.376593,
		45.268612, 34.330215, 36.522259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694927, 34.789539, 37.048985>,  <45.002350, 34.921497, 36.785873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694927, 34.789539, 37.048985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621101, 34.639683, 36.685539>,  <45.576805, 34.549770, 36.467472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621101, 34.639683, 36.685539>,  <45.694927, 34.789539, 37.048985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621101, 34.639683, 36.685539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769492, 0.520042, -0.370727,
		0.611407, -0.767594, 0.192304,
		-0.184561, -0.374642, -0.908615,
		45.565735, 34.527290, 36.412956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.234726, 34.425106, 36.518921>,  <45.694927, 34.789539, 37.048985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.234726, 34.425106, 36.518921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964081, 34.580341, 36.268612>,  <45.801693, 34.673485, 36.118427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.964081, 34.580341, 36.268612>,  <46.234726, 34.425106, 36.518921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.964081, 34.580341, 36.268612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733080, 0.275114, -0.622017,
		-0.069243, -0.879600, -0.470647,
		-0.676608, 0.388092, -0.625768,
		45.761097, 34.696770, 36.080883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305027, 33.956348, 36.005878>,  <46.234726, 34.425106, 36.518921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305027, 33.956348, 36.005878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186131, 34.320400, 35.890427>,  <46.114792, 34.538834, 35.821156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186131, 34.320400, 35.890427>,  <46.305027, 33.956348, 36.005878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186131, 34.320400, 35.890427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703757, 0.004542, -0.710426,
		-0.645270, -0.414293, -0.641862,
		-0.297240, 0.910132, -0.288631,
		46.096958, 34.593441, 35.803837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.210327, 33.955688, 35.373333>,  <46.305027, 33.956348, 36.005878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.210327, 33.955688, 35.373333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308781, 34.334167, 35.457359>,  <46.367851, 34.561256, 35.507774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308781, 34.334167, 35.457359>,  <46.210327, 33.955688, 35.373333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308781, 34.334167, 35.457359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846065, -0.104012, -0.522834,
		-0.472855, 0.306415, -0.826146,
		0.246134, 0.946198, 0.210065,
		46.382622, 34.618027, 35.520378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.514370, 34.264843, 34.783398>,  <46.210327, 33.955688, 35.373333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.514370, 34.264843, 34.783398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.654709, 34.439564, 35.114723>,  <46.738914, 34.544395, 35.313519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.654709, 34.439564, 35.114723>,  <46.514370, 34.264843, 34.783398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.654709, 34.439564, 35.114723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931519, -0.072320, -0.356429,
		-0.095787, 0.896644, -0.432267,
		0.350852, 0.436806, 0.828314,
		46.759964, 34.570606, 35.363216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.898724, 34.783966, 34.632320>,  <46.514370, 34.264843, 34.783398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.898724, 34.783966, 34.632320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039680, 34.722816, 35.001633>,  <47.124256, 34.686127, 35.223221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039680, 34.722816, 35.001633>,  <46.898724, 34.783966, 34.632320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039680, 34.722816, 35.001633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935278, 0.023010, -0.353164,
		0.032746, 0.987977, 0.151091,
		0.352394, -0.152877, 0.923280,
		47.145397, 34.676952, 35.278618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470142, 35.158463, 34.659225>,  <46.898724, 34.783966, 34.632320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470142, 35.158463, 34.659225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508354, 34.886204, 34.949768>,  <47.531281, 34.722847, 35.124092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.508354, 34.886204, 34.949768>,  <47.470142, 35.158463, 34.659225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.508354, 34.886204, 34.949768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962788, -0.122141, -0.241083,
		0.252810, 0.722355, 0.643654,
		0.095531, -0.680650, 0.726353,
		47.537014, 34.682007, 35.167675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.280251, 35.737682, 28.423187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890804, 35.828739, 28.429523>,  <38.657135, 35.883373, 28.433325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890804, 35.828739, 28.429523>,  <39.280251, 35.737682, 28.423187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890804, 35.828739, 28.429523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121336, -0.575242, 0.808934,
		0.193259, 0.785669, 0.587686,
		-0.973616, 0.227642, 0.015841,
		38.598721, 35.897030, 28.434277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155895, 35.869125, 29.179821>,  <39.280251, 35.737682, 28.423187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155895, 35.869125, 29.179821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805981, 35.795788, 29.000433>,  <38.596031, 35.751785, 28.892799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.805981, 35.795788, 29.000433>,  <39.155895, 35.869125, 29.179821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805981, 35.795788, 29.000433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255853, -0.611234, 0.748954,
		-0.411437, 0.769921, 0.487793,
		-0.874791, -0.183345, -0.448471,
		38.543545, 35.740784, 28.865892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750736, 35.904007, 29.798710>,  <39.155895, 35.869125, 29.179821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750736, 35.904007, 29.798710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.543514, 35.709827, 29.517012>,  <38.419182, 35.593319, 29.347994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.543514, 35.709827, 29.517012>,  <38.750736, 35.904007, 29.798710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543514, 35.709827, 29.517012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454592, -0.541170, 0.707447,
		-0.724547, 0.686638, 0.059671,
		-0.518052, -0.485452, -0.704243,
		38.388100, 35.564190, 29.305738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092522, 35.896015, 30.024015>,  <38.750736, 35.904007, 29.798710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092522, 35.896015, 30.024015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110115, 35.611916, 29.742987>,  <38.120670, 35.441456, 29.574369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.110115, 35.611916, 29.742987>,  <38.092522, 35.896015, 30.024015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110115, 35.611916, 29.742987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408061, -0.654684, 0.636298,
		-0.911895, 0.258708, -0.318619,
		0.043980, -0.710253, -0.702572,
		38.123310, 35.398838, 29.532215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501232, 35.592926, 30.212067>,  <38.092522, 35.896015, 30.024015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501232, 35.592926, 30.212067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679859, 35.343063, 29.955822>,  <37.787037, 35.193146, 29.802074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.679859, 35.343063, 29.955822>,  <37.501232, 35.592926, 30.212067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679859, 35.343063, 29.955822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389126, -0.780301, 0.489603,
		-0.805702, 0.030636, -0.591528,
		0.446570, -0.624653, -0.640611,
		37.813831, 35.155666, 29.763638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940208, 35.195301, 29.851107>,  <37.501232, 35.592926, 30.212067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940208, 35.195301, 29.851107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293831, 35.008980, 29.866478>,  <37.506004, 34.897186, 29.875702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.293831, 35.008980, 29.866478>,  <36.940208, 35.195301, 29.851107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293831, 35.008980, 29.866478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429159, -0.776436, 0.461487,
		-0.185122, -0.424472, -0.886314,
		0.884055, -0.465802, 0.038431,
		37.559048, 34.869240, 29.878008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826920, 34.431717, 29.608360>,  <36.940208, 35.195301, 29.851107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826920, 34.431717, 29.608360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160507, 34.447975, 29.828485>,  <37.360661, 34.457729, 29.960560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160507, 34.447975, 29.828485>,  <36.826920, 34.431717, 29.608360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160507, 34.447975, 29.828485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237932, -0.873324, 0.425081,
		0.497879, -0.485441, -0.718654,
		0.833970, 0.040648, 0.550311,
		37.410698, 34.460171, 29.993578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975441, 33.733284, 29.549440>,  <36.826920, 34.431717, 29.608360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975441, 33.733284, 29.549440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164265, 33.893982, 29.863321>,  <37.277557, 33.990402, 30.051651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.164265, 33.893982, 29.863321>,  <36.975441, 33.733284, 29.549440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164265, 33.893982, 29.863321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340924, -0.737674, 0.582758,
		0.812976, -0.542621, -0.211262,
		0.472059, 0.401745, 0.784704,
		37.305882, 34.014503, 30.098732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075359, 33.121994, 30.008327>,  <36.975441, 33.733284, 29.549440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075359, 33.121994, 30.008327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173969, 33.422920, 30.252705>,  <37.233135, 33.603474, 30.399330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173969, 33.422920, 30.252705>,  <37.075359, 33.121994, 30.008327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173969, 33.422920, 30.252705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404425, -0.493027, 0.770302,
		0.880720, -0.436978, 0.182711,
		0.246523, 0.752313, 0.610943,
		37.247925, 33.648613, 30.435987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489559, 32.851208, 30.493382>,  <37.075359, 33.121994, 30.008327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489559, 32.851208, 30.493382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352425, 33.181591, 30.672382>,  <37.270145, 33.379822, 30.779783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352425, 33.181591, 30.672382>,  <37.489559, 32.851208, 30.493382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352425, 33.181591, 30.672382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296787, -0.547209, 0.782611,
		0.891280, 0.135494, 0.432736,
		-0.342836, 0.825956, 0.447504,
		37.249573, 33.429379, 30.806633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818775, 32.949848, 31.113243>,  <37.489559, 32.851208, 30.493382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818775, 32.949848, 31.113243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459137, 33.124794, 31.120564>,  <37.243355, 33.229763, 31.124956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.459137, 33.124794, 31.120564>,  <37.818775, 32.949848, 31.113243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459137, 33.124794, 31.120564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218974, -0.485565, 0.846332,
		0.379041, 0.756928, 0.532342,
		-0.899099, 0.437363, 0.018301,
		37.189407, 33.256004, 31.126055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757118, 33.169899, 31.842632>,  <37.818775, 32.949848, 31.113243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757118, 33.169899, 31.842632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388817, 33.206734, 31.690989>,  <37.167835, 33.228836, 31.600002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.388817, 33.206734, 31.690989>,  <37.757118, 33.169899, 31.842632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388817, 33.206734, 31.690989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388402, -0.124901, 0.912986,
		0.036721, 0.987887, 0.150770,
		-0.920758, 0.092085, -0.379110,
		37.112591, 33.234360, 31.577255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483856, 33.801006, 32.159027>,  <37.757118, 33.169899, 31.842632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483856, 33.801006, 32.159027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186871, 33.561226, 32.039433>,  <37.008678, 33.417358, 31.967674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.186871, 33.561226, 32.039433>,  <37.483856, 33.801006, 32.159027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186871, 33.561226, 32.039433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282597, -0.124384, 0.951140,
		-0.607354, 0.790686, -0.077053,
		-0.742468, -0.599454, -0.298991,
		36.964130, 33.381390, 31.949736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837143, 33.957359, 32.540890>,  <37.483856, 33.801006, 32.159027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837143, 33.957359, 32.540890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775928, 33.583679, 32.411991>,  <36.739201, 33.359470, 32.334652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775928, 33.583679, 32.411991>,  <36.837143, 33.957359, 32.540890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775928, 33.583679, 32.411991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280570, -0.271592, 0.920608,
		-0.947554, 0.231302, -0.220545,
		-0.153041, -0.934204, -0.322244,
		36.730015, 33.303417, 32.315319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198238, 33.679951, 32.910789>,  <36.837143, 33.957359, 32.540890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198238, 33.679951, 32.910789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.429501, 33.375134, 32.794147>,  <36.568256, 33.192242, 32.724163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.429501, 33.375134, 32.794147>,  <36.198238, 33.679951, 32.910789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429501, 33.375134, 32.794147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052307, -0.391269, 0.918789,
		-0.814251, -0.515947, -0.266073,
		0.578152, -0.762042, -0.291604,
		36.602947, 33.146523, 32.706665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858383, 33.093639, 33.248825>,  <36.198238, 33.679951, 32.910789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858383, 33.093639, 33.248825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.240887, 33.020222, 33.157715>,  <36.470390, 32.976170, 33.103050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.240887, 33.020222, 33.157715>,  <35.858383, 33.093639, 33.248825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240887, 33.020222, 33.157715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165411, -0.302927, 0.938549,
		-0.241267, -0.935172, -0.259315,
		0.956258, -0.183547, -0.227774,
		36.527763, 32.965157, 33.089382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949276, 32.601562, 33.730099>,  <35.858383, 33.093639, 33.248825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949276, 32.601562, 33.730099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321331, 32.687778, 33.611176>,  <36.544563, 32.739510, 33.539822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321331, 32.687778, 33.611176>,  <35.949276, 32.601562, 33.730099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321331, 32.687778, 33.611176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320501, -0.081307, 0.943752,
		0.179246, -0.973103, -0.144709,
		0.930134, 0.215543, -0.297307,
		36.600372, 32.752441, 33.521984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274857, 32.291370, 34.217297>,  <35.949276, 32.601562, 33.730099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274857, 32.291370, 34.217297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.577766, 32.495903, 34.054775>,  <36.759510, 32.618622, 33.957260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.577766, 32.495903, 34.054775>,  <36.274857, 32.291370, 34.217297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577766, 32.495903, 34.054775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513761, -0.082295, 0.853978,
		0.403227, -0.855436, -0.325020,
		0.757271, 0.511329, -0.406306,
		36.804947, 32.649303, 33.932884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751850, 31.897619, 34.248058>,  <36.274857, 32.291370, 34.217297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751850, 31.897619, 34.248058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915882, 32.261578, 34.222996>,  <37.014301, 32.479954, 34.207958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.915882, 32.261578, 34.222996>,  <36.751850, 31.897619, 34.248058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915882, 32.261578, 34.222996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515057, -0.174340, 0.839239,
		0.752698, -0.376422, -0.540141,
		0.410076, 0.909897, -0.062654,
		37.038906, 32.534546, 34.204201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526928, 31.696453, 34.419559>,  <36.751850, 31.897619, 34.248058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526928, 31.696453, 34.419559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470692, 32.090389, 34.460201>,  <37.436951, 32.326752, 34.484589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.470692, 32.090389, 34.460201>,  <37.526928, 31.696453, 34.419559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470692, 32.090389, 34.460201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587483, 0.000377, 0.809236,
		0.796930, 0.173466, -0.578630,
		-0.140593, 0.984840, 0.101608,
		37.428513, 32.385841, 34.490685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169029, 32.102783, 34.708569>,  <37.526928, 31.696453, 34.419559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169029, 32.102783, 34.708569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871742, 32.344170, 34.824131>,  <37.693371, 32.489002, 34.893467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871742, 32.344170, 34.824131>,  <38.169029, 32.102783, 34.708569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871742, 32.344170, 34.824131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429750, 0.099630, 0.897434,
		0.512783, 0.791144, -0.333384,
		-0.743215, 0.603461, 0.288905,
		37.648777, 32.525208, 34.910801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535496, 32.780903, 35.049034>,  <38.169029, 32.102783, 34.708569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535496, 32.780903, 35.049034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173458, 32.688892, 35.192085>,  <37.956238, 32.633686, 35.277916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.173458, 32.688892, 35.192085>,  <38.535496, 32.780903, 35.049034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173458, 32.688892, 35.192085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360899, 0.029212, 0.932147,
		-0.224865, 0.972746, 0.056576,
		-0.905090, -0.230026, 0.357632,
		37.901932, 32.619884, 35.299374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141193, 32.901768, 35.341232>,  <38.535496, 32.780903, 35.049034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141193, 32.901768, 35.341232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.470322, 32.701199, 35.448219>,  <39.667797, 32.580856, 35.512413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.470322, 32.701199, 35.448219>,  <39.141193, 32.901768, 35.341232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470322, 32.701199, 35.448219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509447, 0.442235, -0.738168,
		0.251849, 0.743643, 0.619328,
		0.822822, -0.501421, 0.267470,
		39.717167, 32.550774, 35.528461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666916, 33.407684, 35.231911>,  <39.141193, 32.901768, 35.341232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666916, 33.407684, 35.231911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869419, 33.065472, 35.275307>,  <39.990921, 32.860146, 35.301346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.869419, 33.065472, 35.275307>,  <39.666916, 33.407684, 35.231911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869419, 33.065472, 35.275307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585516, 0.248629, -0.771593,
		0.633146, 0.454150, 0.626797,
		0.506258, -0.855530, 0.108494,
		40.021297, 32.808811, 35.307854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292480, 33.576038, 35.033600>,  <39.666916, 33.407684, 35.231911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292480, 33.576038, 35.033600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.355167, 33.180981, 35.032501>,  <40.392780, 32.943947, 35.031841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.355167, 33.180981, 35.032501>,  <40.292480, 33.576038, 35.033600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355167, 33.180981, 35.032501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743255, 0.119769, -0.658201,
		0.650394, 0.101112, 0.752838,
		0.156719, -0.987640, -0.002745,
		40.402184, 32.884689, 35.031677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024010, 33.524395, 35.211189>,  <40.292480, 33.576038, 35.033600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024010, 33.524395, 35.211189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.893734, 33.201511, 35.014275>,  <40.815567, 33.007782, 34.896126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.893734, 33.201511, 35.014275>,  <41.024010, 33.524395, 35.211189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893734, 33.201511, 35.014275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725852, 0.120172, -0.677272,
		0.605857, -0.577907, 0.546773,
		-0.325694, -0.807206, -0.492282,
		40.796024, 32.959351, 34.866589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642277, 33.206985, 34.960014>,  <41.024010, 33.524395, 35.211189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642277, 33.206985, 34.960014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.332527, 33.064106, 34.751110>,  <41.146679, 32.978378, 34.625767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.332527, 33.064106, 34.751110>,  <41.642277, 33.206985, 34.960014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332527, 33.064106, 34.751110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508708, 0.139352, -0.849586,
		0.376253, -0.923573, 0.073802,
		-0.774370, -0.357203, -0.522261,
		41.100216, 32.956944, 34.594433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829620, 32.672619, 34.554531>,  <41.642277, 33.206985, 34.960014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829620, 32.672619, 34.554531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.497849, 32.797443, 34.369205>,  <41.298786, 32.872337, 34.258011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.497849, 32.797443, 34.369205>,  <41.829620, 32.672619, 34.554531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497849, 32.797443, 34.369205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499454, 0.042823, -0.865282,
		-0.250181, -0.949096, -0.191379,
		-0.829431, 0.312062, -0.463316,
		41.249020, 32.891060, 34.230209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895016, 32.459206, 33.813766>,  <41.829620, 32.672619, 34.554531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895016, 32.459206, 33.813766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.607025, 32.736683, 33.805473>,  <41.434231, 32.903168, 33.800499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.607025, 32.736683, 33.805473>,  <41.895016, 32.459206, 33.813766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607025, 32.736683, 33.805473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271217, 0.253748, -0.928468,
		-0.638809, -0.674096, -0.370833,
		-0.719975, 0.693691, -0.020730,
		41.391033, 32.944790, 33.799255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511768, 32.320835, 33.183933>,  <41.895016, 32.459206, 33.813766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511768, 32.320835, 33.183933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.418770, 32.694324, 33.292824>,  <41.362972, 32.918419, 33.358158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.418770, 32.694324, 33.292824>,  <41.511768, 32.320835, 33.183933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418770, 32.694324, 33.292824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073399, 0.262254, -0.962203,
		-0.969825, -0.243685, 0.007562,
		-0.232492, 0.933724, 0.272227,
		41.349022, 32.974442, 33.374493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845764, 32.551014, 32.868065>,  <41.511768, 32.320835, 33.183933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845764, 32.551014, 32.868065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.042992, 32.889687, 32.948078>,  <41.161327, 33.092892, 32.996086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.042992, 32.889687, 32.948078>,  <40.845764, 32.551014, 32.868065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042992, 32.889687, 32.948078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245598, 0.356035, -0.901621,
		-0.834602, 0.395438, 0.383494,
		0.493073, 0.846680, 0.200029,
		41.190914, 33.143692, 33.008087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393333, 33.094696, 32.624565>,  <40.845764, 32.551014, 32.868065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393333, 33.094696, 32.624565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.759834, 33.254589, 32.635151>,  <40.979733, 33.350525, 32.641502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.759834, 33.254589, 32.635151>,  <40.393333, 33.094696, 32.624565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759834, 33.254589, 32.635151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131304, 0.362060, -0.922861,
		-0.378478, 0.842097, 0.384224,
		0.916250, 0.399732, 0.026461,
		41.034710, 33.374508, 32.643089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284950, 33.636440, 32.255451>,  <40.393333, 33.094696, 32.624565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284950, 33.636440, 32.255451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.684643, 33.631836, 32.270416>,  <40.924458, 33.629074, 32.279396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.684643, 33.631836, 32.270416>,  <40.284950, 33.636440, 32.255451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684643, 33.631836, 32.270416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038098, 0.505484, -0.861994,
		-0.008994, 0.862759, 0.505535,
		0.999234, -0.011507, 0.037416,
		40.984413, 33.628384, 32.281639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479610, 34.271091, 32.148354>,  <40.284950, 33.636440, 32.255451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479610, 34.271091, 32.148354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.793747, 34.044575, 32.048309>,  <40.982231, 33.908665, 31.988283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.793747, 34.044575, 32.048309>,  <40.479610, 34.271091, 32.148354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793747, 34.044575, 32.048309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117516, 0.533039, -0.837890,
		0.607803, 0.628640, 0.485167,
		0.785344, -0.566287, -0.250107,
		41.029350, 33.874687, 31.973278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093582, 34.742817, 32.130936>,  <40.479610, 34.271091, 32.148354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093582, 34.742817, 32.130936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.144260, 34.418644, 31.902147>,  <41.174667, 34.224140, 31.764875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.144260, 34.418644, 31.902147>,  <41.093582, 34.742817, 32.130936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.144260, 34.418644, 31.902147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151724, 0.585663, -0.796228,
		0.980269, 0.014098, 0.197163,
		0.126697, -0.810432, -0.571968,
		41.182270, 34.175514, 31.730556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450268, 35.035233, 31.580488>,  <41.093582, 34.742817, 32.130936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450268, 35.035233, 31.580488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.370762, 34.672714, 31.431293>,  <41.323059, 34.455204, 31.341776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.370762, 34.672714, 31.431293>,  <41.450268, 35.035233, 31.580488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370762, 34.672714, 31.431293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100419, 0.359744, -0.927632,
		0.974888, -0.221839, 0.019504,
		-0.198768, -0.906296, -0.372987,
		41.311131, 34.400826, 31.319397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050133, 34.763245, 31.212950>,  <41.450268, 35.035233, 31.580488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050133, 34.763245, 31.212950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.730038, 34.578083, 31.060455>,  <41.537979, 34.466988, 30.968960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.730038, 34.578083, 31.060455>,  <42.050133, 34.763245, 31.212950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730038, 34.578083, 31.060455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256463, 0.310484, -0.915329,
		0.542076, -0.830253, -0.129743,
		-0.800238, -0.462903, -0.381235,
		41.489967, 34.439213, 30.946085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285404, 34.397472, 30.634144>,  <42.050133, 34.763245, 31.212950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285404, 34.397472, 30.634144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.893131, 34.421120, 30.559563>,  <41.657768, 34.435307, 30.514814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.893131, 34.421120, 30.559563>,  <42.285404, 34.397472, 30.634144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893131, 34.421120, 30.559563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195226, 0.236765, -0.951751,
		-0.012116, -0.969767, -0.243732,
		-0.980683, 0.059115, -0.186455,
		41.598927, 34.438854, 30.503626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165184, 34.059975, 30.039696>,  <42.285404, 34.397472, 30.634144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165184, 34.059975, 30.039696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.839363, 34.291237, 30.058615>,  <41.643871, 34.429993, 30.069965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.839363, 34.291237, 30.058615>,  <42.165184, 34.059975, 30.039696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839363, 34.291237, 30.058615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186581, 0.338322, -0.922348,
		-0.549262, -0.742478, -0.383455,
		-0.814554, 0.578156, 0.047296,
		41.594997, 34.464684, 30.072803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922108, 34.038052, 29.279135>,  <42.165184, 34.059975, 30.039696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.922108, 34.038052, 29.279135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.677525, 34.311317, 29.438833>,  <41.530773, 34.475277, 29.534653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.677525, 34.311317, 29.438833>,  <41.922108, 34.038052, 29.279135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677525, 34.311317, 29.438833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001450, 0.505529, -0.862808,
		-0.791274, -0.526994, -0.310102,
		-0.611461, 0.683167, 0.399248,
		41.494087, 34.516266, 29.558607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.501221, 34.088326, 29.080034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.734352, 34.393425, 29.192123>,  <40.874233, 34.576485, 29.259377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.734352, 34.393425, 29.192123>,  <40.501221, 34.088326, 29.080034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734352, 34.393425, 29.192123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372167, 0.557116, -0.742371,
		-0.722357, 0.328388, 0.608574,
		0.582832, 0.762747, 0.280221,
		40.909203, 34.622250, 29.276190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039589, 34.616871, 28.900396>,  <40.501221, 34.088326, 29.080034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039589, 34.616871, 28.900396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392094, 34.797466, 28.956305>,  <40.603596, 34.905823, 28.989849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.392094, 34.797466, 28.956305>,  <40.039589, 34.616871, 28.900396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392094, 34.797466, 28.956305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189308, 0.608164, -0.770908,
		-0.433062, 0.652911, 0.621422,
		0.881261, 0.451491, 0.139771,
		40.656471, 34.932915, 28.998236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926556, 35.292969, 28.826696>,  <40.039589, 34.616871, 28.900396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926556, 35.292969, 28.826696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324394, 35.288261, 28.785437>,  <40.563099, 35.285435, 28.760681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.324394, 35.288261, 28.785437>,  <39.926556, 35.292969, 28.826696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324394, 35.288261, 28.785437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067730, 0.679426, -0.730611,
		0.078681, 0.733649, 0.674958,
		0.994596, -0.011770, -0.103148,
		40.622772, 35.284729, 28.754492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105495, 35.959328, 28.812578>,  <39.926556, 35.292969, 28.826696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105495, 35.959328, 28.812578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.415287, 35.766548, 28.648674>,  <40.601162, 35.650879, 28.550331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.415287, 35.766548, 28.648674>,  <40.105495, 35.959328, 28.812578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415287, 35.766548, 28.648674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082309, 0.565469, -0.820653,
		0.627219, 0.669307, 0.398276,
		0.774481, -0.481947, -0.409763,
		40.647633, 35.621964, 28.525745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572094, 36.483505, 28.481056>,  <40.105495, 35.959328, 28.812578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572094, 36.483505, 28.481056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.641415, 36.135159, 28.297075>,  <40.683006, 35.926151, 28.186687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.641415, 36.135159, 28.297075>,  <40.572094, 36.483505, 28.481056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641415, 36.135159, 28.297075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040301, 0.472896, -0.880197,
		0.984045, 0.134000, 0.117049,
		0.173298, -0.870870, -0.459950,
		40.693405, 35.873898, 28.159090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120296, 36.596210, 28.078867>,  <40.572094, 36.483505, 28.481056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120296, 36.596210, 28.078867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943634, 36.277592, 27.913717>,  <40.837639, 36.086422, 27.814629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.943634, 36.277592, 27.913717>,  <41.120296, 36.596210, 28.078867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943634, 36.277592, 27.913717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044766, 0.440047, -0.896858,
		0.896069, -0.414582, -0.158689,
		-0.441652, -0.796543, -0.412872,
		40.811138, 36.038628, 27.789856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599438, 36.445667, 27.588778>,  <41.120296, 36.596210, 28.078867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599438, 36.445667, 27.588778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.256264, 36.272396, 27.478281>,  <41.050358, 36.168434, 27.411983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.256264, 36.272396, 27.478281>,  <41.599438, 36.445667, 27.588778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256264, 36.272396, 27.478281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090891, 0.401232, -0.911456,
		0.505656, -0.807077, -0.304859,
		-0.857934, -0.433175, -0.276241,
		40.998882, 36.142445, 27.395409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775017, 36.181278, 26.978701>,  <41.599438, 36.445667, 27.588778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775017, 36.181278, 26.978701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.375320, 36.193752, 26.988010>,  <41.135502, 36.201237, 26.993595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.375320, 36.193752, 26.988010>,  <41.775017, 36.181278, 26.978701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375320, 36.193752, 26.988010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007493, 0.432677, -0.901518,
		-0.038184, -0.901010, -0.432116,
		-0.999243, 0.031186, 0.023273,
		41.075546, 36.203110, 26.994993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510670, 35.873501, 26.371237>,  <41.775017, 36.181278, 26.978701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510670, 35.873501, 26.371237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.217472, 36.119530, 26.487442>,  <41.041553, 36.267147, 26.557165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.217472, 36.119530, 26.487442>,  <41.510670, 35.873501, 26.371237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217472, 36.119530, 26.487442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105991, 0.318592, -0.941948,
		-0.671923, -0.721237, -0.168335,
		-0.732997, 0.615075, 0.290514,
		40.997574, 36.304050, 26.574596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959377, 35.784782, 25.835716>,  <41.510670, 35.873501, 26.371237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959377, 35.784782, 25.835716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841045, 36.111961, 26.033075>,  <40.770046, 36.308270, 26.151491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841045, 36.111961, 26.033075>,  <40.959377, 35.784782, 25.835716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841045, 36.111961, 26.033075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210275, 0.448086, -0.868909,
		-0.931809, -0.360799, 0.039437,
		-0.295830, 0.817950, 0.493398,
		40.752296, 36.357346, 26.181095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250698, 35.912712, 25.605120>,  <40.959377, 35.784782, 25.835716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250698, 35.912712, 25.605120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439358, 36.247185, 25.717083>,  <40.552555, 36.447868, 25.784262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439358, 36.247185, 25.717083>,  <40.250698, 35.912712, 25.605120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439358, 36.247185, 25.717083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207452, 0.413749, -0.886440,
		-0.857035, 0.360022, 0.368612,
		0.471650, 0.836180, 0.279910,
		40.580853, 36.498039, 25.801056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968033, 36.413769, 25.080692>,  <40.250698, 35.912712, 25.605120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968033, 36.413769, 25.080692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.268581, 36.605213, 25.262402>,  <40.448914, 36.720081, 25.371428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.268581, 36.605213, 25.262402>,  <39.968033, 36.413769, 25.080692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268581, 36.605213, 25.262402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046055, 0.648706, -0.759644,
		-0.658265, 0.591700, 0.465380,
		0.751376, 0.478614, 0.454271,
		40.493996, 36.748798, 25.398684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867420, 37.145569, 25.109251>,  <39.968033, 36.413769, 25.080692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867420, 37.145569, 25.109251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.262436, 37.099125, 25.151728>,  <40.499447, 37.071259, 25.177214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.262436, 37.099125, 25.151728>,  <39.867420, 37.145569, 25.109251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262436, 37.099125, 25.151728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156770, 0.783898, -0.600772,
		-0.013484, 0.609936, 0.792336,
		0.987543, -0.116113, 0.106190,
		40.558701, 37.064289, 25.183584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144516, 37.732906, 24.937445>,  <39.867420, 37.145569, 25.109251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144516, 37.732906, 24.937445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490135, 37.531822, 24.926823>,  <40.697506, 37.411171, 24.920450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.490135, 37.531822, 24.926823>,  <40.144516, 37.732906, 24.937445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490135, 37.531822, 24.926823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418807, 0.747108, -0.516169,
		0.279319, 0.434875, 0.856075,
		0.864049, -0.502706, -0.026553,
		40.749352, 37.381012, 24.918858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676098, 38.188786, 25.228701>,  <40.144516, 37.732906, 24.937445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676098, 38.188786, 25.228701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841309, 37.925976, 24.976437>,  <40.940434, 37.768291, 24.825079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.841309, 37.925976, 24.976437>,  <40.676098, 38.188786, 25.228701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841309, 37.925976, 24.976437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286081, 0.751030, -0.595074,
		0.864622, 0.065360, 0.498154,
		0.413023, -0.657026, -0.630658,
		40.965214, 37.728867, 24.787239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451492, 38.355358, 25.198921>,  <40.676098, 38.188786, 25.228701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451492, 38.355358, 25.198921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.369232, 38.135368, 24.875135>,  <41.319874, 38.003372, 24.680864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.369232, 38.135368, 24.875135>,  <41.451492, 38.355358, 25.198921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369232, 38.135368, 24.875135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349620, 0.731268, -0.585673,
		0.914041, -0.403452, 0.041894,
		-0.205655, -0.549976, -0.809464,
		41.307537, 37.970375, 24.632296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006153, 38.381065, 24.747736>,  <41.451492, 38.355358, 25.198921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006153, 38.381065, 24.747736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.709499, 38.270477, 24.503265>,  <41.531506, 38.204124, 24.356583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.709499, 38.270477, 24.503265>,  <42.006153, 38.381065, 24.747736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709499, 38.270477, 24.503265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272926, 0.707925, -0.651424,
		0.612765, -0.649927, -0.449570,
		-0.741640, -0.276471, -0.611174,
		41.487007, 38.187534, 24.319912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318295, 38.330318, 24.068525>,  <42.006153, 38.381065, 24.747736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318295, 38.330318, 24.068525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.930283, 38.375008, 23.982210>,  <41.697475, 38.401821, 23.930422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.930283, 38.375008, 23.982210>,  <42.318295, 38.330318, 24.068525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930283, 38.375008, 23.982210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233888, 0.670065, -0.704492,
		0.065885, -0.733847, -0.676112,
		-0.970029, 0.111719, -0.215786,
		41.639275, 38.408524, 23.917475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264389, 38.310070, 23.217079>,  <42.318295, 38.330318, 24.068525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264389, 38.310070, 23.217079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944019, 38.497086, 23.366709>,  <41.751797, 38.609295, 23.456488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944019, 38.497086, 23.366709>,  <42.264389, 38.310070, 23.217079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944019, 38.497086, 23.366709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036582, 0.661783, -0.748802,
		-0.597650, -0.586048, -0.547140,
		-0.800922, 0.467537, 0.374075,
		41.703743, 38.637348, 23.478931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929394, 38.373856, 22.615921>,  <42.264389, 38.310070, 23.217079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929394, 38.373856, 22.615921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.778587, 38.628262, 22.885244>,  <41.688103, 38.780907, 23.046839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.778587, 38.628262, 22.885244>,  <41.929394, 38.373856, 22.615921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778587, 38.628262, 22.885244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000978, 0.726680, -0.686975,
		-0.926208, -0.259656, -0.273345,
		-0.377012, 0.636015, 0.673311,
		41.665485, 38.819065, 23.087238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570911, 38.757847, 22.261745>,  <41.929394, 38.373856, 22.615921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570911, 38.757847, 22.261745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.565250, 38.970444, 22.600523>,  <41.561855, 39.098000, 22.803789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.565250, 38.970444, 22.600523>,  <41.570911, 38.757847, 22.261745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565250, 38.970444, 22.600523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091385, 0.842798, -0.530415,
		-0.995715, -0.084905, 0.036643,
		-0.014152, 0.531491, 0.846946,
		41.561005, 39.129890, 22.854607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992039, 39.067177, 22.288177>,  <41.570911, 38.757847, 22.261745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992039, 39.067177, 22.288177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.211071, 39.294373, 22.533957>,  <41.342491, 39.430691, 22.681423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.211071, 39.294373, 22.533957>,  <40.992039, 39.067177, 22.288177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211071, 39.294373, 22.533957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063694, 0.760486, -0.646223,
		-0.834324, 0.314724, 0.452606,
		0.547582, 0.567988, 0.614445,
		41.375347, 39.464767, 22.718290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622383, 39.690540, 22.576534>,  <40.992039, 39.067177, 22.288177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622383, 39.690540, 22.576534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.017612, 39.734299, 22.533176>,  <41.254749, 39.760551, 22.507162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.017612, 39.734299, 22.533176>,  <40.622383, 39.690540, 22.576534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017612, 39.734299, 22.533176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152888, 0.781211, -0.605256,
		0.018466, 0.614608, 0.788617,
		0.988071, 0.109393, -0.108392,
		41.314034, 39.767117, 22.500658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761055, 40.515213, 22.576696>,  <40.622383, 39.690540, 22.576534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761055, 40.515213, 22.576696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.089283, 40.346416, 22.422510>,  <41.286221, 40.245140, 22.329998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.089283, 40.346416, 22.422510>,  <40.761055, 40.515213, 22.576696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089283, 40.346416, 22.422510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072893, 0.746193, -0.661727,
		0.566877, 0.514896, 0.643065,
		0.820571, -0.421992, -0.385468,
		41.335453, 40.219818, 22.306870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090626, 40.707138, 22.612862>,  <40.761055, 40.515213, 22.576696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090626, 40.707138, 22.612862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.785900, 40.958294, 22.676592>,  <39.603065, 41.108990, 22.714830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.785900, 40.958294, 22.676592>,  <40.090626, 40.707138, 22.612862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785900, 40.958294, 22.676592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183190, -0.444731, 0.876730,
		0.621349, 0.638723, 0.453827,
		-0.761819, 0.627892, 0.159326,
		39.557354, 41.146660, 22.724390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014645, 40.872440, 23.383543>,  <40.090626, 40.707138, 22.612862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014645, 40.872440, 23.383543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655678, 40.922310, 23.214258>,  <39.440300, 40.952232, 23.112688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655678, 40.922310, 23.214258>,  <40.014645, 40.872440, 23.383543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655678, 40.922310, 23.214258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441044, -0.278367, 0.853225,
		-0.011434, 0.952349, 0.304796,
		-0.897413, 0.124673, -0.423210,
		39.386456, 40.959713, 23.087296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530834, 41.388184, 23.770964>,  <40.014645, 40.872440, 23.383543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530834, 41.388184, 23.770964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275059, 41.169674, 23.554556>,  <39.121593, 41.038567, 23.424711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275059, 41.169674, 23.554556>,  <39.530834, 41.388184, 23.770964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275059, 41.169674, 23.554556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465456, -0.285024, 0.837921,
		-0.611938, 0.787620, -0.072012,
		-0.639439, -0.546274, -0.541020,
		39.083225, 41.005791, 23.392250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953754, 41.439850, 24.057917>,  <39.530834, 41.388184, 23.770964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953754, 41.439850, 24.057917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896912, 41.105419, 23.845963>,  <38.862804, 40.904758, 23.718790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.896912, 41.105419, 23.845963>,  <38.953754, 41.439850, 24.057917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896912, 41.105419, 23.845963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281810, -0.478990, 0.831355,
		-0.948887, 0.267472, -0.167546,
		-0.142112, -0.836079, -0.529884,
		38.854279, 40.854595, 23.686996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347912, 41.231045, 24.280210>,  <38.953754, 41.439850, 24.057917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347912, 41.231045, 24.280210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.518120, 40.911671, 24.109833>,  <38.620247, 40.720047, 24.007607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.518120, 40.911671, 24.109833>,  <38.347912, 41.231045, 24.280210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518120, 40.911671, 24.109833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309478, -0.570700, 0.760608,
		-0.850384, -0.191836, -0.489945,
		0.425524, -0.798436, -0.425945,
		38.645779, 40.672138, 23.982050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812523, 40.646702, 24.192432>,  <38.347912, 41.231045, 24.280210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812523, 40.646702, 24.192432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174347, 40.476288, 24.199041>,  <38.391441, 40.374039, 24.203007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174347, 40.476288, 24.199041>,  <37.812523, 40.646702, 24.192432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174347, 40.476288, 24.199041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273505, -0.550105, 0.789037,
		-0.327066, -0.718248, -0.614124,
		0.904557, -0.426033, 0.016524,
		38.445713, 40.348476, 24.203999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686890, 39.978722, 24.142570>,  <37.812523, 40.646702, 24.192432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686890, 39.978722, 24.142570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.060349, 39.993584, 24.285076>,  <38.284424, 40.002499, 24.370579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.060349, 39.993584, 24.285076>,  <37.686890, 39.978722, 24.142570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060349, 39.993584, 24.285076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205668, -0.758713, 0.618107,
		0.293267, -0.650365, -0.700728,
		0.933646, 0.037153, 0.356265,
		38.340443, 40.004730, 24.391956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870079, 39.290474, 24.430193>,  <37.686890, 39.978722, 24.142570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870079, 39.290474, 24.430193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173927, 39.501579, 24.582218>,  <38.356236, 39.628242, 24.673433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173927, 39.501579, 24.582218>,  <37.870079, 39.290474, 24.430193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173927, 39.501579, 24.582218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066896, -0.517877, 0.852835,
		0.646920, -0.673254, -0.358083,
		0.759618, 0.527762, 0.380063,
		38.401814, 39.659908, 24.696238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505821, 38.880615, 24.454683>,  <37.870079, 39.290474, 24.430193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505821, 38.880615, 24.454683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538162, 39.162197, 24.736935>,  <38.557568, 39.331146, 24.906286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538162, 39.162197, 24.736935>,  <38.505821, 38.880615, 24.454683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538162, 39.162197, 24.736935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143692, -0.708783, 0.690637,
		0.986314, 0.045557, -0.158457,
		0.080848, 0.703954, 0.705629,
		38.562416, 39.373383, 24.948624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136009, 38.747967, 24.852654>,  <38.505821, 38.880615, 24.454683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136009, 38.747967, 24.852654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.911121, 38.963322, 25.103748>,  <38.776188, 39.092533, 25.254404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.911121, 38.963322, 25.103748>,  <39.136009, 38.747967, 24.852654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911121, 38.963322, 25.103748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162659, -0.672244, 0.722240,
		0.810834, 0.508164, 0.290376,
		-0.562220, 0.538384, 0.627735,
		38.742455, 39.124836, 25.292068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420673, 38.674725, 25.421022>,  <39.136009, 38.747967, 24.852654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420673, 38.674725, 25.421022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081547, 38.825729, 25.569986>,  <38.878071, 38.916332, 25.659365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.081547, 38.825729, 25.569986>,  <39.420673, 38.674725, 25.421022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081547, 38.825729, 25.569986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127322, -0.536822, 0.834033,
		0.514778, 0.754523, 0.407061,
		-0.847816, 0.377514, 0.372412,
		38.827202, 38.938984, 25.681709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439468, 38.721638, 26.193710>,  <39.420673, 38.674725, 25.421022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439468, 38.721638, 26.193710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044064, 38.756229, 26.144119>,  <38.806820, 38.776985, 26.114365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.044064, 38.756229, 26.144119>,  <39.439468, 38.721638, 26.193710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044064, 38.756229, 26.144119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150724, -0.501532, 0.851908,
		0.011497, 0.860806, 0.508804,
		-0.988509, 0.086483, -0.123978,
		38.747509, 38.782173, 26.106926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141987, 39.001476, 26.907946>,  <39.439468, 38.721638, 26.193710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141987, 39.001476, 26.907946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.887932, 38.791908, 26.680929>,  <38.735497, 38.666168, 26.544720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.887932, 38.791908, 26.680929>,  <39.141987, 39.001476, 26.907946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887932, 38.791908, 26.680929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095925, -0.675586, 0.731014,
		-0.766418, 0.518737, 0.378834,
		-0.635139, -0.523923, -0.567541,
		38.697392, 38.634731, 26.510668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710289, 38.767773, 27.372980>,  <39.141987, 39.001476, 26.907946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710289, 38.767773, 27.372980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653446, 38.530430, 27.056063>,  <38.619339, 38.388023, 26.865911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.653446, 38.530430, 27.056063>,  <38.710289, 38.767773, 27.372980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653446, 38.530430, 27.056063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233807, -0.757649, 0.609346,
		-0.961842, 0.271837, -0.031063,
		-0.142108, -0.593357, -0.792296,
		38.610813, 38.352421, 26.818375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053783, 38.492428, 27.504747>,  <38.710289, 38.767773, 27.372980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053783, 38.492428, 27.504747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239437, 38.237583, 27.258606>,  <38.350830, 38.084675, 27.110922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239437, 38.237583, 27.258606>,  <38.053783, 38.492428, 27.504747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239437, 38.237583, 27.258606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354217, -0.770254, 0.530320,
		-0.811854, -0.028174, -0.583181,
		0.464138, -0.637114, -0.615354,
		38.378677, 38.046448, 27.073999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644432, 37.930988, 27.554049>,  <38.053783, 38.492428, 27.504747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644432, 37.930988, 27.554049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.966877, 37.772762, 27.377995>,  <38.160343, 37.677826, 27.272362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.966877, 37.772762, 27.377995>,  <37.644432, 37.930988, 27.554049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966877, 37.772762, 27.377995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242145, -0.899135, 0.364586,
		-0.539957, -0.187321, -0.820584,
		0.806110, -0.395561, -0.440135,
		38.208710, 37.654095, 27.245955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422306, 37.215195, 27.359610>,  <37.644432, 37.930988, 27.554049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422306, 37.215195, 27.359610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820885, 37.197521, 27.330927>,  <38.060032, 37.186916, 27.313717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.820885, 37.197521, 27.330927>,  <37.422306, 37.215195, 27.359610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820885, 37.197521, 27.330927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027680, -0.975866, 0.216608,
		-0.079544, -0.213854, -0.973622,
		0.996447, -0.044180, -0.071705,
		38.119820, 37.184269, 27.309416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568630, 36.526772, 27.023325>,  <37.422306, 37.215195, 27.359610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568630, 36.526772, 27.023325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906040, 36.623070, 27.215368>,  <38.108486, 36.680847, 27.330593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906040, 36.623070, 27.215368>,  <37.568630, 36.526772, 27.023325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906040, 36.623070, 27.215368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034013, -0.868173, 0.495095,
		0.536006, -0.433957, -0.724140,
		0.843529, 0.240743, 0.480106,
		38.159100, 36.695293, 27.359400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953754, 36.007984, 26.909925>,  <37.568630, 36.526772, 27.023325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953754, 36.007984, 26.909925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103565, 36.198299, 27.228258>,  <38.193451, 36.312489, 27.419258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103565, 36.198299, 27.228258>,  <37.953754, 36.007984, 26.909925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103565, 36.198299, 27.228258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012819, -0.855565, 0.517537,
		0.927126, -0.204036, -0.314337,
		0.374531, 0.475792, 0.795831,
		38.215923, 36.341038, 27.467007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406712, 35.547657, 27.138407>,  <37.953754, 36.007984, 26.909925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406712, 35.547657, 27.138407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308647, 35.789997, 27.441153>,  <38.249809, 35.935402, 27.622799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308647, 35.789997, 27.441153>,  <38.406712, 35.547657, 27.138407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308647, 35.789997, 27.441153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152381, -0.746903, 0.647237,
		0.957431, 0.274010, 0.090793,
		-0.245163, 0.605850, 0.756862,
		38.235100, 35.971752, 27.668211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.044125, 33.125740, 31.848095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754627, 33.401184, 31.866034>,  <41.580929, 33.566452, 31.876797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754627, 33.401184, 31.866034>,  <42.044125, 33.125740, 31.848095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754627, 33.401184, 31.866034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041767, -0.108583, 0.993210,
		0.688803, 0.716957, 0.107348,
		-0.723745, 0.688609, 0.044847,
		41.537502, 33.607765, 31.879488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288246, 33.641502, 32.220722>,  <42.044125, 33.125740, 31.848095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288246, 33.641502, 32.220722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.890804, 33.600597, 32.239906>,  <41.652340, 33.576054, 32.251415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.890804, 33.600597, 32.239906>,  <42.288246, 33.641502, 32.220722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890804, 33.600597, 32.239906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061858, -0.137362, 0.988587,
		-0.094511, 0.985228, 0.142809,
		-0.993600, -0.102267, 0.047962,
		41.592724, 33.569916, 32.254295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184258, 33.834183, 32.867062>,  <42.288246, 33.641502, 32.220722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.184258, 33.834183, 32.867062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821579, 33.688259, 32.782379>,  <41.603973, 33.600704, 32.731571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821579, 33.688259, 32.782379>,  <42.184258, 33.834183, 32.867062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821579, 33.688259, 32.782379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070766, -0.363240, 0.929004,
		-0.415807, 0.857306, 0.303532,
		-0.906696, -0.364807, -0.211705,
		41.549572, 33.578815, 32.718868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750294, 34.196777, 33.391994>,  <42.184258, 33.834183, 32.867062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750294, 34.196777, 33.391994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.631092, 33.843769, 33.246475>,  <41.559570, 33.631962, 33.159164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.631092, 33.843769, 33.246475>,  <41.750294, 34.196777, 33.391994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631092, 33.843769, 33.246475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068160, -0.360465, 0.930279,
		-0.952129, 0.302022, 0.047267,
		-0.298003, -0.882524, -0.363795,
		41.541691, 33.579014, 33.137337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064804, 34.217045, 33.730961>,  <41.750294, 34.196777, 33.391994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064804, 34.217045, 33.730961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145218, 33.841385, 33.619549>,  <41.193466, 33.615990, 33.552700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145218, 33.841385, 33.619549>,  <41.064804, 34.217045, 33.730961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145218, 33.841385, 33.619549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316688, -0.331382, 0.888760,
		-0.926980, -0.090467, -0.364038,
		0.201039, -0.939150, -0.278535,
		41.205528, 33.559639, 33.535988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475220, 33.860649, 33.828342>,  <41.064804, 34.217045, 33.730961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475220, 33.860649, 33.828342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766605, 33.586670, 33.822811>,  <40.941437, 33.422283, 33.819492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766605, 33.586670, 33.822811>,  <40.475220, 33.860649, 33.828342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766605, 33.586670, 33.822811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486412, -0.531320, 0.693616,
		-0.482436, -0.498548, -0.720212,
		0.728464, -0.684945, -0.013828,
		40.985146, 33.381187, 33.818661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126011, 33.307934, 33.809227>,  <40.475220, 33.860649, 33.828342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126011, 33.307934, 33.809227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.494694, 33.206745, 33.926846>,  <40.715904, 33.146034, 33.997417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.494694, 33.206745, 33.926846>,  <40.126011, 33.307934, 33.809227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494694, 33.206745, 33.926846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379732, -0.433799, 0.817081,
		-0.079136, -0.864769, -0.495896,
		0.921705, -0.252968, 0.294051,
		40.771206, 33.130856, 34.015060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032158, 32.641750, 33.827438>,  <40.126011, 33.307934, 33.809227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032158, 32.641750, 33.827438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.327969, 32.755894, 34.071297>,  <40.505455, 32.824379, 34.217613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.327969, 32.755894, 34.071297>,  <40.032158, 32.641750, 33.827438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327969, 32.755894, 34.071297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346949, -0.614531, 0.708504,
		0.576827, -0.735474, -0.355456,
		0.739525, 0.285359, 0.609650,
		40.549828, 32.841503, 34.254192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314262, 32.017998, 34.113716>,  <40.032158, 32.641750, 33.827438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314262, 32.017998, 34.113716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447369, 32.302624, 34.361244>,  <40.527233, 32.473400, 34.509762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447369, 32.302624, 34.361244>,  <40.314262, 32.017998, 34.113716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447369, 32.302624, 34.361244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341438, -0.520779, 0.782438,
		0.879027, -0.471656, 0.069661,
		0.332764, 0.711569, 0.618819,
		40.547199, 32.516094, 34.546890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351250, 31.648981, 34.656624>,  <40.314262, 32.017998, 34.113716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351250, 31.648981, 34.656624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.376793, 32.031078, 34.772163>,  <40.392117, 32.260338, 34.841488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.376793, 32.031078, 34.772163>,  <40.351250, 31.648981, 34.656624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376793, 32.031078, 34.772163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434292, -0.233995, 0.869849,
		0.898506, -0.180987, 0.399913,
		0.063854, 0.955243, 0.288847,
		40.395950, 32.317650, 34.858818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736092, 31.738117, 35.349316>,  <40.351250, 31.648981, 34.656624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736092, 31.738117, 35.349316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.476124, 32.041492, 35.329842>,  <40.320141, 32.223518, 35.318157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.476124, 32.041492, 35.329842>,  <40.736092, 31.738117, 35.349316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476124, 32.041492, 35.329842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314048, -0.209674, 0.925964,
		0.692081, 0.617094, 0.374459,
		-0.649922, 0.758440, -0.048686,
		40.281147, 32.269024, 35.315235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773472, 31.981844, 36.058353>,  <40.736092, 31.738117, 35.349316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773472, 31.981844, 36.058353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.446743, 32.131710, 35.882885>,  <40.250706, 32.221630, 35.777603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.446743, 32.131710, 35.882885>,  <40.773472, 31.981844, 36.058353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446743, 32.131710, 35.882885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493762, -0.060816, 0.867468,
		0.298332, 0.925164, 0.234671,
		-0.816822, 0.374664, -0.438667,
		40.201698, 32.244110, 35.751286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360199, 32.463791, 36.600658>,  <40.773472, 31.981844, 36.058353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360199, 32.463791, 36.600658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.084618, 32.366135, 36.327679>,  <39.919270, 32.307541, 36.163891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.084618, 32.366135, 36.327679>,  <40.360199, 32.463791, 36.600658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084618, 32.366135, 36.327679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633288, -0.255204, 0.730628,
		-0.352538, 0.935557, 0.021215,
		-0.688958, -0.244139, -0.682446,
		39.877930, 32.292892, 36.122944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732353, 32.695526, 36.784058>,  <40.360199, 32.463791, 36.600658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732353, 32.695526, 36.784058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.640568, 32.389153, 36.543827>,  <39.585495, 32.205326, 36.399689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.640568, 32.389153, 36.543827>,  <39.732353, 32.695526, 36.784058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640568, 32.389153, 36.543827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557910, -0.402102, 0.725982,
		-0.797548, 0.501653, -0.335055,
		-0.229465, -0.765936, -0.600572,
		39.571728, 32.159370, 36.363655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591591, 32.905792, 37.520817>,  <39.732353, 32.695526, 36.784058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591591, 32.905792, 37.520817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.837776, 33.020458, 37.814491>,  <39.985485, 33.089256, 37.990696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.837776, 33.020458, 37.814491>,  <39.591591, 32.905792, 37.520817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837776, 33.020458, 37.814491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209720, 0.838370, -0.503144,
		-0.759754, 0.463639, 0.455865,
		0.615460, 0.286662, 0.734189,
		40.022415, 33.106457, 38.034748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506809, 33.651138, 37.575352>,  <39.591591, 32.905792, 37.520817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506809, 33.651138, 37.575352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.849945, 33.577061, 37.767105>,  <40.055828, 33.532616, 37.882156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.849945, 33.577061, 37.767105>,  <39.506809, 33.651138, 37.575352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849945, 33.577061, 37.767105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422195, 0.785815, -0.451936,
		-0.293012, 0.590083, 0.752294,
		0.857844, -0.185192, 0.479383,
		40.107300, 33.521503, 37.910919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764481, 34.292046, 37.831848>,  <39.506809, 33.651138, 37.575352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764481, 34.292046, 37.831848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078789, 34.050743, 37.777214>,  <40.267372, 33.905960, 37.744434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078789, 34.050743, 37.777214>,  <39.764481, 34.292046, 37.831848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078789, 34.050743, 37.777214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490490, 0.742262, -0.456582,
		0.376819, 0.291772, 0.879134,
		0.785766, -0.603255, -0.136587,
		40.314518, 33.869766, 37.736237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280720, 34.637707, 38.030319>,  <39.764481, 34.292046, 37.831848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280720, 34.637707, 38.030319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.445110, 34.353771, 37.801502>,  <40.543743, 34.183411, 37.664211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.445110, 34.353771, 37.801502>,  <40.280720, 34.637707, 38.030319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445110, 34.353771, 37.801502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533578, 0.696067, -0.480401,
		0.739186, -0.107796, 0.664819,
		0.410973, -0.709839, -0.572040,
		40.568401, 34.140820, 37.629890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931683, 34.819675, 37.842453>,  <40.280720, 34.637707, 38.030319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931683, 34.819675, 37.842453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.941128, 34.529293, 37.567520>,  <40.946793, 34.355064, 37.402561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.941128, 34.529293, 37.567520>,  <40.931683, 34.819675, 37.842453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941128, 34.529293, 37.567520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369835, 0.645092, -0.668640,
		0.928798, -0.238413, 0.283715,
		0.023610, -0.725959, -0.687333,
		40.948212, 34.311504, 37.361320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494331, 34.973576, 37.493629>,  <40.931683, 34.819675, 37.842453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494331, 34.973576, 37.493629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312763, 34.730587, 37.232883>,  <41.203823, 34.584793, 37.076435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312763, 34.730587, 37.232883>,  <41.494331, 34.973576, 37.493629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312763, 34.730587, 37.232883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282660, 0.595622, -0.751890,
		0.845019, -0.525556, -0.098657,
		-0.453923, -0.607475, -0.651865,
		41.176586, 34.548344, 37.037323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994202, 34.804459, 37.016563>,  <41.494331, 34.973576, 37.493629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994202, 34.804459, 37.016563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.634521, 34.760403, 36.847183>,  <41.418713, 34.733971, 36.745556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.634521, 34.760403, 36.847183>,  <41.994202, 34.804459, 37.016563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634521, 34.760403, 36.847183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328935, 0.468008, -0.820226,
		0.288513, -0.876835, -0.384605,
		-0.899201, -0.110136, -0.423448,
		41.364761, 34.727364, 36.720150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130100, 34.647766, 36.338486>,  <41.994202, 34.804459, 37.016563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130100, 34.647766, 36.338486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.749607, 34.768829, 36.314648>,  <41.521313, 34.841469, 36.300343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.749607, 34.768829, 36.314648>,  <42.130100, 34.647766, 36.338486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749607, 34.768829, 36.314648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181026, 0.391268, -0.902297,
		-0.249773, -0.869083, -0.426976,
		-0.951232, 0.302663, -0.059599,
		41.464237, 34.859627, 36.296768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798763, 34.427151, 35.773682>,  <42.130100, 34.647766, 36.338486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798763, 34.427151, 35.773682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.567730, 34.739342, 35.869392>,  <41.429108, 34.926655, 35.926819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.567730, 34.739342, 35.869392>,  <41.798763, 34.427151, 35.773682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567730, 34.739342, 35.869392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243808, 0.444662, -0.861878,
		-0.779070, -0.439473, -0.447118,
		-0.577588, 0.780474, 0.239276,
		41.394455, 34.973484, 35.941174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393402, 34.583801, 35.122604>,  <41.798763, 34.427151, 35.773682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393402, 34.583801, 35.122604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.341618, 34.906544, 35.353161>,  <41.310547, 35.100189, 35.491493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.341618, 34.906544, 35.353161>,  <41.393402, 34.583801, 35.122604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341618, 34.906544, 35.353161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065784, 0.586990, -0.806917,
		-0.989400, -0.066548, -0.129071,
		-0.129462, 0.806854, 0.576390,
		41.302780, 35.148602, 35.526077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950081, 34.976124, 34.743347>,  <41.393402, 34.583801, 35.122604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950081, 34.976124, 34.743347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.115040, 35.233467, 35.001343>,  <41.214016, 35.387875, 35.156139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.115040, 35.233467, 35.001343>,  <40.950081, 34.976124, 34.743347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115040, 35.233467, 35.001343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022282, 0.714912, -0.698859,
		-0.910731, 0.273837, 0.309164,
		0.412398, 0.643361, 0.644991,
		41.238758, 35.426476, 35.194839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521633, 35.563705, 34.616287>,  <40.950081, 34.976124, 34.743347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521633, 35.563705, 34.616287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.863701, 35.678898, 34.788685>,  <41.068939, 35.748013, 34.892124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.863701, 35.678898, 34.788685>,  <40.521633, 35.563705, 34.616287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863701, 35.678898, 34.788685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071005, 0.758548, -0.647737,
		-0.513468, 0.584525, 0.628236,
		0.855166, 0.287985, 0.430995,
		41.120251, 35.765293, 34.917984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456833, 36.286816, 34.631126>,  <40.521633, 35.563705, 34.616287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456833, 36.286816, 34.631126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850620, 36.221592, 34.657143>,  <41.086891, 36.182457, 34.672752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.850620, 36.221592, 34.657143>,  <40.456833, 36.286816, 34.631126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850620, 36.221592, 34.657143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159348, 0.674506, -0.720867,
		0.073674, 0.720036, 0.690015,
		0.984470, -0.163061, 0.065043,
		41.145962, 36.172672, 34.676655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726971, 36.913422, 34.706551>,  <40.456833, 36.286816, 34.631126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726971, 36.913422, 34.706551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030933, 36.694904, 34.565632>,  <41.213310, 36.563793, 34.481079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030933, 36.694904, 34.565632>,  <40.726971, 36.913422, 34.706551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030933, 36.694904, 34.565632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141610, 0.668072, -0.730497,
		0.634425, 0.505218, 0.585030,
		0.759903, -0.546291, -0.352298,
		41.258904, 36.531017, 34.459942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788631, 37.536949, 35.089993>,  <40.726971, 36.913422, 34.706551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788631, 37.536949, 35.089993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.596901, 37.880711, 35.161175>,  <40.481865, 38.086967, 35.203884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.596901, 37.880711, 35.161175>,  <40.788631, 37.536949, 35.089993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596901, 37.880711, 35.161175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545303, -0.450511, 0.706884,
		0.687673, 0.241784, 0.684577,
		-0.479323, 0.859407, 0.177958,
		40.453106, 38.138535, 35.214561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805153, 37.580776, 35.843224>,  <40.788631, 37.536949, 35.089993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805153, 37.580776, 35.843224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523041, 37.850929, 35.757027>,  <40.353775, 38.013023, 35.705311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523041, 37.850929, 35.757027>,  <40.805153, 37.580776, 35.843224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523041, 37.850929, 35.757027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563469, -0.349583, 0.748528,
		0.430213, 0.649343, 0.627113,
		-0.705280, 0.675385, -0.215489,
		40.311459, 38.053543, 35.692379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704704, 38.018517, 36.475590>,  <40.805153, 37.580776, 35.843224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704704, 38.018517, 36.475590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.383842, 37.983253, 36.239361>,  <40.191326, 37.962097, 36.097626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.383842, 37.983253, 36.239361>,  <40.704704, 38.018517, 36.475590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383842, 37.983253, 36.239361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454824, -0.550616, 0.699969,
		-0.386883, 0.830091, 0.401586,
		-0.802158, -0.088156, -0.590569,
		40.143196, 37.956806, 36.062191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164879, 38.324242, 36.828930>,  <40.704704, 38.018517, 36.475590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164879, 38.324242, 36.828930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.970024, 38.098759, 36.562119>,  <39.853111, 37.963467, 36.402031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.970024, 38.098759, 36.562119>,  <40.164879, 38.324242, 36.828930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970024, 38.098759, 36.562119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516251, -0.430176, 0.740563,
		-0.704403, 0.705110, -0.081463,
		-0.487135, -0.563710, -0.667031,
		39.823883, 37.929646, 36.362011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466293, 38.312813, 37.051548>,  <40.164879, 38.324242, 36.828930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466293, 38.312813, 37.051548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.483753, 38.002590, 36.799641>,  <39.494228, 37.816456, 36.648499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.483753, 38.002590, 36.799641>,  <39.466293, 38.312813, 37.051548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483753, 38.002590, 36.799641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713621, -0.465358, 0.523629,
		-0.699171, 0.426558, -0.573767,
		0.043649, -0.775558, -0.629765,
		39.496849, 37.769924, 36.610710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793610, 38.196060, 36.878578>,  <39.466293, 38.312813, 37.051548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793610, 38.196060, 36.878578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011887, 37.872292, 36.791809>,  <39.142853, 37.678032, 36.739746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.011887, 37.872292, 36.791809>,  <38.793610, 38.196060, 36.878578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011887, 37.872292, 36.791809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680233, -0.579047, 0.449431,
		-0.489387, -0.097695, -0.866577,
		0.545696, -0.809420, -0.216923,
		39.175594, 37.629467, 36.726730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374191, 37.752907, 36.499981>,  <38.793610, 38.196060, 36.878578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374191, 37.752907, 36.499981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.650322, 37.499241, 36.639290>,  <38.815998, 37.347042, 36.722874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.650322, 37.499241, 36.639290>,  <38.374191, 37.752907, 36.499981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650322, 37.499241, 36.639290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721885, -0.635878, 0.273021,
		0.048321, -0.439886, -0.896753,
		0.690323, -0.634160, 0.348274,
		38.857418, 37.308994, 36.743771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011650, 37.155312, 36.348915>,  <38.374191, 37.752907, 36.499981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011650, 37.155312, 36.348915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.311222, 37.005665, 36.567688>,  <38.490967, 36.915874, 36.698952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.311222, 37.005665, 36.567688>,  <38.011650, 37.155312, 36.348915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311222, 37.005665, 36.567688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556753, -0.802853, 0.213197,
		0.359349, -0.464178, -0.809572,
		0.748929, -0.374120, 0.546937,
		38.535900, 36.893429, 36.731770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034584, 36.497406, 36.329041>,  <38.011650, 37.155312, 36.348915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034584, 36.497406, 36.329041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278378, 36.493763, 36.646137>,  <38.424652, 36.491577, 36.836395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278378, 36.493763, 36.646137>,  <38.034584, 36.497406, 36.329041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278378, 36.493763, 36.646137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306111, -0.925095, 0.224713,
		0.731317, -0.379627, -0.566620,
		0.609485, -0.009112, 0.792746,
		38.461224, 36.491028, 36.883961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335690, 35.790413, 36.394547>,  <38.034584, 36.497406, 36.329041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335690, 35.790413, 36.394547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.327847, 35.950672, 36.760956>,  <38.323139, 36.046829, 36.980801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.327847, 35.950672, 36.760956>,  <38.335690, 35.790413, 36.394547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327847, 35.950672, 36.760956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382839, -0.849378, 0.363306,
		0.923607, -0.343563, 0.170043,
		-0.019612, 0.400652, 0.916020,
		38.321964, 36.070869, 37.035763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553253, 35.303425, 36.785976>,  <38.335690, 35.790413, 36.394547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553253, 35.303425, 36.785976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.343784, 35.540722, 37.030544>,  <38.218102, 35.683102, 37.177284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.343784, 35.540722, 37.030544>,  <38.553253, 35.303425, 36.785976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343784, 35.540722, 37.030544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532214, -0.788221, 0.308960,
		0.665219, -0.163611, 0.728502,
		-0.523671, 0.593245, 0.611416,
		38.186684, 35.718697, 37.213970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551132, 35.020374, 37.405991>,  <38.553253, 35.303425, 36.785976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551132, 35.020374, 37.405991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231358, 35.260006, 37.423851>,  <38.039494, 35.403786, 37.434566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.231358, 35.260006, 37.423851>,  <38.551132, 35.020374, 37.405991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231358, 35.260006, 37.423851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540627, -0.749860, 0.381357,
		0.261947, 0.280732, 0.923349,
		-0.799441, 0.599083, 0.044652,
		37.991524, 35.439732, 37.437248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.199181, 40.470833, 33.450439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852882, 40.518623, 33.256039>,  <42.645103, 40.547298, 33.139397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852882, 40.518623, 33.256039>,  <43.199181, 40.470833, 33.450439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852882, 40.518623, 33.256039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500462, -0.214214, 0.838839,
		-0.003884, 0.969452, 0.245251,
		-0.865750, 0.119480, -0.486006,
		42.593159, 40.554466, 33.110237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765923, 40.511627, 34.062775>,  <43.199181, 40.470833, 33.450439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765923, 40.511627, 34.062775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516502, 40.452244, 33.755753>,  <42.366852, 40.416615, 33.571537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516502, 40.452244, 33.755753>,  <42.765923, 40.511627, 34.062775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516502, 40.452244, 33.755753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637279, -0.472170, 0.609041,
		-0.452836, 0.868916, 0.199810,
		-0.623550, -0.148461, -0.767558,
		42.329437, 40.407707, 33.525486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037079, 40.720737, 34.254749>,  <42.765923, 40.511627, 34.062775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037079, 40.720737, 34.254749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023304, 40.458321, 33.953175>,  <42.015038, 40.300869, 33.772228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023304, 40.458321, 33.953175>,  <42.037079, 40.720737, 34.254749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023304, 40.458321, 33.953175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621765, -0.576553, 0.530090,
		-0.782447, 0.487025, -0.388051,
		-0.034435, -0.656043, -0.753937,
		42.012974, 40.261509, 33.726994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414066, 40.573040, 34.248035>,  <42.037079, 40.720737, 34.254749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414066, 40.573040, 34.248035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562714, 40.265766, 34.039501>,  <41.651901, 40.081402, 33.914383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562714, 40.265766, 34.039501>,  <41.414066, 40.573040, 34.248035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562714, 40.265766, 34.039501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715093, -0.594970, 0.366951,
		-0.592043, 0.236390, -0.770458,
		0.371656, -0.768200, -0.521288,
		41.674202, 40.035309, 33.883102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829731, 40.232250, 33.957703>,  <41.414066, 40.573040, 34.248035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829731, 40.232250, 33.957703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121964, 39.962372, 33.999729>,  <41.297302, 39.800446, 34.024944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121964, 39.962372, 33.999729>,  <40.829731, 40.232250, 33.957703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121964, 39.962372, 33.999729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639313, -0.621825, 0.452340,
		-0.239855, -0.397644, -0.885635,
		0.730580, -0.674694, 0.105071,
		41.341137, 39.759964, 34.031250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511501, 39.581688, 33.751751>,  <40.829731, 40.232250, 33.957703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511501, 39.581688, 33.751751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822536, 39.456451, 33.969860>,  <41.009159, 39.381310, 34.100727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822536, 39.456451, 33.969860>,  <40.511501, 39.581688, 33.751751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822536, 39.456451, 33.969860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517124, -0.811763, 0.271336,
		0.357681, -0.492963, -0.793128,
		0.777591, -0.313094, 0.545276,
		41.055813, 39.362522, 34.133442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538303, 38.910954, 33.563881>,  <40.511501, 39.581688, 33.751751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538303, 38.910954, 33.563881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744934, 38.931732, 33.905746>,  <40.868912, 38.944199, 34.110867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744934, 38.931732, 33.905746>,  <40.538303, 38.910954, 33.563881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744934, 38.931732, 33.905746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597206, -0.693431, 0.403111,
		0.613589, -0.718648, -0.327190,
		0.516579, 0.051945, 0.854663,
		40.899906, 38.947315, 34.162144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420181, 38.279789, 33.896435>,  <40.538303, 38.910954, 33.563881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420181, 38.279789, 33.896435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589413, 38.445469, 34.218788>,  <40.690952, 38.544876, 34.412201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589413, 38.445469, 34.218788>,  <40.420181, 38.279789, 33.896435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589413, 38.445469, 34.218788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561030, -0.578658, 0.591947,
		0.711511, -0.702565, -0.012443,
		0.423081, 0.414196, 0.805881,
		40.716335, 38.569729, 34.460552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595131, 37.684383, 34.397739>,  <40.420181, 38.279789, 33.896435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595131, 37.684383, 34.397739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600128, 38.030846, 34.597584>,  <40.603127, 38.238724, 34.717491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600128, 38.030846, 34.597584>,  <40.595131, 37.684383, 34.397739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600128, 38.030846, 34.597584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585204, -0.398813, 0.706034,
		0.810790, -0.301196, 0.501898,
		0.012491, 0.866158, 0.499614,
		40.603874, 38.290691, 34.747467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272522, 37.452946, 34.440205>,  <40.595131, 37.684383, 34.397739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272522, 37.452946, 34.440205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354736, 37.095894, 34.279724>,  <41.404064, 36.881660, 34.183437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354736, 37.095894, 34.279724>,  <41.272522, 37.452946, 34.440205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354736, 37.095894, 34.279724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167065, 0.435941, -0.884333,
		0.964284, 0.114737, 0.238729,
		0.205537, -0.892632, -0.401202,
		41.416397, 36.828106, 34.159363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027626, 37.454220, 34.196442>,  <41.272522, 37.452946, 34.440205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027626, 37.454220, 34.196442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834675, 37.170757, 33.990482>,  <41.718906, 37.000679, 33.866905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834675, 37.170757, 33.990482>,  <42.027626, 37.454220, 34.196442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834675, 37.170757, 33.990482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258273, 0.446618, -0.856637,
		0.837024, -0.546206, -0.032411,
		-0.482375, -0.708655, -0.514900,
		41.689960, 36.958160, 33.836014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529877, 37.137325, 33.686939>,  <42.027626, 37.454220, 34.196442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529877, 37.137325, 33.686939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160770, 37.046715, 33.562233>,  <41.939308, 36.992348, 33.487411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160770, 37.046715, 33.562233>,  <42.529877, 37.137325, 33.686939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160770, 37.046715, 33.562233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253368, 0.252949, -0.933714,
		0.290374, -0.940586, -0.176016,
		-0.922761, -0.226529, -0.311764,
		41.883942, 36.978756, 33.468704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614277, 36.716251, 33.181667>,  <42.529877, 37.137325, 33.686939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614277, 36.716251, 33.181667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233250, 36.831623, 33.142849>,  <42.004631, 36.900845, 33.119556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233250, 36.831623, 33.142849>,  <42.614277, 36.716251, 33.181667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233250, 36.831623, 33.142849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109288, 0.026606, -0.993654,
		-0.284015, -0.957132, -0.056866,
		-0.952571, 0.288428, -0.097047,
		41.947479, 36.918152, 33.113735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274956, 36.289013, 32.658367>,  <42.614277, 36.716251, 33.181667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274956, 36.289013, 32.658367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053493, 36.622108, 32.657043>,  <41.920616, 36.821964, 32.656250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053493, 36.622108, 32.657043>,  <42.274956, 36.289013, 32.658367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053493, 36.622108, 32.657043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081066, 0.049938, -0.995457,
		-0.828788, -0.551413, -0.095155,
		-0.553660, 0.832736, -0.003313,
		41.887394, 36.871929, 32.656048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882660, 36.307079, 32.042431>,  <42.274956, 36.289013, 32.658367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882660, 36.307079, 32.042431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882351, 36.699673, 32.119057>,  <41.882168, 36.935226, 32.165031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882351, 36.699673, 32.119057>,  <41.882660, 36.307079, 32.042431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882351, 36.699673, 32.119057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104213, 0.190439, -0.976152,
		-0.994555, -0.020713, 0.102137,
		-0.000768, 0.981480, 0.191561,
		41.882122, 36.994118, 32.176525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246082, 36.578068, 31.768906>,  <41.882660, 36.307079, 32.042431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246082, 36.578068, 31.768906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475945, 36.904560, 31.792706>,  <41.613861, 37.100456, 31.806986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475945, 36.904560, 31.792706>,  <41.246082, 36.578068, 31.768906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475945, 36.904560, 31.792706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168443, 0.189112, -0.967400,
		-0.800871, 0.545903, 0.246163,
		0.574659, 0.816227, 0.059501,
		41.648342, 37.149429, 31.810556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891689, 37.060638, 31.295700>,  <41.246082, 36.578068, 31.768906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891689, 37.060638, 31.295700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269543, 37.170456, 31.367586>,  <41.496254, 37.236347, 31.410719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269543, 37.170456, 31.367586>,  <40.891689, 37.060638, 31.295700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269543, 37.170456, 31.367586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113557, 0.240337, -0.964024,
		-0.307859, 0.931055, 0.195854,
		0.944631, 0.274543, 0.179717,
		41.552933, 37.252819, 31.421501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914455, 37.746002, 30.986776>,  <40.891689, 37.060638, 31.295700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914455, 37.746002, 30.986776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293812, 37.625019, 31.024864>,  <41.521427, 37.552429, 31.047716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293812, 37.625019, 31.024864>,  <40.914455, 37.746002, 30.986776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293812, 37.625019, 31.024864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155782, 0.182880, -0.970714,
		0.276187, 0.935454, 0.220560,
		0.948395, -0.302458, 0.095218,
		41.578331, 37.534283, 31.053431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264542, 38.333408, 30.753374>,  <40.914455, 37.746002, 30.986776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264542, 38.333408, 30.753374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530083, 38.035072, 30.731371>,  <41.689407, 37.856071, 30.718168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530083, 38.035072, 30.731371>,  <41.264542, 38.333408, 30.753374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530083, 38.035072, 30.731371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194436, 0.243153, -0.950301,
		0.722147, 0.620162, 0.306436,
		0.663851, -0.745838, -0.055010,
		41.729237, 37.811321, 30.714869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718193, 38.594158, 30.340143>,  <41.264542, 38.333408, 30.753374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718193, 38.594158, 30.340143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829784, 38.210415, 30.323212>,  <41.896740, 37.980167, 30.313053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829784, 38.210415, 30.323212>,  <41.718193, 38.594158, 30.340143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829784, 38.210415, 30.323212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351776, 0.143114, -0.925079,
		0.893545, 0.243190, 0.377407,
		0.278983, -0.959363, -0.042330,
		41.913479, 37.922607, 30.310513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490288, 38.477478, 30.113518>,  <41.718193, 38.594158, 30.340143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490288, 38.477478, 30.113518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309937, 38.135723, 30.010181>,  <42.201725, 37.930672, 29.948179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309937, 38.135723, 30.010181>,  <42.490288, 38.477478, 30.113518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309937, 38.135723, 30.010181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351870, 0.095856, -0.931128,
		0.820303, -0.510726, 0.257412,
		-0.450877, -0.854383, -0.258340,
		42.174675, 37.879410, 29.932680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023899, 38.123627, 29.722420>,  <42.490288, 38.477478, 30.113518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023899, 38.123627, 29.722420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662094, 37.976269, 29.636488>,  <42.445011, 37.887856, 29.584929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662094, 37.976269, 29.636488>,  <43.023899, 38.123627, 29.722420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662094, 37.976269, 29.636488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104679, 0.296550, -0.949263,
		0.413411, -0.881104, -0.229668,
		-0.904507, -0.368395, -0.214830,
		42.390743, 37.865749, 29.572039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100609, 37.647285, 29.201406>,  <43.023899, 38.123627, 29.722420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100609, 37.647285, 29.201406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727943, 37.791058, 29.180193>,  <42.504345, 37.877319, 29.167465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727943, 37.791058, 29.180193>,  <43.100609, 37.647285, 29.201406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727943, 37.791058, 29.180193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179676, 0.328948, -0.927097,
		-0.315778, -0.873273, -0.371050,
		-0.931665, 0.359426, -0.053031,
		42.448444, 37.898884, 29.164284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.652599, 39.006008, 27.628540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991108, 38.976318, 27.839563>,  <36.194214, 38.958504, 27.966179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991108, 38.976318, 27.839563>,  <35.652599, 39.006008, 27.628540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991108, 38.976318, 27.839563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326493, -0.854760, 0.403470,
		0.420990, -0.513689, -0.747590,
		0.846268, -0.074226, 0.527561,
		36.244987, 38.954052, 27.997831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841686, 38.288216, 27.655197>,  <35.652599, 39.006008, 27.628540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841686, 38.288216, 27.655197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046467, 38.435753, 27.965517>,  <36.169334, 38.524273, 28.151709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046467, 38.435753, 27.965517>,  <35.841686, 38.288216, 27.655197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046467, 38.435753, 27.965517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196269, -0.829012, 0.523657,
		0.836293, -0.420351, -0.352021,
		0.511950, 0.368841, 0.775799,
		36.200050, 38.546406, 28.198257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238934, 37.775051, 27.892477>,  <35.841686, 38.288216, 27.655197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238934, 37.775051, 27.892477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234062, 38.016998, 28.210968>,  <36.231140, 38.162167, 28.402063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.234062, 38.016998, 28.210968>,  <36.238934, 37.775051, 27.892477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234062, 38.016998, 28.210968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042168, -0.795891, 0.603970,
		0.999036, -0.026222, 0.035196,
		-0.012174, 0.604872, 0.796230,
		36.230412, 38.198460, 28.449837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627136, 37.359726, 28.392801>,  <36.238934, 37.775051, 27.892477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627136, 37.359726, 28.392801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.421707, 37.641594, 28.588634>,  <36.298450, 37.810715, 28.706135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.421707, 37.641594, 28.588634>,  <36.627136, 37.359726, 28.392801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421707, 37.641594, 28.588634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105257, -0.618005, 0.779096,
		0.851568, 0.348588, 0.391559,
		-0.513569, 0.704667, 0.489582,
		36.267635, 37.852993, 28.735510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923485, 37.348770, 29.070549>,  <36.627136, 37.359726, 28.392801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923485, 37.348770, 29.070549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.574394, 37.541035, 29.104765>,  <36.364941, 37.656395, 29.125294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.574394, 37.541035, 29.104765>,  <36.923485, 37.348770, 29.070549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574394, 37.541035, 29.104765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105265, -0.356346, 0.928405,
		0.476731, 0.801237, 0.361589,
		-0.872724, 0.480662, 0.085539,
		36.312576, 37.685234, 29.130426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913582, 37.535179, 29.794834>,  <36.923485, 37.348770, 29.070549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913582, 37.535179, 29.794834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.527431, 37.535755, 29.690483>,  <36.295742, 37.536098, 29.627872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.527431, 37.535755, 29.690483>,  <36.913582, 37.535179, 29.794834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527431, 37.535755, 29.690483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200034, -0.645997, 0.736665,
		-0.167466, 0.763339, 0.623914,
		-0.965371, 0.001438, -0.260876,
		36.237820, 37.536186, 29.612221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577553, 37.616695, 30.383341>,  <36.913582, 37.535179, 29.794834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577553, 37.616695, 30.383341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.266853, 37.480831, 30.171190>,  <36.080433, 37.399315, 30.043900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.266853, 37.480831, 30.171190>,  <36.577553, 37.616695, 30.383341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266853, 37.480831, 30.171190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254593, -0.600915, 0.757683,
		-0.576064, 0.723558, 0.380283,
		-0.776745, -0.339656, -0.530378,
		36.033829, 37.378933, 30.012077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922939, 37.620266, 30.758512>,  <36.577553, 37.616695, 30.383341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922939, 37.620266, 30.758512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.832893, 37.358486, 30.469786>,  <35.778866, 37.201420, 30.296549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.832893, 37.358486, 30.469786>,  <35.922939, 37.620266, 30.758512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832893, 37.358486, 30.469786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248319, -0.677834, 0.692011,
		-0.942158, 0.335023, -0.009921,
		-0.225115, -0.654447, -0.721819,
		35.765358, 37.162151, 30.253241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364716, 37.280796, 30.938137>,  <35.922939, 37.620266, 30.758512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364716, 37.280796, 30.938137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479378, 37.026875, 30.651123>,  <35.548176, 36.874523, 30.478914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479378, 37.026875, 30.651123>,  <35.364716, 37.280796, 30.938137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479378, 37.026875, 30.651123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236942, -0.772675, 0.588924,
		-0.928272, 0.001199, -0.371899,
		0.286651, -0.634800, -0.717537,
		35.565372, 36.836433, 30.435862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771492, 36.743217, 30.889894>,  <35.364716, 37.280796, 30.938137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771492, 36.743217, 30.889894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115395, 36.590210, 30.754538>,  <35.321735, 36.498405, 30.673323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115395, 36.590210, 30.754538>,  <34.771492, 36.743217, 30.889894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115395, 36.590210, 30.754538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075706, -0.750723, 0.656265,
		-0.505069, -0.538607, -0.674395,
		0.859752, -0.382515, -0.338391,
		35.373322, 36.475456, 30.653021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660427, 36.042503, 30.605835>,  <34.771492, 36.743217, 30.889894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660427, 36.042503, 30.605835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.050621, 36.045055, 30.693821>,  <35.284737, 36.046589, 30.746613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.050621, 36.045055, 30.693821>,  <34.660427, 36.042503, 30.605835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050621, 36.045055, 30.693821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144617, -0.734824, 0.662660,
		0.165864, -0.678227, -0.715889,
		0.975487, 0.006382, 0.219965,
		35.343266, 36.046970, 30.759809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882500, 35.330425, 30.612909>,  <34.660427, 36.042503, 30.605835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882500, 35.330425, 30.612909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155975, 35.524914, 30.830591>,  <35.320061, 35.641605, 30.961201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155975, 35.524914, 30.830591>,  <34.882500, 35.330425, 30.612909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155975, 35.524914, 30.830591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043716, -0.771667, 0.634523,
		0.728460, -0.410028, -0.548838,
		0.683692, 0.486217, 0.544204,
		35.361084, 35.670780, 30.993853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298012, 34.843060, 30.743093>,  <34.882500, 35.330425, 30.612909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298012, 34.843060, 30.743093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383522, 35.119736, 31.019028>,  <35.434826, 35.285740, 31.184587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383522, 35.119736, 31.019028>,  <35.298012, 34.843060, 30.743093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383522, 35.119736, 31.019028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187336, -0.664025, 0.723862,
		0.958753, -0.283972, -0.012372,
		0.213772, 0.691687, 0.689834,
		35.447655, 35.327240, 31.225979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822151, 34.530476, 31.189585>,  <35.298012, 34.843060, 30.743093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822151, 34.530476, 31.189585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.702484, 34.837048, 31.416946>,  <35.630684, 35.020992, 31.553364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.702484, 34.837048, 31.416946>,  <35.822151, 34.530476, 31.189585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702484, 34.837048, 31.416946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224230, -0.635472, 0.738848,
		0.927480, 0.093587, 0.361970,
		-0.299169, 0.766431, 0.568402,
		35.612732, 35.066978, 31.587467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621132, 34.436489, 31.341570>,  <35.822151, 34.530476, 31.189585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621132, 34.436489, 31.341570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.812447, 34.127316, 31.174807>,  <36.927235, 33.941811, 31.074749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.812447, 34.127316, 31.174807>,  <36.621132, 34.436489, 31.341570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812447, 34.127316, 31.174807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558123, 0.634056, -0.535230,
		0.678043, 0.023305, 0.734652,
		0.478284, -0.772936, -0.416910,
		36.955933, 33.895435, 31.049734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321602, 34.746048, 31.129524>,  <36.621132, 34.436489, 31.341570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321602, 34.746048, 31.129524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330688, 34.400406, 30.928402>,  <37.336140, 34.193020, 30.807728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.330688, 34.400406, 30.928402>,  <37.321602, 34.746048, 31.129524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330688, 34.400406, 30.928402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548053, 0.431396, -0.716614,
		0.836135, -0.259284, 0.483374,
		0.022719, -0.864101, -0.502806,
		37.337505, 34.141174, 30.777559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968285, 34.549000, 31.113028>,  <37.321602, 34.746048, 31.129524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968285, 34.549000, 31.113028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.783585, 34.398277, 30.791830>,  <37.672764, 34.307842, 30.599112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.783585, 34.398277, 30.791830>,  <37.968285, 34.549000, 31.113028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783585, 34.398277, 30.791830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540938, 0.597832, -0.591594,
		0.702974, -0.707539, -0.072219,
		-0.461750, -0.376809, -0.802995,
		37.645058, 34.285236, 30.550932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515648, 34.476372, 30.655823>,  <37.968285, 34.549000, 31.113028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515648, 34.476372, 30.655823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.183819, 34.461426, 30.432964>,  <37.984722, 34.452457, 30.299250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.183819, 34.461426, 30.432964>,  <38.515648, 34.476372, 30.655823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183819, 34.461426, 30.432964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504822, 0.376271, -0.776901,
		0.238670, -0.925756, -0.293280,
		-0.829573, -0.037368, -0.557147,
		37.934948, 34.450214, 30.265820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713791, 34.269100, 30.027992>,  <38.515648, 34.476372, 30.655823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713791, 34.269100, 30.027992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357380, 34.439701, 29.965813>,  <38.143532, 34.542061, 29.928505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357380, 34.439701, 29.965813>,  <38.713791, 34.269100, 30.027992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357380, 34.439701, 29.965813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379861, 0.513044, -0.769734,
		-0.248542, -0.744904, -0.619149,
		-0.891029, 0.426502, -0.155446,
		38.090073, 34.567650, 29.919178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533611, 34.279293, 29.241322>,  <38.713791, 34.269100, 30.027992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533611, 34.279293, 29.241322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.291405, 34.551304, 29.406689>,  <38.146080, 34.714512, 29.505909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.291405, 34.551304, 29.406689>,  <38.533611, 34.279293, 29.241322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291405, 34.551304, 29.406689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150579, 0.607990, -0.779534,
		-0.781459, -0.409767, -0.470545,
		-0.605514, 0.680028, 0.413418,
		38.109749, 34.755314, 29.530714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255856, 34.493340, 28.671547>,  <38.533611, 34.279293, 29.241322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255856, 34.493340, 28.671547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190296, 34.762505, 28.960081>,  <38.150959, 34.924004, 29.133202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190296, 34.762505, 28.960081>,  <38.255856, 34.493340, 28.671547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190296, 34.762505, 28.960081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115486, 0.739285, -0.663416,
		-0.979694, -0.025430, -0.198881,
		-0.163900, 0.672913, 0.721336,
		38.141125, 34.964378, 29.176481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771919, 34.913517, 28.382895>,  <38.255856, 34.493340, 28.671547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771919, 34.913517, 28.382895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925201, 35.142673, 28.672709>,  <38.017170, 35.280167, 28.846598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925201, 35.142673, 28.672709>,  <37.771919, 34.913517, 28.382895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925201, 35.142673, 28.672709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118469, 0.747453, -0.653666,
		-0.916035, 0.336323, 0.218558,
		0.383204, 0.572888, 0.724537,
		38.040161, 35.314541, 28.890070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360878, 35.522575, 28.379946>,  <37.771919, 34.913517, 28.382895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360878, 35.522575, 28.379946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726814, 35.587639, 28.527786>,  <37.946377, 35.626678, 28.616489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726814, 35.587639, 28.527786>,  <37.360878, 35.522575, 28.379946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726814, 35.587639, 28.527786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136646, 0.736584, -0.662399,
		-0.379988, 0.656495, 0.651631,
		0.914843, 0.162661, 0.369600,
		38.001266, 35.636436, 28.638666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399548, 36.280201, 28.479475>,  <37.360878, 35.522575, 28.379946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399548, 36.280201, 28.479475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768818, 36.134121, 28.431519>,  <37.990379, 36.046474, 28.402744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768818, 36.134121, 28.431519>,  <37.399548, 36.280201, 28.479475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768818, 36.134121, 28.431519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229355, 0.773676, -0.590611,
		0.308447, 0.517741, 0.798000,
		0.923177, -0.365198, -0.119892,
		38.045773, 36.024563, 28.395552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008396, 36.741207, 28.685722>,  <37.399548, 36.280201, 28.479475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008396, 36.741207, 28.685722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119759, 36.503754, 28.383707>,  <38.186577, 36.361282, 28.202497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.119759, 36.503754, 28.383707>,  <38.008396, 36.741207, 28.685722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119759, 36.503754, 28.383707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372567, 0.791316, -0.484782,
		0.885259, -0.146335, 0.441478,
		0.278408, -0.593637, -0.755039,
		38.203281, 36.325661, 28.157196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742332, 36.930782, 28.577818>,  <38.008396, 36.741207, 28.685722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742332, 36.930782, 28.577818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604725, 36.754185, 28.246340>,  <38.522160, 36.648228, 28.047453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.604725, 36.754185, 28.246340>,  <38.742332, 36.930782, 28.577818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604725, 36.754185, 28.246340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321375, 0.773899, -0.545709,
		0.882253, -0.454056, -0.124351,
		-0.344018, -0.441490, -0.828697,
		38.501518, 36.621738, 27.997730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185753, 37.059105, 28.059242>,  <38.742332, 36.930782, 28.577818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185753, 37.059105, 28.059242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.868332, 36.955185, 27.839142>,  <38.677879, 36.892834, 27.707083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.868332, 36.955185, 27.839142>,  <39.185753, 37.059105, 28.059242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868332, 36.955185, 27.839142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250888, 0.684139, -0.684842,
		0.554371, -0.681510, -0.477720,
		-0.793554, -0.259803, -0.550250,
		38.630264, 36.877243, 27.674067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337872, 36.946327, 27.377739>,  <39.185753, 37.059105, 28.059242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337872, 36.946327, 27.377739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.947910, 37.027737, 27.341633>,  <38.713936, 37.076580, 27.319969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.947910, 37.027737, 27.341633>,  <39.337872, 36.946327, 27.377739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947910, 37.027737, 27.341633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210712, 0.712511, -0.669274,
		-0.071895, -0.671496, -0.737512,
		-0.974901, 0.203520, -0.090267,
		38.655441, 37.088791, 27.314552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722301, 36.339359, 27.160353>,  <39.337872, 36.946327, 27.377739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722301, 36.339359, 27.160353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.114834, 36.310070, 27.089211>,  <40.350353, 36.292496, 27.046526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.114834, 36.310070, 27.089211>,  <39.722301, 36.339359, 27.160353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114834, 36.310070, 27.089211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076138, -0.701285, 0.708803,
		-0.176625, -0.709111, -0.682617,
		0.981329, -0.073220, -0.177855,
		40.409233, 36.288105, 27.035854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822365, 35.609428, 27.044277>,  <39.722301, 36.339359, 27.160353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822365, 35.609428, 27.044277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.180260, 35.763046, 27.135447>,  <40.394997, 35.855217, 27.190147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.180260, 35.763046, 27.135447>,  <39.822365, 35.609428, 27.044277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180260, 35.763046, 27.135447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104272, -0.675915, 0.729566,
		0.434244, -0.629006, -0.644813,
		0.894740, 0.384045, 0.227924,
		40.448681, 35.878262, 27.203823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283150, 35.008873, 27.192312>,  <39.822365, 35.609428, 27.044277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283150, 35.008873, 27.192312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.437435, 35.327534, 27.378458>,  <40.530006, 35.518730, 27.490147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.437435, 35.327534, 27.378458>,  <40.283150, 35.008873, 27.192312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437435, 35.327534, 27.378458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306773, -0.586440, 0.749653,
		0.870122, -0.146392, -0.470591,
		0.385717, 0.796654, 0.465365,
		40.553150, 35.566528, 27.518068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903374, 34.833241, 27.460611>,  <40.283150, 35.008873, 27.192312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903374, 34.833241, 27.460611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.833435, 35.150970, 27.693325>,  <40.791473, 35.341610, 27.832954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.833435, 35.150970, 27.693325>,  <40.903374, 34.833241, 27.460611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833435, 35.150970, 27.693325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438348, -0.466298, 0.768386,
		0.881635, 0.389372, -0.266663,
		-0.174844, 0.794327, 0.581785,
		40.780983, 35.389267, 27.867861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564625, 34.994114, 27.877354>,  <40.903374, 34.833241, 27.460611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564625, 34.994114, 27.877354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.264359, 35.156761, 28.085649>,  <41.084198, 35.254349, 28.210627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.264359, 35.156761, 28.085649>,  <41.564625, 34.994114, 27.877354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264359, 35.156761, 28.085649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420792, -0.313402, 0.851301,
		0.509351, 0.858164, 0.064160,
		-0.750663, 0.406614, 0.520740,
		41.039158, 35.278744, 28.241871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876011, 35.117168, 28.567038>,  <41.564625, 34.994114, 27.877354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876011, 35.117168, 28.567038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.483059, 35.167343, 28.622450>,  <41.247288, 35.197449, 28.655697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.483059, 35.167343, 28.622450>,  <41.876011, 35.117168, 28.567038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483059, 35.167343, 28.622450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117377, -0.162695, 0.979670,
		0.145424, 0.978671, 0.145106,
		-0.982382, 0.125435, 0.138533,
		41.188343, 35.204975, 28.664009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826344, 35.520161, 29.145914>,  <41.876011, 35.117168, 28.567038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826344, 35.520161, 29.145914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.468945, 35.347980, 29.094736>,  <41.254505, 35.244671, 29.064030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.468945, 35.347980, 29.094736>,  <41.826344, 35.520161, 29.145914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468945, 35.347980, 29.094736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028007, -0.337770, 0.940812,
		-0.448190, 0.837032, 0.313853,
		-0.893500, -0.430452, -0.127943,
		41.200893, 35.218845, 29.056353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532909, 35.630051, 29.726982>,  <41.826344, 35.520161, 29.145914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532909, 35.630051, 29.726982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.357292, 35.309959, 29.563580>,  <41.251923, 35.117905, 29.465538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.357292, 35.309959, 29.563580>,  <41.532909, 35.630051, 29.726982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357292, 35.309959, 29.563580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121594, -0.503408, 0.855451,
		-0.890200, 0.325909, 0.318321,
		-0.439044, -0.800228, -0.408505,
		41.225578, 35.069893, 29.441029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045086, 35.610504, 30.172583>,  <41.532909, 35.630051, 29.726982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045086, 35.610504, 30.172583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.139137, 35.268356, 29.987947>,  <41.195568, 35.063068, 29.877167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.139137, 35.268356, 29.987947>,  <41.045086, 35.610504, 30.172583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139137, 35.268356, 29.987947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076539, -0.457133, 0.886099,
		-0.968947, -0.243674, -0.042014,
		0.235125, -0.855367, -0.461588,
		41.209675, 35.011745, 29.849470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522755, 35.143612, 30.273928>,  <41.045086, 35.610504, 30.172583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522755, 35.143612, 30.273928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.851593, 34.928204, 30.200006>,  <41.048897, 34.798958, 30.155655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.851593, 34.928204, 30.200006>,  <40.522755, 35.143612, 30.273928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851593, 34.928204, 30.200006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103951, -0.461097, 0.881240,
		-0.559783, -0.705251, -0.435045,
		0.822093, -0.538526, -0.184802,
		41.098221, 34.766647, 30.144566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338467, 34.461544, 30.294842>,  <40.522755, 35.143612, 30.273928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338467, 34.461544, 30.294842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.733124, 34.449547, 30.358885>,  <40.969917, 34.442348, 30.397310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.733124, 34.449547, 30.358885>,  <40.338467, 34.461544, 30.294842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733124, 34.449547, 30.358885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140689, -0.652291, 0.744798,
		0.082098, -0.757375, -0.647798,
		0.986644, -0.029992, 0.160106,
		41.029118, 34.440548, 30.406916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496124, 33.711750, 30.502771>,  <40.338467, 34.461544, 30.294842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496124, 33.711750, 30.502771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.790806, 33.944939, 30.639837>,  <40.967613, 34.084850, 30.722076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.790806, 33.944939, 30.639837>,  <40.496124, 33.711750, 30.502771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790806, 33.944939, 30.639837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036890, -0.540629, 0.840452,
		0.675212, -0.606520, -0.419787,
		0.736700, 0.582969, 0.342665,
		41.011814, 34.119831, 30.742638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915623, 33.279495, 30.796465>,  <40.496124, 33.711750, 30.502771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915623, 33.279495, 30.796465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.002476, 33.630939, 30.966595>,  <41.054588, 33.841805, 31.068672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.002476, 33.630939, 30.966595>,  <40.915623, 33.279495, 30.796465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002476, 33.630939, 30.966595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117946, -0.456142, 0.882057,
		0.968991, -0.141355, -0.202670,
		0.217129, 0.878609, 0.425325,
		41.067616, 33.894524, 31.094193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525909, 33.116726, 31.108355>,  <40.915623, 33.279495, 30.796465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525909, 33.116726, 31.108355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.422562, 33.452393, 31.299789>,  <41.360554, 33.653793, 31.414650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.422562, 33.452393, 31.299789>,  <41.525909, 33.116726, 31.108355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422562, 33.452393, 31.299789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255679, -0.418343, 0.871560,
		0.931597, 0.347549, -0.106470,
		-0.258369, 0.839166, 0.478588,
		41.345051, 33.704144, 31.443365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.848919, 37.305580, 28.584167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.594425, 37.602493, 28.668276>,  <42.441727, 37.780643, 28.718740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.594425, 37.602493, 28.668276>,  <42.848919, 37.305580, 28.584167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594425, 37.602493, 28.668276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026531, 0.251339, -0.967535,
		-0.771038, -0.621160, -0.140218,
		-0.636236, 0.742287, 0.210272,
		42.403553, 37.825180, 28.731358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.331512, 37.311600, 28.036612>,  <42.848919, 37.305580, 28.584167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.331512, 37.311600, 28.036612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.278332, 37.671211, 28.203499>,  <42.246422, 37.886978, 28.303631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.278332, 37.671211, 28.203499>,  <42.331512, 37.311600, 28.036612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278332, 37.671211, 28.203499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073408, 0.410868, -0.908734,
		-0.988400, -0.151446, 0.011369,
		-0.132953, 0.899028, 0.417219,
		42.238445, 37.940918, 28.328665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685291, 37.514606, 27.806213>,  <42.331512, 37.311600, 28.036612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685291, 37.514606, 27.806213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.904007, 37.833679, 27.907972>,  <42.035236, 38.025124, 27.969028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.904007, 37.833679, 27.907972>,  <41.685291, 37.514606, 27.806213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904007, 37.833679, 27.907972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171177, 0.403928, -0.898632,
		-0.819584, 0.447817, 0.357410,
		0.546791, 0.797685, 0.254397,
		42.068043, 38.072987, 27.984291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365582, 38.112381, 27.425529>,  <41.685291, 37.514606, 27.806213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365582, 38.112381, 27.425529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.716747, 38.253296, 27.555241>,  <41.927448, 38.337845, 27.633068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.716747, 38.253296, 27.555241>,  <41.365582, 38.112381, 27.425529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716747, 38.253296, 27.555241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091515, 0.541316, -0.835825,
		-0.469984, 0.763462, 0.442992,
		0.877918, 0.352284, 0.324278,
		41.980122, 38.358982, 27.652523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420738, 38.801239, 27.300400>,  <41.365582, 38.112381, 27.425529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420738, 38.801239, 27.300400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.805313, 38.692886, 27.319450>,  <42.036057, 38.627876, 27.330881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.805313, 38.692886, 27.319450>,  <41.420738, 38.801239, 27.300400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805313, 38.692886, 27.319450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145532, 0.354118, -0.923808,
		0.233374, 0.895112, 0.379883,
		0.961435, -0.270877, 0.047626,
		42.093742, 38.611622, 27.333738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742188, 39.345589, 27.027929>,  <41.420738, 38.801239, 27.300400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742188, 39.345589, 27.027929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.017826, 39.057663, 26.994419>,  <42.183208, 38.884907, 26.974312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.017826, 39.057663, 26.994419>,  <41.742188, 39.345589, 27.027929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017826, 39.057663, 26.994419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329443, 0.414138, -0.848503,
		0.645459, 0.557099, 0.522517,
		0.689094, -0.719813, -0.083777,
		42.224556, 38.841721, 26.969286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328041, 39.712078, 26.922680>,  <41.742188, 39.345589, 27.027929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328041, 39.712078, 26.922680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.436638, 39.340591, 26.821667>,  <42.501797, 39.117699, 26.761059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.436638, 39.340591, 26.821667>,  <42.328041, 39.712078, 26.922680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436638, 39.340591, 26.821667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517343, 0.362077, -0.775407,
		0.811572, 0.079870, 0.578767,
		0.271490, -0.928720, -0.252531,
		42.518085, 39.061974, 26.745907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007313, 39.727619, 26.949251>,  <42.328041, 39.712078, 26.922680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007313, 39.727619, 26.949251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.874649, 39.450882, 26.692705>,  <42.795052, 39.284840, 26.538778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.874649, 39.450882, 26.692705>,  <43.007313, 39.727619, 26.949251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874649, 39.450882, 26.692705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511724, 0.439208, -0.738401,
		0.792553, -0.573100, 0.208366,
		-0.331662, -0.691847, -0.641365,
		42.775150, 39.243328, 26.500296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684017, 39.534496, 26.573135>,  <43.007313, 39.727619, 26.949251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684017, 39.534496, 26.573135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.376453, 39.398697, 26.356426>,  <43.191914, 39.317219, 26.226400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.376453, 39.398697, 26.356426>,  <43.684017, 39.534496, 26.573135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376453, 39.398697, 26.356426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496817, 0.216093, -0.840522,
		0.402429, -0.915448, 0.002513,
		-0.768911, -0.339499, -0.541772,
		43.145779, 39.296848, 26.193895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945442, 39.271652, 25.926519>,  <43.684017, 39.534496, 26.573135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945442, 39.271652, 25.926519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.557590, 39.305294, 25.834658>,  <43.324879, 39.325478, 25.779541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.557590, 39.305294, 25.834658>,  <43.945442, 39.271652, 25.926519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557590, 39.305294, 25.834658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244138, 0.277029, -0.929329,
		-0.014540, -0.957174, -0.289149,
		-0.969632, 0.084104, -0.229655,
		43.266701, 39.330524, 25.765760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867737, 38.887627, 25.333387>,  <43.945442, 39.271652, 25.926519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867737, 38.887627, 25.333387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.558685, 39.140938, 25.351261>,  <43.373253, 39.292927, 25.361986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.558685, 39.140938, 25.351261>,  <43.867737, 38.887627, 25.333387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558685, 39.140938, 25.351261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198077, 0.307338, -0.930757,
		-0.603164, -0.710281, -0.362897,
		-0.772631, 0.633281, 0.044685,
		43.326897, 39.330921, 25.364666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516628, 38.874443, 24.722437>,  <43.867737, 38.887627, 25.333387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516628, 38.874443, 24.722437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.418404, 39.239265, 24.853804>,  <43.359470, 39.458157, 24.932623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.418404, 39.239265, 24.853804>,  <43.516628, 38.874443, 24.722437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418404, 39.239265, 24.853804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191386, 0.377735, -0.905918,
		-0.950300, -0.159604, -0.267312,
		-0.245561, 0.912054, 0.328416,
		43.344734, 39.512882, 24.952328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.919441, 39.210876, 24.266291>,  <43.516628, 38.874443, 24.722437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.919441, 39.210876, 24.266291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.168785, 39.476677, 24.431145>,  <43.318394, 39.636158, 24.530058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.168785, 39.476677, 24.431145>,  <42.919441, 39.210876, 24.266291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168785, 39.476677, 24.431145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147484, 0.417693, -0.896538,
		-0.767898, 0.619651, 0.162371,
		0.623362, 0.664503, 0.412134,
		43.355793, 39.676029, 24.554785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718430, 39.559910, 23.677574>,  <42.919441, 39.210876, 24.266291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718430, 39.559910, 23.677574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.449615, 39.464310, 23.397219>,  <42.288326, 39.406952, 23.229006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.449615, 39.464310, 23.397219>,  <42.718430, 39.559910, 23.677574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449615, 39.464310, 23.397219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399723, 0.913831, 0.071660,
		0.623366, 0.328319, -0.709663,
		-0.672039, -0.238998, -0.700887,
		42.248005, 39.392609, 23.186953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279572, 40.046425, 23.435863>,  <42.718430, 39.559910, 23.677574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279572, 40.046425, 23.435863> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.989449, 39.878220, 23.217836>,  <41.815376, 39.777298, 23.087021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.989449, 39.878220, 23.217836>,  <42.279572, 40.046425, 23.435863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989449, 39.878220, 23.217836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162339, -0.664957, 0.729026,
		-0.669010, 0.617254, 0.414033,
		-0.725308, -0.420512, -0.545067,
		41.771854, 39.752068, 23.054316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626286, 39.905018, 23.862234>,  <42.279572, 40.046425, 23.435863>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626286, 39.905018, 23.862234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.608608, 39.652298, 23.552687>,  <41.598003, 39.500664, 23.366959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.608608, 39.652298, 23.552687>,  <41.626286, 39.905018, 23.862234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608608, 39.652298, 23.552687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319497, -0.725007, 0.610153,
		-0.946556, 0.274212, -0.169821,
		-0.044190, -0.631802, -0.773870,
		41.595352, 39.462757, 23.320526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027199, 39.591003, 24.002663>,  <41.626286, 39.905018, 23.862234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027199, 39.591003, 24.002663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.229248, 39.357105, 23.748756>,  <41.350475, 39.216766, 23.596413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.229248, 39.357105, 23.748756>,  <41.027199, 39.591003, 24.002663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229248, 39.357105, 23.748756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368155, -0.811206, 0.454320,
		-0.780588, 0.004207, -0.625032,
		0.505118, -0.584746, -0.634766,
		41.380783, 39.181683, 23.558327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613003, 39.078598, 23.963732>,  <41.027199, 39.591003, 24.002663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613003, 39.078598, 23.963732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.946827, 38.934681, 23.796850>,  <41.147121, 38.848331, 23.696722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.946827, 38.934681, 23.796850>,  <40.613003, 39.078598, 23.963732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946827, 38.934681, 23.796850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217001, -0.910754, 0.351337,
		-0.506376, -0.202680, -0.838155,
		0.834562, -0.359789, -0.417202,
		41.197197, 38.826744, 23.671690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383530, 38.500870, 23.729654>,  <40.613003, 39.078598, 23.963732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383530, 38.500870, 23.729654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.778889, 38.479259, 23.786428>,  <41.016106, 38.466293, 23.820494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.778889, 38.479259, 23.786428>,  <40.383530, 38.500870, 23.729654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778889, 38.479259, 23.786428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110338, -0.897645, 0.426684,
		0.104356, -0.437396, -0.893194,
		0.988400, -0.054026, 0.141936,
		41.075409, 38.463051, 23.829010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553043, 37.863686, 23.579485>,  <40.383530, 38.500870, 23.729654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553043, 37.863686, 23.579485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.872829, 37.945251, 23.805504>,  <41.064701, 37.994190, 23.941114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.872829, 37.945251, 23.805504>,  <40.553043, 37.863686, 23.579485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872829, 37.945251, 23.805504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076014, -0.898724, 0.431875,
		0.595885, -0.388220, -0.702998,
		0.799464, 0.203911, 0.565046,
		41.112667, 38.006424, 23.975018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013290, 37.262291, 23.599623>,  <40.553043, 37.863686, 23.579485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013290, 37.262291, 23.599623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.128773, 37.474949, 23.918119>,  <41.198063, 37.602543, 24.109217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.128773, 37.474949, 23.918119>,  <41.013290, 37.262291, 23.599623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128773, 37.474949, 23.918119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244682, -0.763066, 0.598215,
		0.925625, -0.367531, -0.090213,
		0.288701, 0.531649, 0.796242,
		41.215382, 37.634445, 24.156992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528450, 36.886696, 23.957558>,  <41.013290, 37.262291, 23.599623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528450, 36.886696, 23.957558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.365662, 37.135830, 24.224825>,  <41.267990, 37.285309, 24.385185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.365662, 37.135830, 24.224825>,  <41.528450, 36.886696, 23.957558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365662, 37.135830, 24.224825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169579, -0.770288, 0.614736,
		0.897562, 0.136873, 0.419105,
		-0.406972, 0.622834, 0.668170,
		41.243568, 37.322681, 24.425276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792557, 36.691799, 24.661940>,  <41.528450, 36.886696, 23.957558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792557, 36.691799, 24.661940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.471886, 36.909416, 24.761005>,  <41.279484, 37.039986, 24.820444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.471886, 36.909416, 24.761005>,  <41.792557, 36.691799, 24.661940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471886, 36.909416, 24.761005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089154, -0.518506, 0.850413,
		0.591075, 0.659674, 0.464177,
		-0.801674, 0.544042, 0.247663,
		41.231384, 37.072628, 24.835304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850689, 36.982555, 25.341480>,  <41.792557, 36.691799, 24.661940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850689, 36.982555, 25.341480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453758, 36.971413, 25.293306>,  <41.215599, 36.964729, 25.264402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.453758, 36.971413, 25.293306>,  <41.850689, 36.982555, 25.341480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453758, 36.971413, 25.293306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104300, -0.334282, 0.936684,
		-0.066351, 0.942061, 0.328813,
		-0.992330, -0.027855, -0.120437,
		41.156059, 36.963055, 25.257175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512257, 37.256721, 25.940256>,  <41.850689, 36.982555, 25.341480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512257, 37.256721, 25.940256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.200836, 37.076298, 25.765711>,  <41.013985, 36.968044, 25.660984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.200836, 37.076298, 25.765711>,  <41.512257, 37.256721, 25.940256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200836, 37.076298, 25.765711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257968, -0.403843, 0.877704,
		-0.572115, 0.795902, 0.198054,
		-0.778548, -0.451056, -0.436361,
		40.967270, 36.940983, 25.634802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118793, 37.544857, 26.366199>,  <41.512257, 37.256721, 25.940256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118793, 37.544857, 26.366199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.952023, 37.231506, 26.181814>,  <40.851959, 37.043495, 26.071182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.952023, 37.231506, 26.181814>,  <41.118793, 37.544857, 26.366199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952023, 37.231506, 26.181814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288936, -0.366613, 0.884370,
		-0.861793, 0.501909, -0.073495,
		-0.416929, -0.783379, -0.460963,
		40.826942, 36.996494, 26.043526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446411, 37.515995, 26.663368>,  <41.118793, 37.544857, 26.366199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446411, 37.515995, 26.663368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.531570, 37.148640, 26.529961>,  <40.582664, 36.928226, 26.449915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.531570, 37.148640, 26.529961>,  <40.446411, 37.515995, 26.663368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531570, 37.148640, 26.529961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242124, -0.380287, 0.892612,
		-0.946599, -0.109282, -0.303326,
		0.212897, -0.918389, -0.333520,
		40.595440, 36.873123, 26.429905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908447, 36.967926, 26.855864>,  <40.446411, 37.515995, 26.663368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908447, 36.967926, 26.855864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.251919, 36.777843, 26.779079>,  <40.458004, 36.663795, 26.733009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.251919, 36.777843, 26.779079>,  <39.908447, 36.967926, 26.855864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251919, 36.777843, 26.779079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022642, -0.409358, 0.912093,
		-0.512008, -0.778851, -0.362268,
		0.858682, -0.475202, -0.191960,
		40.509521, 36.635284, 26.721491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238102, 37.213280, 26.623365>,  <39.908447, 36.967926, 26.855864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238102, 37.213280, 26.623365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901184, 37.330723, 26.804180>,  <38.699036, 37.401188, 26.912668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.901184, 37.330723, 26.804180>,  <39.238102, 37.213280, 26.623365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901184, 37.330723, 26.804180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019508, 0.821471, -0.569917,
		-0.538668, -0.488855, -0.686190,
		-0.842292, 0.293610, 0.452036,
		38.648495, 37.418804, 26.939791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770260, 37.375748, 26.076895>,  <39.238102, 37.213280, 26.623365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770260, 37.375748, 26.076895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.628361, 37.571552, 26.395525>,  <38.543221, 37.689037, 26.586702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.628361, 37.571552, 26.395525>,  <38.770260, 37.375748, 26.076895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628361, 37.571552, 26.395525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154911, 0.809436, -0.566406,
		-0.922039, -0.324330, -0.211315,
		-0.354749, 0.489514, 0.796574,
		38.521935, 37.718407, 26.634497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131126, 37.557011, 25.896429>,  <38.770260, 37.375748, 26.076895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131126, 37.557011, 25.896429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.257484, 37.820271, 26.169792>,  <38.333298, 37.978226, 26.333811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.257484, 37.820271, 26.169792>,  <38.131126, 37.557011, 25.896429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257484, 37.820271, 26.169792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259337, 0.752757, -0.605063,
		-0.912664, 0.013903, 0.408475,
		0.315895, 0.658152, 0.683408,
		38.352253, 38.017715, 26.374815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720524, 38.090725, 25.879953>,  <38.131126, 37.557011, 25.896429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720524, 38.090725, 25.879953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.020607, 38.256611, 26.085943>,  <38.200657, 38.356144, 26.209538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.020607, 38.256611, 26.085943>,  <37.720524, 38.090725, 25.879953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020607, 38.256611, 26.085943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038869, 0.805159, -0.591784,
		-0.660059, 0.423944, 0.620156,
		0.750208, 0.414717, 0.514974,
		38.245670, 38.381027, 26.240435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470749, 38.899681, 25.863964>,  <37.720524, 38.090725, 25.879953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470749, 38.899681, 25.863964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.859032, 38.862000, 25.952375>,  <38.092003, 38.839390, 26.005423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.859032, 38.862000, 25.952375>,  <37.470749, 38.899681, 25.863964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859032, 38.862000, 25.952375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201369, 0.820808, -0.534532,
		-0.131069, 0.563382, 0.815734,
		0.970707, -0.094203, 0.221030,
		38.150242, 38.833740, 26.018684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686481, 39.490673, 26.136938>,  <37.470749, 38.899681, 25.863964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686481, 39.490673, 26.136938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033234, 39.339451, 26.006962>,  <38.241287, 39.248718, 25.928976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033234, 39.339451, 26.006962>,  <37.686481, 39.490673, 26.136938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033234, 39.339451, 26.006962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118754, 0.789674, -0.601924,
		0.484157, 0.483210, 0.729452,
		0.866885, -0.378051, -0.324943,
		38.293301, 39.226036, 25.909479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168163, 39.927868, 26.127251>,  <37.686481, 39.490673, 26.136938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168163, 39.927868, 26.127251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327618, 39.680931, 25.855965>,  <38.423290, 39.532768, 25.693193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327618, 39.680931, 25.855965>,  <38.168163, 39.927868, 26.127251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327618, 39.680931, 25.855965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158303, 0.774730, -0.612155,
		0.903343, 0.136664, 0.406563,
		0.398636, -0.617346, -0.678213,
		38.447208, 39.495728, 25.652500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306797, 40.383148, 26.738607>,  <38.168163, 39.927868, 26.127251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306797, 40.383148, 26.738607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.056221, 40.678917, 26.837261>,  <37.905876, 40.856377, 26.896454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.056221, 40.678917, 26.837261>,  <38.306797, 40.383148, 26.738607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056221, 40.678917, 26.837261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491955, -0.620489, 0.610717,
		0.604611, 0.261244, 0.752461,
		-0.626440, 0.739422, 0.246634,
		37.868290, 40.900745, 26.911251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250114, 40.391899, 27.409601>,  <38.306797, 40.383148, 26.738607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250114, 40.391899, 27.409601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920391, 40.602383, 27.326059>,  <37.722557, 40.728672, 27.275934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.920391, 40.602383, 27.326059>,  <38.250114, 40.391899, 27.409601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920391, 40.602383, 27.326059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531947, -0.593623, 0.603858,
		0.193772, 0.608866, 0.769243,
		-0.824309, 0.526207, -0.208857,
		37.673100, 40.760246, 27.263403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885475, 40.601494, 27.973150>,  <38.250114, 40.391899, 27.409601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885475, 40.601494, 27.973150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.596172, 40.621609, 27.697655>,  <37.422588, 40.633678, 27.532356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.596172, 40.621609, 27.697655>,  <37.885475, 40.601494, 27.973150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596172, 40.621609, 27.697655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547583, -0.649447, 0.527609,
		-0.420767, 0.758742, 0.497257,
		-0.723262, 0.050289, -0.688740,
		37.379192, 40.636696, 27.491032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367615, 40.600075, 28.388950>,  <37.885475, 40.601494, 27.973150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367615, 40.600075, 28.388950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.226521, 40.491932, 28.030626>,  <37.141865, 40.427044, 27.815632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.226521, 40.491932, 28.030626>,  <37.367615, 40.600075, 28.388950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226521, 40.491932, 28.030626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548488, -0.715895, 0.432036,
		-0.758113, 0.643738, 0.104234,
		-0.352739, -0.270361, -0.895812,
		37.120697, 40.410824, 27.761883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659874, 40.568966, 28.477367>,  <37.367615, 40.600075, 28.388950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659874, 40.568966, 28.477367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.746773, 40.328693, 28.169607>,  <36.798912, 40.184528, 27.984951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.746773, 40.328693, 28.169607>,  <36.659874, 40.568966, 28.477367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746773, 40.328693, 28.169607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512105, -0.741179, 0.434052,
		-0.830994, 0.299717, -0.468635,
		0.217250, -0.600685, -0.769402,
		36.811947, 40.148487, 27.938787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001320, 40.259766, 28.245367>,  <36.659874, 40.568966, 28.477367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001320, 40.259766, 28.245367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.282825, 40.024513, 28.085960>,  <36.451729, 39.883362, 27.990316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.282825, 40.024513, 28.085960>,  <36.001320, 40.259766, 28.245367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282825, 40.024513, 28.085960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443715, -0.801966, 0.399960,
		-0.554826, -0.104649, -0.825358,
		0.703765, -0.588132, -0.398517,
		36.493954, 39.848072, 27.966406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688637, 39.639194, 28.075089>,  <36.001320, 40.259766, 28.245367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688637, 39.639194, 28.075089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.057323, 39.492790, 28.023729>,  <36.278534, 39.404949, 27.992914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.057323, 39.492790, 28.023729>,  <35.688637, 39.639194, 28.075089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057323, 39.492790, 28.023729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355043, -0.929415, 0.100665,
		-0.156179, -0.047198, -0.986601,
		0.921712, -0.366007, -0.128398,
		36.333836, 39.382988, 27.985210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.721695, 41.763836, 26.332327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.089218, 41.606068, 26.326319>,  <42.309731, 41.511406, 26.322714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.089218, 41.606068, 26.326319>,  <41.721695, 41.763836, 26.332327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089218, 41.606068, 26.326319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060262, 0.102570, 0.992899,
		-0.390082, -0.913187, 0.118011,
		0.918806, -0.394423, -0.015020,
		42.364861, 41.487740, 26.321814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721882, 41.170242, 26.804470>,  <41.721695, 41.763836, 26.332327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721882, 41.170242, 26.804470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.099808, 41.290253, 26.751844>,  <42.326565, 41.362259, 26.720268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.099808, 41.290253, 26.751844>,  <41.721882, 41.170242, 26.804470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099808, 41.290253, 26.751844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145269, -0.023732, 0.989108,
		0.293635, -0.953636, -0.066006,
		0.944815, 0.300025, -0.131565,
		42.383251, 41.380260, 26.712376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065701, 40.739269, 27.255062>,  <41.721882, 41.170242, 26.804470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065701, 40.739269, 27.255062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379787, 40.969334, 27.163305>,  <42.568241, 41.107372, 27.108252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379787, 40.969334, 27.163305>,  <42.065701, 40.739269, 27.255062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379787, 40.969334, 27.163305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291326, -0.016247, 0.956486,
		0.546406, -0.817879, -0.180317,
		0.785220, 0.575160, -0.229392,
		42.615353, 41.141880, 27.094488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678104, 40.441528, 27.509966>,  <42.065701, 40.739269, 27.255062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678104, 40.441528, 27.509966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.762428, 40.832104, 27.491486>,  <42.813023, 41.066448, 27.480398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.762428, 40.832104, 27.491486>,  <42.678104, 40.441528, 27.509966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762428, 40.832104, 27.491486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317979, -0.023807, 0.947799,
		0.924363, -0.214498, -0.315505,
		0.210812, 0.976434, -0.046199,
		42.825672, 41.125034, 27.477625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350342, 40.573059, 27.771259>,  <42.678104, 40.441528, 27.509966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350342, 40.573059, 27.771259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.137501, 40.908993, 27.814238>,  <43.009796, 41.110554, 27.840025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.137501, 40.908993, 27.814238>,  <43.350342, 40.573059, 27.771259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137501, 40.908993, 27.814238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232084, 0.022634, 0.972432,
		0.814253, 0.542367, -0.206956,
		-0.532099, 0.839837, 0.107444,
		42.977871, 41.160942, 27.846472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592793, 40.877247, 28.417240>,  <43.350342, 40.573059, 27.771259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592793, 40.877247, 28.417240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.298748, 41.137787, 28.342024>,  <43.122322, 41.294109, 28.296894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.298748, 41.137787, 28.342024>,  <43.592793, 40.877247, 28.417240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298748, 41.137787, 28.342024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119738, 0.148268, 0.981672,
		0.667289, 0.744153, -0.031003,
		-0.735111, 0.651346, -0.188041,
		43.078213, 41.333191, 28.285612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813953, 41.465904, 28.696594>,  <43.592793, 40.877247, 28.417240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813953, 41.465904, 28.696594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.416794, 41.493847, 28.658066>,  <43.178497, 41.510612, 28.634949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.416794, 41.493847, 28.658066>,  <43.813953, 41.465904, 28.696594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416794, 41.493847, 28.658066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071674, 0.295057, 0.952788,
		0.094978, 0.952923, -0.287954,
		-0.992896, 0.069855, -0.096323,
		43.118923, 41.514805, 28.629169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664055, 42.032475, 29.090376>,  <43.813953, 41.465904, 28.696594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664055, 42.032475, 29.090376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.305958, 41.857151, 29.058298>,  <43.091099, 41.751957, 29.039051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.305958, 41.857151, 29.058298>,  <43.664055, 42.032475, 29.090376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305958, 41.857151, 29.058298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178655, 0.188202, 0.965745,
		-0.408205, 0.878899, -0.246792,
		-0.895238, -0.438312, -0.080194,
		43.037388, 41.725658, 29.034241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174236, 42.472408, 29.396399>,  <43.664055, 42.032475, 29.090376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174236, 42.472408, 29.396399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.994465, 42.115097, 29.399860>,  <42.886600, 41.900711, 29.401937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.994465, 42.115097, 29.399860>,  <43.174236, 42.472408, 29.396399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994465, 42.115097, 29.399860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166216, 0.093140, 0.981681,
		-0.877716, 0.439758, -0.190336,
		-0.449430, -0.893274, 0.008656,
		42.859634, 41.847115, 29.402456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450436, 42.585148, 29.772968>,  <43.174236, 42.472408, 29.396399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450436, 42.585148, 29.772968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.577263, 42.206867, 29.801579>,  <42.653358, 41.979900, 29.818745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.577263, 42.206867, 29.801579>,  <42.450436, 42.585148, 29.772968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577263, 42.206867, 29.801579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185006, 0.012296, 0.982661,
		-0.930185, -0.324800, -0.171062,
		0.317064, -0.945703, 0.071527,
		42.672382, 41.923157, 29.823036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084511, 42.388809, 30.274673>,  <42.450436, 42.585148, 29.772968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084511, 42.388809, 30.274673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363312, 42.101997, 30.277475>,  <42.530594, 41.929909, 30.279158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363312, 42.101997, 30.277475>,  <42.084511, 42.388809, 30.274673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363312, 42.101997, 30.277475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118579, -0.105618, 0.987311,
		-0.707195, -0.688991, -0.158641,
		0.697004, -0.717033, 0.007007,
		42.572414, 41.886887, 30.279577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780685, 41.851162, 30.673210>,  <42.084511, 42.388809, 30.274673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780685, 41.851162, 30.673210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.175797, 41.792175, 30.693405>,  <42.412865, 41.756783, 30.705523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.175797, 41.792175, 30.693405>,  <41.780685, 41.851162, 30.673210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175797, 41.792175, 30.693405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095772, -0.318658, 0.943019,
		-0.122973, -0.936329, -0.328886,
		0.987778, -0.147464, 0.050487,
		42.472130, 41.747936, 30.708551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268120, 41.528423, 30.123924>,  <41.780685, 41.851162, 30.673210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268120, 41.528423, 30.123924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.880806, 41.434566, 30.089602>,  <40.648418, 41.378254, 30.069008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.880806, 41.434566, 30.089602>,  <41.268120, 41.528423, 30.123924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880806, 41.434566, 30.089602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014703, 0.396368, -0.917974,
		0.249403, -0.887602, -0.387248,
		-0.968288, -0.234639, -0.085805,
		40.590321, 41.364174, 30.063860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130383, 41.224289, 29.448652>,  <41.268120, 41.528423, 30.123924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130383, 41.224289, 29.448652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784698, 41.377308, 29.579374>,  <40.577290, 41.469120, 29.657808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784698, 41.377308, 29.579374>,  <41.130383, 41.224289, 29.448652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784698, 41.377308, 29.579374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061054, 0.565000, -0.822829,
		-0.499421, -0.731046, -0.464920,
		-0.864206, 0.382552, 0.326806,
		40.525436, 41.492073, 29.677416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723782, 41.378426, 28.838034>,  <41.130383, 41.224289, 29.448652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723782, 41.378426, 28.838034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.549377, 41.576401, 29.138681>,  <40.444733, 41.695187, 29.319071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.549377, 41.576401, 29.138681>,  <40.723782, 41.378426, 28.838034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549377, 41.576401, 29.138681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356050, 0.672172, -0.649163,
		-0.826510, -0.550659, -0.116856,
		-0.436015, 0.494934, 0.751619,
		40.418571, 41.724880, 29.364168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985104, 41.380379, 28.655640>,  <40.723782, 41.378426, 28.838034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985104, 41.380379, 28.655640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.079971, 41.697075, 28.880814>,  <40.136890, 41.887093, 29.015919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.079971, 41.697075, 28.880814>,  <39.985104, 41.380379, 28.655640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079971, 41.697075, 28.880814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329270, 0.610682, -0.720172,
		-0.913965, -0.014557, 0.405531,
		0.237168, 0.791742, 0.562936,
		40.151123, 41.934597, 29.049694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393276, 41.847900, 28.616634>,  <39.985104, 41.380379, 28.655640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393276, 41.847900, 28.616634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.710026, 42.059036, 28.739477>,  <39.900078, 42.185719, 28.813183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.710026, 42.059036, 28.739477>,  <39.393276, 41.847900, 28.616634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710026, 42.059036, 28.739477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204169, 0.702791, -0.681469,
		-0.575540, 0.476937, 0.664293,
		0.791877, 0.527840, 0.307108,
		39.947590, 42.217388, 28.831610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113289, 42.470924, 28.593716>,  <39.393276, 41.847900, 28.616634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113289, 42.470924, 28.593716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.509972, 42.521931, 28.587402>,  <39.747982, 42.552536, 28.583614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.509972, 42.521931, 28.587402>,  <39.113289, 42.470924, 28.593716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509972, 42.521931, 28.587402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099270, 0.682376, -0.724230,
		-0.081583, 0.719793, 0.689378,
		0.991710, 0.127519, -0.015783,
		39.807484, 42.560188, 28.582668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195690, 43.116444, 28.704512>,  <39.113289, 42.470924, 28.593716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195690, 43.116444, 28.704512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.524765, 42.996468, 28.511337>,  <39.722210, 42.924484, 28.395433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.524765, 42.996468, 28.511337>,  <39.195690, 43.116444, 28.704512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524765, 42.996468, 28.511337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034546, 0.874301, -0.484153,
		0.567446, 0.381622, 0.729637,
		0.822686, -0.299937, -0.482935,
		39.771572, 42.906487, 28.366457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646095, 43.729080, 28.666210>,  <39.195690, 43.116444, 28.704512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646095, 43.729080, 28.666210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.801949, 43.486164, 28.389257>,  <39.895458, 43.340416, 28.223085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.801949, 43.486164, 28.389257>,  <39.646095, 43.729080, 28.666210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801949, 43.486164, 28.389257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181647, 0.787700, -0.588671,
		0.902880, 0.103595, 0.417223,
		0.389630, -0.607287, -0.692381,
		39.918839, 43.303978, 28.181543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201748, 44.075981, 28.475557>,  <39.646095, 43.729080, 28.666210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201748, 44.075981, 28.475557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.159470, 43.814888, 28.175486>,  <40.134102, 43.658230, 27.995443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.159470, 43.814888, 28.175486>,  <40.201748, 44.075981, 28.475557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159470, 43.814888, 28.175486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271807, 0.706711, -0.653208,
		0.956531, -0.272942, 0.102724,
		-0.105691, -0.652735, -0.750178,
		40.127762, 43.619068, 27.950432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755459, 44.311954, 28.053629>,  <40.201748, 44.075981, 28.475557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755459, 44.311954, 28.053629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.488747, 44.099617, 27.844398>,  <40.328720, 43.972214, 27.718861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.488747, 44.099617, 27.844398>,  <40.755459, 44.311954, 28.053629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488747, 44.099617, 27.844398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033480, 0.722507, -0.690553,
		0.744502, -0.442934, -0.499526,
		-0.666780, -0.530842, -0.523078,
		40.288712, 43.940365, 27.687475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911217, 44.427944, 27.330345>,  <40.755459, 44.311954, 28.053629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911217, 44.427944, 27.330345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.529087, 44.314697, 27.364271>,  <40.299809, 44.246750, 27.384626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.529087, 44.314697, 27.364271>,  <40.911217, 44.427944, 27.330345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529087, 44.314697, 27.364271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263650, 0.686698, -0.677447,
		0.133553, -0.669545, -0.730666,
		-0.955328, -0.283115, 0.084815,
		40.242489, 44.229763, 27.389715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726242, 44.266090, 26.616747>,  <40.911217, 44.427944, 27.330345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726242, 44.266090, 26.616747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.380363, 44.330528, 26.807053>,  <40.172836, 44.369190, 26.921236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.380363, 44.330528, 26.807053>,  <40.726242, 44.266090, 26.616747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380363, 44.330528, 26.807053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325420, 0.541849, -0.774920,
		-0.382630, -0.824892, -0.416110,
		-0.864694, 0.161097, 0.475765,
		40.120956, 44.378857, 26.949781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230972, 44.016453, 26.194849>,  <40.726242, 44.266090, 26.616747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230972, 44.016453, 26.194849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.077896, 44.290012, 26.443312>,  <39.986050, 44.454147, 26.592388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.077896, 44.290012, 26.443312>,  <40.230972, 44.016453, 26.194849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077896, 44.290012, 26.443312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289528, 0.549690, -0.783591,
		-0.877336, -0.479717, -0.012356,
		-0.382694, 0.683895, 0.621155,
		39.963089, 44.495182, 26.629658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538658, 44.118343, 26.049141>,  <40.230972, 44.016453, 26.194849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538658, 44.118343, 26.049141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633450, 44.457836, 26.238243>,  <39.690327, 44.661533, 26.351704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.633450, 44.457836, 26.238243>,  <39.538658, 44.118343, 26.049141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633450, 44.457836, 26.238243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460948, 0.526584, -0.714308,
		-0.855200, -0.048636, 0.516012,
		0.236982, 0.848730, 0.472753,
		39.704544, 44.712456, 26.380070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223465, 43.464722, 26.175581>,  <39.538658, 44.118343, 26.049141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223465, 43.464722, 26.175581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.185452, 43.259537, 25.834328>,  <39.162643, 43.136425, 25.629576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.185452, 43.259537, 25.834328>,  <39.223465, 43.464722, 26.175581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185452, 43.259537, 25.834328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716305, -0.559895, 0.416443,
		-0.691285, 0.650681, -0.314228,
		-0.095037, -0.512964, -0.853133,
		39.156940, 43.105648, 25.578388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569378, 43.479275, 26.031454>,  <39.223465, 43.464722, 26.175581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569378, 43.479275, 26.031454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.695042, 43.160645, 25.824854>,  <38.770439, 42.969467, 25.700893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.695042, 43.160645, 25.824854>,  <38.569378, 43.479275, 26.031454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695042, 43.160645, 25.824854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718118, -0.555247, 0.419532,
		-0.620974, 0.239109, -0.746470,
		0.314162, -0.796573, -0.516503,
		38.789291, 42.921673, 25.669903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928242, 43.059410, 25.885424>,  <38.569378, 43.479275, 26.031454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928242, 43.059410, 25.885424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.237812, 42.809570, 25.843626>,  <38.423553, 42.659668, 25.818546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.237812, 42.809570, 25.843626>,  <37.928242, 43.059410, 25.885424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237812, 42.809570, 25.843626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539116, -0.736389, 0.408760,
		-0.332260, -0.260014, -0.906640,
		0.773923, -0.624599, -0.104495,
		38.469990, 42.622192, 25.812277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707836, 42.535549, 25.578259>,  <37.928242, 43.059410, 25.885424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707836, 42.535549, 25.578259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.033821, 42.402191, 25.767859>,  <38.229412, 42.322174, 25.881618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.033821, 42.402191, 25.767859>,  <37.707836, 42.535549, 25.578259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033821, 42.402191, 25.767859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536124, -0.744275, 0.398278,
		0.220001, -0.578705, -0.785302,
		0.814967, -0.333398, 0.473999,
		38.278313, 42.302174, 25.910059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708710, 41.841019, 25.499464>,  <37.707836, 42.535549, 25.578259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708710, 41.841019, 25.499464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.982769, 41.877880, 25.788485>,  <38.147205, 41.899998, 25.961897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.982769, 41.877880, 25.788485>,  <37.708710, 41.841019, 25.499464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982769, 41.877880, 25.788485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398624, -0.782806, 0.477822,
		0.609650, -0.615405, -0.499604,
		0.685147, 0.092150, 0.722553,
		38.188313, 41.905525, 26.005251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777863, 41.163311, 25.671255>,  <37.708710, 41.841019, 25.499464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777863, 41.163311, 25.671255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.946175, 41.362206, 25.974754>,  <38.047161, 41.481544, 26.156855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.946175, 41.362206, 25.974754>,  <37.777863, 41.163311, 25.671255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946175, 41.362206, 25.974754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277536, -0.725730, 0.629515,
		0.863665, -0.475468, -0.167372,
		0.420781, 0.497238, 0.758748,
		38.072411, 41.511375, 26.202379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174183, 40.694351, 26.029654>,  <37.777863, 41.163311, 25.671255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174183, 40.694351, 26.029654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.082428, 40.962997, 26.311453>,  <38.027374, 41.124184, 26.480532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.082428, 40.962997, 26.311453>,  <38.174183, 40.694351, 26.029654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082428, 40.962997, 26.311453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333059, -0.734264, 0.591547,
		0.914578, -0.098945, 0.392119,
		-0.229389, 0.671614, 0.704496,
		38.013611, 41.164482, 26.522802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708355, 40.299511, 25.841143>,  <38.174183, 40.694351, 26.029654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708355, 40.299511, 25.841143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.670956, 40.011280, 25.566328>,  <38.648518, 39.838341, 25.401440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.670956, 40.011280, 25.566328>,  <38.708355, 40.299511, 25.841143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670956, 40.011280, 25.566328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172895, 0.667825, -0.723959,
		0.980492, -0.186475, 0.062144,
		-0.093499, -0.720581, -0.687038,
		38.642906, 39.795105, 25.360216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229816, 40.490578, 25.280340>,  <38.708355, 40.299511, 25.841143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229816, 40.490578, 25.280340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.007484, 40.217110, 25.091175>,  <38.874084, 40.053028, 24.977676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.007484, 40.217110, 25.091175>,  <39.229816, 40.490578, 25.280340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007484, 40.217110, 25.091175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189778, 0.449505, -0.872886,
		0.809344, -0.574924, -0.120102,
		-0.555829, -0.683673, -0.472912,
		38.840736, 40.012009, 24.949301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617001, 40.114540, 24.757490>,  <39.229816, 40.490578, 25.280340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617001, 40.114540, 24.757490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.233765, 40.066051, 24.653667>,  <39.003822, 40.036957, 24.591373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.233765, 40.066051, 24.653667>,  <39.617001, 40.114540, 24.757490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233765, 40.066051, 24.653667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195811, 0.384221, -0.902237,
		0.209095, -0.915248, -0.344383,
		-0.958090, -0.121220, -0.259555,
		38.946339, 40.029686, 24.575802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656368, 39.873177, 24.123569>,  <39.617001, 40.114540, 24.757490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656368, 39.873177, 24.123569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.280361, 40.008511, 24.141008>,  <39.054756, 40.089710, 24.151472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.280361, 40.008511, 24.141008>,  <39.656368, 39.873177, 24.123569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280361, 40.008511, 24.141008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065217, 0.303673, -0.950542,
		-0.334845, -0.890679, -0.307522,
		-0.940014, 0.338340, 0.043595,
		38.998356, 40.110012, 24.154087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330128, 39.634285, 23.474947>,  <39.656368, 39.873177, 24.123569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330128, 39.634285, 23.474947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.118847, 39.936928, 23.629116>,  <38.992077, 40.118511, 23.721617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.118847, 39.936928, 23.629116>,  <39.330128, 39.634285, 23.474947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118847, 39.936928, 23.629116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013175, 0.461158, -0.887220,
		-0.849015, -0.463555, -0.253554,
		-0.528204, 0.756604, 0.385423,
		38.960384, 40.163910, 23.744743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767288, 39.808704, 22.985611>,  <39.330128, 39.634285, 23.474947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767288, 39.808704, 22.985611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.797535, 40.131016, 23.220556>,  <38.815681, 40.324402, 23.361523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.797535, 40.131016, 23.220556>,  <38.767288, 39.808704, 22.985611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797535, 40.131016, 23.220556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076769, 0.592006, -0.802269,
		-0.994177, 0.015574, 0.106625,
		0.075617, 0.805783, 0.587364,
		38.820221, 40.372749, 23.396765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352119, 40.299793, 22.623116>,  <38.767288, 39.808704, 22.985611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352119, 40.299793, 22.623116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.581837, 40.520187, 22.865309>,  <38.719666, 40.652424, 23.010624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.581837, 40.520187, 22.865309>,  <38.352119, 40.299793, 22.623116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581837, 40.520187, 22.865309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162194, 0.648370, -0.743848,
		-0.802425, 0.525389, 0.282986,
		0.574289, 0.550983, 0.605483,
		38.754124, 40.685482, 23.046953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260269, 40.935356, 22.415850>,  <38.352119, 40.299793, 22.623116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260269, 40.935356, 22.415850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.598129, 40.959446, 22.628620>,  <38.800846, 40.973900, 22.756283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.598129, 40.959446, 22.628620>,  <38.260269, 40.935356, 22.415850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598129, 40.959446, 22.628620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403252, 0.581938, -0.706213,
		-0.352077, 0.811000, 0.467247,
		0.844648, 0.060223, 0.531925,
		38.851524, 40.977512, 22.788198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488071, 41.615845, 22.246098>,  <38.260269, 40.935356, 22.415850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488071, 41.615845, 22.246098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.800652, 41.407475, 22.383488>,  <38.988197, 41.282452, 22.465921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.800652, 41.407475, 22.383488>,  <38.488071, 41.615845, 22.246098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800652, 41.407475, 22.383488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606511, 0.504832, -0.614239,
		0.146576, 0.688317, 0.710447,
		0.781448, -0.520926, 0.343475,
		39.035088, 41.251198, 22.486530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.552471, 32.693100, 35.460888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952255, 32.702431, 35.470097>,  <37.192127, 32.708031, 35.475620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.952255, 32.702431, 35.470097>,  <36.552471, 32.693100, 35.460888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952255, 32.702431, 35.470097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017655, 0.208590, -0.977844,
		-0.027611, 0.977725, 0.208066,
		0.999463, 0.023325, 0.023021,
		37.252094, 32.709427, 35.477001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803520, 33.382015, 35.319374>,  <36.552471, 32.693100, 35.460888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803520, 33.382015, 35.319374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.048882, 33.096134, 35.184952>,  <37.196098, 32.924606, 35.104298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.048882, 33.096134, 35.184952>,  <36.803520, 33.382015, 35.319374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048882, 33.096134, 35.184952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248607, 0.229145, -0.941109,
		0.749617, 0.660830, -0.037120,
		0.613408, -0.714700, -0.336058,
		37.232903, 32.881725, 35.084133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186333, 33.672009, 34.673023>,  <36.803520, 33.382015, 35.319374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186333, 33.672009, 34.673023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229626, 33.277020, 34.627083>,  <37.255600, 33.040028, 34.599518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.229626, 33.277020, 34.627083>,  <37.186333, 33.672009, 34.673023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229626, 33.277020, 34.627083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249658, 0.084830, -0.964611,
		0.962266, 0.133078, -0.237348,
		0.108234, -0.987468, -0.114853,
		37.262096, 32.980778, 34.592628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601357, 33.677528, 34.192177>,  <37.186333, 33.672009, 34.673023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601357, 33.677528, 34.192177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410789, 33.325867, 34.187958>,  <37.296448, 33.114868, 34.185425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410789, 33.325867, 34.187958>,  <37.601357, 33.677528, 34.192177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410789, 33.325867, 34.187958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109499, 0.071231, -0.991431,
		0.872373, -0.471182, -0.130202,
		-0.476419, -0.879155, -0.010546,
		37.267864, 33.062119, 34.184795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581512, 33.565857, 33.489002>,  <37.601357, 33.677528, 34.192177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581512, 33.565857, 33.489002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387550, 33.244759, 33.627834>,  <37.271175, 33.052097, 33.711132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387550, 33.244759, 33.627834>,  <37.581512, 33.565857, 33.489002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387550, 33.244759, 33.627834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146899, -0.316459, -0.937163,
		0.862144, -0.505416, 0.035528,
		-0.484900, -0.802750, 0.347079,
		37.242081, 33.003933, 33.731956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854549, 32.892483, 33.249207>,  <37.581512, 33.565857, 33.489002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854549, 32.892483, 33.249207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463650, 32.848751, 33.321896>,  <37.229111, 32.822514, 33.365509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463650, 32.848751, 33.321896>,  <37.854549, 32.892483, 33.249207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463650, 32.848751, 33.321896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149011, -0.255730, -0.955195,
		0.150904, -0.960546, 0.233621,
		-0.977253, -0.109330, 0.181723,
		37.170475, 32.815952, 33.376411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655136, 32.409576, 32.787018>,  <37.854549, 32.892483, 33.249207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655136, 32.409576, 32.787018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297031, 32.561348, 32.880440>,  <37.082169, 32.652409, 32.936493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.297031, 32.561348, 32.880440>,  <37.655136, 32.409576, 32.787018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297031, 32.561348, 32.880440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258439, -0.015235, -0.965907,
		-0.362934, -0.925096, 0.111699,
		-0.895259, 0.379428, 0.233552,
		37.028454, 32.675175, 32.950504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215187, 32.127918, 32.317432>,  <37.655136, 32.409576, 32.787018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215187, 32.127918, 32.317432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024555, 32.459660, 32.434078>,  <36.910175, 32.658707, 32.504066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024555, 32.459660, 32.434078>,  <37.215187, 32.127918, 32.317432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024555, 32.459660, 32.434078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291880, 0.163621, -0.942355,
		-0.829264, -0.534222, 0.164095,
		-0.476578, 0.829358, 0.291614,
		36.881580, 32.708466, 32.521561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518101, 32.130188, 31.940613>,  <37.215187, 32.127918, 32.317432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518101, 32.130188, 31.940613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619152, 32.504654, 32.038406>,  <36.679783, 32.729336, 32.097080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619152, 32.504654, 32.038406>,  <36.518101, 32.130188, 31.940613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619152, 32.504654, 32.038406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104653, 0.277633, -0.954970,
		-0.961888, 0.215664, 0.168110,
		0.252626, 0.936167, 0.244482,
		36.694939, 32.785503, 32.111752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022469, 32.538074, 31.584732>,  <36.518101, 32.130188, 31.940613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022469, 32.538074, 31.584732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316143, 32.791492, 31.682384>,  <36.492348, 32.943542, 31.740976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316143, 32.791492, 31.682384>,  <36.022469, 32.538074, 31.584732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316143, 32.791492, 31.682384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062244, 0.295249, -0.953391,
		-0.676092, 0.715159, 0.177333,
		0.734183, 0.633542, 0.244130,
		36.536400, 32.981556, 31.755623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850605, 33.205452, 31.230778>,  <36.022469, 32.538074, 31.584732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850605, 33.205452, 31.230778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236267, 33.229305, 31.334202>,  <36.467663, 33.243618, 31.396257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.236267, 33.229305, 31.334202>,  <35.850605, 33.205452, 31.230778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236267, 33.229305, 31.334202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180552, 0.566643, -0.803938,
		-0.194450, 0.821803, 0.535564,
		0.964153, 0.059629, 0.258562,
		36.525513, 33.247192, 31.411770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053165, 33.862770, 31.251379>,  <35.850605, 33.205452, 31.230778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053165, 33.862770, 31.251379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408432, 33.684772, 31.205526>,  <36.621593, 33.577976, 31.178015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.408432, 33.684772, 31.205526>,  <36.053165, 33.862770, 31.251379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408432, 33.684772, 31.205526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277471, 0.718195, -0.638127,
		0.366291, 0.534956, 0.761350,
		0.888167, -0.444992, -0.114634,
		36.674881, 33.551273, 31.171137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093513, 34.356533, 31.894356>,  <36.053165, 33.862770, 31.251379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093513, 34.356533, 31.894356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811993, 34.629250, 31.974167>,  <35.643078, 34.792881, 32.022053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811993, 34.629250, 31.974167>,  <36.093513, 34.356533, 31.894356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811993, 34.629250, 31.974167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348163, -0.575878, 0.739693,
		0.619224, 0.451132, 0.642683,
		-0.703807, 0.681794, 0.199530,
		35.600849, 34.833786, 32.034027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147320, 34.520794, 32.544640>,  <36.093513, 34.356533, 31.894356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147320, 34.520794, 32.544640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764332, 34.587540, 32.450481>,  <35.534538, 34.627586, 32.393986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764332, 34.587540, 32.450481>,  <36.147320, 34.520794, 32.544640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764332, 34.587540, 32.450481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282598, -0.377638, 0.881775,
		0.058240, 0.910795, 0.408731,
		-0.957469, 0.166861, -0.235395,
		35.477093, 34.637596, 32.379864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975639, 34.874996, 33.067089>,  <36.147320, 34.520794, 32.544640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975639, 34.874996, 33.067089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.626308, 34.760052, 32.909752>,  <35.416710, 34.691086, 32.815350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.626308, 34.760052, 32.909752>,  <35.975639, 34.874996, 33.067089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626308, 34.760052, 32.909752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331073, -0.242177, 0.911998,
		-0.357334, 0.926700, 0.116361,
		-0.873329, -0.287364, -0.393343,
		35.364311, 34.673843, 32.791748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500229, 35.253418, 33.475052>,  <35.975639, 34.874996, 33.067089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500229, 35.253418, 33.475052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321358, 34.933960, 33.313957>,  <35.214035, 34.742283, 33.217300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321358, 34.933960, 33.313957>,  <35.500229, 35.253418, 33.475052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321358, 34.933960, 33.313957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413531, -0.214646, 0.884827,
		-0.793110, 0.562217, -0.234281,
		-0.447177, -0.798648, -0.402733,
		35.187206, 34.694366, 33.193138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824966, 35.338543, 33.615498>,  <35.500229, 35.253418, 33.475052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824966, 35.338543, 33.615498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845688, 34.946705, 33.537815>,  <34.858120, 34.711601, 33.491203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845688, 34.946705, 33.537815>,  <34.824966, 35.338543, 33.615498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845688, 34.946705, 33.537815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491089, -0.194320, 0.849159,
		-0.869568, 0.051385, -0.491132,
		0.051803, -0.979591, -0.194209,
		34.861229, 34.652828, 33.479553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225662, 35.103748, 33.805149>,  <34.824966, 35.338543, 33.615498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225662, 35.103748, 33.805149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456200, 34.777031, 33.794819>,  <34.594524, 34.581001, 33.788620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456200, 34.777031, 33.794819>,  <34.225662, 35.103748, 33.805149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456200, 34.777031, 33.794819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295521, -0.237785, 0.925270,
		-0.761900, -0.525644, -0.378428,
		0.576347, -0.816797, -0.025830,
		34.629105, 34.531990, 33.787071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832367, 34.591927, 33.981613>,  <34.225662, 35.103748, 33.805149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832367, 34.591927, 33.981613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188114, 34.433964, 34.073757>,  <34.401562, 34.339184, 34.129044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188114, 34.433964, 34.073757>,  <33.832367, 34.591927, 33.981613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188114, 34.433964, 34.073757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344757, -0.248389, 0.905232,
		-0.300272, -0.884503, -0.357059,
		0.889370, -0.394914, 0.230354,
		34.454926, 34.315491, 34.142864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626053, 34.091408, 34.470276>,  <33.832367, 34.591927, 33.981613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626053, 34.091408, 34.470276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024902, 34.080700, 34.498650>,  <34.264210, 34.074276, 34.515675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.024902, 34.080700, 34.498650>,  <33.626053, 34.091408, 34.470276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024902, 34.080700, 34.498650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074857, -0.496035, 0.865070,
		0.012030, -0.867890, -0.496611,
		0.997122, -0.026768, 0.070935,
		34.324039, 34.072670, 34.519932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893349, 33.403542, 34.700874>,  <33.626053, 34.091408, 34.470276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893349, 33.403542, 34.700874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150070, 33.694973, 34.796593>,  <34.304104, 33.869831, 34.854023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.150070, 33.694973, 34.796593>,  <33.893349, 33.403542, 34.700874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150070, 33.694973, 34.796593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127724, -0.206134, 0.970152,
		0.756158, -0.653212, -0.039241,
		0.641804, 0.728576, 0.239300,
		34.342613, 33.913548, 34.868382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336781, 33.070469, 35.126163>,  <33.893349, 33.403542, 34.700874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336781, 33.070469, 35.126163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424362, 33.453072, 35.203266>,  <34.476910, 33.682632, 35.249527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424362, 33.453072, 35.203266>,  <34.336781, 33.070469, 35.126163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424362, 33.453072, 35.203266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130326, -0.167107, 0.977287,
		0.966993, -0.239100, 0.088070,
		0.218952, 0.956507, 0.192752,
		34.490047, 33.740025, 35.261093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756947, 33.000862, 35.695606>,  <34.336781, 33.070469, 35.126163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756947, 33.000862, 35.695606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605961, 33.371250, 35.691574>,  <34.515369, 33.593483, 35.689156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.605961, 33.371250, 35.691574>,  <34.756947, 33.000862, 35.695606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605961, 33.371250, 35.691574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036022, -0.003802, 0.999344,
		0.925323, 0.377579, 0.034791,
		-0.377464, 0.925969, -0.010083,
		34.492722, 33.649040, 35.688549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227043, 33.340073, 36.011742>,  <34.756947, 33.000862, 35.695606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227043, 33.340073, 36.011742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867214, 33.512508, 36.039845>,  <34.651318, 33.615971, 36.056705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867214, 33.512508, 36.039845>,  <35.227043, 33.340073, 36.011742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867214, 33.512508, 36.039845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110145, 0.068253, 0.991569,
		0.422659, 0.899724, -0.108881,
		-0.899571, 0.431089, 0.070252,
		34.597343, 33.641834, 36.060921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307621, 33.811428, 36.556175>,  <35.227043, 33.340073, 36.011742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307621, 33.811428, 36.556175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911392, 33.773560, 36.516552>,  <34.673656, 33.750839, 36.492779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911392, 33.773560, 36.516552>,  <35.307621, 33.811428, 36.556175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911392, 33.773560, 36.516552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118591, 0.230152, 0.965902,
		-0.068646, 0.968538, -0.239209,
		-0.990567, -0.094674, -0.099061,
		34.614223, 33.745159, 36.486835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046947, 34.372879, 36.896935>,  <35.307621, 33.811428, 36.556175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046947, 34.372879, 36.896935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722660, 34.143776, 36.848461>,  <34.528088, 34.006313, 36.819378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722660, 34.143776, 36.848461>,  <35.046947, 34.372879, 36.896935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722660, 34.143776, 36.848461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146410, -0.002052, 0.989222,
		-0.566836, 0.819720, -0.082194,
		-0.810716, -0.572761, -0.121179,
		34.479446, 33.971947, 36.812107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423679, 34.703773, 37.263577>,  <35.046947, 34.372879, 36.896935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423679, 34.703773, 37.263577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401218, 34.305424, 37.235088>,  <34.387741, 34.066414, 37.217995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401218, 34.305424, 37.235088>,  <34.423679, 34.703773, 37.263577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401218, 34.305424, 37.235088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033012, -0.073146, 0.996775,
		-0.997876, 0.053621, 0.036984,
		-0.056153, -0.995879, -0.071221,
		34.384373, 34.006660, 37.213722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655334, 35.401035, 36.899628>,  <34.423679, 34.703773, 37.263577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655334, 35.401035, 36.899628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865875, 35.520760, 37.217964>,  <34.992199, 35.592594, 37.408966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.865875, 35.520760, 37.217964>,  <34.655334, 35.401035, 36.899628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865875, 35.520760, 37.217964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240974, 0.845105, -0.477210,
		-0.815402, 0.442959, 0.372701,
		0.526356, 0.299306, 0.795842,
		35.023781, 35.610550, 37.456718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476967, 36.071171, 37.036263>,  <34.655334, 35.401035, 36.899628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476967, 36.071171, 37.036263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864857, 36.027065, 37.123417>,  <35.097591, 36.000603, 37.175709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864857, 36.027065, 37.123417>,  <34.476967, 36.071171, 37.036263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864857, 36.027065, 37.123417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223297, 0.761529, -0.608450,
		-0.098835, 0.638683, 0.763096,
		0.969727, -0.110261, 0.217882,
		35.155773, 35.993988, 37.188782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712051, 36.706333, 37.101288>,  <34.476967, 36.071171, 37.036263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712051, 36.706333, 37.101288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051666, 36.500607, 37.052929>,  <35.255436, 36.377171, 37.023914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051666, 36.500607, 37.052929>,  <34.712051, 36.706333, 37.101288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051666, 36.500607, 37.052929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376780, 0.749830, -0.543868,
		0.370375, 0.416210, 0.830417,
		0.849034, -0.514319, -0.120899,
		35.306377, 36.346310, 37.016659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196842, 37.194218, 37.292801>,  <34.712051, 36.706333, 37.101288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196842, 37.194218, 37.292801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384922, 36.925365, 37.064011>,  <35.497768, 36.764053, 36.926735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384922, 36.925365, 37.064011>,  <35.196842, 37.194218, 37.292801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384922, 36.925365, 37.064011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562374, 0.727652, -0.392757,
		0.680184, -0.136992, 0.720127,
		0.470198, -0.672128, -0.571978,
		35.525982, 36.723728, 36.892418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968903, 37.419495, 37.328445>,  <35.196842, 37.194218, 37.292801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968903, 37.419495, 37.328445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918678, 37.189877, 37.004791>,  <35.888546, 37.052105, 36.810596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918678, 37.189877, 37.004791>,  <35.968903, 37.419495, 37.328445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918678, 37.189877, 37.004791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529824, 0.650746, -0.543890,
		0.838762, -0.496990, 0.222439,
		-0.125556, -0.574048, -0.809138,
		35.881012, 37.017662, 36.762051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616608, 37.175022, 37.055042>,  <35.968903, 37.419495, 37.328445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616608, 37.175022, 37.055042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367668, 37.124168, 36.746105>,  <36.218304, 37.093655, 36.560741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367668, 37.124168, 36.746105>,  <36.616608, 37.175022, 37.055042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367668, 37.124168, 36.746105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666292, 0.431773, -0.607970,
		0.410769, -0.892978, -0.184008,
		-0.622354, -0.127132, -0.772343,
		36.180962, 37.086029, 36.514400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981857, 36.965816, 36.529148>,  <36.616608, 37.175022, 37.055042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981857, 36.965816, 36.529148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666756, 37.076843, 36.309181>,  <36.477695, 37.143459, 36.177200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666756, 37.076843, 36.309181>,  <36.981857, 36.965816, 36.529148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666756, 37.076843, 36.309181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615484, 0.318391, -0.720976,
		-0.025029, -0.906414, -0.421649,
		-0.787751, 0.277563, -0.549914,
		36.430431, 37.160110, 36.144207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012260, 36.729023, 35.829163>,  <36.981857, 36.965816, 36.529148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012260, 36.729023, 35.829163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759010, 37.036179, 35.790154>,  <36.607059, 37.220470, 35.766750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.759010, 37.036179, 35.790154>,  <37.012260, 36.729023, 35.829163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759010, 37.036179, 35.790154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517057, 0.325791, -0.791526,
		-0.576029, -0.551555, -0.603305,
		-0.633121, 0.767885, -0.097521,
		36.569073, 37.266544, 35.760899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743179, 36.672310, 35.157402>,  <37.012260, 36.729023, 35.829163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743179, 36.672310, 35.157402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687157, 37.049751, 35.277401>,  <36.653542, 37.276215, 35.349400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.687157, 37.049751, 35.277401>,  <36.743179, 36.672310, 35.157402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687157, 37.049751, 35.277401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449822, 0.330550, -0.829697,
		-0.882068, 0.018742, -0.470749,
		-0.140056, 0.943602, 0.299998,
		36.645142, 37.332832, 35.367401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449093, 37.037888, 34.554314>,  <36.743179, 36.672310, 35.157402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449093, 37.037888, 34.554314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607380, 37.306561, 34.804836>,  <36.702351, 37.467762, 34.955151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607380, 37.306561, 34.804836>,  <36.449093, 37.037888, 34.554314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607380, 37.306561, 34.804836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569585, 0.355462, -0.741094,
		-0.720404, 0.649996, -0.241916,
		0.395716, 0.671679, 0.626304,
		36.726093, 37.508064, 34.992729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552883, 37.693768, 34.150322>,  <36.449093, 37.037888, 34.554314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552883, 37.693768, 34.150322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778442, 37.737473, 34.477757>,  <36.913776, 37.763695, 34.674217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778442, 37.737473, 34.477757>,  <36.552883, 37.693768, 34.150322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778442, 37.737473, 34.477757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680457, 0.500202, -0.535514,
		-0.467970, 0.858987, 0.207714,
		0.563899, 0.109264, 0.818584,
		36.947613, 37.770252, 34.723331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575565, 38.354328, 34.220852>,  <36.552883, 37.693768, 34.150322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575565, 38.354328, 34.220852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896461, 38.196270, 34.399857>,  <37.089001, 38.101433, 34.507259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896461, 38.196270, 34.399857>,  <36.575565, 38.354328, 34.220852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896461, 38.196270, 34.399857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596347, 0.565429, -0.569790,
		-0.027883, 0.723980, 0.689257,
		0.802243, -0.395148, 0.447509,
		37.137135, 38.077724, 34.534111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940407, 38.888615, 34.335064>,  <36.575565, 38.354328, 34.220852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940407, 38.888615, 34.335064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.222099, 38.608559, 34.382160>,  <37.391117, 38.440525, 34.410416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.222099, 38.608559, 34.382160>,  <36.940407, 38.888615, 34.335064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222099, 38.608559, 34.382160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660403, 0.585126, -0.470634,
		0.260617, 0.409191, 0.874438,
		0.704235, -0.700136, 0.117738,
		37.433369, 38.398518, 34.417480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631824, 39.203026, 34.482506>,  <36.940407, 38.888615, 34.335064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631824, 39.203026, 34.482506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746666, 38.846550, 34.342018>,  <37.815571, 38.632664, 34.257725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.746666, 38.846550, 34.342018>,  <37.631824, 39.203026, 34.482506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746666, 38.846550, 34.342018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792116, 0.427053, -0.436094,
		0.538632, -0.153007, 0.828532,
		0.287101, -0.891187, -0.351223,
		37.832798, 38.579193, 34.236652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302116, 39.125755, 34.692291>,  <37.631824, 39.203026, 34.482506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302116, 39.125755, 34.692291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249653, 38.879223, 34.381695>,  <38.218174, 38.731304, 34.195339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.249653, 38.879223, 34.381695>,  <38.302116, 39.125755, 34.692291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249653, 38.879223, 34.381695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751858, 0.448670, -0.483120,
		0.646149, -0.647173, 0.404548,
		-0.131154, -0.616330, -0.776489,
		38.210308, 38.694324, 34.148746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977993, 38.871880, 34.610668>,  <38.302116, 39.125755, 34.692291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977993, 38.871880, 34.610668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.771183, 38.836746, 34.270088>,  <38.647099, 38.815666, 34.065739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.771183, 38.836746, 34.270088>,  <38.977993, 38.871880, 34.610668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771183, 38.836746, 34.270088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716370, 0.500053, -0.486581,
		0.468512, -0.861528, -0.195615,
		-0.517021, -0.087836, -0.851454,
		38.616077, 38.810394, 34.014652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502228, 38.827446, 34.122734>,  <38.977993, 38.871880, 34.610668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502228, 38.827446, 34.122734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.196518, 38.894249, 33.873577>,  <39.013092, 38.934330, 33.724083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.196518, 38.894249, 33.873577>,  <39.502228, 38.827446, 34.122734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196518, 38.894249, 33.873577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598160, 0.544570, -0.587918,
		0.241025, -0.821920, -0.516095,
		-0.764272, 0.167005, -0.622895,
		38.967236, 38.944351, 33.686710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724712, 38.736633, 33.401337>,  <39.502228, 38.827446, 34.122734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724712, 38.736633, 33.401337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.428368, 39.001114, 33.354099>,  <39.250561, 39.159801, 33.325756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.428368, 39.001114, 33.354099>,  <39.724712, 38.736633, 33.401337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428368, 39.001114, 33.354099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605339, 0.581121, -0.543933,
		-0.291023, -0.474461, -0.830778,
		-0.740858, 0.661199, -0.118090,
		39.206112, 39.199474, 33.318672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643028, 38.792187, 32.613480>,  <39.724712, 38.736633, 33.401337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643028, 38.792187, 32.613480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.468033, 39.118698, 32.764370>,  <39.363037, 39.314606, 32.854904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.468033, 39.118698, 32.764370>,  <39.643028, 38.792187, 32.613480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468033, 39.118698, 32.764370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392649, 0.550800, -0.736509,
		-0.808970, -0.174097, -0.561478,
		-0.437487, 0.816278, 0.377222,
		39.336788, 39.363583, 32.877537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306267, 39.136677, 31.982550>,  <39.643028, 38.792187, 32.613480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306267, 39.136677, 31.982550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323311, 39.415802, 32.268555>,  <39.333538, 39.583275, 32.440159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.323311, 39.415802, 32.268555>,  <39.306267, 39.136677, 31.982550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323311, 39.415802, 32.268555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215685, 0.692363, -0.688559,
		-0.975533, 0.183557, -0.121006,
		0.042609, 0.697811, 0.715014,
		39.336094, 39.625145, 32.483059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216156, 39.671219, 31.616976>,  <39.306267, 39.136677, 31.982550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216156, 39.671219, 31.616976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.354557, 39.848431, 31.947794>,  <39.437595, 39.954758, 32.146286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.354557, 39.848431, 31.947794>,  <39.216156, 39.671219, 31.616976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354557, 39.848431, 31.947794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233810, 0.812968, -0.533307,
		-0.908635, 0.377896, 0.177701,
		0.345999, 0.443033, 0.827046,
		39.458355, 39.981342, 32.195908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861607, 40.342270, 31.577717>,  <39.216156, 39.671219, 31.616976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861607, 40.342270, 31.577717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.184345, 40.351665, 31.813835>,  <39.377987, 40.357304, 31.955505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.184345, 40.351665, 31.813835>,  <38.861607, 40.342270, 31.577717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184345, 40.351665, 31.813835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380329, 0.743941, -0.549455,
		-0.452052, 0.667832, 0.591311,
		0.806845, 0.023490, 0.590297,
		39.426399, 40.358711, 31.990925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016430, 41.069908, 31.797913>,  <38.861607, 40.342270, 31.577717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016430, 41.069908, 31.797913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.355537, 40.859463, 31.824728>,  <39.559002, 40.733196, 31.840816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.355537, 40.859463, 31.824728>,  <39.016430, 41.069908, 31.797913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355537, 40.859463, 31.824728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463903, 0.674325, -0.574525,
		0.257057, 0.518165, 0.815737,
		0.847771, -0.526109, 0.067038,
		39.609867, 40.701630, 31.844839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553520, 41.545822, 31.990988>,  <39.016430, 41.069908, 31.797913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553520, 41.545822, 31.990988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.715336, 41.236057, 31.796410>,  <39.812424, 41.050198, 31.679663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.715336, 41.236057, 31.796410>,  <39.553520, 41.545822, 31.990988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715336, 41.236057, 31.796410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465632, 0.632222, -0.619259,
		0.787105, 0.024011, 0.616352,
		0.404540, -0.774415, -0.486445,
		39.836697, 41.003735, 31.650476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970085, 41.868660, 31.563354>,  <39.553520, 41.545822, 31.990988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970085, 41.868660, 31.563354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.030125, 41.499813, 31.420706>,  <40.066151, 41.278507, 31.335117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.030125, 41.499813, 31.420706>,  <39.970085, 41.868660, 31.563354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030125, 41.499813, 31.420706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551918, 0.377423, -0.743598,
		0.820278, -0.085209, 0.565583,
		0.150103, -0.922113, -0.356620,
		40.075157, 41.223179, 31.313721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720596, 41.746250, 31.285912>,  <39.970085, 41.868660, 31.563354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720596, 41.746250, 31.285912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.490963, 41.487953, 31.084541>,  <40.353184, 41.332973, 30.963718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.490963, 41.487953, 31.084541>,  <40.720596, 41.746250, 31.285912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490963, 41.487953, 31.084541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407559, 0.307899, -0.859706,
		0.710155, -0.698721, 0.086419,
		-0.574086, -0.645745, -0.503426,
		40.318737, 41.294231, 30.933514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.154778, 41.411079, 30.859058>,  <40.720596, 41.746250, 31.285912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.154778, 41.411079, 30.859058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.783199, 41.362541, 30.719149>,  <40.560253, 41.333420, 30.635202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.783199, 41.362541, 30.719149>,  <41.154778, 41.411079, 30.859058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783199, 41.362541, 30.719149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309836, 0.262332, -0.913884,
		0.202650, -0.957318, -0.206095,
		-0.928943, -0.121343, -0.349773,
		40.504517, 41.326138, 30.614216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815765, 41.193493, 31.087336>,  <41.154778, 41.411079, 30.859058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815765, 41.193493, 31.087336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.191132, 41.331612, 31.082392>,  <42.416351, 41.414482, 31.079426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.191132, 41.331612, 31.082392>,  <41.815765, 41.193493, 31.087336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.191132, 41.331612, 31.082392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127983, -0.314153, 0.940706,
		0.320939, -0.884352, -0.338998,
		0.938413, 0.345295, -0.012358,
		42.472656, 41.435200, 31.078684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029808, 40.670574, 31.305853>,  <41.815765, 41.193493, 31.087336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029808, 40.670574, 31.305853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.316338, 40.935936, 31.392363>,  <42.488255, 41.095154, 31.444269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.316338, 40.935936, 31.392363>,  <42.029808, 40.670574, 31.305853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316338, 40.935936, 31.392363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124424, -0.426426, 0.895924,
		0.686585, -0.614861, -0.388003,
		0.716323, 0.663405, 0.216274,
		42.531235, 41.134956, 31.457245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622715, 40.288555, 31.507704>,  <42.029808, 40.670574, 31.305853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622715, 40.288555, 31.507704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.666702, 40.649712, 31.673927>,  <42.693092, 40.866405, 31.773661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.666702, 40.649712, 31.673927>,  <42.622715, 40.288555, 31.507704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666702, 40.649712, 31.673927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167311, -0.428944, 0.887702,
		0.979752, -0.028088, -0.198233,
		0.109965, 0.902894, 0.415559,
		42.699692, 40.920578, 31.798595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938454, 40.035919, 32.191990>,  <42.622715, 40.288555, 31.507704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938454, 40.035919, 32.191990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.839500, 40.421906, 32.226974>,  <42.780128, 40.653496, 32.247967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.839500, 40.421906, 32.226974>,  <42.938454, 40.035919, 32.191990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839500, 40.421906, 32.226974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007807, -0.092249, 0.995705,
		0.968887, 0.245637, 0.030355,
		-0.247382, 0.964962, 0.087461,
		42.765285, 40.711395, 32.253212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344139, 40.260593, 32.719627>,  <42.938454, 40.035919, 32.191990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344139, 40.260593, 32.719627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.010109, 40.480328, 32.707714>,  <42.809692, 40.612167, 32.700565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.010109, 40.480328, 32.707714>,  <43.344139, 40.260593, 32.719627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010109, 40.480328, 32.707714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172607, -0.210213, 0.962298,
		0.522362, 0.808729, 0.270362,
		-0.835072, 0.549334, -0.029785,
		42.759586, 40.645126, 32.698780>
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
