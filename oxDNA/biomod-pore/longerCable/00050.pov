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
	<24.363640, 35.334324, 34.320030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210749, 35.429722, 34.677135>,  <24.119015, 35.486961, 34.891399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.210749, 35.429722, 34.677135>,  <24.363640, 35.334324, 34.320030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.210749, 35.429722, 34.677135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911725, 0.254708, 0.322305,
		-0.150527, 0.937148, -0.314795,
		-0.382229, 0.238490, 0.892762,
		24.096081, 35.501270, 34.944965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.335896, 36.144924, 34.503082>,  <24.363640, 35.334324, 34.320030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.335896, 36.144924, 34.503082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406309, 35.866676, 34.781685>,  <24.448557, 35.699726, 34.948849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.406309, 35.866676, 34.781685>,  <24.335896, 36.144924, 34.503082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406309, 35.866676, 34.781685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940834, 0.327020, 0.088822,
		-0.289559, 0.639665, 0.712028,
		0.176032, -0.695619, 0.696511,
		24.459118, 35.657990, 34.990639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436926, 36.331894, 35.234055>,  <24.335896, 36.144924, 34.503082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436926, 36.331894, 35.234055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633286, 36.005531, 35.111870>,  <24.751102, 35.809711, 35.038559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.633286, 36.005531, 35.111870>,  <24.436926, 36.331894, 35.234055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.633286, 36.005531, 35.111870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814407, 0.554296, -0.171749,
		0.309448, -0.164458, 0.936587,
		0.490901, -0.815911, -0.305462,
		24.780556, 35.760757, 35.020233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123768, 36.487846, 35.464405>,  <24.436926, 36.331894, 35.234055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123768, 36.487846, 35.464405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.127235, 36.227203, 35.161003>,  <25.129316, 36.070816, 34.978962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.127235, 36.227203, 35.161003>,  <25.123768, 36.487846, 35.464405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.127235, 36.227203, 35.161003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905317, 0.327237, -0.270771,
		0.424648, -0.684340, 0.592750,
		0.008670, -0.651610, -0.758505,
		25.129837, 36.031719, 34.933453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789709, 36.124153, 35.568176>,  <25.123768, 36.487846, 35.464405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789709, 36.124153, 35.568176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667084, 36.155888, 35.188763>,  <25.593508, 36.174927, 34.961113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.667084, 36.155888, 35.188763>,  <25.789709, 36.124153, 35.568176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667084, 36.155888, 35.188763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799215, 0.562703, -0.211238,
		0.516986, -0.822844, -0.235910,
		-0.306563, 0.079336, -0.948538,
		25.575115, 36.179688, 34.904202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425528, 36.185238, 35.192722>,  <25.789709, 36.124153, 35.568176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425528, 36.185238, 35.192722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122234, 36.325508, 34.972862>,  <25.940258, 36.409672, 34.840946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122234, 36.325508, 34.972862>,  <26.425528, 36.185238, 35.192722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122234, 36.325508, 34.972862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566164, 0.772216, -0.288342,
		0.323332, -0.529821, -0.784057,
		-0.758231, 0.350674, -0.549648,
		25.894766, 36.430710, 34.807968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562597, 36.133553, 34.471088>,  <26.425528, 36.185238, 35.192722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562597, 36.133553, 34.471088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288956, 36.423981, 34.498875>,  <26.124771, 36.598236, 34.515549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288956, 36.423981, 34.498875>,  <26.562597, 36.133553, 34.471088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288956, 36.423981, 34.498875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602683, 0.616345, -0.506845,
		-0.410820, -0.304869, -0.859233,
		-0.684106, 0.726067, 0.069468,
		26.083723, 36.641800, 34.519714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252798, 36.581612, 34.383324>,  <26.562597, 36.133553, 34.471088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252798, 36.581612, 34.383324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584391, 36.600105, 34.160381>,  <27.783346, 36.611202, 34.026615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584391, 36.600105, 34.160381>,  <27.252798, 36.581612, 34.383324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584391, 36.600105, 34.160381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054950, 0.985021, 0.163446,
		0.556569, -0.166121, 0.814024,
		0.828982, 0.046238, -0.557360,
		27.833086, 36.613976, 33.993172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774414, 36.901302, 34.797821>,  <27.252798, 36.581612, 34.383324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774414, 36.901302, 34.797821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826569, 36.958740, 34.405418>,  <27.857861, 36.993202, 34.169975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826569, 36.958740, 34.405418>,  <27.774414, 36.901302, 34.797821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826569, 36.958740, 34.405418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076079, 0.987988, 0.134504,
		0.988542, 0.057098, 0.139734,
		0.130375, 0.143593, -0.981012,
		27.865685, 37.001820, 34.111115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236143, 37.378563, 34.773315>,  <27.774414, 36.901302, 34.797821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236143, 37.378563, 34.773315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066980, 37.397701, 34.411350>,  <27.965483, 37.409184, 34.194172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066980, 37.397701, 34.411350>,  <28.236143, 37.378563, 34.773315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066980, 37.397701, 34.411350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005130, 0.998715, 0.050408,
		0.906158, 0.016676, -0.422610,
		-0.422908, 0.047846, -0.904909,
		27.940107, 37.412056, 34.139877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732431, 37.749336, 34.419586>,  <28.236143, 37.378563, 34.773315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732431, 37.749336, 34.419586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374723, 37.794041, 34.246246>,  <28.160099, 37.820862, 34.142242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.374723, 37.794041, 34.246246>,  <28.732431, 37.749336, 34.419586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374723, 37.794041, 34.246246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173937, 0.978985, -0.106462,
		0.412347, -0.170582, -0.894914,
		-0.894268, 0.111760, -0.433352,
		28.106443, 37.827568, 34.116241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757042, 38.415661, 34.059994>,  <28.732431, 37.749336, 34.419586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757042, 38.415661, 34.059994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363535, 38.351753, 34.027306>,  <28.127432, 38.313408, 34.007694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363535, 38.351753, 34.027306>,  <28.757042, 38.415661, 34.059994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363535, 38.351753, 34.027306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136363, 0.961553, -0.238372,
		0.116663, -0.223358, -0.967730,
		-0.983766, -0.159772, -0.081720,
		28.068405, 38.303822, 34.002789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506701, 38.700470, 34.606880>,  <28.757042, 38.415661, 34.059994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506701, 38.700470, 34.606880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424103, 38.498936, 34.942383>,  <28.374544, 38.378017, 35.143684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.424103, 38.498936, 34.942383>,  <28.506701, 38.700470, 34.606880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424103, 38.498936, 34.942383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177070, 0.823835, 0.538463,
		-0.962293, 0.259707, -0.080903,
		-0.206493, -0.503833, 0.838757,
		28.362154, 38.347786, 35.194012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128120, 39.103916, 34.185390>,  <28.506701, 38.700470, 34.606880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128120, 39.103916, 34.185390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895884, 39.102623, 33.859715>,  <27.756542, 39.101849, 33.664310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895884, 39.102623, 33.859715>,  <28.128120, 39.103916, 34.185390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895884, 39.102623, 33.859715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179143, -0.974980, 0.131614,
		-0.794242, 0.222270, 0.565487,
		-0.580592, -0.003230, -0.814188,
		27.721706, 39.101654, 33.615459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491085, 38.851841, 34.325226>,  <28.128120, 39.103916, 34.185390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491085, 38.851841, 34.325226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627270, 38.760933, 33.960274>,  <27.708981, 38.706387, 33.741302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627270, 38.760933, 33.960274>,  <27.491085, 38.851841, 34.325226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627270, 38.760933, 33.960274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158578, -0.970327, 0.182534,
		-0.926789, 0.082537, -0.366400,
		0.340462, -0.227273, -0.912378,
		27.729408, 38.692753, 33.686562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983311, 38.436821, 34.000462>,  <27.491085, 38.851841, 34.325226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983311, 38.436821, 34.000462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351618, 38.342354, 33.876259>,  <27.572603, 38.285675, 33.801739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351618, 38.342354, 33.876259>,  <26.983311, 38.436821, 34.000462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351618, 38.342354, 33.876259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215643, -0.971403, 0.099366,
		-0.325090, -0.024536, -0.945365,
		0.920769, -0.236164, -0.310502,
		27.627848, 38.271503, 33.783108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977556, 37.871876, 33.413044>,  <26.983311, 38.436821, 34.000462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977556, 37.871876, 33.413044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331663, 37.846672, 33.597363>,  <27.544127, 37.831551, 33.707954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331663, 37.846672, 33.597363>,  <26.977556, 37.871876, 33.413044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331663, 37.846672, 33.597363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062440, -0.997912, -0.016501,
		0.460876, -0.014165, -0.887352,
		0.885265, -0.063011, 0.460798,
		27.597242, 37.827770, 33.735603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485960, 37.484440, 32.896217>,  <26.977556, 37.871876, 33.413044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485960, 37.484440, 32.896217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638140, 37.470036, 33.265858>,  <27.729448, 37.461391, 33.487640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638140, 37.470036, 33.265858>,  <27.485960, 37.484440, 32.896217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638140, 37.470036, 33.265858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229227, -0.964387, -0.131955,
		0.895942, 0.262032, -0.358646,
		0.380450, -0.036013, 0.924100,
		27.752275, 37.459232, 33.543087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191431, 37.214813, 32.831921>,  <27.485960, 37.484440, 32.896217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191431, 37.214813, 32.831921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081049, 37.152401, 33.211288>,  <28.014820, 37.114956, 33.438911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081049, 37.152401, 33.211288>,  <28.191431, 37.214813, 32.831921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081049, 37.152401, 33.211288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409183, -0.911927, -0.030965,
		0.869723, 0.379533, 0.315494,
		-0.275955, -0.156026, 0.948422,
		27.998262, 37.105595, 33.495815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697222, 36.839195, 33.081249>,  <28.191431, 37.214813, 32.831921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697222, 36.839195, 33.081249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436472, 36.748383, 33.370667>,  <28.280022, 36.693897, 33.544319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436472, 36.748383, 33.370667>,  <28.697222, 36.839195, 33.081249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436472, 36.748383, 33.370667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497851, -0.847841, 0.182508,
		0.572018, 0.479190, 0.665712,
		-0.651874, -0.227028, 0.723546,
		28.240910, 36.680275, 33.587730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081604, 36.554752, 33.624962>,  <28.697222, 36.839195, 33.081249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081604, 36.554752, 33.624962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702024, 36.429379, 33.639137>,  <28.474276, 36.354156, 33.647644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702024, 36.429379, 33.639137>,  <29.081604, 36.554752, 33.624962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702024, 36.429379, 33.639137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315228, -0.938351, 0.141877,
		-0.011214, 0.145806, 0.989250,
		-0.948950, -0.313430, 0.035439,
		28.417339, 36.335350, 33.649769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815552, 36.124977, 34.290054>,  <29.081604, 36.554752, 33.624962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815552, 36.124977, 34.290054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687271, 36.032825, 33.922562>,  <28.610302, 35.977535, 33.702065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687271, 36.032825, 33.922562>,  <28.815552, 36.124977, 34.290054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687271, 36.032825, 33.922562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460654, -0.885465, 0.061235,
		-0.827615, -0.403581, 0.390097,
		-0.320704, -0.230378, -0.918735,
		28.591061, 35.963711, 33.646942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580576, 36.322514, 34.244438>,  <28.815552, 36.124977, 34.290054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580576, 36.322514, 34.244438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959957, 36.204239, 34.198811>,  <30.187586, 36.133274, 34.171432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959957, 36.204239, 34.198811>,  <29.580576, 36.322514, 34.244438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959957, 36.204239, 34.198811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087087, 0.102917, -0.990870,
		0.304723, 0.949726, 0.071862,
		0.948451, -0.295683, -0.114070,
		30.244492, 36.115536, 34.164589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928297, 36.777458, 33.761742>,  <29.580576, 36.322514, 34.244438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928297, 36.777458, 33.761742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157116, 36.449970, 33.741898>,  <30.294407, 36.253479, 33.729992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157116, 36.449970, 33.741898>,  <29.928297, 36.777458, 33.761742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157116, 36.449970, 33.741898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094924, -0.006000, -0.995466,
		0.814709, 0.574164, -0.081149,
		0.572047, -0.818719, -0.049614,
		30.328730, 36.204353, 33.727013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464163, 36.757332, 33.221222>,  <29.928297, 36.777458, 33.761742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464163, 36.757332, 33.221222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436396, 36.366188, 33.300182>,  <30.419735, 36.131500, 33.347561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436396, 36.366188, 33.300182>,  <30.464163, 36.757332, 33.221222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436396, 36.366188, 33.300182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046566, -0.200841, -0.978517,
		0.996500, -0.058733, 0.059477,
		-0.069417, -0.977862, 0.197403,
		30.415571, 36.072830, 33.359402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943922, 36.481056, 32.805004>,  <30.464163, 36.757332, 33.221222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943922, 36.481056, 32.805004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707846, 36.171223, 32.895947>,  <30.566200, 35.985321, 32.950512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707846, 36.171223, 32.895947>,  <30.943922, 36.481056, 32.805004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707846, 36.171223, 32.895947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071876, -0.230094, -0.970510,
		0.804057, -0.589129, 0.080126,
		-0.590192, -0.774586, 0.227353,
		30.530788, 35.938847, 32.964153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103756, 35.952862, 32.428562>,  <30.943922, 36.481056, 32.805004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103756, 35.952862, 32.428562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714857, 35.898804, 32.504948>,  <30.481518, 35.866371, 32.550777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714857, 35.898804, 32.504948>,  <31.103756, 35.952862, 32.428562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714857, 35.898804, 32.504948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141079, -0.312465, -0.939395,
		0.186623, -0.940267, 0.284728,
		-0.972249, -0.135143, 0.190965,
		30.423182, 35.858261, 32.562237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892075, 35.380501, 31.965702>,  <31.103756, 35.952862, 32.428562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892075, 35.380501, 31.965702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575018, 35.602867, 32.065842>,  <30.384783, 35.736286, 32.125927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575018, 35.602867, 32.065842>,  <30.892075, 35.380501, 31.965702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575018, 35.602867, 32.065842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381027, -0.131123, -0.915219,
		-0.475957, -0.820832, 0.315752,
		-0.792643, 0.555914, 0.250350,
		30.337225, 35.769642, 32.140945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308571, 35.015675, 31.828623>,  <30.892075, 35.380501, 31.965702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308571, 35.015675, 31.828623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211170, 35.403355, 31.813864>,  <30.152729, 35.635963, 31.805008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.211170, 35.403355, 31.813864>,  <30.308571, 35.015675, 31.828623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211170, 35.403355, 31.813864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287423, -0.108441, -0.951645,
		-0.926334, -0.221121, 0.304975,
		-0.243501, 0.969198, -0.036897,
		30.138121, 35.694115, 31.802795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482895, 35.262726, 31.742119>,  <30.308571, 35.015675, 31.828623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482895, 35.262726, 31.742119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749517, 35.504482, 31.567574>,  <29.909491, 35.649536, 31.462847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749517, 35.504482, 31.567574>,  <29.482895, 35.262726, 31.742119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749517, 35.504482, 31.567574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290720, -0.328255, -0.898738,
		-0.686430, 0.725918, -0.043091,
		0.666555, 0.604393, -0.436363,
		29.949484, 35.685799, 31.436665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124931, 35.542416, 31.214495>,  <29.482895, 35.262726, 31.742119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124931, 35.542416, 31.214495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512180, 35.581169, 31.122099>,  <29.744530, 35.604424, 31.066662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.512180, 35.581169, 31.122099>,  <29.124931, 35.542416, 31.214495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512180, 35.581169, 31.122099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182539, -0.358604, -0.915469,
		-0.171531, 0.928448, -0.329486,
		0.968120, 0.096888, -0.230989,
		29.802616, 35.610237, 31.052803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211519, 35.778244, 30.543827>,  <29.124931, 35.542416, 31.214495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211519, 35.778244, 30.543827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572668, 35.612335, 30.589058>,  <29.789358, 35.512791, 30.616196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572668, 35.612335, 30.589058>,  <29.211519, 35.778244, 30.543827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572668, 35.612335, 30.589058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045826, -0.354382, -0.933977,
		0.427456, 0.838082, -0.338969,
		0.902874, -0.414768, 0.113076,
		29.843531, 35.487904, 30.622980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622000, 36.001148, 29.952856>,  <29.211519, 35.778244, 30.543827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622000, 36.001148, 29.952856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771416, 35.659729, 30.098143>,  <29.861065, 35.454876, 30.185314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771416, 35.659729, 30.098143>,  <29.622000, 36.001148, 29.952856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771416, 35.659729, 30.098143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018152, -0.384759, -0.922839,
		0.927437, 0.351309, -0.128229,
		0.373539, -0.853547, 0.363216,
		29.883478, 35.403664, 30.207108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244051, 35.898262, 29.611858>,  <29.622000, 36.001148, 29.952856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244051, 35.898262, 29.611858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127621, 35.538906, 29.743414>,  <30.057762, 35.323292, 29.822348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127621, 35.538906, 29.743414>,  <30.244051, 35.898262, 29.611858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127621, 35.538906, 29.743414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010257, -0.346687, -0.937925,
		0.956645, -0.269634, 0.110128,
		-0.291076, -0.898390, 0.328891,
		30.040298, 35.269390, 29.842081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568283, 35.348202, 29.220947>,  <30.244051, 35.898262, 29.611858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568283, 35.348202, 29.220947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222479, 35.206261, 29.363327>,  <30.014996, 35.121098, 29.448755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222479, 35.206261, 29.363327>,  <30.568283, 35.348202, 29.220947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222479, 35.206261, 29.363327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148967, -0.495481, -0.855749,
		0.480030, -0.792830, 0.375488,
		-0.864511, -0.354851, 0.355951,
		29.963125, 35.099804, 29.470112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473166, 34.688931, 28.923668>,  <30.568283, 35.348202, 29.220947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473166, 34.688931, 28.923668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109623, 34.791843, 29.054991>,  <29.891499, 34.853592, 29.133785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109623, 34.791843, 29.054991>,  <30.473166, 34.688931, 28.923668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109623, 34.791843, 29.054991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410216, -0.408807, -0.815230,
		-0.075531, -0.875604, 0.477088,
		-0.908855, 0.257284, 0.328309,
		29.836966, 34.869030, 29.153484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012850, 34.050446, 29.034361>,  <30.473166, 34.688931, 28.923668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012850, 34.050446, 29.034361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791348, 34.373249, 28.952288>,  <29.658447, 34.566929, 28.903044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791348, 34.373249, 28.952288>,  <30.012850, 34.050446, 29.034361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791348, 34.373249, 28.952288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502969, -0.520553, -0.689962,
		-0.663610, -0.278869, 0.694157,
		-0.553754, 0.807005, -0.205181,
		29.625221, 34.615349, 28.890734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278465, 33.759094, 28.976259>,  <30.012850, 34.050446, 29.034361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278465, 33.759094, 28.976259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360689, 34.064053, 28.730820>,  <29.410025, 34.247028, 28.583557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360689, 34.064053, 28.730820>,  <29.278465, 33.759094, 28.976259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360689, 34.064053, 28.730820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386722, -0.512677, -0.766556,
		-0.898994, 0.394866, 0.189448,
		0.205561, 0.762393, -0.613597,
		29.422358, 34.292770, 28.546740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328016, 34.179451, 29.594215>,  <29.278465, 33.759094, 28.976259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328016, 34.179451, 29.594215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639118, 34.430721, 29.603117>,  <29.825779, 34.581482, 29.608458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639118, 34.430721, 29.603117>,  <29.328016, 34.179451, 29.594215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639118, 34.430721, 29.603117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131290, 0.127723, 0.983082,
		0.614707, -0.767516, 0.181811,
		0.777752, 0.628177, 0.022255,
		29.872444, 34.619175, 29.609793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667000, 34.073864, 30.213495>,  <29.328016, 34.179451, 29.594215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667000, 34.073864, 30.213495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794167, 34.441338, 30.119730>,  <29.870466, 34.661823, 30.063471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794167, 34.441338, 30.119730>,  <29.667000, 34.073864, 30.213495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794167, 34.441338, 30.119730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002712, 0.246360, 0.969175,
		0.948115, -0.308753, 0.075831,
		0.317917, 0.918683, -0.234415,
		29.889542, 34.716942, 30.049406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303001, 34.212330, 30.606401>,  <29.667000, 34.073864, 30.213495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303001, 34.212330, 30.606401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170542, 34.571747, 30.491186>,  <30.091066, 34.787395, 30.422056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170542, 34.571747, 30.491186>,  <30.303001, 34.212330, 30.606401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170542, 34.571747, 30.491186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138293, 0.348183, 0.927170,
		0.933390, 0.267196, -0.239562,
		-0.331147, 0.898541, -0.288039,
		30.071198, 34.841309, 30.404774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747335, 34.649273, 30.956219>,  <30.303001, 34.212330, 30.606401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747335, 34.649273, 30.956219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451727, 34.903301, 30.866302>,  <30.274363, 35.055717, 30.812353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451727, 34.903301, 30.866302>,  <30.747335, 34.649273, 30.956219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451727, 34.903301, 30.866302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136612, 0.468015, 0.873098,
		0.659688, 0.614526, -0.432631,
		-0.739019, 0.635075, -0.224791,
		30.230021, 35.093822, 30.798864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890913, 35.346222, 30.858782>,  <30.747335, 34.649273, 30.956219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890913, 35.346222, 30.858782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525589, 35.277885, 31.006660>,  <30.306395, 35.236881, 31.095388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525589, 35.277885, 31.006660>,  <30.890913, 35.346222, 30.858782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525589, 35.277885, 31.006660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241257, 0.504386, 0.829090,
		-0.328116, 0.846408, -0.419443,
		-0.913310, -0.170844, 0.369699,
		30.251596, 35.226631, 31.117571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654127, 36.017185, 31.007786>,  <30.890913, 35.346222, 30.858782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654127, 36.017185, 31.007786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460728, 35.765671, 31.251379>,  <30.344688, 35.614761, 31.397535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.460728, 35.765671, 31.251379>,  <30.654127, 36.017185, 31.007786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460728, 35.765671, 31.251379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115422, 0.643833, 0.756410,
		-0.867703, 0.436012, -0.238715,
		-0.483496, -0.628787, 0.608981,
		30.315680, 35.577034, 31.434074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384653, 36.618095, 31.279444>,  <30.654127, 36.017185, 31.007786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384653, 36.618095, 31.279444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083931, 36.368683, 31.365232>,  <29.903498, 36.219036, 31.416706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083931, 36.368683, 31.365232>,  <30.384653, 36.618095, 31.279444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083931, 36.368683, 31.365232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237989, 0.046746, 0.970142,
		-0.614939, 0.780401, 0.113249,
		-0.751806, -0.623530, 0.214473,
		29.858389, 36.181625, 31.429575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958565, 36.933273, 31.726233>,  <30.384653, 36.618095, 31.279444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958565, 36.933273, 31.726233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962406, 36.537617, 31.784885>,  <29.964710, 36.300220, 31.820078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962406, 36.537617, 31.784885>,  <29.958565, 36.933273, 31.726233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962406, 36.537617, 31.784885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166975, 0.146168, 0.975066,
		-0.985914, 0.015121, 0.166566,
		0.009602, -0.989144, 0.146634,
		29.965286, 36.240875, 31.828875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516003, 36.808044, 32.337658>,  <29.958565, 36.933273, 31.726233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516003, 36.808044, 32.337658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750237, 36.488636, 32.281860>,  <29.890776, 36.296989, 32.248383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750237, 36.488636, 32.281860>,  <29.516003, 36.808044, 32.337658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750237, 36.488636, 32.281860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291780, 0.047083, 0.955326,
		-0.756279, -0.600125, 0.260563,
		0.585583, -0.798520, -0.139496,
		29.925911, 36.249081, 32.240013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170986, 36.127441, 32.552551>,  <29.516003, 36.808044, 32.337658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170986, 36.127441, 32.552551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493195, 35.928436, 32.423798>,  <29.686520, 35.809032, 32.346546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493195, 35.928436, 32.423798>,  <29.170986, 36.127441, 32.552551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493195, 35.928436, 32.423798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373108, 0.003829, 0.927780,
		-0.460353, -0.867446, 0.188712,
		0.805522, -0.497517, -0.321888,
		29.734852, 35.779182, 32.327232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236694, 35.577976, 32.946342>,  <29.170986, 36.127441, 32.552551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236694, 35.577976, 32.946342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608007, 35.622845, 32.804523>,  <29.830795, 35.649765, 32.719433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.608007, 35.622845, 32.804523>,  <29.236694, 35.577976, 32.946342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608007, 35.622845, 32.804523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361709, -0.051008, 0.930895,
		0.086339, -0.992378, -0.087924,
		0.928285, 0.112176, -0.354548,
		29.886494, 35.656498, 32.698158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596607, 34.996704, 33.243805>,  <29.236694, 35.577976, 32.946342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596607, 34.996704, 33.243805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878511, 35.267429, 33.158733>,  <30.047653, 35.429867, 33.107689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878511, 35.267429, 33.158733>,  <29.596607, 34.996704, 33.243805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878511, 35.267429, 33.158733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415203, -0.150406, 0.897209,
		0.575257, -0.720624, -0.387016,
		0.704760, 0.676816, -0.212683,
		30.089939, 35.470474, 33.094929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160614, 34.783630, 33.607895>,  <29.596607, 34.996704, 33.243805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160614, 34.783630, 33.607895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231514, 35.169422, 33.529552>,  <30.274054, 35.400898, 33.482548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231514, 35.169422, 33.529552>,  <30.160614, 34.783630, 33.607895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231514, 35.169422, 33.529552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439477, 0.100493, 0.892615,
		0.880592, -0.244288, -0.406055,
		0.177249, 0.964482, -0.195852,
		30.284689, 35.458767, 33.470798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896391, 35.034248, 33.756767>,  <30.160614, 34.783630, 33.607895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896391, 35.034248, 33.756767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625963, 35.327198, 33.789154>,  <30.463707, 35.502968, 33.808586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625963, 35.327198, 33.789154>,  <30.896391, 35.034248, 33.756767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625963, 35.327198, 33.789154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280392, 0.154096, 0.947436,
		0.681403, 0.663234, -0.309532,
		-0.676069, 0.732376, 0.080964,
		30.423141, 35.546909, 33.813442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101208, 34.508114, 34.374454>,  <30.896391, 35.034248, 33.756767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101208, 34.508114, 34.374454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321712, 34.827015, 34.472836>,  <31.454016, 35.018356, 34.531864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321712, 34.827015, 34.472836>,  <31.101208, 34.508114, 34.374454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321712, 34.827015, 34.472836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113193, -0.363529, 0.924681,
		0.826619, -0.481900, -0.290643,
		0.551260, 0.797257, 0.245953,
		31.487091, 35.066193, 34.546623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675697, 34.294235, 34.749439>,  <31.101208, 34.508114, 34.374454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675697, 34.294235, 34.749439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612370, 34.670151, 34.870594>,  <31.574373, 34.895699, 34.943287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612370, 34.670151, 34.870594>,  <31.675697, 34.294235, 34.749439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612370, 34.670151, 34.870594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088842, -0.291952, 0.952298,
		0.983383, 0.177674, -0.037271,
		-0.158317, 0.939785, 0.302885,
		31.564875, 34.952087, 34.961460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207516, 34.601303, 35.188629>,  <31.675697, 34.294235, 34.749439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207516, 34.601303, 35.188629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856867, 34.765709, 35.288708>,  <31.646477, 34.864353, 35.348755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856867, 34.765709, 35.288708>,  <32.207516, 34.601303, 35.188629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856867, 34.765709, 35.288708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142557, -0.274776, 0.950881,
		0.459570, 0.869234, 0.182283,
		-0.876626, 0.411011, 0.250195,
		31.593880, 34.889011, 35.363766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273529, 35.089436, 35.744995>,  <32.207516, 34.601303, 35.188629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273529, 35.089436, 35.744995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919453, 34.903355, 35.743237>,  <31.707006, 34.791706, 35.742180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919453, 34.903355, 35.743237>,  <32.273529, 35.089436, 35.744995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919453, 34.903355, 35.743237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172574, -0.337119, 0.925510,
		-0.432035, 0.818495, 0.378698,
		-0.885192, -0.465206, -0.004397,
		31.653894, 34.763794, 35.741917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715132, 35.497250, 35.374626>,  <32.273529, 35.089436, 35.744995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715132, 35.497250, 35.374626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449884, 35.712791, 35.582436>,  <31.290737, 35.842117, 35.707123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449884, 35.712791, 35.582436>,  <31.715132, 35.497250, 35.374626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449884, 35.712791, 35.582436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322442, -0.420732, 0.847948,
		0.675506, 0.729805, 0.105243,
		-0.663116, 0.538859, 0.519527,
		31.250950, 35.874451, 35.738293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970085, 35.954357, 35.962128>,  <31.715132, 35.497250, 35.374626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970085, 35.954357, 35.962128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601118, 35.816875, 36.032566>,  <31.379738, 35.734386, 36.074829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601118, 35.816875, 36.032566>,  <31.970085, 35.954357, 35.962128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601118, 35.816875, 36.032566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325742, -0.447499, 0.832848,
		-0.207449, 0.825598, 0.524740,
		-0.922419, -0.343704, 0.176099,
		31.324392, 35.713764, 36.085396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847523, 36.032417, 36.621792>,  <31.970085, 35.954357, 35.962128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847523, 36.032417, 36.621792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605932, 35.736427, 36.503368>,  <31.460978, 35.558834, 36.432312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605932, 35.736427, 36.503368>,  <31.847523, 36.032417, 36.621792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605932, 35.736427, 36.503368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414949, -0.609106, 0.675876,
		-0.680463, 0.285362, 0.674936,
		-0.603977, -0.739972, -0.296063,
		31.424740, 35.514435, 36.414551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572594, 35.901924, 37.337769>,  <31.847523, 36.032417, 36.621792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572594, 35.901924, 37.337769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739389, 35.713310, 37.648582>,  <31.839468, 35.600143, 37.835072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.739389, 35.713310, 37.648582>,  <31.572594, 35.901924, 37.337769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739389, 35.713310, 37.648582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251133, -0.881395, -0.400094,
		0.873528, -0.028302, -0.485951,
		0.416992, -0.471531, 0.777031,
		31.864487, 35.571850, 37.881691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590570, 35.160076, 37.175579>,  <31.572594, 35.901924, 37.337769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590570, 35.160076, 37.175579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729265, 35.152458, 37.550686>,  <31.812483, 35.147888, 37.775749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729265, 35.152458, 37.550686>,  <31.590570, 35.160076, 37.175579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729265, 35.152458, 37.550686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014419, -0.999567, -0.025632,
		0.937852, 0.022409, -0.346312,
		0.346737, -0.019045, 0.937769,
		31.833286, 35.146744, 37.832016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270138, 34.852413, 37.377201>,  <31.590570, 35.160076, 37.175579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270138, 34.852413, 37.377201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008926, 34.775093, 37.670101>,  <31.852200, 34.728703, 37.845840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008926, 34.775093, 37.670101>,  <32.270138, 34.852413, 37.377201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008926, 34.775093, 37.670101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270701, -0.962580, -0.012688,
		0.707298, 0.189934, 0.680922,
		-0.653032, -0.193300, 0.732246,
		31.813017, 34.717102, 37.889774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573959, 34.508999, 37.879391>,  <32.270138, 34.852413, 37.377201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573959, 34.508999, 37.879391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862221, 34.351875, 38.107903>,  <33.035175, 34.257603, 38.245010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862221, 34.351875, 38.107903>,  <32.573959, 34.508999, 37.879391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862221, 34.351875, 38.107903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680184, -0.241066, 0.692269,
		-0.134211, -0.887463, -0.440905,
		0.720650, -0.392806, 0.571285,
		33.078415, 34.234032, 38.279289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196861, 34.568363, 37.661907>,  <32.573959, 34.508999, 37.879391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196861, 34.568363, 37.661907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256943, 34.212589, 37.489235>,  <33.292992, 33.999126, 37.385632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256943, 34.212589, 37.489235>,  <33.196861, 34.568363, 37.661907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256943, 34.212589, 37.489235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322765, 0.456823, -0.828936,
		0.934485, -0.014824, 0.355694,
		0.150201, -0.889434, -0.431678,
		33.302002, 33.945759, 37.359730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897629, 34.369507, 37.290791>,  <33.196861, 34.568363, 37.661907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897629, 34.369507, 37.290791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642849, 34.143463, 37.081047>,  <33.489979, 34.007839, 36.955200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642849, 34.143463, 37.081047>,  <33.897629, 34.369507, 37.290791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642849, 34.143463, 37.081047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320371, 0.424627, -0.846790,
		0.701181, -0.707353, -0.089424,
		-0.636951, -0.565105, -0.524356,
		33.451763, 33.973930, 36.923740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352348, 34.427856, 36.809631>,  <33.897629, 34.369507, 37.290791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352348, 34.427856, 36.809631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993378, 34.298698, 36.689388>,  <33.777996, 34.221203, 36.617241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993378, 34.298698, 36.689388>,  <34.352348, 34.427856, 36.809631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993378, 34.298698, 36.689388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218409, 0.266849, -0.938663,
		0.383307, -0.908036, -0.168954,
		-0.897426, -0.322895, -0.300608,
		33.724152, 34.201832, 36.599205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487370, 33.915035, 36.206692>,  <34.352348, 34.427856, 36.809631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487370, 33.915035, 36.206692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150894, 34.131302, 36.203178>,  <33.949009, 34.261063, 36.201069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150894, 34.131302, 36.203178>,  <34.487370, 33.915035, 36.206692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150894, 34.131302, 36.203178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171607, 0.251519, -0.952518,
		-0.512782, -0.802758, -0.304357,
		-0.841193, 0.540664, -0.008784,
		33.898537, 34.293503, 36.200542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893822, 33.585320, 35.820129>,  <34.487370, 33.915035, 36.206692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893822, 33.585320, 35.820129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939312, 33.982635, 35.811825>,  <33.966606, 34.221027, 35.806843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939312, 33.982635, 35.811825>,  <33.893822, 33.585320, 35.820129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939312, 33.982635, 35.811825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058545, -0.027561, -0.997904,
		-0.991785, 0.112276, -0.061287,
		0.113730, 0.993295, -0.020761,
		33.973431, 34.280624, 35.805595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543304, 33.843945, 35.303844>,  <33.893822, 33.585320, 35.820129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543304, 33.843945, 35.303844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767483, 34.168503, 35.370232>,  <33.901989, 34.363235, 35.410065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767483, 34.168503, 35.370232>,  <33.543304, 33.843945, 35.303844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767483, 34.168503, 35.370232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085408, 0.255949, -0.962910,
		-0.823776, 0.525483, 0.212744,
		0.560445, 0.811392, 0.165964,
		33.935616, 34.411919, 35.420021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124268, 34.371872, 35.077530>,  <33.543304, 33.843945, 35.303844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124268, 34.371872, 35.077530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511730, 34.467026, 35.048897>,  <33.744205, 34.524117, 35.031715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511730, 34.467026, 35.048897>,  <33.124268, 34.371872, 35.077530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511730, 34.467026, 35.048897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127833, 0.230238, -0.964702,
		-0.213002, 0.943612, 0.253429,
		0.968653, 0.237880, -0.071583,
		33.802326, 34.538391, 35.027420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146023, 34.981026, 34.703014>,  <33.124268, 34.371872, 35.077530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146023, 34.981026, 34.703014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521492, 34.845142, 34.679352>,  <33.746773, 34.763611, 34.665154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521492, 34.845142, 34.679352>,  <33.146023, 34.981026, 34.703014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521492, 34.845142, 34.679352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097351, 0.425648, -0.899637,
		0.330793, 0.838702, 0.432613,
		0.938669, -0.339709, -0.059152,
		33.803093, 34.743229, 34.661606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543640, 35.457581, 34.358452>,  <33.146023, 34.981026, 34.703014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543640, 35.457581, 34.358452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765186, 35.127266, 34.315907>,  <33.898113, 34.929077, 34.290379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765186, 35.127266, 34.315907>,  <33.543640, 35.457581, 34.358452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765186, 35.127266, 34.315907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307426, 0.321549, -0.895598,
		0.773772, 0.463341, 0.431963,
		0.553864, -0.825785, -0.106362,
		33.931347, 34.879532, 34.283997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165073, 35.709167, 34.145012>,  <33.543640, 35.457581, 34.358452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165073, 35.709167, 34.145012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186096, 35.328068, 34.025341>,  <34.198711, 35.099407, 33.953537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186096, 35.328068, 34.025341>,  <34.165073, 35.709167, 34.145012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186096, 35.328068, 34.025341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381748, 0.296007, -0.875584,
		0.922771, -0.068191, 0.379268,
		0.052559, -0.952749, -0.299178,
		34.201862, 35.042244, 33.935589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894672, 35.602577, 33.912067>,  <34.165073, 35.709167, 34.145012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894672, 35.602577, 33.912067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674919, 35.325466, 33.725204>,  <34.543068, 35.159199, 33.613087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674919, 35.325466, 33.725204>,  <34.894672, 35.602577, 33.912067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674919, 35.325466, 33.725204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419593, 0.254751, -0.871231,
		0.722578, -0.674657, 0.150729,
		-0.549383, -0.692777, -0.467159,
		34.510105, 35.117634, 33.585056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353245, 35.232765, 33.408825>,  <34.894672, 35.602577, 33.912067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353245, 35.232765, 33.408825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992500, 35.163017, 33.250713>,  <34.776054, 35.121166, 33.155846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992500, 35.163017, 33.250713>,  <35.353245, 35.232765, 33.408825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992500, 35.163017, 33.250713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368282, 0.168049, -0.914400,
		0.225877, -0.970233, -0.087336,
		-0.901858, -0.174377, -0.395278,
		34.721943, 35.110706, 33.132130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469025, 34.798595, 32.783543>,  <35.353245, 35.232765, 33.408825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469025, 34.798595, 32.783543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094540, 34.937244, 32.760368>,  <34.869850, 35.020435, 32.746464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094540, 34.937244, 32.760368>,  <35.469025, 34.798595, 32.783543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094540, 34.937244, 32.760368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101804, 0.109699, -0.988738,
		-0.336366, -0.931567, -0.137990,
		-0.936212, 0.346626, -0.057939,
		34.813675, 35.041233, 32.742989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199474, 34.494072, 32.229496>,  <35.469025, 34.798595, 32.783543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199474, 34.494072, 32.229496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966148, 34.818790, 32.240345>,  <34.826153, 35.013622, 32.246853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966148, 34.818790, 32.240345>,  <35.199474, 34.494072, 32.229496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966148, 34.818790, 32.240345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046866, 0.066975, -0.996653,
		-0.810896, -0.580087, -0.077113,
		-0.583311, 0.811796, 0.027124,
		34.791157, 35.062328, 32.248482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945148, 34.581703, 31.507225>,  <35.199474, 34.494072, 32.229496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945148, 34.581703, 31.507225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836262, 34.934006, 31.662228>,  <34.770931, 35.145390, 31.755230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836262, 34.934006, 31.662228>,  <34.945148, 34.581703, 31.507225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836262, 34.934006, 31.662228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138818, 0.362557, -0.921565,
		-0.952170, -0.304659, 0.023571,
		-0.272217, 0.880758, 0.387508,
		34.754597, 35.198235, 31.778481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372795, 34.890640, 31.052275>,  <34.945148, 34.581703, 31.507225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372795, 34.890640, 31.052275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506416, 35.202927, 31.263515>,  <34.586590, 35.390297, 31.390261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506416, 35.202927, 31.263515>,  <34.372795, 34.890640, 31.052275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506416, 35.202927, 31.263515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022239, 0.553602, -0.832484,
		-0.942293, 0.289836, 0.167568,
		0.334050, 0.780717, 0.528101,
		34.606632, 35.437141, 31.421946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053261, 35.438606, 30.677500>,  <34.372795, 34.890640, 31.052275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053261, 35.438606, 30.677500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310299, 35.633839, 30.913755>,  <34.464520, 35.750977, 31.055510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310299, 35.633839, 30.913755>,  <34.053261, 35.438606, 30.677500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310299, 35.633839, 30.913755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021301, 0.759183, -0.650528,
		-0.765911, 0.430606, 0.477449,
		0.642593, 0.488076, 0.590640,
		34.503078, 35.780262, 31.090948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775406, 36.086784, 30.703344>,  <34.053261, 35.438606, 30.677500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775406, 36.086784, 30.703344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162113, 36.105236, 30.803928>,  <34.394138, 36.116306, 30.864279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162113, 36.105236, 30.803928>,  <33.775406, 36.086784, 30.703344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162113, 36.105236, 30.803928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124185, 0.775019, -0.619616,
		-0.223469, 0.630252, 0.743535,
		0.966768, 0.046129, 0.251460,
		34.452145, 36.119076, 30.879366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944016, 36.808952, 30.923563>,  <33.775406, 36.086784, 30.703344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944016, 36.808952, 30.923563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281227, 36.630951, 30.802715>,  <34.483555, 36.524151, 30.730206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281227, 36.630951, 30.802715>,  <33.944016, 36.808952, 30.923563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281227, 36.630951, 30.802715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137780, 0.721622, -0.678439,
		0.519924, 0.530317, 0.669660,
		0.843028, -0.445002, -0.302121,
		34.534134, 36.497452, 30.712078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411491, 37.301971, 30.811687>,  <33.944016, 36.808952, 30.923563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411491, 37.301971, 30.811687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525593, 36.989414, 30.589674>,  <34.594051, 36.801880, 30.456467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525593, 36.989414, 30.589674>,  <34.411491, 37.301971, 30.811687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525593, 36.989414, 30.589674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268338, 0.621041, -0.736412,
		0.920124, 0.061125, 0.386829,
		0.285250, -0.781391, -0.555032,
		34.611168, 36.754997, 30.423164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033421, 37.462429, 30.543501>,  <34.411491, 37.301971, 30.811687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033421, 37.462429, 30.543501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892902, 37.187840, 30.288832>,  <34.808594, 37.023087, 30.136030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892902, 37.187840, 30.288832>,  <35.033421, 37.462429, 30.543501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892902, 37.187840, 30.288832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264722, 0.579440, -0.770825,
		0.898063, -0.439326, -0.021829,
		-0.351292, -0.686471, -0.636673,
		34.787514, 36.981899, 30.097830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489937, 37.656040, 30.059402>,  <35.033421, 37.462429, 30.543501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489937, 37.656040, 30.059402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215908, 37.419682, 29.888987>,  <35.051491, 37.277866, 29.786737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215908, 37.419682, 29.888987>,  <35.489937, 37.656040, 30.059402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215908, 37.419682, 29.888987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067118, 0.531154, -0.844613,
		0.725377, -0.607216, -0.324218,
		-0.685072, -0.590902, -0.426041,
		35.010387, 37.242413, 29.761175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765369, 37.438641, 29.464737>,  <35.489937, 37.656040, 30.059402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765369, 37.438641, 29.464737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381275, 37.367153, 29.378941>,  <35.150818, 37.324261, 29.327463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381275, 37.367153, 29.378941>,  <35.765369, 37.438641, 29.464737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381275, 37.367153, 29.378941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115385, 0.445536, -0.887797,
		0.254232, -0.877244, -0.407197,
		-0.960236, -0.178722, -0.214491,
		35.093204, 37.313538, 29.314592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753185, 37.305511, 28.744844>,  <35.765369, 37.438641, 29.464737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753185, 37.305511, 28.744844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366901, 37.377502, 28.819685>,  <35.135132, 37.420696, 28.864590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366901, 37.377502, 28.819685>,  <35.753185, 37.305511, 28.744844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366901, 37.377502, 28.819685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115468, 0.347712, -0.930464,
		-0.232520, -0.920165, -0.315008,
		-0.965713, 0.179978, 0.187100,
		35.077187, 37.431496, 28.875814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184853, 36.994339, 28.161493>,  <35.753185, 37.305511, 28.744844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184853, 36.994339, 28.161493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001007, 37.294605, 28.351339>,  <34.890701, 37.474766, 28.465246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001007, 37.294605, 28.351339>,  <35.184853, 36.994339, 28.161493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001007, 37.294605, 28.351339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135571, 0.468839, -0.872818,
		-0.877711, -0.465501, -0.113715,
		-0.459612, 0.750665, 0.474613,
		34.863125, 37.519806, 28.493723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589317, 37.202946, 27.796679>,  <35.184853, 36.994339, 28.161493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589317, 37.202946, 27.796679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609016, 37.521072, 28.038353>,  <34.620834, 37.711948, 28.183357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609016, 37.521072, 28.038353>,  <34.589317, 37.202946, 27.796679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609016, 37.521072, 28.038353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208773, 0.599755, -0.772469,
		-0.976723, -0.088098, 0.195576,
		0.049245, 0.795319, 0.604187,
		34.623791, 37.759666, 28.219608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096603, 37.752022, 27.537470>,  <34.589317, 37.202946, 27.796679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096603, 37.752022, 27.537470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327358, 37.976746, 27.774645>,  <34.465809, 38.111580, 27.916950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327358, 37.976746, 27.774645>,  <34.096603, 37.752022, 27.537470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327358, 37.976746, 27.774645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073545, 0.758677, -0.647302,
		-0.813510, 0.329810, 0.478986,
		0.576882, 0.561814, 0.592935,
		34.500423, 38.145290, 27.952526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762611, 38.358768, 27.585022>,  <34.096603, 37.752022, 27.537470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762611, 38.358768, 27.585022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141293, 38.446407, 27.679462>,  <34.368504, 38.498989, 27.736126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141293, 38.446407, 27.679462>,  <33.762611, 38.358768, 27.585022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141293, 38.446407, 27.679462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010407, 0.711823, -0.702282,
		-0.321927, 0.667312, 0.671608,
		0.946707, 0.219095, 0.236100,
		34.425304, 38.512135, 27.750292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750652, 38.979332, 27.776718>,  <33.762611, 38.358768, 27.585022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750652, 38.979332, 27.776718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112438, 38.881969, 27.636608>,  <34.329510, 38.823551, 27.552542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112438, 38.881969, 27.636608>,  <33.750652, 38.979332, 27.776718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112438, 38.881969, 27.636608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077741, 0.713373, -0.696459,
		0.419395, 0.657156, 0.626301,
		0.904469, -0.243402, -0.350273,
		34.383778, 38.808949, 27.531527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884155, 39.632301, 27.478146>,  <33.750652, 38.979332, 27.776718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884155, 39.632301, 27.478146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189308, 39.414711, 27.338375>,  <34.372398, 39.284157, 27.254513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189308, 39.414711, 27.338375>,  <33.884155, 39.632301, 27.478146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189308, 39.414711, 27.338375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099557, 0.632849, -0.767848,
		0.638825, 0.550991, 0.536946,
		0.762883, -0.543978, -0.349425,
		34.418175, 39.251518, 27.233547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378113, 40.221199, 27.277857>,  <33.884155, 39.632301, 27.478146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378113, 40.221199, 27.277857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457424, 39.879368, 27.085863>,  <34.505013, 39.674271, 26.970667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457424, 39.879368, 27.085863>,  <34.378113, 40.221199, 27.277857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457424, 39.879368, 27.085863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280964, 0.518712, -0.807463,
		0.939012, 0.025248, 0.342957,
		0.198282, -0.854576, -0.479983,
		34.516911, 39.622993, 26.941868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055912, 40.287891, 27.165152>,  <34.378113, 40.221199, 27.277857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055912, 40.287891, 27.165152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891777, 40.059933, 26.880381>,  <34.793297, 39.923157, 26.709518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891777, 40.059933, 26.880381>,  <35.055912, 40.287891, 27.165152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891777, 40.059933, 26.880381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487005, 0.523092, -0.699429,
		0.771005, -0.633715, 0.062897,
		-0.410337, -0.569895, -0.711929,
		34.768677, 39.888966, 26.666801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574642, 40.218647, 26.650892>,  <35.055912, 40.287891, 27.165152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574642, 40.218647, 26.650892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233994, 40.142597, 26.455509>,  <35.029606, 40.096966, 26.338280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233994, 40.142597, 26.455509>,  <35.574642, 40.218647, 26.650892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233994, 40.142597, 26.455509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254664, 0.664431, -0.702622,
		0.458134, -0.722762, -0.517426,
		-0.851622, -0.190125, -0.488459,
		34.978508, 40.085560, 26.308971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675404, 40.011761, 25.966202>,  <35.574642, 40.218647, 26.650892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675404, 40.011761, 25.966202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297531, 40.142082, 25.951103>,  <35.070808, 40.220276, 25.942045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297531, 40.142082, 25.951103>,  <35.675404, 40.011761, 25.966202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297531, 40.142082, 25.951103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190087, 0.450088, -0.872518,
		-0.267280, -0.831429, -0.487122,
		-0.944684, 0.325802, -0.037745,
		35.014126, 40.239822, 25.939779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479298, 40.003544, 25.226973>,  <35.675404, 40.011761, 25.966202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479298, 40.003544, 25.226973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221684, 40.257839, 25.397173>,  <35.067116, 40.410416, 25.499294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221684, 40.257839, 25.397173>,  <35.479298, 40.003544, 25.226973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221684, 40.257839, 25.397173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009403, 0.562755, -0.826571,
		-0.764935, -0.528343, -0.368414,
		-0.644040, 0.635737, 0.425503,
		35.028473, 40.448559, 25.524824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818428, 40.069847, 24.753250>,  <35.479298, 40.003544, 25.226973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818428, 40.069847, 24.753250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835903, 40.386776, 24.996662>,  <34.846390, 40.576935, 25.142710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835903, 40.386776, 24.996662>,  <34.818428, 40.069847, 24.753250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835903, 40.386776, 24.996662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187967, 0.591716, -0.783926,
		-0.981203, 0.148635, -0.123078,
		0.043691, 0.792326, 0.608532,
		34.849010, 40.624474, 25.179222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608524, 40.575390, 24.376272>,  <34.818428, 40.069847, 24.753250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608524, 40.575390, 24.376272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814728, 40.762459, 24.663473>,  <34.938450, 40.874702, 24.835794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814728, 40.762459, 24.663473>,  <34.608524, 40.575390, 24.376272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814728, 40.762459, 24.663473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203929, 0.746889, -0.632906,
		-0.832264, 0.472691, 0.289655,
		0.515509, 0.467676, 0.718004,
		34.969379, 40.902763, 24.878874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447998, 41.167873, 24.240797>,  <34.608524, 40.575390, 24.376272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447998, 41.167873, 24.240797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783436, 41.213642, 24.453840>,  <34.984699, 41.241104, 24.581665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.783436, 41.213642, 24.453840>,  <34.447998, 41.167873, 24.240797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783436, 41.213642, 24.453840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213626, 0.830311, -0.514731,
		-0.501124, 0.545428, 0.671850,
		0.838593, 0.114419, 0.532607,
		35.035015, 41.247967, 24.613623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360481, 41.887512, 24.502157>,  <34.447998, 41.167873, 24.240797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360481, 41.887512, 24.502157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742855, 41.773846, 24.531664>,  <34.972279, 41.705647, 24.549368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742855, 41.773846, 24.531664>,  <34.360481, 41.887512, 24.502157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742855, 41.773846, 24.531664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293529, 0.920232, -0.258870,
		0.005677, 0.269116, 0.963091,
		0.955933, -0.284165, 0.073769,
		35.029636, 41.688595, 24.553795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597439, 42.258430, 24.993177>,  <34.360481, 41.887512, 24.502157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597439, 42.258430, 24.993177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906330, 42.168949, 24.755312>,  <35.091663, 42.115261, 24.612593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906330, 42.168949, 24.755312>,  <34.597439, 42.258430, 24.993177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906330, 42.168949, 24.755312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214338, 0.972821, -0.087626,
		0.598103, -0.059792, 0.799186,
		0.772225, -0.223705, -0.594663,
		35.137997, 42.101837, 24.576914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122231, 42.716709, 25.212133>,  <34.597439, 42.258430, 24.993177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122231, 42.716709, 25.212133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226612, 42.588509, 24.847897>,  <35.289242, 42.511589, 24.629354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226612, 42.588509, 24.847897>,  <35.122231, 42.716709, 25.212133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226612, 42.588509, 24.847897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183073, 0.942591, -0.279298,
		0.947833, -0.093821, 0.304649,
		0.260955, -0.320500, -0.910594,
		35.304897, 42.492359, 24.574718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563301, 43.195805, 25.056740>,  <35.122231, 42.716709, 25.212133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563301, 43.195805, 25.056740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494259, 43.010578, 24.708998>,  <35.452835, 42.899441, 24.500353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494259, 43.010578, 24.708998>,  <35.563301, 43.195805, 25.056740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494259, 43.010578, 24.708998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199504, 0.847873, -0.491232,
		0.964575, -0.258229, -0.053964,
		-0.172605, -0.463065, -0.869355,
		35.442478, 42.871658, 24.448191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052246, 43.448627, 24.633301>,  <35.563301, 43.195805, 25.056740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052246, 43.448627, 24.633301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795593, 43.297546, 24.366272>,  <35.641602, 43.206898, 24.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795593, 43.297546, 24.366272>,  <36.052246, 43.448627, 24.633301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795593, 43.297546, 24.366272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022318, 0.860791, -0.508470,
		0.766688, -0.341149, -0.543881,
		-0.641631, -0.377699, -0.667572,
		35.603104, 43.184235, 24.166000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235161, 43.808479, 24.136517>,  <36.052246, 43.448627, 24.633301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235161, 43.808479, 24.136517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895020, 43.656345, 23.991053>,  <35.690937, 43.565063, 23.903774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895020, 43.656345, 23.991053>,  <36.235161, 43.808479, 24.136517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895020, 43.656345, 23.991053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070389, 0.602661, -0.794887,
		0.521487, -0.701530, -0.485702,
		-0.850351, -0.380335, -0.363660,
		35.639915, 43.542244, 23.881954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387085, 43.690365, 23.403748>,  <36.235161, 43.808479, 24.136517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387085, 43.690365, 23.403748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995369, 43.732182, 23.473104>,  <35.760338, 43.757271, 23.514719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995369, 43.732182, 23.473104>,  <36.387085, 43.690365, 23.403748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995369, 43.732182, 23.473104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028983, 0.775174, -0.631082,
		-0.200385, -0.623037, -0.756089,
		-0.979288, 0.104546, 0.173391,
		35.701584, 43.763546, 23.525122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054070, 43.704121, 22.728300>,  <36.387085, 43.690365, 23.403748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054070, 43.704121, 22.728300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782574, 43.877796, 22.965210>,  <35.619675, 43.982002, 23.107355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.782574, 43.877796, 22.965210>,  <36.054070, 43.704121, 22.728300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782574, 43.877796, 22.965210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038959, 0.826652, -0.561363,
		-0.733344, -0.357946, -0.577997,
		-0.678740, 0.434191, 0.592275,
		35.578953, 44.008053, 23.142893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607651, 44.084007, 22.236650>,  <36.054070, 43.704121, 22.728300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607651, 44.084007, 22.236650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570404, 44.253170, 22.597202>,  <35.548058, 44.354668, 22.813534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570404, 44.253170, 22.597202>,  <35.607651, 44.084007, 22.236650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570404, 44.253170, 22.597202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056186, 0.906100, -0.419316,
		-0.994069, 0.011602, -0.108130,
		-0.093112, 0.422905, 0.901378,
		35.542469, 44.380043, 22.867615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001476, 44.571568, 22.264015>,  <35.607651, 44.084007, 22.236650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001476, 44.571568, 22.264015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311214, 44.651825, 22.504057>,  <35.497059, 44.699982, 22.648081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311214, 44.651825, 22.504057>,  <35.001476, 44.571568, 22.264015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311214, 44.651825, 22.504057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144019, 0.867612, -0.475928,
		-0.616150, 0.454961, 0.642938,
		0.774350, 0.200648, 0.600102,
		35.543518, 44.712021, 22.684088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498718, 44.966667, 22.669827>,  <35.001476, 44.571568, 22.264015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498718, 44.966667, 22.669827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312290, 44.682671, 22.458662>,  <34.200436, 44.512272, 22.331964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312290, 44.682671, 22.458662>,  <34.498718, 44.966667, 22.669827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312290, 44.682671, 22.458662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882288, 0.417449, 0.217496,
		0.065954, 0.567135, -0.820980,
		-0.466067, -0.709996, -0.527909,
		34.172470, 44.469673, 22.300289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638069, 45.282921, 23.315512>,  <34.498718, 44.966667, 22.669827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638069, 45.282921, 23.315512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574860, 45.620071, 23.521263>,  <34.536934, 45.822361, 23.644714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574860, 45.620071, 23.521263>,  <34.638069, 45.282921, 23.315512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574860, 45.620071, 23.521263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525562, 0.369215, -0.766463,
		-0.835951, -0.391458, 0.384639,
		-0.158024, 0.842876, 0.514381,
		34.527451, 45.872932, 23.675577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982311, 45.474804, 23.264017>,  <34.638069, 45.282921, 23.315512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982311, 45.474804, 23.264017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234966, 45.782368, 23.303646>,  <34.386559, 45.966908, 23.327423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234966, 45.782368, 23.303646>,  <33.982311, 45.474804, 23.264017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234966, 45.782368, 23.303646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314954, 0.371268, -0.873478,
		-0.708408, 0.520516, 0.476677,
		0.631634, 0.768910, 0.099071,
		34.424458, 46.013042, 23.333368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619667, 46.211819, 23.031263>,  <33.982311, 45.474804, 23.264017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619667, 46.211819, 23.031263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017078, 46.252354, 23.051775>,  <34.255524, 46.276676, 23.064083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017078, 46.252354, 23.051775>,  <33.619667, 46.211819, 23.031263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017078, 46.252354, 23.051775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021102, 0.608365, -0.793377,
		-0.111596, 0.787161, 0.606568,
		0.993530, 0.101337, 0.051280,
		34.315136, 46.282753, 23.067160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727676, 46.881279, 23.427183>,  <33.619667, 46.211819, 23.031263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727676, 46.881279, 23.427183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934807, 46.697147, 23.138754>,  <34.059086, 46.586666, 22.965696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934807, 46.697147, 23.138754>,  <33.727676, 46.881279, 23.427183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934807, 46.697147, 23.138754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273008, 0.709889, -0.649249,
		0.810754, 0.533058, 0.241925,
		0.517827, -0.460334, -0.721074,
		34.090157, 46.559048, 22.922432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219101, 47.417267, 23.206684>,  <33.727676, 46.881279, 23.427183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219101, 47.417267, 23.206684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128830, 47.154453, 22.918970>,  <34.074665, 46.996765, 22.746342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128830, 47.154453, 22.918970>,  <34.219101, 47.417267, 23.206684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128830, 47.154453, 22.918970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401613, 0.735421, -0.545768,
		0.887567, 0.165704, -0.429845,
		-0.225681, -0.657037, -0.719285,
		34.061127, 46.957344, 22.703184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880192, 46.916367, 23.186623>,  <34.219101, 47.417267, 23.206684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880192, 46.916367, 23.186623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523220, 46.750404, 23.257540>,  <34.309036, 46.650829, 23.300089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.523220, 46.750404, 23.257540>,  <34.880192, 46.916367, 23.186623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523220, 46.750404, 23.257540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246787, -0.119914, 0.961622,
		-0.377719, 0.901930, 0.209407,
		-0.892426, -0.414902, 0.177291,
		34.255493, 46.625935, 23.310728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686241, 47.066494, 23.862339>,  <34.880192, 46.916367, 23.186623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686241, 47.066494, 23.862339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454372, 46.749802, 23.785248>,  <34.315250, 46.559788, 23.738993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454372, 46.749802, 23.785248>,  <34.686241, 47.066494, 23.862339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454372, 46.749802, 23.785248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267201, -0.408133, 0.872944,
		-0.769795, 0.454524, 0.448134,
		-0.579672, -0.791730, -0.192729,
		34.280472, 46.512283, 23.727428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154083, 46.880688, 24.427872>,  <34.686241, 47.066494, 23.862339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154083, 46.880688, 24.427872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288273, 46.586281, 24.192673>,  <34.368786, 46.409637, 24.051554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.288273, 46.586281, 24.192673>,  <34.154083, 46.880688, 24.427872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288273, 46.586281, 24.192673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065673, -0.604378, 0.793986,
		-0.939757, -0.304978, -0.154418,
		0.335475, -0.736013, -0.587998,
		34.388916, 46.365479, 24.016273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849800, 46.295151, 24.698919>,  <34.154083, 46.880688, 24.427872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849800, 46.295151, 24.698919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176445, 46.169624, 24.505150>,  <34.372433, 46.094311, 24.388889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176445, 46.169624, 24.505150>,  <33.849800, 46.295151, 24.698919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176445, 46.169624, 24.505150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181624, -0.656937, 0.731742,
		-0.547864, -0.685533, -0.479467,
		0.816613, -0.313813, -0.484422,
		34.421429, 46.075481, 24.359823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807838, 45.563705, 24.805969>,  <33.849800, 46.295151, 24.698919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807838, 45.563705, 24.805969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181801, 45.642040, 24.687584>,  <34.406178, 45.689041, 24.616552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181801, 45.642040, 24.687584>,  <33.807838, 45.563705, 24.805969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181801, 45.642040, 24.687584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354098, -0.570387, 0.741130,
		-0.023676, -0.797689, -0.602604,
		0.934909, 0.195834, -0.295964,
		34.462273, 45.700790, 24.598795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163235, 44.896397, 24.865690>,  <33.807838, 45.563705, 24.805969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163235, 44.896397, 24.865690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447556, 45.177734, 24.862286>,  <34.618149, 45.346539, 24.860243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447556, 45.177734, 24.862286>,  <34.163235, 44.896397, 24.865690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447556, 45.177734, 24.862286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480092, -0.476267, 0.736669,
		0.514079, -0.527709, -0.676200,
		0.710798, 0.703345, -0.008510,
		34.660793, 45.388737, 24.859732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790470, 44.565193, 24.805567>,  <34.163235, 44.896397, 24.865690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790470, 44.565193, 24.805567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876900, 44.930786, 24.942944>,  <34.928757, 45.150143, 25.025370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876900, 44.930786, 24.942944>,  <34.790470, 44.565193, 24.805567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876900, 44.930786, 24.942944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495441, -0.405738, 0.768059,
		0.841337, 0.004194, -0.540494,
		0.216077, 0.913980, 0.343440,
		34.941723, 45.204979, 25.045975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389885, 44.471165, 25.006990>,  <34.790470, 44.565193, 24.805567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389885, 44.471165, 25.006990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291824, 44.802692, 25.208172>,  <35.232986, 45.001610, 25.328880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291824, 44.802692, 25.208172>,  <35.389885, 44.471165, 25.006990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291824, 44.802692, 25.208172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482987, -0.345412, 0.804621,
		0.840609, 0.440176, -0.315628,
		-0.245153, 0.828816, 0.502956,
		35.218277, 45.051338, 25.359058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981426, 44.701214, 25.313337>,  <35.389885, 44.471165, 25.006990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981426, 44.701214, 25.313337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662651, 44.832558, 25.516144>,  <35.471386, 44.911366, 25.637827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662651, 44.832558, 25.516144>,  <35.981426, 44.701214, 25.313337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662651, 44.832558, 25.516144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398718, -0.344577, 0.849877,
		0.453772, 0.879458, 0.143684,
		-0.796941, 0.328361, 0.507016,
		35.423569, 44.931065, 25.668249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334248, 45.074810, 25.924738>,  <35.981426, 44.701214, 25.313337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334248, 45.074810, 25.924738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949860, 45.010651, 26.014894>,  <35.719227, 44.972157, 26.068989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949860, 45.010651, 26.014894>,  <36.334248, 45.074810, 25.924738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949860, 45.010651, 26.014894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273810, -0.435291, 0.857642,
		-0.039449, 0.885887, 0.462221,
		-0.960975, -0.160394, 0.225392,
		35.661568, 44.962532, 26.082512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318947, 45.206093, 26.667667>,  <36.334248, 45.074810, 25.924738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318947, 45.206093, 26.667667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997822, 44.987846, 26.571512>,  <35.805145, 44.856899, 26.513819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997822, 44.987846, 26.571512>,  <36.318947, 45.206093, 26.667667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997822, 44.987846, 26.571512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148923, -0.573908, 0.805265,
		-0.577328, 0.610680, 0.541998,
		-0.802817, -0.545618, -0.240389,
		35.756977, 44.824162, 26.499395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025585, 45.213112, 27.302225>,  <36.318947, 45.206093, 26.667667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025585, 45.213112, 27.302225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868412, 44.917690, 27.083084>,  <35.774109, 44.740437, 26.951599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868412, 44.917690, 27.083084>,  <36.025585, 45.213112, 27.302225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868412, 44.917690, 27.083084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009298, -0.592552, 0.805478,
		-0.919520, 0.321593, 0.225966,
		-0.392933, -0.738553, -0.547854,
		35.750534, 44.696125, 26.918728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621353, 44.861462, 27.712688>,  <36.025585, 45.213112, 27.302225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621353, 44.861462, 27.712688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680046, 44.598579, 27.416971>,  <35.715260, 44.440849, 27.239540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680046, 44.598579, 27.416971>,  <35.621353, 44.861462, 27.712688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680046, 44.598579, 27.416971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027747, -0.749822, 0.661057,
		-0.988788, -0.076483, -0.128256,
		0.146729, -0.657204, -0.739293,
		35.724064, 44.401417, 27.195183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286976, 44.282436, 27.834064>,  <35.621353, 44.861462, 27.712688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286976, 44.282436, 27.834064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538406, 44.131496, 27.562037>,  <35.689266, 44.040932, 27.398819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538406, 44.131496, 27.562037>,  <35.286976, 44.282436, 27.834064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538406, 44.131496, 27.562037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084514, -0.836094, 0.542037,
		-0.773141, -0.398189, -0.493659,
		0.628579, -0.377349, -0.680071,
		35.726978, 44.018291, 27.358015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091118, 43.584213, 27.560604>,  <35.286976, 44.282436, 27.834064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091118, 43.584213, 27.560604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480331, 43.552391, 27.474005>,  <35.713860, 43.533298, 27.422045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480331, 43.552391, 27.474005>,  <35.091118, 43.584213, 27.560604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480331, 43.552391, 27.474005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064093, -0.808406, 0.585125,
		-0.221567, -0.583224, -0.781510,
		0.973037, -0.079555, -0.216497,
		35.772243, 43.528522, 27.409056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184090, 42.862259, 27.245132>,  <35.091118, 43.584213, 27.560604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184090, 42.862259, 27.245132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539158, 42.986500, 27.381119>,  <35.752197, 43.061043, 27.462711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539158, 42.986500, 27.381119>,  <35.184090, 42.862259, 27.245132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539158, 42.986500, 27.381119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119345, -0.868222, 0.481609,
		0.444754, -0.386935, -0.807760,
		0.887666, 0.310599, 0.339966,
		35.805458, 43.079681, 27.483109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620888, 42.321739, 27.191298>,  <35.184090, 42.862259, 27.245132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620888, 42.321739, 27.191298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790108, 42.552158, 27.471069>,  <35.891640, 42.690411, 27.638933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790108, 42.552158, 27.471069>,  <35.620888, 42.321739, 27.191298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790108, 42.552158, 27.471069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124565, -0.801551, 0.584808,
		0.897504, -0.160277, -0.410850,
		0.423048, 0.576045, 0.699430,
		35.917023, 42.724972, 27.680899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101166, 41.939098, 27.395489>,  <35.620888, 42.321739, 27.191298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101166, 41.939098, 27.395489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050083, 42.197800, 27.696260>,  <36.019436, 42.353020, 27.876724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050083, 42.197800, 27.696260>,  <36.101166, 41.939098, 27.395489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050083, 42.197800, 27.696260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178847, -0.730693, 0.658863,
		0.975554, 0.218620, -0.022357,
		-0.127705, 0.646755, 0.751930,
		36.011772, 42.391827, 27.921839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593121, 41.699253, 27.834597>,  <36.101166, 41.939098, 27.395489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593121, 41.699253, 27.834597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355972, 41.925453, 28.063931>,  <36.213684, 42.061172, 28.201530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355972, 41.925453, 28.063931>,  <36.593121, 41.699253, 27.834597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355972, 41.925453, 28.063931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163768, -0.612408, 0.773393,
		0.788470, 0.552415, 0.270467,
		-0.592870, 0.565503, 0.573333,
		36.178112, 42.095104, 28.235929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977654, 41.765518, 28.426388>,  <36.593121, 41.699253, 27.834597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977654, 41.765518, 28.426388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595592, 41.851158, 28.508223>,  <36.366356, 41.902542, 28.557323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595592, 41.851158, 28.508223>,  <36.977654, 41.765518, 28.426388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595592, 41.851158, 28.508223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032929, -0.609797, 0.791873,
		0.294293, 0.763093, 0.575396,
		-0.955148, 0.214096, 0.204587,
		36.309048, 41.915386, 28.569599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995174, 41.698318, 29.106556>,  <36.977654, 41.765518, 28.426388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995174, 41.698318, 29.106556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605923, 41.706116, 29.014784>,  <36.372372, 41.710793, 28.959721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605923, 41.706116, 29.014784>,  <36.995174, 41.698318, 29.106556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605923, 41.706116, 29.014784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202938, -0.543363, 0.814600,
		-0.108786, 0.839271, 0.532719,
		-0.973130, 0.019491, -0.229431,
		36.313984, 41.711964, 28.945955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678146, 41.707630, 29.829042>,  <36.995174, 41.698318, 29.106556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678146, 41.707630, 29.829042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422428, 41.560619, 29.558865>,  <36.268997, 41.472412, 29.396759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422428, 41.560619, 29.558865>,  <36.678146, 41.707630, 29.829042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422428, 41.560619, 29.558865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397444, -0.594029, 0.699405,
		-0.658286, 0.715577, 0.233686,
		-0.639294, -0.367531, -0.675443,
		36.230640, 41.450359, 29.356232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964039, 41.714687, 30.067915>,  <36.678146, 41.707630, 29.829042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964039, 41.714687, 30.067915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924274, 41.443180, 29.776878>,  <35.900417, 41.280273, 29.602257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924274, 41.443180, 29.776878>,  <35.964039, 41.714687, 30.067915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924274, 41.443180, 29.776878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550480, -0.571610, 0.608469,
		-0.828909, 0.461010, -0.316827,
		-0.099409, -0.678772, -0.727589,
		35.894451, 41.239548, 29.558601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288452, 41.589329, 30.114756>,  <35.964039, 41.714687, 30.067915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288452, 41.589329, 30.114756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440182, 41.269554, 29.928419>,  <35.531219, 41.077690, 29.816618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440182, 41.269554, 29.928419>,  <35.288452, 41.589329, 30.114756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440182, 41.269554, 29.928419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525906, -0.600519, 0.602329,
		-0.761273, 0.016510, -0.648222,
		0.379325, -0.799440, -0.465841,
		35.553978, 41.029720, 29.788666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718136, 41.160378, 30.001245>,  <35.288452, 41.589329, 30.114756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718136, 41.160378, 30.001245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035366, 40.917175, 29.986485>,  <35.225704, 40.771255, 29.977629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035366, 40.917175, 29.986485>,  <34.718136, 41.160378, 30.001245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035366, 40.917175, 29.986485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443137, -0.617473, 0.649889,
		-0.417920, -0.499060, -0.759132,
		0.793078, -0.608002, -0.036902,
		35.273289, 40.734776, 29.975414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505680, 40.419510, 29.847656>,  <34.718136, 41.160378, 30.001245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505680, 40.419510, 29.847656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859741, 40.390427, 30.031488>,  <35.072178, 40.372978, 30.141787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859741, 40.390427, 30.031488>,  <34.505680, 40.419510, 29.847656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859741, 40.390427, 30.031488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305161, -0.836333, 0.455438,
		0.351247, -0.543379, -0.762473,
		0.885156, -0.072706, 0.459578,
		35.125290, 40.368614, 30.169361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353294, 39.841530, 30.119858>,  <34.505680, 40.419510, 29.847656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353294, 39.841530, 30.119858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723843, 39.909359, 30.254370>,  <34.946171, 39.950058, 30.335077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723843, 39.909359, 30.254370>,  <34.353294, 39.841530, 30.119858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723843, 39.909359, 30.254370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103392, -0.744080, 0.660042,
		0.362146, -0.646211, -0.671760,
		0.926370, 0.169577, 0.336279,
		35.001755, 39.960232, 30.355253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748592, 39.153355, 30.049603>,  <34.353294, 39.841530, 30.119858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748592, 39.153355, 30.049603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881443, 39.400002, 30.335114>,  <34.961155, 39.547989, 30.506420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881443, 39.400002, 30.335114>,  <34.748592, 39.153355, 30.049603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881443, 39.400002, 30.335114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058610, -0.741778, 0.668079,
		0.941412, -0.263722, -0.210226,
		0.332128, 0.616616, 0.713776,
		34.981083, 39.584988, 30.549246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340794, 38.837074, 30.396006>,  <34.748592, 39.153355, 30.049603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340794, 38.837074, 30.396006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193214, 39.101398, 30.657450>,  <35.104668, 39.259995, 30.814316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193214, 39.101398, 30.657450>,  <35.340794, 38.837074, 30.396006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193214, 39.101398, 30.657450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105849, -0.728522, 0.676796,
		0.923404, 0.180517, 0.338732,
		-0.368947, 0.660810, 0.653612,
		35.082531, 39.299641, 30.853533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732635, 38.628345, 30.949368>,  <35.340794, 38.837074, 30.396006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732635, 38.628345, 30.949368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440334, 38.857880, 31.097269>,  <35.264954, 38.995602, 31.186010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440334, 38.857880, 31.097269>,  <35.732635, 38.628345, 30.949368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440334, 38.857880, 31.097269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022231, -0.521356, 0.853050,
		0.682282, 0.631587, 0.368224,
		-0.730751, 0.573835, 0.369752,
		35.221107, 39.030029, 31.208195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887280, 38.496357, 31.584293>,  <35.732635, 38.628345, 30.949368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887280, 38.496357, 31.584293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516918, 38.647461, 31.584620>,  <35.294701, 38.738121, 31.584814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516918, 38.647461, 31.584620>,  <35.887280, 38.496357, 31.584293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516918, 38.647461, 31.584620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129681, -0.319879, 0.938542,
		0.354801, 0.868894, 0.345165,
		-0.925904, 0.377757, 0.000814,
		35.239147, 38.760788, 31.584864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815399, 38.723423, 32.273689>,  <35.887280, 38.496357, 31.584293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815399, 38.723423, 32.273689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442719, 38.672714, 32.137535>,  <35.219109, 38.642288, 32.055843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442719, 38.672714, 32.137535>,  <35.815399, 38.723423, 32.273689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442719, 38.672714, 32.137535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270995, -0.381371, 0.883808,
		-0.241854, 0.915688, 0.320970,
		-0.931702, -0.126772, -0.340383,
		35.163208, 38.634682, 32.035419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490776, 39.054951, 32.795574>,  <35.815399, 38.723423, 32.273689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490776, 39.054951, 32.795574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245430, 38.808411, 32.598034>,  <35.098221, 38.660488, 32.479507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245430, 38.808411, 32.598034>,  <35.490776, 39.054951, 32.795574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245430, 38.808411, 32.598034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370285, -0.327894, 0.869123,
		-0.697616, 0.715959, -0.027105,
		-0.613369, -0.616351, -0.493853,
		35.061420, 38.623505, 32.449879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817867, 39.202095, 33.077988>,  <35.490776, 39.054951, 32.795574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817867, 39.202095, 33.077988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809830, 38.844543, 32.898846>,  <34.805008, 38.630013, 32.791363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809830, 38.844543, 32.898846>,  <34.817867, 39.202095, 33.077988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809830, 38.844543, 32.898846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499280, -0.379119, 0.779094,
		-0.866208, 0.239256, -0.438681,
		-0.020091, -0.893882, -0.447852,
		34.803802, 38.576378, 32.764488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045944, 38.979137, 33.065514>,  <34.817867, 39.202095, 33.077988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045944, 38.979137, 33.065514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273891, 38.653679, 33.019520>,  <34.410660, 38.458405, 32.991924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273891, 38.653679, 33.019520>,  <34.045944, 38.979137, 33.065514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273891, 38.653679, 33.019520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402454, -0.398351, 0.824225,
		-0.716435, -0.423426, -0.554465,
		0.569870, -0.813650, -0.114983,
		34.444851, 38.409584, 32.985023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739059, 38.474678, 33.450333>,  <34.045944, 38.979137, 33.065514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739059, 38.474678, 33.450333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051678, 38.242477, 33.358936>,  <34.239250, 38.103157, 33.304100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051678, 38.242477, 33.358936>,  <33.739059, 38.474678, 33.450333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051678, 38.242477, 33.358936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313668, -0.682246, 0.660419,
		-0.539257, -0.444478, -0.715291,
		0.781546, -0.580499, -0.228488,
		34.286140, 38.068329, 33.290390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494751, 37.784927, 33.383522>,  <33.739059, 38.474678, 33.450333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494751, 37.784927, 33.383522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884308, 37.759430, 33.470676>,  <34.118042, 37.744129, 33.522968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884308, 37.759430, 33.470676>,  <33.494751, 37.784927, 33.383522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884308, 37.759430, 33.470676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204484, -0.663235, 0.719935,
		0.098618, -0.745692, -0.658952,
		0.973890, -0.063746, 0.217889,
		34.176476, 37.740307, 33.536041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675255, 37.093346, 33.464111>,  <33.494751, 37.784927, 33.383522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675255, 37.093346, 33.464111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955227, 37.288651, 33.672611>,  <34.123211, 37.405834, 33.797710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955227, 37.288651, 33.672611>,  <33.675255, 37.093346, 33.464111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955227, 37.288651, 33.672611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068812, -0.680329, 0.729669,
		0.710889, -0.546586, -0.442584,
		0.699930, 0.488259, 0.521250,
		34.165207, 37.435127, 33.828987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045143, 36.503223, 33.885391>,  <33.675255, 37.093346, 33.464111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045143, 36.503223, 33.885391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145344, 36.851334, 34.055035>,  <34.205463, 37.060200, 34.156818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145344, 36.851334, 34.055035>,  <34.045143, 36.503223, 33.885391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145344, 36.851334, 34.055035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135242, -0.465236, 0.874794,
		0.958622, -0.161784, -0.234242,
		0.250505, 0.870277, 0.424106,
		34.220497, 37.112415, 34.182266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764454, 36.512852, 34.254238>,  <34.045143, 36.503223, 33.885391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764454, 36.512852, 34.254238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553528, 36.803562, 34.430302>,  <34.426971, 36.977989, 34.535938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553528, 36.803562, 34.430302>,  <34.764454, 36.512852, 34.254238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553528, 36.803562, 34.430302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172168, -0.415894, 0.892967,
		0.832045, 0.546655, 0.094179,
		-0.527313, 0.726774, 0.440159,
		34.395332, 37.021595, 34.562351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186504, 36.574528, 34.863758>,  <34.764454, 36.512852, 34.254238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186504, 36.574528, 34.863758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845325, 36.761230, 34.957233>,  <34.640617, 36.873253, 35.013321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845325, 36.761230, 34.957233>,  <35.186504, 36.574528, 34.863758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845325, 36.761230, 34.957233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154619, -0.201684, 0.967169,
		0.498565, 0.861081, 0.099858,
		-0.852951, 0.466757, 0.233692,
		34.589439, 36.901257, 35.027340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361637, 37.126717, 35.391026>,  <35.186504, 36.574528, 34.863758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361637, 37.126717, 35.391026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972099, 37.046432, 35.433620>,  <34.738377, 36.998260, 35.459179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.972099, 37.046432, 35.433620>,  <35.361637, 37.126717, 35.391026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972099, 37.046432, 35.433620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142896, -0.176650, 0.973846,
		-0.176650, 0.963592, 0.200710,
		-0.973846, -0.200710, 0.106489,
		34.679947, 36.986221, 35.465569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042099, 37.433655, 35.382778>,  <35.361637, 37.126717, 35.391026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042099, 37.433655, 35.382778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345329, 37.543701, 35.619297>,  <36.527267, 37.609730, 35.761208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345329, 37.543701, 35.619297>,  <36.042099, 37.433655, 35.382778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345329, 37.543701, 35.619297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545151, 0.230326, -0.806077,
		-0.357959, 0.933413, 0.024623,
		0.758074, 0.275119, 0.591298,
		36.572750, 37.626236, 35.796688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262962, 37.855694, 34.921692>,  <36.042099, 37.433655, 35.382778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262962, 37.855694, 34.921692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556187, 37.836044, 35.193047>,  <36.732121, 37.824253, 35.355858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556187, 37.836044, 35.193047>,  <36.262962, 37.855694, 34.921692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556187, 37.836044, 35.193047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662751, 0.275811, -0.696196,
		-0.152907, 0.959956, 0.234743,
		0.733063, -0.049122, 0.678385,
		36.776104, 37.821308, 35.396561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489311, 38.484024, 34.949379>,  <36.262962, 37.855694, 34.921692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489311, 38.484024, 34.949379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784203, 38.241562, 35.068760>,  <36.961136, 38.096085, 35.140388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784203, 38.241562, 35.068760>,  <36.489311, 38.484024, 34.949379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784203, 38.241562, 35.068760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657115, 0.540527, -0.525385,
		0.157142, 0.583447, 0.796804,
		0.737228, -0.606152, 0.298453,
		37.005371, 38.059715, 35.158295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094254, 38.965317, 35.123310>,  <36.489311, 38.484024, 34.949379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094254, 38.965317, 35.123310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258507, 38.601074, 35.104675>,  <37.357059, 38.382526, 35.093494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258507, 38.601074, 35.104675>,  <37.094254, 38.965317, 35.123310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258507, 38.601074, 35.104675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754581, 0.368072, -0.543258,
		0.511844, 0.187925, 0.838272,
		0.410637, -0.910608, -0.046591,
		37.381699, 38.327892, 35.090698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798191, 39.027069, 35.345371>,  <37.094254, 38.965317, 35.123310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798191, 39.027069, 35.345371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802109, 38.701141, 35.113522>,  <37.804459, 38.505585, 34.974411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802109, 38.701141, 35.113522>,  <37.798191, 39.027069, 35.345371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802109, 38.701141, 35.113522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649832, 0.445754, -0.615648,
		0.760015, -0.370630, 0.533864,
		0.009795, -0.814823, -0.579627,
		37.805046, 38.456696, 34.939632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546219, 38.915054, 35.066742>,  <37.798191, 39.027069, 35.345371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546219, 38.915054, 35.066742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314430, 38.691048, 34.829899>,  <38.175358, 38.556644, 34.687794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314430, 38.691048, 34.829899>,  <38.546219, 38.915054, 35.066742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314430, 38.691048, 34.829899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489959, 0.341188, -0.802204,
		0.651270, -0.754962, 0.076679,
		-0.579472, -0.560020, -0.592106,
		38.140587, 38.523041, 34.652267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007576, 38.474873, 34.508862>,  <38.546219, 38.915054, 35.066742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007576, 38.474873, 34.508862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638973, 38.509880, 34.357513>,  <38.417812, 38.530884, 34.266705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638973, 38.509880, 34.357513>,  <39.007576, 38.474873, 34.508862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638973, 38.509880, 34.357513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375007, 0.453837, -0.808333,
		0.100977, -0.886777, -0.451033,
		-0.921506, 0.087518, -0.378374,
		38.362522, 38.536137, 34.243999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791893, 38.073078, 33.822712>,  <39.007576, 38.474873, 34.508862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791893, 38.073078, 33.822712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529903, 38.373524, 33.855793>,  <38.372707, 38.553791, 33.875641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529903, 38.373524, 33.855793>,  <38.791893, 38.073078, 33.822712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529903, 38.373524, 33.855793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337217, 0.388472, -0.857539,
		-0.676233, -0.533781, -0.507727,
		-0.654976, 0.751110, 0.082698,
		38.333412, 38.598858, 33.880604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627419, 38.201748, 33.136093>,  <38.791893, 38.073078, 33.822712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627419, 38.201748, 33.136093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498272, 38.533806, 33.317917>,  <38.420784, 38.733040, 33.427010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498272, 38.533806, 33.317917>,  <38.627419, 38.201748, 33.136093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498272, 38.533806, 33.317917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383091, 0.553805, -0.739284,
		-0.865445, -0.064556, -0.496826,
		-0.322870, 0.830140, 0.454557,
		38.401409, 38.782848, 33.454285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333832, 38.465736, 32.619247>,  <38.627419, 38.201748, 33.136093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333832, 38.465736, 32.619247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414951, 38.760498, 32.877193>,  <38.463623, 38.937355, 33.031960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414951, 38.760498, 32.877193>,  <38.333832, 38.465736, 32.619247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414951, 38.760498, 32.877193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102826, 0.638884, -0.762400,
		-0.973807, 0.220922, 0.053792,
		0.202798, 0.736899, 0.644866,
		38.475792, 38.981567, 33.070652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760075, 38.932819, 32.440941>,  <38.333832, 38.465736, 32.619247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760075, 38.932819, 32.440941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025070, 39.163891, 32.631683>,  <38.184067, 39.302532, 32.746128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025070, 39.163891, 32.631683>,  <37.760075, 38.932819, 32.440941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025070, 39.163891, 32.631683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130252, 0.715742, -0.686110,
		-0.737661, 0.392428, 0.549414,
		0.662488, 0.577679, 0.476861,
		38.223816, 39.337196, 32.774742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455959, 39.652451, 32.582764>,  <37.760075, 38.932819, 32.440941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455959, 39.652451, 32.582764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847000, 39.716068, 32.637913>,  <38.081623, 39.754238, 32.671001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.847000, 39.716068, 32.637913>,  <37.455959, 39.652451, 32.582764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847000, 39.716068, 32.637913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078948, 0.884275, -0.460245,
		-0.195115, 0.439050, 0.877021,
		0.977598, 0.159039, 0.137873,
		38.140278, 39.763779, 32.679276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515606, 40.310368, 32.830605>,  <37.455959, 39.652451, 32.582764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515606, 40.310368, 32.830605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894375, 40.246811, 32.718822>,  <38.121635, 40.208675, 32.651752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.894375, 40.246811, 32.718822>,  <37.515606, 40.310368, 32.830605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894375, 40.246811, 32.718822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006159, 0.860178, -0.509957,
		0.321407, 0.484610, 0.813542,
		0.946921, -0.158893, -0.279452,
		38.178452, 40.199142, 32.634987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834862, 40.891434, 32.968597>,  <37.515606, 40.310368, 32.830605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834862, 40.891434, 32.968597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071072, 40.715431, 32.697994>,  <38.212799, 40.609829, 32.535633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071072, 40.715431, 32.697994>,  <37.834862, 40.891434, 32.968597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071072, 40.715431, 32.697994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051806, 0.857225, -0.512329,
		0.805352, 0.267497, 0.529011,
		0.590528, -0.440011, -0.676510,
		38.248230, 40.583427, 32.495041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480759, 41.238773, 32.841362>,  <37.834862, 40.891434, 32.968597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480759, 41.238773, 32.841362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444359, 41.010609, 32.514839>,  <38.422520, 40.873711, 32.318928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444359, 41.010609, 32.514839>,  <38.480759, 41.238773, 32.841362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444359, 41.010609, 32.514839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124789, 0.806713, -0.577618,
		0.988002, -0.154427, -0.002228,
		-0.090998, -0.570409, -0.816304,
		38.417061, 40.839485, 32.269947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994392, 41.495441, 32.343891>,  <38.480759, 41.238773, 32.841362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994392, 41.495441, 32.343891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707062, 41.308361, 32.137878>,  <38.534664, 41.196114, 32.014271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707062, 41.308361, 32.137878>,  <38.994392, 41.495441, 32.343891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707062, 41.308361, 32.137878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069294, 0.784721, -0.615963,
		0.692250, -0.406771, -0.596093,
		-0.718323, -0.467706, -0.515037,
		38.491566, 41.168049, 31.983368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316086, 41.648830, 31.635447>,  <38.994392, 41.495441, 32.343891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316086, 41.648830, 31.635447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920113, 41.593346, 31.646698>,  <38.682529, 41.560055, 31.653448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920113, 41.593346, 31.646698>,  <39.316086, 41.648830, 31.635447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920113, 41.593346, 31.646698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122067, 0.736161, -0.665707,
		0.071633, -0.662440, -0.745683,
		-0.989933, -0.138710, 0.028129,
		38.623131, 41.551731, 31.655136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212479, 41.690128, 30.910671>,  <39.316086, 41.648830, 31.635447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212479, 41.690128, 30.910671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871380, 41.753742, 31.109682>,  <38.666721, 41.791912, 31.229088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871380, 41.753742, 31.109682>,  <39.212479, 41.690128, 30.910671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871380, 41.753742, 31.109682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200990, 0.779267, -0.593587,
		-0.482108, -0.606177, -0.632552,
		-0.852745, 0.159036, 0.497526,
		38.615555, 41.801453, 31.258940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686195, 41.847969, 30.383787>,  <39.212479, 41.690128, 30.910671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686195, 41.847969, 30.383787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543774, 41.985313, 30.731426>,  <38.458321, 42.067719, 30.940010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543774, 41.985313, 30.731426>,  <38.686195, 41.847969, 30.383787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543774, 41.985313, 30.731426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417419, 0.773663, -0.476663,
		-0.836054, -0.532496, -0.132144,
		-0.356056, 0.343356, 0.869098,
		38.436958, 42.088322, 30.992155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909874, 41.882671, 30.251905>,  <38.686195, 41.847969, 30.383787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909874, 41.882671, 30.251905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031090, 42.143269, 30.530106>,  <38.103821, 42.299625, 30.697025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031090, 42.143269, 30.530106>,  <37.909874, 41.882671, 30.251905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031090, 42.143269, 30.530106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403772, 0.748852, -0.525536,
		-0.863211, -0.121563, 0.489990,
		0.303044, 0.651493, 0.695501,
		38.122002, 42.338715, 30.738756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387058, 42.372486, 30.367805>,  <37.909874, 41.882671, 30.251905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387058, 42.372486, 30.367805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689915, 42.570827, 30.537918>,  <37.871628, 42.689831, 30.639986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689915, 42.570827, 30.537918>,  <37.387058, 42.372486, 30.367805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689915, 42.570827, 30.537918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313377, 0.846926, -0.429547,
		-0.573172, 0.191957, 0.796635,
		0.757145, 0.495851, 0.425279,
		37.917057, 42.719582, 30.665503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138256, 43.032837, 30.678505>,  <37.387058, 42.372486, 30.367805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138256, 43.032837, 30.678505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531635, 43.083427, 30.626596>,  <37.767662, 43.113781, 30.595451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531635, 43.083427, 30.626596>,  <37.138256, 43.032837, 30.678505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531635, 43.083427, 30.626596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166088, 0.915510, -0.366409,
		0.072467, 0.381896, 0.921359,
		0.983444, 0.126474, -0.129773,
		37.826668, 43.121368, 30.587664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220875, 43.770065, 30.615677>,  <37.138256, 43.032837, 30.678505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220875, 43.770065, 30.615677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566864, 43.625057, 30.476881>,  <37.774456, 43.538052, 30.393602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566864, 43.625057, 30.476881>,  <37.220875, 43.770065, 30.615677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566864, 43.625057, 30.476881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094818, 0.797078, -0.596387,
		0.492781, 0.482957, 0.723823,
		0.864972, -0.362519, -0.346992,
		37.826355, 43.516300, 30.372784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678257, 44.255436, 30.524664>,  <37.220875, 43.770065, 30.615677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678257, 44.255436, 30.524664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814491, 43.977398, 30.271416>,  <37.896233, 43.810574, 30.119467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814491, 43.977398, 30.271416>,  <37.678257, 44.255436, 30.524664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814491, 43.977398, 30.271416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165274, 0.618634, -0.768099,
		0.925572, 0.366246, 0.095819,
		0.340590, -0.695095, -0.633121,
		37.916668, 43.768871, 30.081480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075291, 44.657383, 30.052738>,  <37.678257, 44.255436, 30.524664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075291, 44.657383, 30.052738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041443, 44.302338, 29.871635>,  <38.021133, 44.089310, 29.762974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041443, 44.302338, 29.871635>,  <38.075291, 44.657383, 30.052738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041443, 44.302338, 29.871635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121139, 0.460181, -0.879522,
		0.989022, -0.019578, -0.146465,
		-0.084619, -0.887609, -0.452758,
		38.016056, 44.036057, 29.735807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546227, 44.672520, 29.545496>,  <38.075291, 44.657383, 30.052738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546227, 44.672520, 29.545496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288170, 44.395069, 29.417324>,  <38.133335, 44.228600, 29.340422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288170, 44.395069, 29.417324>,  <38.546227, 44.672520, 29.545496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288170, 44.395069, 29.417324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112453, 0.328609, -0.937747,
		0.755744, -0.641011, -0.133999,
		-0.645140, -0.693628, -0.320428,
		38.094627, 44.186981, 29.321196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874149, 44.511860, 28.976511>,  <38.546227, 44.672520, 29.545496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874149, 44.511860, 28.976511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489288, 44.417530, 28.921886>,  <38.258373, 44.360931, 28.889112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489288, 44.417530, 28.921886>,  <38.874149, 44.511860, 28.976511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489288, 44.417530, 28.921886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025614, 0.420636, -0.906868,
		0.271304, -0.876043, -0.398676,
		-0.962153, -0.235825, -0.136559,
		38.200642, 44.346783, 28.880919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817284, 44.130798, 28.269012>,  <38.874149, 44.511860, 28.976511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817284, 44.130798, 28.269012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455334, 44.278122, 28.354383>,  <38.238163, 44.366516, 28.405607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455334, 44.278122, 28.354383>,  <38.817284, 44.130798, 28.269012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455334, 44.278122, 28.354383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004727, 0.492660, -0.870209,
		-0.425653, -0.788439, -0.444054,
		-0.904874, 0.368307, 0.213429,
		38.183872, 44.388615, 28.418413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538784, 44.189152, 27.683371>,  <38.817284, 44.130798, 28.269012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538784, 44.189152, 27.683371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299347, 44.424263, 27.901070>,  <38.155685, 44.565331, 28.031689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299347, 44.424263, 27.901070>,  <38.538784, 44.189152, 27.683371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299347, 44.424263, 27.901070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112552, 0.734384, -0.669337,
		-0.793108, -0.339403, -0.505751,
		-0.598591, 0.587780, 0.544246,
		38.119770, 44.600597, 28.064342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109940, 44.456364, 27.202087>,  <38.538784, 44.189152, 27.683371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109940, 44.456364, 27.202087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082245, 44.703094, 27.515705>,  <38.065628, 44.851135, 27.703876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.082245, 44.703094, 27.515705>,  <38.109940, 44.456364, 27.202087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082245, 44.703094, 27.515705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248259, 0.771860, -0.585320,
		-0.966216, 0.154122, -0.206573,
		-0.069235, 0.616830, 0.784046,
		38.061474, 44.888142, 27.750919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721272, 44.946602, 26.989790>,  <38.109940, 44.456364, 27.202087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721272, 44.946602, 26.989790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915783, 45.118580, 27.294073>,  <38.032490, 45.221767, 27.476643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915783, 45.118580, 27.294073>,  <37.721272, 44.946602, 26.989790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915783, 45.118580, 27.294073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225200, 0.779499, -0.584522,
		-0.844284, 0.455554, 0.282232,
		0.486281, 0.429944, 0.760710,
		38.061668, 45.247562, 27.522285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508514, 45.706070, 26.936548>,  <37.721272, 44.946602, 26.989790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508514, 45.706070, 26.936548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859226, 45.657578, 27.122696>,  <38.069653, 45.628483, 27.234385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.859226, 45.657578, 27.122696>,  <37.508514, 45.706070, 26.936548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859226, 45.657578, 27.122696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432914, 0.620345, -0.654031,
		-0.209404, 0.774904, 0.596385,
		0.876776, -0.121227, 0.465369,
		38.122257, 45.621208, 27.262306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747856, 46.430737, 27.019281>,  <37.508514, 45.706070, 26.936548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747856, 46.430737, 27.019281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063526, 46.187778, 27.055679>,  <38.252930, 46.042004, 27.077518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063526, 46.187778, 27.055679>,  <37.747856, 46.430737, 27.019281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063526, 46.187778, 27.055679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512040, 0.568869, -0.643586,
		0.339145, 0.554493, 0.759946,
		0.789174, -0.607392, 0.090994,
		38.300278, 46.005562, 27.082977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381062, 46.882092, 26.906746>,  <37.747856, 46.430737, 27.019281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381062, 46.882092, 26.906746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518093, 46.507099, 26.882212>,  <38.600311, 46.282104, 26.867491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518093, 46.507099, 26.882212>,  <38.381062, 46.882092, 26.906746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518093, 46.507099, 26.882212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667940, 0.288955, -0.685829,
		0.660676, 0.193985, 0.725174,
		0.342583, -0.937483, -0.061335,
		38.620869, 46.225853, 26.863811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085194, 46.946087, 27.010164>,  <38.381062, 46.882092, 26.906746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085194, 46.946087, 27.010164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012894, 46.613548, 26.799948>,  <38.969513, 46.414024, 26.673819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012894, 46.613548, 26.799948>,  <39.085194, 46.946087, 27.010164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012894, 46.613548, 26.799948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484365, 0.389809, -0.783224,
		0.855990, -0.396122, 0.332216,
		-0.180752, -0.831346, -0.525540,
		38.958668, 46.364143, 26.642286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711685, 46.917294, 26.606165>,  <39.085194, 46.946087, 27.010164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711685, 46.917294, 26.606165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494850, 46.639862, 26.416389>,  <39.364750, 46.473404, 26.302525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494850, 46.639862, 26.416389>,  <39.711685, 46.917294, 26.606165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494850, 46.639862, 26.416389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596322, 0.080289, -0.798720,
		0.592066, -0.715894, 0.370072,
		-0.542086, -0.693578, -0.474440,
		39.332226, 46.431789, 26.274057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230865, 46.387257, 26.250231>,  <39.711685, 46.917294, 26.606165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230865, 46.387257, 26.250231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874237, 46.412292, 26.070812>,  <39.660259, 46.427315, 25.963161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874237, 46.412292, 26.070812>,  <40.230865, 46.387257, 26.250231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874237, 46.412292, 26.070812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448034, -0.022756, -0.893727,
		-0.066139, -0.997781, -0.007751,
		-0.891567, 0.062583, -0.448545,
		39.606766, 46.431068, 25.936249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209347, 45.889057, 25.761066>,  <40.230865, 46.387257, 26.250231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209347, 45.889057, 25.761066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967796, 46.175560, 25.621180>,  <39.822865, 46.347462, 25.537247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967796, 46.175560, 25.621180>,  <40.209347, 45.889057, 25.761066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967796, 46.175560, 25.621180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369654, -0.137054, -0.919006,
		-0.706177, -0.684244, -0.182004,
		-0.603880, 0.716259, -0.349717,
		39.786633, 46.390438, 25.516264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461838, 45.282372, 25.587143>,  <40.209347, 45.889057, 25.761066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461838, 45.282372, 25.587143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686691, 45.173409, 25.274784>,  <40.821602, 45.108032, 25.087368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686691, 45.173409, 25.274784>,  <40.461838, 45.282372, 25.587143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686691, 45.173409, 25.274784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611270, -0.499163, 0.614154,
		-0.557097, -0.822575, -0.114080,
		0.562132, -0.272409, -0.780898,
		40.855331, 45.091686, 25.040514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515316, 44.541325, 25.610884>,  <40.461838, 45.282372, 25.587143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515316, 44.541325, 25.610884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826099, 44.623535, 25.372858>,  <41.012569, 44.672863, 25.230043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826099, 44.623535, 25.372858>,  <40.515316, 44.541325, 25.610884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826099, 44.623535, 25.372858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552282, -0.676236, 0.487534,
		-0.302203, -0.707434, -0.638913,
		0.776954, 0.205526, -0.595064,
		41.059185, 44.685192, 25.194340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760731, 43.876625, 25.289158>,  <40.515316, 44.541325, 25.610884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760731, 43.876625, 25.289158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063938, 44.135258, 25.254892>,  <41.245861, 44.290436, 25.234333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063938, 44.135258, 25.254892>,  <40.760731, 43.876625, 25.289158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063938, 44.135258, 25.254892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615707, -0.666035, 0.421074,
		0.215204, -0.371926, -0.902972,
		0.758019, 0.646583, -0.085664,
		41.291344, 44.329231, 25.229193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290588, 43.464577, 25.162180>,  <40.760731, 43.876625, 25.289158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290588, 43.464577, 25.162180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441021, 43.813553, 25.287022>,  <41.531281, 44.022938, 25.361927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441021, 43.813553, 25.287022>,  <41.290588, 43.464577, 25.162180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441021, 43.813553, 25.287022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593767, -0.485500, 0.641662,
		0.711339, -0.056000, -0.700614,
		0.376081, 0.872441, 0.312105,
		41.553844, 44.075287, 25.380653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943924, 43.331516, 25.217756>,  <41.290588, 43.464577, 25.162180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943924, 43.331516, 25.217756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914688, 43.656620, 25.448956>,  <41.897148, 43.851681, 25.587675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914688, 43.656620, 25.448956>,  <41.943924, 43.331516, 25.217756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914688, 43.656620, 25.448956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622907, -0.415406, 0.662892,
		0.778875, 0.408486, -0.475913,
		-0.073085, 0.812759, 0.577998,
		41.892761, 43.900448, 25.622355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693966, 43.407242, 25.448284>,  <41.943924, 43.331516, 25.217756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693966, 43.407242, 25.448284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466309, 43.622242, 25.697176>,  <42.329716, 43.751244, 25.846510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466309, 43.622242, 25.697176>,  <42.693966, 43.407242, 25.448284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466309, 43.622242, 25.697176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524770, -0.345135, 0.778137,
		0.633005, 0.769396, -0.085637,
		-0.569140, 0.537505, 0.622229,
		42.295567, 43.783493, 25.883844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165340, 43.822491, 25.927790>,  <42.693966, 43.407242, 25.448284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165340, 43.822491, 25.927790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801979, 43.829536, 26.094883>,  <42.583961, 43.833763, 26.195139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801979, 43.829536, 26.094883>,  <43.165340, 43.822491, 25.927790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801979, 43.829536, 26.094883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338839, -0.554318, 0.760210,
		0.244946, 0.832118, 0.497575,
		-0.908399, 0.017612, 0.417732,
		42.529461, 43.834820, 26.220203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249153, 44.020679, 26.685226>,  <43.165340, 43.822491, 25.927790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249153, 44.020679, 26.685226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895130, 43.836205, 26.660019>,  <42.682716, 43.725517, 26.644896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895130, 43.836205, 26.660019>,  <43.249153, 44.020679, 26.685226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895130, 43.836205, 26.660019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213225, -0.522038, 0.825839,
		-0.413767, 0.717481, 0.560373,
		-0.885060, -0.461191, -0.063017,
		42.629612, 43.697845, 26.641113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206455, 43.889004, 27.284777>,  <43.249153, 44.020679, 26.685226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206455, 43.889004, 27.284777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944138, 43.624531, 27.139027>,  <42.786747, 43.465847, 27.051577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944138, 43.624531, 27.139027>,  <43.206455, 43.889004, 27.284777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944138, 43.624531, 27.139027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160809, -0.593924, 0.788286,
		-0.737610, 0.458362, 0.495818,
		-0.655799, -0.661179, -0.364376,
		42.747398, 43.426178, 27.029715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770153, 43.738171, 27.769028>,  <43.206455, 43.889004, 27.284777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770153, 43.738171, 27.769028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727871, 43.423431, 27.525818>,  <42.702499, 43.234589, 27.379892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727871, 43.423431, 27.525818>,  <42.770153, 43.738171, 27.769028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727871, 43.423431, 27.525818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122042, -0.596561, 0.793235,
		-0.986880, 0.158055, -0.032968,
		-0.105707, -0.786851, -0.608023,
		42.696159, 43.187378, 27.343410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078152, 43.384090, 27.812712>,  <42.770153, 43.738171, 27.769028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078152, 43.384090, 27.812712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316139, 43.092640, 27.677000>,  <42.458931, 42.917770, 27.595573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316139, 43.092640, 27.677000>,  <42.078152, 43.384090, 27.812712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316139, 43.092640, 27.677000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354994, -0.616939, 0.702400,
		-0.721106, -0.297462, -0.625718,
		0.594967, -0.728630, -0.339281,
		42.494629, 42.874050, 27.575216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712601, 42.809578, 27.944956>,  <42.078152, 43.384090, 27.812712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712601, 42.809578, 27.944956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094364, 42.698761, 27.900505>,  <42.323421, 42.632271, 27.873835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094364, 42.698761, 27.900505>,  <41.712601, 42.809578, 27.944956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094364, 42.698761, 27.900505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153391, -0.774570, 0.613606,
		-0.256066, -0.568587, -0.781754,
		0.954412, -0.277038, -0.111125,
		42.380688, 42.615650, 27.867168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688019, 42.093967, 27.659510>,  <41.712601, 42.809578, 27.944956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688019, 42.093967, 27.659510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982334, 42.202435, 27.907730>,  <42.158924, 42.267517, 28.056662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982334, 42.202435, 27.907730>,  <41.688019, 42.093967, 27.659510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982334, 42.202435, 27.907730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280136, -0.712381, 0.643457,
		0.616557, -0.647286, -0.448195,
		0.735786, 0.271173, 0.620551,
		42.203072, 42.283787, 28.093895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902435, 41.465153, 27.894455>,  <41.688019, 42.093967, 27.659510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902435, 41.465153, 27.894455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026337, 41.758202, 28.136883>,  <42.100677, 41.934032, 28.282339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026337, 41.758202, 28.136883>,  <41.902435, 41.465153, 27.894455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026337, 41.758202, 28.136883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064547, -0.619745, 0.782145,
		0.948624, -0.281391, -0.144679,
		0.309753, 0.732622, 0.606067,
		42.119263, 41.977989, 28.318703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148186, 41.035332, 28.390408>,  <41.902435, 41.465153, 27.894455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148186, 41.035332, 28.390408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152847, 41.399582, 28.555637>,  <42.155643, 41.618130, 28.654776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152847, 41.399582, 28.555637>,  <42.148186, 41.035332, 28.390408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152847, 41.399582, 28.555637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129878, -0.410982, 0.902345,
		0.991462, 0.043131, -0.123060,
		0.011656, 0.910623, 0.413074,
		42.156345, 41.672768, 28.679560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706627, 41.105175, 28.897511>,  <42.148186, 41.035332, 28.390408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706627, 41.105175, 28.897511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436890, 41.376579, 29.014053>,  <42.275047, 41.539421, 29.083979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436890, 41.376579, 29.014053>,  <42.706627, 41.105175, 28.897511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436890, 41.376579, 29.014053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058555, -0.344187, 0.937073,
		0.736096, 0.648965, 0.192369,
		-0.674339, 0.678512, 0.291355,
		42.234589, 41.580132, 29.101460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.889801, 41.269089, 29.571463>,  <42.706627, 41.105175, 28.897511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.889801, 41.269089, 29.571463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504539, 41.376530, 29.566032>,  <42.273380, 41.440994, 29.562775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.504539, 41.376530, 29.566032>,  <42.889801, 41.269089, 29.571463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504539, 41.376530, 29.566032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142906, -0.468372, 0.871898,
		0.227837, 0.841713, 0.489500,
		-0.963155, 0.268603, -0.013574,
		42.215591, 41.457111, 29.561960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746578, 41.435398, 30.311863>,  <42.889801, 41.269089, 29.571463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746578, 41.435398, 30.311863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412132, 41.382248, 30.098976>,  <42.211464, 41.350357, 29.971243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412132, 41.382248, 30.098976>,  <42.746578, 41.435398, 30.311863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412132, 41.382248, 30.098976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442860, -0.409036, 0.797850,
		-0.323709, 0.902793, 0.283158,
		-0.836115, -0.132871, -0.532219,
		42.161297, 41.342388, 29.939310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211365, 41.464310, 30.784206>,  <42.746578, 41.435398, 30.311863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211365, 41.464310, 30.784206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005550, 41.284344, 30.492226>,  <41.882061, 41.176365, 30.317038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.005550, 41.284344, 30.492226>,  <42.211365, 41.464310, 30.784206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005550, 41.284344, 30.492226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642923, -0.360846, 0.675603,
		-0.567366, 0.816923, -0.103596,
		-0.514534, -0.449919, -0.729951,
		41.851189, 41.149368, 30.273241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469017, 41.469975, 31.030842>,  <42.211365, 41.464310, 30.784206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469017, 41.469975, 31.030842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506165, 41.189087, 30.748489>,  <41.528454, 41.020554, 30.579079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506165, 41.189087, 30.748489>,  <41.469017, 41.469975, 31.030842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506165, 41.189087, 30.748489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639438, -0.585488, 0.498320,
		-0.763213, 0.405085, -0.503401,
		0.092873, -0.702217, -0.705879,
		41.534027, 40.978420, 30.536726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742046, 41.171185, 30.754553>,  <41.469017, 41.469975, 31.030842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742046, 41.171185, 30.754553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002548, 40.870445, 30.713383>,  <41.158848, 40.690002, 30.688681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002548, 40.870445, 30.713383>,  <40.742046, 41.171185, 30.754553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002548, 40.870445, 30.713383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648231, -0.621683, 0.439667,
		-0.394549, -0.219615, -0.892244,
		0.651250, -0.751851, -0.102923,
		41.197922, 40.644890, 30.682507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346653, 40.626316, 30.839159>,  <40.742046, 41.171185, 30.754553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346653, 40.626316, 30.839159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716991, 40.475861, 30.853687>,  <40.939194, 40.385586, 30.862404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716991, 40.475861, 30.853687>,  <40.346653, 40.626316, 30.839159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716991, 40.475861, 30.853687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333353, -0.767674, 0.547314,
		-0.177985, -0.518838, -0.836139,
		0.925849, -0.376143, 0.036322,
		40.994747, 40.363018, 30.864584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287556, 39.878292, 30.633581>,  <40.346653, 40.626316, 30.839159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287556, 39.878292, 30.633581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630630, 39.937981, 30.830397>,  <40.836475, 39.973793, 30.948486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630630, 39.937981, 30.830397>,  <40.287556, 39.878292, 30.633581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630630, 39.937981, 30.830397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219675, -0.758876, 0.613066,
		0.464878, -0.633908, -0.618101,
		0.857690, 0.149219, 0.492039,
		40.887936, 39.982746, 30.978008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563667, 39.208363, 30.799860>,  <40.287556, 39.878292, 30.633581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563667, 39.208363, 30.799860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755913, 39.438641, 31.064463>,  <40.871258, 39.576805, 31.223225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755913, 39.438641, 31.064463>,  <40.563667, 39.208363, 30.799860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755913, 39.438641, 31.064463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045482, -0.736960, 0.674404,
		0.875753, -0.354213, -0.328008,
		0.480612, 0.575693, 0.661506,
		40.900097, 39.611347, 31.262915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080505, 38.801723, 31.155148>,  <40.563667, 39.208363, 30.799860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080505, 38.801723, 31.155148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010696, 39.115253, 31.393530>,  <40.968811, 39.303371, 31.536560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.010696, 39.115253, 31.393530>,  <41.080505, 38.801723, 31.155148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.010696, 39.115253, 31.393530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065555, -0.613152, 0.787240,
		0.982469, 0.098319, 0.158389,
		-0.174518, 0.783822, 0.595958,
		40.958340, 39.350399, 31.572317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554981, 38.884056, 31.698271>,  <41.080505, 38.801723, 31.155148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554981, 38.884056, 31.698271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244209, 39.086159, 31.848520>,  <41.057747, 39.207420, 31.938671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244209, 39.086159, 31.848520>,  <41.554981, 38.884056, 31.698271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244209, 39.086159, 31.848520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011935, -0.584694, 0.811166,
		0.629474, 0.634702, 0.448236,
		-0.776929, 0.505258, 0.375625,
		41.011131, 39.237736, 31.961208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651180, 38.995983, 32.438065>,  <41.554981, 38.884056, 31.698271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651180, 38.995983, 32.438065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258801, 39.065559, 32.403458>,  <41.023373, 39.107307, 32.382694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258801, 39.065559, 32.403458>,  <41.651180, 38.995983, 32.438065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258801, 39.065559, 32.403458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176672, -0.613510, 0.769670,
		0.080802, 0.770291, 0.632553,
		-0.980948, 0.173945, -0.086516,
		40.964516, 39.117744, 32.377502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544125, 39.124146, 33.071312>,  <41.651180, 38.995983, 32.438065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544125, 39.124146, 33.071312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167255, 39.098114, 32.939816>,  <40.941132, 39.082497, 32.860916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.167255, 39.098114, 32.939816>,  <41.544125, 39.124146, 33.071312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167255, 39.098114, 32.939816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258043, -0.485021, 0.835565,
		-0.213825, 0.872078, 0.440182,
		-0.942175, -0.065078, -0.328743,
		40.884602, 39.078590, 32.841194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030106, 39.377014, 33.572788>,  <41.544125, 39.124146, 33.071312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030106, 39.377014, 33.572788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836056, 39.125153, 33.330074>,  <40.719624, 38.974033, 33.184448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836056, 39.125153, 33.330074>,  <41.030106, 39.377014, 33.572788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836056, 39.125153, 33.330074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430705, -0.431837, 0.792471,
		-0.761016, 0.645792, -0.061701,
		-0.485126, -0.629658, -0.606781,
		40.690517, 38.936256, 33.148041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471371, 39.376915, 33.857319>,  <41.030106, 39.377014, 33.572788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471371, 39.376915, 33.857319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480095, 39.043205, 33.636951>,  <40.485329, 38.842979, 33.504730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480095, 39.043205, 33.636951>,  <40.471371, 39.376915, 33.857319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480095, 39.043205, 33.636951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398760, -0.512580, 0.760429,
		-0.916796, 0.203103, -0.343852,
		0.021806, -0.834272, -0.550921,
		40.486637, 38.792923, 33.471676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839973, 39.069077, 33.779259>,  <40.471371, 39.376915, 33.857319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839973, 39.069077, 33.779259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110344, 38.778248, 33.731091>,  <40.272564, 38.603752, 33.702190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.110344, 38.778248, 33.731091>,  <39.839973, 39.069077, 33.779259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110344, 38.778248, 33.731091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243437, -0.374497, 0.894701,
		-0.695606, -0.575433, -0.430127,
		0.675922, -0.727068, -0.120421,
		40.313122, 38.560127, 33.694965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514771, 38.474838, 33.884724>,  <39.839973, 39.069077, 33.779259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514771, 38.474838, 33.884724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892235, 38.342804, 33.894131>,  <40.118713, 38.263584, 33.899773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892235, 38.342804, 33.894131>,  <39.514771, 38.474838, 33.884724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892235, 38.342804, 33.894131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243154, -0.643438, 0.725854,
		-0.224461, -0.690676, -0.687447,
		0.943660, -0.330082, 0.023514,
		40.175331, 38.243778, 33.901184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450733, 37.748375, 33.865513>,  <39.514771, 38.474838, 33.884724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450733, 37.748375, 33.865513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817749, 37.822582, 34.006195>,  <40.037960, 37.867107, 34.090603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817749, 37.822582, 34.006195>,  <39.450733, 37.748375, 33.865513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817749, 37.822582, 34.006195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147440, -0.662715, 0.734214,
		0.369292, -0.725529, -0.580716,
		0.917543, 0.185519, 0.351707,
		40.093014, 37.878239, 34.111706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740093, 37.096531, 34.009644>,  <39.450733, 37.748375, 33.865513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740093, 37.096531, 34.009644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980499, 37.330723, 34.227264>,  <40.124744, 37.471237, 34.357838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980499, 37.330723, 34.227264>,  <39.740093, 37.096531, 34.009644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980499, 37.330723, 34.227264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122227, -0.605372, 0.786502,
		0.789835, -0.539198, -0.292277,
		0.601017, 0.585483, 0.544048,
		40.160805, 37.506367, 34.390480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129025, 36.661953, 34.360271>,  <39.740093, 37.096531, 34.009644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129025, 36.661953, 34.360271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141869, 37.010715, 34.555721>,  <40.149574, 37.219971, 34.672993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141869, 37.010715, 34.555721>,  <40.129025, 36.661953, 34.360271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141869, 37.010715, 34.555721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130294, -0.481056, 0.866954,
		0.990955, -0.091502, 0.098157,
		0.032109, 0.871902, 0.488627,
		40.151501, 37.272285, 34.702309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607620, 36.551353, 34.864006>,  <40.129025, 36.661953, 34.360271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607620, 36.551353, 34.864006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356411, 36.840591, 34.979042>,  <40.205685, 37.014133, 35.048065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356411, 36.840591, 34.979042>,  <40.607620, 36.551353, 34.864006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356411, 36.840591, 34.979042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240614, -0.531893, 0.811908,
		0.740059, 0.440701, 0.508031,
		-0.628027, 0.723099, 0.287593,
		40.168003, 37.057522, 35.065319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821522, 36.766602, 35.485130>,  <40.607620, 36.551353, 34.864006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821522, 36.766602, 35.485130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447441, 36.908203, 35.488537>,  <40.222992, 36.993164, 35.490582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447441, 36.908203, 35.488537>,  <40.821522, 36.766602, 35.485130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447441, 36.908203, 35.488537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195776, -0.536937, 0.820592,
		0.295061, 0.765756, 0.571452,
		-0.935206, 0.354001, 0.008513,
		40.166878, 37.014404, 35.491089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767109, 37.010384, 36.248653>,  <40.821522, 36.766602, 35.485130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767109, 37.010384, 36.248653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394306, 36.975071, 36.108040>,  <40.170624, 36.953884, 36.023674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.394306, 36.975071, 36.108040>,  <40.767109, 37.010384, 36.248653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394306, 36.975071, 36.108040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310016, -0.308295, 0.899358,
		-0.187772, 0.947186, 0.259964,
		-0.932004, -0.088282, -0.351532,
		40.114704, 36.948586, 36.002579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374073, 37.259148, 36.809494>,  <40.767109, 37.010384, 36.248653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374073, 37.259148, 36.809494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154808, 37.037457, 36.558941>,  <40.023251, 36.904442, 36.408611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154808, 37.037457, 36.558941>,  <40.374073, 37.259148, 36.809494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154808, 37.037457, 36.558941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449148, -0.436702, 0.779460,
		-0.705541, 0.708605, -0.009550,
		-0.548158, -0.554230, -0.626379,
		39.990360, 36.871189, 36.371029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658386, 37.295193, 37.079369>,  <40.374073, 37.259148, 36.809494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658386, 37.295193, 37.079369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680668, 36.966549, 36.852440>,  <39.694038, 36.769363, 36.716282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680668, 36.966549, 36.852440>,  <39.658386, 37.295193, 37.079369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680668, 36.966549, 36.852440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463306, -0.524596, 0.714246,
		-0.884446, 0.223053, -0.409881,
		0.055707, -0.821612, -0.567318,
		39.697380, 36.720066, 36.682243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953491, 37.032959, 37.224102>,  <39.658386, 37.295193, 37.079369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953491, 37.032959, 37.224102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158382, 36.737514, 37.048794>,  <39.281319, 36.560249, 36.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158382, 36.737514, 37.048794>,  <38.953491, 37.032959, 37.224102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158382, 36.737514, 37.048794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382976, -0.653190, 0.653202,
		-0.768732, -0.166744, -0.617452,
		0.512231, -0.738607, -0.438269,
		39.312054, 36.515934, 36.917313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444057, 36.537403, 37.008110>,  <38.953491, 37.032959, 37.224102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444057, 36.537403, 37.008110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803337, 36.366203, 37.048225>,  <39.018906, 36.263485, 37.072292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803337, 36.366203, 37.048225>,  <38.444057, 36.537403, 37.008110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803337, 36.366203, 37.048225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419394, -0.765976, 0.487225,
		-0.131716, -0.479684, -0.867499,
		0.898198, -0.427999, 0.100285,
		39.072796, 36.237804, 37.078312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217606, 35.786465, 36.936424>,  <38.444057, 36.537403, 37.008110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217606, 35.786465, 36.936424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585011, 35.791965, 37.094482>,  <38.805454, 35.795265, 37.189316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585011, 35.791965, 37.094482>,  <38.217606, 35.786465, 36.936424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585011, 35.791965, 37.094482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332977, -0.511980, 0.791835,
		0.213198, -0.858887, -0.465681,
		0.918517, 0.013757, 0.395143,
		38.860565, 35.796093, 37.213024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360786, 35.124954, 37.119530>,  <38.217606, 35.786465, 36.936424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360786, 35.124954, 37.119530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606503, 35.339428, 37.351101>,  <38.753933, 35.468113, 37.490044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.606503, 35.339428, 37.351101>,  <38.360786, 35.124954, 37.119530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606503, 35.339428, 37.351101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205428, -0.599700, 0.773408,
		0.761872, -0.594023, -0.258241,
		0.614289, 0.536188, 0.578923,
		38.790791, 35.500282, 37.524776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752087, 34.637249, 37.584538>,  <38.360786, 35.124954, 37.119530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752087, 34.637249, 37.584538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778503, 34.992958, 37.765568>,  <38.794353, 35.206383, 37.874187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778503, 34.992958, 37.765568>,  <38.752087, 34.637249, 37.584538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778503, 34.992958, 37.765568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056799, -0.449482, 0.891482,
		0.996199, -0.084584, 0.020824,
		0.066045, 0.889276, 0.452578,
		38.798317, 35.259743, 37.901340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284100, 34.563889, 38.024845>,  <38.752087, 34.637249, 37.584538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284100, 34.563889, 38.024845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048908, 34.850185, 38.175571>,  <38.907795, 35.021965, 38.266006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048908, 34.850185, 38.175571>,  <39.284100, 34.563889, 38.024845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048908, 34.850185, 38.175571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046327, -0.494888, 0.867721,
		0.807550, 0.492743, 0.324140,
		-0.587977, 0.715745, 0.376819,
		38.872517, 35.064907, 38.288616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294823, 34.466358, 38.679070>,  <39.284100, 34.563889, 38.024845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294823, 34.466358, 38.679070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020519, 34.757092, 38.694313>,  <38.855938, 34.931530, 38.703461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020519, 34.757092, 38.694313>,  <39.294823, 34.466358, 38.679070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020519, 34.757092, 38.694313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316530, -0.344970, 0.883631,
		0.655399, 0.593893, 0.466630,
		-0.685756, 0.726834, 0.038108,
		38.814793, 34.975143, 38.705746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375053, 34.831688, 39.228996>,  <39.294823, 34.466358, 38.679070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375053, 34.831688, 39.228996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986919, 34.830112, 39.132309>,  <38.754040, 34.829166, 39.074295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986919, 34.830112, 39.132309>,  <39.375053, 34.831688, 39.228996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986919, 34.830112, 39.132309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223995, -0.361439, 0.905090,
		-0.090935, 0.932387, 0.349835,
		-0.970338, -0.003943, -0.241718,
		38.695816, 34.828930, 39.059795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107853, 35.106255, 39.830021>,  <39.375053, 34.831688, 39.228996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107853, 35.106255, 39.830021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819187, 34.927032, 39.618946>,  <38.645988, 34.819500, 39.492302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819187, 34.927032, 39.618946>,  <39.107853, 35.106255, 39.830021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819187, 34.927032, 39.618946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380353, -0.380263, 0.843049,
		-0.578392, 0.809102, 0.104002,
		-0.721660, -0.448056, -0.527686,
		38.602688, 34.792614, 39.460640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453541, 35.310051, 40.237980>,  <39.107853, 35.106255, 39.830021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453541, 35.310051, 40.237980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371307, 35.006550, 39.990746>,  <38.321968, 34.824448, 39.842403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371307, 35.006550, 39.990746>,  <38.453541, 35.310051, 40.237980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371307, 35.006550, 39.990746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609283, -0.395007, 0.687564,
		-0.765838, 0.517943, -0.381086,
		-0.205588, -0.758752, -0.618085,
		38.309631, 34.778923, 39.805321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789200, 35.371323, 40.109177>,  <38.453541, 35.310051, 40.237980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789200, 35.371323, 40.109177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886993, 34.987316, 40.054626>,  <37.945671, 34.756912, 40.021896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886993, 34.987316, 40.054626>,  <37.789200, 35.371323, 40.109177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886993, 34.987316, 40.054626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778698, -0.278192, 0.562351,
		-0.577805, -0.031289, -0.815575,
		0.244482, -0.960015, -0.136376,
		37.960339, 34.699310, 40.013714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180607, 35.021870, 40.163929>,  <37.789200, 35.371323, 40.109177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180607, 35.021870, 40.163929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435314, 34.713516, 40.157341>,  <37.588139, 34.528503, 40.153389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435314, 34.713516, 40.157341>,  <37.180607, 35.021870, 40.163929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435314, 34.713516, 40.157341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502589, -0.431163, 0.749335,
		-0.584753, -0.468869, -0.661986,
		0.636764, -0.770883, -0.016475,
		37.626343, 34.482250, 40.152397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723934, 34.454292, 39.964211>,  <37.180607, 35.021870, 40.163929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723934, 34.454292, 39.964211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049545, 34.386784, 40.186516>,  <37.244911, 34.346279, 40.319897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049545, 34.386784, 40.186516>,  <36.723934, 34.454292, 39.964211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049545, 34.386784, 40.186516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575861, -0.359309, 0.734358,
		0.075751, -0.917831, -0.389678,
		0.814031, -0.168772, 0.555761,
		37.293755, 34.336151, 40.353245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599747, 33.870789, 40.213005>,  <36.723934, 34.454292, 39.964211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599747, 33.870789, 40.213005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871670, 34.005234, 40.473736>,  <37.034824, 34.085899, 40.630177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871670, 34.005234, 40.473736>,  <36.599747, 33.870789, 40.213005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871670, 34.005234, 40.473736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558087, -0.339549, 0.757130,
		0.475809, -0.878485, -0.043250,
		0.679812, 0.336111, 0.651831,
		37.075615, 34.106068, 40.669285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383152, 33.492371, 40.742767>,  <36.599747, 33.870789, 40.213005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383152, 33.492371, 40.742767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651955, 33.728195, 40.922024>,  <36.813236, 33.869690, 41.029579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651955, 33.728195, 40.922024>,  <36.383152, 33.492371, 40.742767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651955, 33.728195, 40.922024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455064, -0.148663, 0.877961,
		0.584232, -0.793927, 0.168385,
		0.672004, 0.589559, 0.448141,
		36.853558, 33.905064, 41.056465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585743, 33.191360, 41.366600>,  <36.383152, 33.492371, 40.742767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585743, 33.191360, 41.366600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655849, 33.582371, 41.413471>,  <36.697914, 33.816975, 41.441593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655849, 33.582371, 41.413471>,  <36.585743, 33.191360, 41.366600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655849, 33.582371, 41.413471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577022, 0.005556, 0.816710,
		0.797700, -0.210762, 0.565025,
		0.175271, 0.977522, 0.117182,
		36.708431, 33.875626, 41.448627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678783, 33.219433, 42.041573>,  <36.585743, 33.191360, 41.366600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678783, 33.219433, 42.041573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621159, 33.608715, 41.969887>,  <36.586582, 33.842285, 41.926876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621159, 33.608715, 41.969887>,  <36.678783, 33.219433, 42.041573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621159, 33.608715, 41.969887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648346, 0.043992, 0.760074,
		0.747591, 0.225696, 0.624635,
		-0.144066, 0.973204, -0.179217,
		36.577938, 33.900677, 41.916122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854729, 33.567368, 42.708408>,  <36.678783, 33.219433, 42.041573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854729, 33.567368, 42.708408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638046, 33.814644, 42.480583>,  <36.508038, 33.963009, 42.343887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638046, 33.814644, 42.480583>,  <36.854729, 33.567368, 42.708408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638046, 33.814644, 42.480583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606592, 0.181573, 0.774001,
		0.581896, 0.764770, 0.276630,
		-0.541704, 0.618189, -0.569560,
		36.475536, 34.000099, 42.309715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822243, 34.198715, 43.103382>,  <36.854729, 33.567368, 42.708408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822243, 34.198715, 43.103382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506393, 34.193768, 42.857994>,  <36.316883, 34.190800, 42.710762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506393, 34.193768, 42.857994>,  <36.822243, 34.198715, 43.103382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506393, 34.193768, 42.857994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606028, 0.172263, 0.776566,
		0.096076, 0.984973, -0.143516,
		-0.789620, -0.012365, -0.613472,
		36.269508, 34.190060, 42.673954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311794, 34.820084, 43.226967>,  <36.822243, 34.198715, 43.103382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311794, 34.820084, 43.226967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115551, 34.500443, 43.087975>,  <35.997807, 34.308659, 43.004581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115551, 34.500443, 43.087975>,  <36.311794, 34.820084, 43.226967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115551, 34.500443, 43.087975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618222, 0.038176, 0.785076,
		-0.614090, 0.599982, -0.512752,
		-0.490607, -0.799102, -0.347478,
		35.968369, 34.260712, 42.983730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512367, 34.919464, 43.154587>,  <36.311794, 34.820084, 43.226967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512367, 34.919464, 43.154587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603909, 34.538673, 43.235950>,  <35.658833, 34.310200, 43.284771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603909, 34.538673, 43.235950>,  <35.512367, 34.919464, 43.154587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603909, 34.538673, 43.235950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662346, 0.000859, 0.749197,
		-0.713390, -0.306183, -0.630339,
		0.228850, -0.951972, 0.203413,
		35.672565, 34.253082, 43.296974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118534, 35.390816, 43.637215>,  <35.512367, 34.919464, 43.154587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118534, 35.390816, 43.637215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796646, 35.154903, 43.610134>,  <34.603516, 35.013355, 43.593887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796646, 35.154903, 43.610134>,  <35.118534, 35.390816, 43.637215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796646, 35.154903, 43.610134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432410, -0.504184, -0.747543,
		0.406756, -0.630835, 0.660755,
		-0.804718, -0.589784, -0.067699,
		34.555229, 34.977966, 43.589825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254185, 34.805477, 43.809978>,  <35.118534, 35.390816, 43.637215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254185, 34.805477, 43.809978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941811, 34.753769, 43.565544>,  <34.754387, 34.722744, 43.418884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941811, 34.753769, 43.565544>,  <35.254185, 34.805477, 43.809978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941811, 34.753769, 43.565544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599050, -0.432041, -0.674151,
		-0.176866, -0.892541, 0.414836,
		-0.780934, -0.129273, -0.611090,
		34.707531, 34.714989, 43.382217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229534, 34.110332, 43.680359>,  <35.254185, 34.805477, 43.809978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229534, 34.110332, 43.680359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083340, 34.334415, 43.383015>,  <34.995625, 34.468864, 43.204609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083340, 34.334415, 43.383015>,  <35.229534, 34.110332, 43.680359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083340, 34.334415, 43.383015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641899, -0.426652, -0.637129,
		-0.674080, -0.710027, -0.203660,
		-0.365487, 0.560205, -0.743364,
		34.973694, 34.502476, 43.160007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089485, 33.719963, 43.068623>,  <35.229534, 34.110332, 43.680359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089485, 33.719963, 43.068623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143841, 34.099476, 42.954536>,  <35.176453, 34.327183, 42.886086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143841, 34.099476, 42.954536>,  <35.089485, 33.719963, 43.068623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143841, 34.099476, 42.954536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641679, -0.303627, -0.704314,
		-0.754839, -0.087304, -0.650074,
		0.135890, 0.948783, -0.285211,
		35.184608, 34.384109, 42.868973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043377, 33.773849, 42.407047>,  <35.089485, 33.719963, 43.068623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043377, 33.773849, 42.407047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326168, 34.038380, 42.507305>,  <35.495842, 34.197098, 42.567459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326168, 34.038380, 42.507305>,  <35.043377, 33.773849, 42.407047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326168, 34.038380, 42.507305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521957, -0.248769, -0.815889,
		-0.477220, 0.707642, -0.521061,
		0.706981, 0.661330, 0.250641,
		35.538261, 34.236778, 42.582497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270351, 34.118183, 41.827995>,  <35.043377, 33.773849, 42.407047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270351, 34.118183, 41.827995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577423, 34.147751, 42.082619>,  <35.761665, 34.165493, 42.235394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577423, 34.147751, 42.082619>,  <35.270351, 34.118183, 41.827995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577423, 34.147751, 42.082619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635064, 0.045214, -0.771135,
		-0.085784, 0.996239, -0.012235,
		0.767681, 0.073921, 0.636554,
		35.807728, 34.169926, 42.273586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599823, 34.721825, 41.703461>,  <35.270351, 34.118183, 41.827995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599823, 34.721825, 41.703461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867371, 34.486694, 41.885483>,  <36.027901, 34.345615, 41.994698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867371, 34.486694, 41.885483>,  <35.599823, 34.721825, 41.703461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867371, 34.486694, 41.885483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644283, 0.153033, -0.749319,
		0.370829, 0.794383, 0.481084,
		0.668868, -0.587823, 0.455059,
		36.068031, 34.310349, 42.021999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223816, 35.120792, 41.694134>,  <35.599823, 34.721825, 41.703461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223816, 35.120792, 41.694134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314148, 34.732731, 41.729454>,  <36.368347, 34.499893, 41.750648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314148, 34.732731, 41.729454>,  <36.223816, 35.120792, 41.694134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314148, 34.732731, 41.729454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649778, 0.082472, -0.755637,
		0.725804, 0.228022, 0.649011,
		0.225827, -0.970157, 0.088305,
		36.381897, 34.441685, 41.755947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939396, 35.117966, 41.594547>,  <36.223816, 35.120792, 41.694134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939396, 35.117966, 41.594547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842403, 34.730747, 41.569000>,  <36.784206, 34.498417, 41.553673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.842403, 34.730747, 41.569000>,  <36.939396, 35.117966, 41.594547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842403, 34.730747, 41.569000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644298, -0.111475, -0.756606,
		0.725314, -0.224613, 0.650745,
		-0.242486, -0.968051, -0.063863,
		36.769657, 34.440331, 41.549843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580513, 34.812565, 41.671539>,  <36.939396, 35.117966, 41.594547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580513, 34.812565, 41.671539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357853, 34.542965, 41.477276>,  <37.224258, 34.381207, 41.360718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357853, 34.542965, 41.477276>,  <37.580513, 34.812565, 41.671539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357853, 34.542965, 41.477276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731316, -0.120222, -0.671359,
		0.394110, -0.728882, 0.559829,
		-0.556645, -0.674001, -0.485663,
		37.190861, 34.340763, 41.331577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041664, 34.352409, 41.569489>,  <37.580513, 34.812565, 41.671539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041664, 34.352409, 41.569489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757099, 34.281773, 41.297398>,  <37.586361, 34.239391, 41.134144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757099, 34.281773, 41.297398>,  <38.041664, 34.352409, 41.569489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757099, 34.281773, 41.297398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699922, -0.090910, -0.708410,
		0.063258, -0.980077, 0.188274,
		-0.711412, -0.176590, -0.680227,
		37.543674, 34.228798, 41.093330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397141, 34.063206, 41.045101>,  <38.041664, 34.352409, 41.569489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397141, 34.063206, 41.045101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046917, 34.146469, 40.870716>,  <37.836784, 34.196426, 40.766083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046917, 34.146469, 40.870716>,  <38.397141, 34.063206, 41.045101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046917, 34.146469, 40.870716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439144, -0.033217, -0.897802,
		-0.201364, -0.977532, -0.062327,
		-0.875560, 0.208155, -0.435966,
		37.784248, 34.208916, 40.739925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250633, 33.463783, 40.565792>,  <38.397141, 34.063206, 41.045101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250633, 33.463783, 40.565792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084297, 33.812756, 40.463070>,  <37.984497, 34.022137, 40.401436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084297, 33.812756, 40.463070>,  <38.250633, 33.463783, 40.565792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084297, 33.812756, 40.463070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462065, -0.040536, -0.885919,
		-0.783310, -0.487059, -0.386262,
		-0.415838, 0.872428, -0.256805,
		37.959545, 34.074482, 40.386028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508545, 33.550938, 39.838627>,  <38.250633, 33.463783, 40.565792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508545, 33.550938, 39.838627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257111, 33.858349, 39.886364>,  <38.106251, 34.042797, 39.915005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257111, 33.858349, 39.886364>,  <38.508545, 33.550938, 39.838627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257111, 33.858349, 39.886364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142206, 0.264429, -0.953863,
		-0.764628, -0.582616, -0.275506,
		-0.628588, 0.768529, 0.119338,
		38.068535, 34.088909, 39.922165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064537, 33.636028, 39.218124>,  <38.508545, 33.550938, 39.838627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064537, 33.636028, 39.218124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132713, 33.990360, 39.390755>,  <38.173618, 34.202957, 39.494331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132713, 33.990360, 39.390755>,  <38.064537, 33.636028, 39.218124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132713, 33.990360, 39.390755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193534, 0.399359, -0.896135,
		-0.966175, 0.236264, -0.103370,
		0.170443, 0.885828, 0.431576,
		38.183846, 34.256107, 39.520226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597858, 34.091331, 38.925449>,  <38.064537, 33.636028, 39.218124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597858, 34.091331, 38.925449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882866, 34.334740, 39.065170>,  <38.053871, 34.480785, 39.149002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882866, 34.334740, 39.065170>,  <37.597858, 34.091331, 38.925449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882866, 34.334740, 39.065170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049075, 0.539835, -0.840339,
		-0.699932, 0.581617, 0.414508,
		0.712521, 0.608522, 0.349305,
		38.096622, 34.517296, 39.169960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070503, 34.520248, 39.335869>,  <37.597858, 34.091331, 38.925449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070503, 34.520248, 39.335869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732933, 34.686203, 39.199829>,  <36.530392, 34.785774, 39.118206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732933, 34.686203, 39.199829>,  <37.070503, 34.520248, 39.335869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732933, 34.686203, 39.199829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467670, 0.879560, -0.087514,
		0.262829, -0.232909, -0.936309,
		-0.843923, 0.414882, -0.340099,
		36.479755, 34.810669, 39.097801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392338, 34.985542, 38.815350>,  <37.070503, 34.520248, 39.335869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392338, 34.985542, 38.815350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784065, 34.947193, 38.886608>,  <38.019104, 34.924183, 38.929363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.784065, 34.947193, 38.886608>,  <37.392338, 34.985542, 38.815350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784065, 34.947193, 38.886608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200927, 0.563631, -0.801217,
		-0.023590, 0.820444, 0.571240,
		0.979322, -0.095877, 0.178145,
		38.077862, 34.918430, 38.940052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608650, 35.581825, 38.483475>,  <37.392338, 34.985542, 38.815350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608650, 35.581825, 38.483475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956043, 35.418339, 38.595688>,  <38.164478, 35.320248, 38.663013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956043, 35.418339, 38.595688>,  <37.608650, 35.581825, 38.483475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956043, 35.418339, 38.595688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479184, 0.547170, -0.686286,
		0.126996, 0.730451, 0.671054,
		0.868479, -0.408714, 0.280531,
		38.216587, 35.295723, 38.679848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135437, 36.120201, 38.694870>,  <37.608650, 35.581825, 38.483475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135437, 36.120201, 38.694870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320538, 35.787708, 38.571632>,  <38.431599, 35.588215, 38.497688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320538, 35.787708, 38.571632>,  <38.135437, 36.120201, 38.694870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320538, 35.787708, 38.571632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489218, 0.529286, -0.693197,
		0.739277, 0.170048, 0.651577,
		0.462747, -0.831228, -0.308098,
		38.459362, 35.538342, 38.479202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895763, 36.419571, 38.482136>,  <38.135437, 36.120201, 38.694870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895763, 36.419571, 38.482136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857792, 36.065125, 38.300682>,  <38.835011, 35.852455, 38.191811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857792, 36.065125, 38.300682>,  <38.895763, 36.419571, 38.482136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857792, 36.065125, 38.300682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446258, 0.369460, -0.815078,
		0.889855, -0.279813, 0.360365,
		-0.094930, -0.886117, -0.453635,
		38.829311, 35.799290, 38.164593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595364, 36.223858, 38.276237>,  <38.895763, 36.419571, 38.482136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595364, 36.223858, 38.276237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335159, 36.021915, 38.049271>,  <39.179039, 35.900749, 37.913090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335159, 36.021915, 38.049271>,  <39.595364, 36.223858, 38.276237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335159, 36.021915, 38.049271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449305, 0.346538, -0.823430,
		0.612343, -0.790591, 0.001407,
		-0.650509, -0.504854, -0.567417,
		39.140007, 35.870461, 37.879047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035004, 35.989517, 37.759384>,  <39.595364, 36.223858, 38.276237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035004, 35.989517, 37.759384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675251, 35.924850, 37.596912>,  <39.459400, 35.886051, 37.499428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675251, 35.924850, 37.596912>,  <40.035004, 35.989517, 37.759384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675251, 35.924850, 37.596912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335149, 0.341607, -0.878055,
		0.280702, -0.925835, -0.253053,
		-0.899378, -0.161661, -0.406183,
		39.405437, 35.876350, 37.475056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195545, 35.587566, 37.149208>,  <40.035004, 35.989517, 37.759384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195545, 35.587566, 37.149208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858105, 35.799622, 37.115044>,  <39.655640, 35.926857, 37.094543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.858105, 35.799622, 37.115044>,  <40.195545, 35.587566, 37.149208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858105, 35.799622, 37.115044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342901, 0.409434, -0.845448,
		-0.413236, -0.742505, -0.527183,
		-0.843597, 0.530141, -0.085412,
		39.605026, 35.958664, 37.089420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125343, 35.541988, 36.470234>,  <40.195545, 35.587566, 37.149208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125343, 35.541988, 36.470234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888134, 35.838367, 36.596294>,  <39.745808, 36.016193, 36.671932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888134, 35.838367, 36.596294>,  <40.125343, 35.541988, 36.470234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888134, 35.838367, 36.596294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209534, 0.519932, -0.828110,
		-0.777442, -0.425055, -0.463587,
		-0.593026, 0.740944, 0.315154,
		39.710228, 36.060650, 36.690842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906376, 34.975586, 36.951283>,  <40.125343, 35.541988, 36.470234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906376, 34.975586, 36.951283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101284, 34.631756, 36.889713>,  <40.218227, 34.425457, 36.852772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101284, 34.631756, 36.889713>,  <39.906376, 34.975586, 36.951283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101284, 34.631756, 36.889713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871181, 0.466379, 0.153405,
		-0.060075, -0.208848, 0.976101,
		0.487272, -0.859577, -0.153927,
		40.247467, 34.373882, 36.843536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452549, 34.932693, 37.490257>,  <39.906376, 34.975586, 36.951283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452549, 34.932693, 37.490257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537029, 34.666351, 37.204033>,  <40.587719, 34.506546, 37.032299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537029, 34.666351, 37.204033>,  <40.452549, 34.932693, 37.490257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537029, 34.666351, 37.204033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903768, 0.411864, -0.116499,
		0.372285, -0.622097, 0.688766,
		0.211204, -0.665855, -0.715563,
		40.600391, 34.466595, 36.989365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039799, 34.609097, 37.558804>,  <40.452549, 34.932693, 37.490257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039799, 34.609097, 37.558804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991619, 34.596848, 37.161903>,  <40.962711, 34.589497, 36.923763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991619, 34.596848, 37.161903>,  <41.039799, 34.609097, 37.558804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991619, 34.596848, 37.161903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905356, 0.406615, -0.122455,
		0.407213, -0.913086, -0.021243,
		-0.120450, -0.030633, -0.992247,
		40.955482, 34.587662, 36.864231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528088, 34.181141, 37.169552>,  <41.039799, 34.609097, 37.558804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528088, 34.181141, 37.169552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410053, 34.474167, 36.924187>,  <41.339233, 34.649982, 36.776970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.410053, 34.474167, 36.924187>,  <41.528088, 34.181141, 37.169552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410053, 34.474167, 36.924187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955461, 0.229296, -0.185788,
		0.004550, -0.640912, -0.767600,
		-0.295081, 0.732567, -0.613410,
		41.321529, 34.693935, 36.740162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993034, 34.102932, 36.571980>,  <41.528088, 34.181141, 37.169552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993034, 34.102932, 36.571980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906364, 34.493141, 36.586967>,  <41.854362, 34.727268, 36.595963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906364, 34.493141, 36.586967>,  <41.993034, 34.102932, 36.571980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906364, 34.493141, 36.586967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901942, 0.214722, -0.374694,
		-0.373570, -0.047387, -0.926391,
		-0.216672, 0.975525, 0.037474,
		41.841362, 34.785797, 36.598209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284695, 34.286507, 36.008465>,  <41.993034, 34.102932, 36.571980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284695, 34.286507, 36.008465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298386, 34.584866, 36.274536>,  <42.306599, 34.763882, 36.434181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298386, 34.584866, 36.274536>,  <42.284695, 34.286507, 36.008465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298386, 34.584866, 36.274536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939490, 0.202987, -0.275960,
		-0.340861, 0.634378, -0.693814,
		0.034228, 0.745896, 0.665182,
		42.308655, 34.808636, 36.474091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427128, 34.952789, 35.621998>,  <42.284695, 34.286507, 36.008465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427128, 34.952789, 35.621998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558201, 34.911671, 35.997669>,  <42.636845, 34.887001, 36.223072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.558201, 34.911671, 35.997669>,  <42.427128, 34.952789, 35.621998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558201, 34.911671, 35.997669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914964, 0.282322, -0.288334,
		-0.235510, 0.953796, 0.186568,
		0.327684, -0.102797, 0.939178,
		42.656506, 34.880833, 36.279423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788609, 35.509937, 35.811684>,  <42.427128, 34.952789, 35.621998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788609, 35.509937, 35.811684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927040, 35.232193, 36.064064>,  <43.010101, 35.065548, 36.215492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927040, 35.232193, 36.064064>,  <42.788609, 35.509937, 35.811684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927040, 35.232193, 36.064064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931328, 0.172981, -0.320477,
		0.113384, 0.698530, 0.706540,
		0.346081, -0.694358, 0.630948,
		43.030865, 35.023884, 36.253349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284550, 35.716888, 36.241318>,  <42.788609, 35.509937, 35.811684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284550, 35.716888, 36.241318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337769, 35.333241, 36.141403>,  <43.369701, 35.103054, 36.081455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.337769, 35.333241, 36.141403>,  <43.284550, 35.716888, 36.241318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337769, 35.333241, 36.141403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854499, 0.238691, -0.461364,
		0.502124, -0.152057, 0.851323,
		0.133049, -0.959117, -0.249785,
		43.377682, 35.045506, 36.066467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789993, 35.966999, 36.602161>,  <43.284550, 35.716888, 36.241318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789993, 35.966999, 36.602161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175190, 35.897881, 36.519424>,  <44.406307, 35.856411, 36.469784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175190, 35.897881, 36.519424>,  <43.789993, 35.966999, 36.602161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175190, 35.897881, 36.519424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269516, -0.620229, -0.736666,
		-0.000997, 0.765152, -0.643849,
		0.962996, -0.172793, -0.206839,
		44.464088, 35.846043, 36.457375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909306, 36.125824, 35.814316>,  <43.789993, 35.966999, 36.602161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909306, 36.125824, 35.814316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145428, 35.856655, 35.992622>,  <44.287102, 35.695152, 36.099606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145428, 35.856655, 35.992622>,  <43.909306, 36.125824, 35.814316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145428, 35.856655, 35.992622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258915, -0.680926, -0.685057,
		0.764526, 0.288980, -0.576187,
		0.590308, -0.672927, 0.445765,
		44.322521, 35.654778, 36.126350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280113, 35.676357, 35.433712>,  <43.909306, 36.125824, 35.814316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280113, 35.676357, 35.433712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500656, 35.541943, 35.739151>,  <44.632984, 35.461292, 35.922413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.500656, 35.541943, 35.739151>,  <44.280113, 35.676357, 35.433712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.500656, 35.541943, 35.739151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692057, -0.695371, 0.193691,
		0.465896, -0.635247, -0.615957,
		0.551360, -0.336038, 0.763597,
		44.666065, 35.441132, 35.968231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852940, 35.453819, 34.956554>,  <44.280113, 35.676357, 35.433712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852940, 35.453819, 34.956554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877487, 35.533554, 35.347759>,  <44.892216, 35.581394, 35.582481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877487, 35.533554, 35.347759>,  <44.852940, 35.453819, 34.956554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877487, 35.533554, 35.347759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870911, -0.489368, 0.045094,
		0.487595, 0.848991, -0.203631,
		0.061366, 0.199332, 0.978009,
		44.895897, 35.593353, 35.641163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533325, 35.867489, 35.265724>,  <44.852940, 35.453819, 34.956554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533325, 35.867489, 35.265724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368496, 35.583527, 35.494194>,  <45.269600, 35.413151, 35.631275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368496, 35.583527, 35.494194>,  <45.533325, 35.867489, 35.265724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368496, 35.583527, 35.494194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875754, -0.481613, 0.033218,
		0.251503, 0.513895, 0.820157,
		-0.412069, -0.709902, 0.571173,
		45.244877, 35.370556, 35.665546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896061, 35.777626, 35.953384>,  <45.533325, 35.867489, 35.265724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896061, 35.777626, 35.953384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753654, 35.442886, 35.787045>,  <45.668209, 35.242043, 35.687241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.753654, 35.442886, 35.787045>,  <45.896061, 35.777626, 35.953384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.753654, 35.442886, 35.787045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899729, -0.427194, 0.089402,
		-0.252463, -0.342320, 0.905030,
		-0.356019, -0.836853, -0.415846,
		45.646851, 35.191830, 35.662292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073112, 35.219379, 36.400372>,  <45.896061, 35.777626, 35.953384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073112, 35.219379, 36.400372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030605, 35.086948, 36.025330>,  <46.005100, 35.007492, 35.800304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030605, 35.086948, 36.025330>,  <46.073112, 35.219379, 36.400372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030605, 35.086948, 36.025330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850094, -0.519387, 0.087053,
		-0.515799, -0.787799, 0.336636,
		-0.106264, -0.331074, -0.937602,
		45.998726, 34.987625, 35.744049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142765, 34.531807, 36.338753>,  <46.073112, 35.219379, 36.400372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142765, 34.531807, 36.338753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250530, 34.677036, 35.981968>,  <46.315189, 34.764172, 35.767899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.250530, 34.677036, 35.981968>,  <46.142765, 34.531807, 36.338753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250530, 34.677036, 35.981968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916236, -0.381830, 0.121320,
		-0.296530, -0.849932, -0.435528,
		0.269411, 0.363071, -0.891962,
		46.331352, 34.785957, 35.714378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.571125, 34.001152, 35.811111>,  <46.142765, 34.531807, 36.338753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.571125, 34.001152, 35.811111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662827, 34.379910, 35.720924>,  <46.717846, 34.607162, 35.666813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.662827, 34.379910, 35.720924>,  <46.571125, 34.001152, 35.811111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.662827, 34.379910, 35.720924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972747, -0.231139, 0.018376,
		-0.034714, -0.223533, -0.974078,
		0.229255, 0.946894, -0.225464,
		46.731602, 34.663979, 35.653286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.154388, 33.954643, 35.429642>,  <46.571125, 34.001152, 35.811111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.154388, 33.954643, 35.429642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169239, 34.339588, 35.537331>,  <47.178150, 34.570557, 35.601944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.169239, 34.339588, 35.537331>,  <47.154388, 33.954643, 35.429642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.169239, 34.339588, 35.537331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978641, 0.019493, -0.204651,
		-0.202196, 0.271075, -0.941082,
		0.037131, 0.962361, 0.269227,
		47.180378, 34.628296, 35.618099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249165, 34.296604, 34.789890>,  <47.154388, 33.954643, 35.429642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249165, 34.296604, 34.789890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.415543, 34.513092, 35.082211>,  <47.515369, 34.642986, 35.257603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.415543, 34.513092, 35.082211>,  <47.249165, 34.296604, 34.789890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.415543, 34.513092, 35.082211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838607, 0.082564, -0.538443,
		-0.351754, 0.836819, -0.419528,
		0.415941, 0.541219, 0.730804,
		47.540325, 34.675457, 35.301453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.672504, 34.834488, 34.423725>,  <47.249165, 34.296604, 34.789890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.672504, 34.834488, 34.423725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.818970, 34.763420, 34.789097>,  <47.906849, 34.720779, 35.008320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.818970, 34.763420, 34.789097>,  <47.672504, 34.834488, 34.423725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.818970, 34.763420, 34.789097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929687, 0.027547, -0.367320,
		0.040099, 0.983705, 0.175264,
		0.366162, -0.177670, 0.913432,
		47.928818, 34.710117, 35.063126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.366768, 37.333023, 27.067469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978592, 37.428757, 27.079895>,  <37.745686, 37.486198, 27.087351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.978592, 37.428757, 27.079895>,  <38.366768, 37.333023, 27.067469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978592, 37.428757, 27.079895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035619, -0.269338, 0.962387,
		0.238703, 0.932831, 0.269902,
		-0.970439, 0.239338, 0.031065,
		37.687462, 37.500557, 27.089214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329308, 37.643215, 27.717997>,  <38.366768, 37.333023, 27.067469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329308, 37.643215, 27.717997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.970833, 37.520245, 27.590036>,  <37.755749, 37.446461, 27.513260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.970833, 37.520245, 27.590036>,  <38.329308, 37.643215, 27.717997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970833, 37.520245, 27.590036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163839, -0.440744, 0.882554,
		-0.412314, 0.843346, 0.344621,
		-0.896188, -0.307427, -0.319898,
		37.701977, 37.428017, 27.494066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702930, 37.881973, 28.237682>,  <38.329308, 37.643215, 27.717997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702930, 37.881973, 28.237682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.614674, 37.553272, 28.027525>,  <37.561718, 37.356052, 27.901430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.614674, 37.553272, 28.027525>,  <37.702930, 37.881973, 28.237682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614674, 37.553272, 28.027525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270734, -0.465901, 0.842401,
		-0.937028, 0.328110, -0.119680,
		-0.220641, -0.821754, -0.525393,
		37.548481, 37.306747, 27.869907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023342, 37.704216, 28.428738>,  <37.702930, 37.881973, 28.237682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023342, 37.704216, 28.428738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185322, 37.372456, 28.274794>,  <37.282509, 37.173401, 28.182428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.185322, 37.372456, 28.274794>,  <37.023342, 37.704216, 28.428738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185322, 37.372456, 28.274794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349652, -0.529392, 0.772973,
		-0.844844, -0.178447, -0.504377,
		0.404948, -0.829398, -0.384859,
		37.306805, 37.123638, 28.159336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507797, 37.160439, 28.443958>,  <37.023342, 37.704216, 28.428738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507797, 37.160439, 28.443958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845360, 36.946232, 28.430977>,  <37.047897, 36.817707, 28.423189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.845360, 36.946232, 28.430977>,  <36.507797, 37.160439, 28.443958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845360, 36.946232, 28.430977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355802, -0.603917, 0.713225,
		-0.401541, -0.590346, -0.700183,
		0.843902, -0.535516, -0.032451,
		37.098530, 36.785576, 28.421242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317005, 36.477001, 28.744493>,  <36.507797, 37.160439, 28.443958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317005, 36.477001, 28.744493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714218, 36.435905, 28.721403>,  <36.952545, 36.411247, 28.707548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714218, 36.435905, 28.721403>,  <36.317005, 36.477001, 28.744493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714218, 36.435905, 28.721403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031945, -0.706161, 0.707331,
		-0.113438, -0.700557, -0.704522,
		0.993032, -0.102744, -0.057726,
		37.012127, 36.405083, 28.704084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476658, 35.707325, 28.580717>,  <36.317005, 36.477001, 28.744493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476658, 35.707325, 28.580717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790203, 35.868652, 28.769564>,  <36.978329, 35.965446, 28.882872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.790203, 35.868652, 28.769564>,  <36.476658, 35.707325, 28.580717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790203, 35.868652, 28.769564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101796, -0.666580, 0.738450,
		0.612532, -0.626904, -0.481452,
		0.783863, 0.403315, 0.472118,
		37.025364, 35.989647, 28.911200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840752, 35.145222, 28.917479>,  <36.476658, 35.707325, 28.580717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840752, 35.145222, 28.917479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975155, 35.473408, 29.102493>,  <37.055798, 35.670319, 29.213503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975155, 35.473408, 29.102493>,  <36.840752, 35.145222, 28.917479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975155, 35.473408, 29.102493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085108, -0.515527, 0.852636,
		0.938008, -0.247123, -0.243047,
		0.336003, 0.820464, 0.462536,
		37.075954, 35.719547, 29.241255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358078, 34.892780, 29.286705>,  <36.840752, 35.145222, 28.917479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358078, 34.892780, 29.286705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291897, 35.260117, 29.430531>,  <37.252190, 35.480518, 29.516825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291897, 35.260117, 29.430531>,  <37.358078, 34.892780, 29.286705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291897, 35.260117, 29.430531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115950, -0.343945, 0.931803,
		0.979378, 0.195858, -0.049575,
		-0.165450, 0.918336, 0.359562,
		37.242260, 35.535618, 29.538399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894119, 35.012142, 29.818333>,  <37.358078, 34.892780, 29.286705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894119, 35.012142, 29.818333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573036, 35.238045, 29.894964>,  <37.380386, 35.373585, 29.940943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573036, 35.238045, 29.894964>,  <37.894119, 35.012142, 29.818333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573036, 35.238045, 29.894964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032309, -0.279586, 0.959577,
		0.595491, 0.776454, 0.206181,
		-0.802712, 0.564758, 0.191578,
		37.332222, 35.407471, 29.952438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122845, 35.422676, 30.400553>,  <37.894119, 35.012142, 29.818333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122845, 35.422676, 30.400553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724613, 35.444805, 30.430912>,  <37.485676, 35.458084, 30.449127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.724613, 35.444805, 30.430912>,  <38.122845, 35.422676, 30.400553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724613, 35.444805, 30.430912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057552, -0.279285, 0.958482,
		0.074223, 0.958613, 0.274866,
		-0.995579, 0.055323, 0.075899,
		37.425938, 35.461403, 30.453682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057636, 35.666645, 31.099920>,  <38.122845, 35.422676, 30.400553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057636, 35.666645, 31.099920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713985, 35.490139, 30.996243>,  <37.507793, 35.384235, 30.934036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713985, 35.490139, 30.996243>,  <38.057636, 35.666645, 31.099920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713985, 35.490139, 30.996243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117212, -0.323346, 0.938994,
		-0.498156, 0.837097, 0.226074,
		-0.859129, -0.441266, -0.259194,
		37.456245, 35.357758, 30.918484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586514, 35.824226, 31.586889>,  <38.057636, 35.666645, 31.099920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586514, 35.824226, 31.586889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396900, 35.511326, 31.425211>,  <37.283131, 35.323586, 31.328203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396900, 35.511326, 31.425211>,  <37.586514, 35.824226, 31.586889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396900, 35.511326, 31.425211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204963, -0.348407, 0.914660,
		-0.856318, 0.516427, 0.004824,
		-0.474036, -0.782251, -0.404195,
		37.254688, 35.276649, 31.303953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902607, 35.834370, 31.809822>,  <37.586514, 35.824226, 31.586889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902607, 35.834370, 31.809822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980522, 35.454613, 31.711258>,  <37.027271, 35.226761, 31.652119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.980522, 35.454613, 31.711258>,  <36.902607, 35.834370, 31.809822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980522, 35.454613, 31.711258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023937, -0.255751, 0.966447,
		-0.980553, -0.182354, -0.072542,
		0.194788, -0.949389, -0.246412,
		37.038960, 35.169796, 31.637335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509560, 35.431885, 32.221268>,  <36.902607, 35.834370, 31.809822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509560, 35.431885, 32.221268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780357, 35.160709, 32.106670>,  <36.942837, 34.998005, 32.037910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.780357, 35.160709, 32.106670>,  <36.509560, 35.431885, 32.221268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780357, 35.160709, 32.106670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105879, -0.295507, 0.949455,
		-0.728330, -0.673112, -0.128278,
		0.676997, -0.677935, -0.286496,
		36.983456, 34.957329, 32.020721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322739, 34.798214, 32.587231>,  <36.509560, 35.431885, 32.221268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322739, 34.798214, 32.587231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692722, 34.702049, 32.469482>,  <36.914711, 34.644352, 32.398834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692722, 34.702049, 32.469482>,  <36.322739, 34.798214, 32.587231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692722, 34.702049, 32.469482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087450, -0.619122, 0.780411,
		-0.369872, -0.747590, -0.551638,
		0.924958, -0.240411, -0.294372,
		36.970211, 34.629925, 32.381172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227184, 34.038326, 32.445992>,  <36.322739, 34.798214, 32.587231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227184, 34.038326, 32.445992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.599640, 34.169724, 32.509338>,  <36.823112, 34.248562, 32.547344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.599640, 34.169724, 32.509338>,  <36.227184, 34.038326, 32.445992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599640, 34.169724, 32.509338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084921, -0.617649, 0.781855,
		0.354646, -0.714565, -0.603011,
		0.931136, 0.328490, 0.158365,
		36.878983, 34.268272, 32.556847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514912, 33.508350, 32.786541>,  <36.227184, 34.038326, 32.445992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514912, 33.508350, 32.786541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.812183, 33.767490, 32.853447>,  <36.990547, 33.922974, 32.893589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.812183, 33.767490, 32.853447>,  <36.514912, 33.508350, 32.786541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812183, 33.767490, 32.853447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311562, -0.556300, 0.770363,
		0.592130, -0.520403, -0.615275,
		0.743176, 0.647851, 0.167264,
		37.035137, 33.961845, 32.903625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129410, 33.206062, 33.056297>,  <36.514912, 33.508350, 32.786541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129410, 33.206062, 33.056297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.183407, 33.564880, 33.224621>,  <37.215805, 33.780170, 33.325615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.183407, 33.564880, 33.224621>,  <37.129410, 33.206062, 33.056297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183407, 33.564880, 33.224621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298013, -0.441789, 0.846174,
		0.944968, 0.011179, -0.326971,
		0.134992, 0.897050, 0.420808,
		37.223904, 33.833996, 33.350864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714893, 33.064663, 33.460041>,  <37.129410, 33.206062, 33.056297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714893, 33.064663, 33.460041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534225, 33.391994, 33.602211>,  <37.425823, 33.588394, 33.687511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534225, 33.391994, 33.602211>,  <37.714893, 33.064663, 33.460041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534225, 33.391994, 33.602211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046949, -0.376025, 0.925420,
		0.890949, 0.434671, 0.131419,
		-0.451670, 0.818331, 0.355426,
		37.398724, 33.637493, 33.708839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195465, 33.333790, 34.132610>,  <37.714893, 33.064663, 33.460041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195465, 33.333790, 34.132610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813519, 33.452030, 34.144344>,  <37.584351, 33.522972, 34.151382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813519, 33.452030, 34.144344>,  <38.195465, 33.333790, 34.132610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813519, 33.452030, 34.144344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049027, -0.254213, 0.965905,
		0.292977, 0.920867, 0.257231,
		-0.954862, 0.295599, 0.029331,
		37.527061, 33.540710, 34.153145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235497, 33.823219, 34.651180>,  <38.195465, 33.333790, 34.132610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235497, 33.823219, 34.651180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858128, 33.694138, 34.620686>,  <37.631706, 33.616688, 34.602390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.858128, 33.694138, 34.620686>,  <38.235497, 33.823219, 34.651180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858128, 33.694138, 34.620686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047310, -0.096551, 0.994203,
		-0.328191, 0.941564, 0.075822,
		-0.943426, -0.322701, -0.076232,
		37.575100, 33.597328, 34.597816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860470, 34.236095, 34.428650>,  <38.235497, 33.823219, 34.651180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860470, 34.236095, 34.428650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225121, 34.355026, 34.542164>,  <39.443913, 34.426384, 34.610271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225121, 34.355026, 34.542164>,  <38.860470, 34.236095, 34.428650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225121, 34.355026, 34.542164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005806, 0.681063, -0.732201,
		-0.410979, 0.669142, 0.619149,
		0.911627, 0.297324, 0.283788,
		39.498608, 34.444225, 34.627300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892654, 34.990765, 34.439072>,  <38.860470, 34.236095, 34.428650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892654, 34.990765, 34.439072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.272900, 34.878105, 34.386917>,  <39.501049, 34.810509, 34.355625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.272900, 34.878105, 34.386917>,  <38.892654, 34.990765, 34.439072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272900, 34.878105, 34.386917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097609, 0.670096, -0.735829,
		0.294617, 0.686764, 0.664496,
		0.950617, -0.281648, -0.130387,
		39.558086, 34.793610, 34.347801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245308, 35.580601, 34.241306>,  <38.892654, 34.990765, 34.439072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245308, 35.580601, 34.241306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.474663, 35.271244, 34.133163>,  <39.612274, 35.085629, 34.068275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.474663, 35.271244, 34.133163>,  <39.245308, 35.580601, 34.241306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474663, 35.271244, 34.133163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240561, 0.474378, -0.846815,
		0.783174, 0.420512, 0.458049,
		0.573384, -0.773392, -0.270362,
		39.646679, 35.039227, 34.052055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833767, 35.917713, 33.979050>,  <39.245308, 35.580601, 34.241306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833767, 35.917713, 33.979050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.820637, 35.547813, 33.827385>,  <39.812759, 35.325874, 33.736385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.820637, 35.547813, 33.827385>,  <39.833767, 35.917713, 33.979050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820637, 35.547813, 33.827385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221710, 0.363177, -0.904957,
		0.974560, -0.113768, 0.193105,
		-0.032824, -0.924748, -0.379161,
		39.810791, 35.270390, 33.713638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512100, 35.815479, 33.581825>,  <39.833767, 35.917713, 33.979050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512100, 35.815479, 33.581825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243320, 35.550228, 33.449917>,  <40.082054, 35.391079, 33.370773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.243320, 35.550228, 33.449917>,  <40.512100, 35.815479, 33.581825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243320, 35.550228, 33.449917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232155, 0.234230, -0.944055,
		0.703271, -0.710913, -0.003442,
		-0.671947, -0.663128, -0.329769,
		40.041737, 35.351292, 33.350986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884884, 35.694145, 32.984543>,  <40.512100, 35.815479, 33.581825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884884, 35.694145, 32.984543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.512970, 35.554668, 32.937363>,  <40.289822, 35.470982, 32.909054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.512970, 35.554668, 32.937363>,  <40.884884, 35.694145, 32.984543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512970, 35.554668, 32.937363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039016, 0.411970, -0.910362,
		0.366027, -0.841840, -0.396648,
		-0.929786, -0.348693, -0.117947,
		40.234035, 35.450062, 32.901978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869354, 35.582512, 32.233685>,  <40.884884, 35.694145, 32.984543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869354, 35.582512, 32.233685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.481762, 35.578857, 32.332474>,  <40.249207, 35.576664, 32.391747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.481762, 35.578857, 32.332474>,  <40.869354, 35.582512, 32.233685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481762, 35.578857, 32.332474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235296, 0.339792, -0.910591,
		-0.075599, -0.940456, -0.331402,
		-0.968979, -0.009138, 0.246974,
		40.191067, 35.576115, 32.406567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478874, 35.224323, 31.723940>,  <40.869354, 35.582512, 32.233685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478874, 35.224323, 31.723940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.232552, 35.481506, 31.906097>,  <40.084759, 35.635815, 32.015392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.232552, 35.481506, 31.906097>,  <40.478874, 35.224323, 31.723940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232552, 35.481506, 31.906097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216537, 0.417623, -0.882441,
		-0.757557, -0.642025, -0.117952,
		-0.615808, 0.642958, 0.455395,
		40.047810, 35.674393, 32.042717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990120, 35.321033, 31.218510>,  <40.478874, 35.224323, 31.723940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990120, 35.321033, 31.218510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.936939, 35.620739, 31.478024>,  <39.905029, 35.800564, 31.633732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.936939, 35.620739, 31.478024>,  <39.990120, 35.321033, 31.218510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936939, 35.620739, 31.478024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353727, 0.575616, -0.737253,
		-0.925851, -0.327515, 0.188505,
		-0.132954, 0.749266, 0.648786,
		39.897053, 35.845520, 31.672659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398754, 35.569721, 31.089840>,  <39.990120, 35.321033, 31.218510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398754, 35.569721, 31.089840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.562542, 35.878883, 31.283728>,  <39.660816, 36.064381, 31.400061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.562542, 35.878883, 31.283728>,  <39.398754, 35.569721, 31.089840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562542, 35.878883, 31.283728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274951, 0.611146, -0.742228,
		-0.869905, 0.170647, 0.462757,
		0.409472, 0.772904, 0.484719,
		39.685383, 36.110756, 31.429144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848843, 36.115650, 31.033493>,  <39.398754, 35.569721, 31.089840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848843, 36.115650, 31.033493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216557, 36.254425, 31.107841>,  <39.437187, 36.337688, 31.152451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216557, 36.254425, 31.107841>,  <38.848843, 36.115650, 31.033493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216557, 36.254425, 31.107841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113212, 0.685371, -0.719339,
		-0.376953, 0.640237, 0.669330,
		0.919287, 0.346933, 0.185871,
		39.492344, 36.358505, 31.163603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789707, 36.817009, 30.820551>,  <38.848843, 36.115650, 31.033493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789707, 36.817009, 30.820551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186581, 36.770584, 30.838907>,  <39.424706, 36.742729, 30.849922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.186581, 36.770584, 30.838907>,  <38.789707, 36.817009, 30.820551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186581, 36.770584, 30.838907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107355, 0.606117, -0.788098,
		0.063654, 0.786862, 0.613837,
		0.992181, -0.116064, 0.045892,
		39.484234, 36.735764, 30.852674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028538, 37.425266, 30.631067>,  <38.789707, 36.817009, 30.820551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028538, 37.425266, 30.631067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338993, 37.177437, 30.584192>,  <39.525269, 37.028740, 30.556067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.338993, 37.177437, 30.584192>,  <39.028538, 37.425266, 30.631067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338993, 37.177437, 30.584192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320658, 0.547842, -0.772689,
		0.542937, 0.562139, 0.623875,
		0.776143, -0.619571, -0.117189,
		39.571835, 36.991566, 30.549036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656189, 37.863003, 30.457569>,  <39.028538, 37.425266, 30.631067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656189, 37.863003, 30.457569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.771904, 37.493935, 30.355595>,  <39.841335, 37.272495, 30.294409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.771904, 37.493935, 30.355595>,  <39.656189, 37.863003, 30.457569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771904, 37.493935, 30.355595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335305, 0.347127, -0.875827,
		0.896594, 0.167886, 0.409796,
		0.289291, -0.922668, -0.254938,
		39.858692, 37.217133, 30.279114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364147, 37.942852, 30.192129>,  <39.656189, 37.863003, 30.457569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364147, 37.942852, 30.192129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.201199, 37.611423, 30.038498>,  <40.103428, 37.412567, 29.946320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.201199, 37.611423, 30.038498>,  <40.364147, 37.942852, 30.192129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201199, 37.611423, 30.038498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306661, 0.272034, -0.912116,
		0.860237, -0.489351, 0.143273,
		-0.407370, -0.828573, -0.384079,
		40.078987, 37.362850, 29.923275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887947, 37.693417, 29.684357>,  <40.364147, 37.942852, 30.192129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887947, 37.693417, 29.684357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548683, 37.509964, 29.578316>,  <40.345123, 37.399891, 29.514690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.548683, 37.509964, 29.578316>,  <40.887947, 37.693417, 29.684357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548683, 37.509964, 29.578316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235435, 0.121946, -0.964209,
		0.474547, -0.880218, 0.004549,
		-0.848160, -0.458634, -0.265103,
		40.294235, 37.372375, 29.498785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104145, 37.189579, 29.134298>,  <40.887947, 37.693417, 29.684357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104145, 37.189579, 29.134298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.712341, 37.260742, 29.096540>,  <40.477261, 37.303440, 29.073885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.712341, 37.260742, 29.096540>,  <41.104145, 37.189579, 29.134298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712341, 37.260742, 29.096540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136899, 0.244376, -0.959968,
		-0.147722, -0.953220, -0.263724,
		-0.979508, 0.177912, -0.094395,
		40.418488, 37.314117, 29.068222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911880, 36.790062, 28.567589>,  <41.104145, 37.189579, 29.134298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911880, 36.790062, 28.567589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.624935, 37.067272, 28.596157>,  <40.452766, 37.233601, 28.613298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.624935, 37.067272, 28.596157>,  <40.911880, 36.790062, 28.567589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624935, 37.067272, 28.596157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074383, 0.178115, -0.981194,
		-0.692716, -0.698561, -0.179323,
		-0.717364, 0.693028, 0.071422,
		40.409725, 37.275181, 28.617584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.451546, 36.589298, 28.050827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.348022, 36.971317, 28.108662>,  <40.285908, 37.200527, 28.143362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.348022, 36.971317, 28.108662>,  <40.451546, 36.589298, 28.050827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348022, 36.971317, 28.108662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207319, 0.091274, -0.974006,
		-0.943419, -0.282052, 0.174378,
		-0.258804, 0.955048, 0.144585,
		40.270382, 37.257832, 28.152037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916191, 36.667439, 27.615227>,  <40.451546, 36.589298, 28.050827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916191, 36.667439, 27.615227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004578, 37.044968, 27.713507>,  <40.057610, 37.271484, 27.772474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004578, 37.044968, 27.713507>,  <39.916191, 36.667439, 27.615227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004578, 37.044968, 27.713507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440624, 0.321362, -0.838198,
		-0.870071, 0.076954, 0.486883,
		0.220968, 0.943824, 0.245700,
		40.070869, 37.328114, 27.787216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328800, 37.098427, 27.461926>,  <39.916191, 36.667439, 27.615227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328800, 37.098427, 27.461926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.603138, 37.388439, 27.487057>,  <39.767742, 37.562447, 27.502136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.603138, 37.388439, 27.487057>,  <39.328800, 37.098427, 27.461926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603138, 37.388439, 27.487057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382096, 0.432228, -0.816812,
		-0.619371, 0.536199, 0.573472,
		0.685845, 0.725031, 0.062830,
		39.808891, 37.605949, 27.505905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952095, 37.768539, 27.355423>,  <39.328800, 37.098427, 27.461926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952095, 37.768539, 27.355423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345226, 37.820644, 27.303154>,  <39.581104, 37.851906, 27.271793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.345226, 37.820644, 27.303154>,  <38.952095, 37.768539, 27.355423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345226, 37.820644, 27.303154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183592, 0.620005, -0.762815,
		-0.018349, 0.773709, 0.633276,
		0.982831, 0.130262, -0.130670,
		39.640076, 37.859722, 27.263952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088066, 38.494644, 27.366524>,  <38.952095, 37.768539, 27.355423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088066, 38.494644, 27.366524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.370621, 38.311954, 27.150221>,  <39.540154, 38.202339, 27.020439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.370621, 38.311954, 27.150221>,  <39.088066, 38.494644, 27.366524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370621, 38.311954, 27.150221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035899, 0.786103, -0.617052,
		0.706915, 0.416465, 0.571689,
		0.706387, -0.456727, -0.540757,
		39.582539, 38.174938, 26.987993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504105, 39.071331, 27.248922>,  <39.088066, 38.494644, 27.366524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504105, 39.071331, 27.248922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.645290, 38.792549, 26.999228>,  <39.730003, 38.625282, 26.849411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.645290, 38.792549, 26.999228>,  <39.504105, 39.071331, 27.248922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645290, 38.792549, 26.999228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066906, 0.684275, -0.726148,
		0.933240, 0.214541, 0.288157,
		0.352968, -0.696950, -0.624239,
		39.751179, 38.583466, 26.811956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144169, 39.327793, 26.950903>,  <39.504105, 39.071331, 27.248922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144169, 39.327793, 26.950903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004917, 39.057655, 26.690836>,  <39.921368, 38.895573, 26.534796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.004917, 39.057655, 26.690836>,  <40.144169, 39.327793, 26.950903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004917, 39.057655, 26.690836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042061, 0.704107, -0.708847,
		0.936503, -0.219422, -0.273524,
		-0.348127, -0.675342, -0.650169,
		39.900478, 38.855053, 26.495785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609680, 39.250069, 26.379152>,  <40.144169, 39.327793, 26.950903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609680, 39.250069, 26.379152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.279221, 39.110992, 26.201797>,  <40.080944, 39.027546, 26.095385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.279221, 39.110992, 26.201797>,  <40.609680, 39.250069, 26.379152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279221, 39.110992, 26.201797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108004, 0.674599, -0.730240,
		0.553004, -0.651174, -0.519767,
		-0.826148, -0.347689, -0.443386,
		40.031376, 39.006687, 26.068781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864109, 39.315025, 25.722870>,  <40.609680, 39.250069, 26.379152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864109, 39.315025, 25.722870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465271, 39.286369, 25.733192>,  <40.225967, 39.269176, 25.739386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465271, 39.286369, 25.733192>,  <40.864109, 39.315025, 25.722870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465271, 39.286369, 25.733192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066148, 0.647041, -0.759580,
		0.037721, -0.759082, -0.649902,
		-0.997097, -0.071642, 0.025804,
		40.166142, 39.264877, 25.740934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662971, 39.261276, 25.008211>,  <40.864109, 39.315025, 25.722870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662971, 39.261276, 25.008211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.322834, 39.379700, 25.182230>,  <40.118752, 39.450756, 25.286642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.322834, 39.379700, 25.182230>,  <40.662971, 39.261276, 25.008211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322834, 39.379700, 25.182230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138851, 0.671193, -0.728163,
		-0.507581, -0.679594, -0.529635,
		-0.850342, 0.296061, 0.435046,
		40.067730, 39.468517, 25.312744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228550, 39.480206, 24.481791>,  <40.662971, 39.261276, 25.008211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228550, 39.480206, 24.481791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045841, 39.635246, 24.802071>,  <39.936214, 39.728271, 24.994238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045841, 39.635246, 24.802071>,  <40.228550, 39.480206, 24.481791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045841, 39.635246, 24.802071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240225, 0.812900, -0.530552,
		-0.856533, -0.434691, -0.278200,
		-0.456775, 0.387605, 0.800699,
		39.908810, 39.751526, 25.042280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448734, 39.783436, 24.321165>,  <40.228550, 39.480206, 24.481791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448734, 39.783436, 24.321165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.596516, 39.974918, 24.639748>,  <39.685184, 40.089809, 24.830898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.596516, 39.974918, 24.639748>,  <39.448734, 39.783436, 24.321165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596516, 39.974918, 24.639748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156991, 0.876931, -0.454253,
		-0.915894, 0.042787, 0.399134,
		0.369449, 0.478708, 0.796458,
		39.707352, 40.118530, 24.878685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050323, 40.386444, 24.240070>,  <39.448734, 39.783436, 24.321165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050323, 40.386444, 24.240070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353065, 40.472553, 24.486916>,  <39.534710, 40.524220, 24.635023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.353065, 40.472553, 24.486916>,  <39.050323, 40.386444, 24.240070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353065, 40.472553, 24.486916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008818, 0.940753, -0.338978,
		-0.653523, 0.261999, 0.710115,
		0.756855, 0.215268, 0.617114,
		39.580124, 40.537132, 24.672050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957878, 41.028183, 24.486944>,  <39.050323, 40.386444, 24.240070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957878, 41.028183, 24.486944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.355438, 40.987087, 24.502983>,  <39.593975, 40.962429, 24.512606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.355438, 40.987087, 24.502983>,  <38.957878, 41.028183, 24.486944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355438, 40.987087, 24.502983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110132, 0.905600, -0.409584,
		0.005768, 0.411502, 0.911391,
		0.993900, -0.102735, 0.040096,
		39.653610, 40.956268, 24.515013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167271, 41.712509, 24.686840>,  <38.957878, 41.028183, 24.486944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167271, 41.712509, 24.686840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.498627, 41.541000, 24.542662>,  <39.697441, 41.438095, 24.456154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.498627, 41.541000, 24.542662>,  <39.167271, 41.712509, 24.686840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498627, 41.541000, 24.542662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264382, 0.866584, -0.423242,
		0.493832, 0.255315, 0.831231,
		0.828391, -0.428773, -0.360446,
		39.747143, 41.412369, 24.434528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794312, 42.148941, 24.790428>,  <39.167271, 41.712509, 24.686840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794312, 42.148941, 24.790428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906967, 41.892075, 24.505249>,  <39.974560, 41.737953, 24.334141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.906967, 41.892075, 24.505249>,  <39.794312, 42.148941, 24.790428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906967, 41.892075, 24.505249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209269, 0.766249, -0.607511,
		0.936421, 0.021902, 0.350193,
		0.281641, -0.642171, -0.712948,
		39.991459, 41.699425, 24.291365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391701, 42.388546, 24.649908>,  <39.794312, 42.148941, 24.790428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391701, 42.388546, 24.649908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.289143, 42.167885, 24.332434>,  <40.227608, 42.035488, 24.141949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.289143, 42.167885, 24.332434>,  <40.391701, 42.388546, 24.649908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289143, 42.167885, 24.332434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187338, 0.777204, -0.600714,
		0.948243, -0.302710, -0.095928,
		-0.256398, -0.551652, -0.793688,
		40.212223, 42.002388, 24.094328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929016, 42.489113, 24.186237>,  <40.391701, 42.388546, 24.649908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929016, 42.489113, 24.186237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.611301, 42.367367, 23.975914>,  <40.420673, 42.294319, 23.849720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.611301, 42.367367, 23.975914>,  <40.929016, 42.489113, 24.186237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611301, 42.367367, 23.975914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162809, 0.727175, -0.666866,
		0.585323, -0.615288, -0.528031,
		-0.794286, -0.304364, -0.525806,
		40.373016, 42.276058, 23.818172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193737, 42.449043, 23.484344>,  <40.929016, 42.489113, 24.186237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193737, 42.449043, 23.484344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.797535, 42.488018, 23.445562>,  <40.559814, 42.511402, 23.422293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.797535, 42.488018, 23.445562>,  <41.193737, 42.449043, 23.484344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797535, 42.488018, 23.445562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137448, 0.693630, -0.707096,
		-0.001649, -0.713710, -0.700439,
		-0.990508, 0.097440, -0.096954,
		40.500381, 42.517250, 23.416475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155876, 42.690784, 22.724268>,  <41.193737, 42.449043, 23.484344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155876, 42.690784, 22.724268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809780, 42.765747, 22.910276>,  <40.602123, 42.810722, 23.021881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.809780, 42.765747, 22.910276>,  <41.155876, 42.690784, 22.724268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809780, 42.765747, 22.910276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109622, 0.834360, -0.540210,
		-0.489234, -0.518386, -0.701374,
		-0.865236, 0.187403, 0.465023,
		40.550209, 42.821968, 23.049784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622833, 42.850128, 22.107233>,  <41.155876, 42.690784, 22.724268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622833, 42.850128, 22.107233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.467030, 42.993145, 22.446749>,  <40.373547, 43.078957, 22.650459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.467030, 42.993145, 22.446749>,  <40.622833, 42.850128, 22.107233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467030, 42.993145, 22.446749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275786, 0.834012, -0.477876,
		-0.878765, -0.420220, -0.226246,
		-0.389505, 0.357545, 0.848792,
		40.350178, 43.100407, 22.701385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045319, 43.178238, 21.919544>,  <40.622833, 42.850128, 22.107233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045319, 43.178238, 21.919544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.144405, 43.332466, 22.275066>,  <40.203857, 43.425003, 22.488380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.144405, 43.332466, 22.275066>,  <40.045319, 43.178238, 21.919544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144405, 43.332466, 22.275066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028174, 0.919877, -0.391194,
		-0.968424, 0.071862, 0.238728,
		0.247713, 0.385567, 0.888806,
		40.218719, 43.448135, 22.541708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627872, 43.705830, 21.969933>,  <40.045319, 43.178238, 21.919544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627872, 43.705830, 21.969933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.965378, 43.786823, 22.168758>,  <40.167881, 43.835419, 22.288054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.965378, 43.786823, 22.168758>,  <39.627872, 43.705830, 21.969933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965378, 43.786823, 22.168758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001568, 0.927034, -0.374974,
		-0.536720, 0.315608, 0.782511,
		0.843759, 0.202483, 0.497063,
		40.218506, 43.847569, 22.317877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434517, 44.317680, 22.217432>,  <39.627872, 43.705830, 21.969933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434517, 44.317680, 22.217432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.823452, 44.259857, 22.144041>,  <40.056812, 44.225163, 22.100006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.823452, 44.259857, 22.144041>,  <39.434517, 44.317680, 22.217432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823452, 44.259857, 22.144041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025296, 0.846045, -0.532510,
		0.232208, 0.513138, 0.826298,
		0.972337, -0.144555, -0.183478,
		40.115154, 44.216492, 22.088997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712009, 44.029903, 22.249495>,  <39.434517, 44.317680, 22.217432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712009, 44.029903, 22.249495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.336380, 43.950542, 22.137224>,  <38.111004, 43.902927, 22.069862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.336380, 43.950542, 22.137224>,  <38.712009, 44.029903, 22.249495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336380, 43.950542, 22.137224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024606, -0.853299, 0.520841,
		-0.342836, 0.482201, 0.806192,
		-0.939073, -0.198400, -0.280676,
		38.054657, 43.891022, 22.053020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245888, 43.835274, 22.839701>,  <38.712009, 44.029903, 22.249495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245888, 43.835274, 22.839701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.061077, 43.651558, 22.536232>,  <37.950191, 43.541328, 22.354151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.061077, 43.651558, 22.536232>,  <38.245888, 43.835274, 22.839701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061077, 43.651558, 22.536232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021911, -0.849281, 0.527486,
		-0.886596, 0.260335, 0.382325,
		-0.462025, -0.459290, -0.758674,
		37.922470, 43.513771, 22.308630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776253, 43.445076, 23.200666>,  <38.245888, 43.835274, 22.839701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776253, 43.445076, 23.200666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755863, 43.285473, 22.834455>,  <37.743629, 43.189709, 22.614729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.755863, 43.285473, 22.834455>,  <37.776253, 43.445076, 23.200666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755863, 43.285473, 22.834455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076855, -0.912435, 0.401940,
		-0.995739, 0.090850, 0.015841,
		-0.050970, -0.399010, -0.915529,
		37.740574, 43.165771, 22.559797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220226, 43.030540, 23.247738>,  <37.776253, 43.445076, 23.200666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220226, 43.030540, 23.247738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462128, 42.875027, 22.969709>,  <37.607269, 42.781719, 22.802893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.462128, 42.875027, 22.969709>,  <37.220226, 43.030540, 23.247738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462128, 42.875027, 22.969709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062781, -0.893306, 0.445042,
		-0.793936, -0.225503, -0.564637,
		0.604752, -0.388783, -0.695071,
		37.643555, 42.758392, 22.761189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842209, 42.411385, 23.060553>,  <37.220226, 43.030540, 23.247738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842209, 42.411385, 23.060553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207722, 42.337997, 22.915592>,  <37.427029, 42.293964, 22.828617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.207722, 42.337997, 22.915592>,  <36.842209, 42.411385, 23.060553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207722, 42.337997, 22.915592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037024, -0.926085, 0.375495,
		-0.404505, -0.329704, -0.853036,
		0.913786, -0.183472, -0.362399,
		37.481857, 42.282955, 22.806873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779385, 41.832150, 22.792883>,  <36.842209, 42.411385, 23.060553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779385, 41.832150, 22.792883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176571, 41.846386, 22.838055>,  <37.414883, 41.854927, 22.865158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176571, 41.846386, 22.838055>,  <36.779385, 41.832150, 22.792883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176571, 41.846386, 22.838055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004962, -0.940408, 0.340013,
		0.118300, -0.338181, -0.933616,
		0.992965, 0.035591, 0.112929,
		37.474461, 41.857063, 22.871933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951462, 41.199669, 22.436937>,  <36.779385, 41.832150, 22.792883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951462, 41.199669, 22.436937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223141, 41.328777, 22.700607>,  <37.386147, 41.406242, 22.858809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223141, 41.328777, 22.700607>,  <36.951462, 41.199669, 22.436937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223141, 41.328777, 22.700607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019378, -0.889911, 0.455723,
		0.733703, -0.322298, -0.598167,
		0.679194, 0.322774, 0.659176,
		37.426899, 41.425610, 22.898359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402397, 40.619289, 22.483576>,  <36.951462, 41.199669, 22.436937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402397, 40.619289, 22.483576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451279, 40.837151, 22.815460>,  <37.480610, 40.967865, 23.014591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.451279, 40.837151, 22.815460>,  <37.402397, 40.619289, 22.483576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451279, 40.837151, 22.815460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007756, -0.836476, 0.547949,
		0.992474, -0.060527, -0.106447,
		0.122206, 0.544651, 0.829711,
		37.487942, 41.000546, 23.064373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872623, 40.195477, 22.812883>,  <37.402397, 40.619289, 22.483576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872623, 40.195477, 22.812883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728287, 40.442432, 23.092491>,  <37.641685, 40.590607, 23.260256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.728287, 40.442432, 23.092491>,  <37.872623, 40.195477, 22.812883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728287, 40.442432, 23.092491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041736, -0.759454, 0.649220,
		0.931692, 0.205092, 0.299811,
		-0.360842, 0.617387, 0.699018,
		37.620033, 40.627647, 23.302197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252037, 40.259727, 23.332012>,  <37.872623, 40.195477, 22.812883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252037, 40.259727, 23.332012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903992, 40.373569, 23.492962>,  <37.695164, 40.441875, 23.589533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903992, 40.373569, 23.492962>,  <38.252037, 40.259727, 23.332012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903992, 40.373569, 23.492962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136948, -0.644649, 0.752113,
		0.473447, 0.709526, 0.521939,
		-0.870111, 0.284607, 0.402376,
		37.642960, 40.458950, 23.613674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370037, 40.318596, 24.003107>,  <38.252037, 40.259727, 23.332012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370037, 40.318596, 24.003107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975780, 40.259502, 23.970390>,  <37.739227, 40.224045, 23.950760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975780, 40.259502, 23.970390>,  <38.370037, 40.318596, 24.003107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975780, 40.259502, 23.970390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074157, -0.813849, 0.576324,
		-0.151709, 0.561982, 0.813117,
		-0.985639, -0.147732, -0.081794,
		37.680088, 40.215183, 23.945852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206455, 40.206631, 24.695206>,  <38.370037, 40.318596, 24.003107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206455, 40.206631, 24.695206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.882771, 40.103825, 24.483877>,  <37.688560, 40.042141, 24.357080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.882771, 40.103825, 24.483877>,  <38.206455, 40.206631, 24.695206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882771, 40.103825, 24.483877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245058, -0.669629, 0.701102,
		-0.533971, 0.696808, 0.478888,
		-0.809211, -0.257012, -0.528321,
		37.640007, 40.026722, 24.325380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681675, 40.297844, 25.188238>,  <38.206455, 40.206631, 24.695206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681675, 40.297844, 25.188238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.567303, 40.011230, 24.933737>,  <37.498680, 39.839260, 24.781036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.567303, 40.011230, 24.933737>,  <37.681675, 40.297844, 25.188238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567303, 40.011230, 24.933737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055141, -0.650571, 0.757441,
		-0.956661, 0.251663, 0.146511,
		-0.285935, -0.716536, -0.636253,
		37.481522, 39.796268, 24.742861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154083, 39.963276, 25.510275>,  <37.681675, 40.297844, 25.188238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154083, 39.963276, 25.510275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254982, 39.680210, 25.246281>,  <37.315521, 39.510372, 25.087883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254982, 39.680210, 25.246281>,  <37.154083, 39.963276, 25.510275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254982, 39.680210, 25.246281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240083, -0.706487, 0.665760,
		-0.937406, -0.009486, -0.348110,
		0.252250, -0.707662, -0.659987,
		37.330658, 39.467911, 25.048285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570362, 39.425259, 25.467842>,  <37.154083, 39.963276, 25.510275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570362, 39.425259, 25.467842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896816, 39.245743, 25.322231>,  <37.092690, 39.138031, 25.234865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.896816, 39.245743, 25.322231>,  <36.570362, 39.425259, 25.467842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896816, 39.245743, 25.322231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175542, -0.792724, 0.583759,
		-0.550558, -0.412522, -0.725749,
		0.816132, -0.448792, -0.364026,
		37.141655, 39.111107, 25.213024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400753, 38.729092, 25.405306>,  <36.570362, 39.425259, 25.467842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400753, 38.729092, 25.405306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800739, 38.725971, 25.404974>,  <37.040733, 38.724098, 25.404776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800739, 38.725971, 25.404974>,  <36.400753, 38.729092, 25.405306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800739, 38.725971, 25.404974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006001, -0.828664, 0.559714,
		-0.005055, -0.559692, -0.828686,
		0.999969, -0.007802, -0.000830,
		37.100731, 38.723629, 25.404724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598396, 37.990166, 25.373039>,  <36.400753, 38.729092, 25.405306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598396, 37.990166, 25.373039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934078, 38.159893, 25.509096>,  <37.135487, 38.261730, 25.590731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.934078, 38.159893, 25.509096>,  <36.598396, 37.990166, 25.373039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934078, 38.159893, 25.509096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170077, -0.798873, 0.576954,
		0.516541, -0.426331, -0.742582,
		0.839202, 0.424316, 0.340141,
		37.185841, 38.287189, 25.611139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174721, 37.398415, 25.409142>,  <36.598396, 37.990166, 25.373039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174721, 37.398415, 25.409142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266151, 37.708679, 25.644464>,  <37.321011, 37.894836, 25.785658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.266151, 37.708679, 25.644464>,  <37.174721, 37.398415, 25.409142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266151, 37.708679, 25.644464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129195, -0.623131, 0.771373,
		0.964916, -0.100310, -0.242643,
		0.228575, 0.775658, 0.588309,
		37.334724, 37.941376, 25.820957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745876, 37.276978, 25.740137>,  <37.174721, 37.398415, 25.409142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745876, 37.276978, 25.740137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626789, 37.545006, 26.012125>,  <37.555336, 37.705822, 26.175318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626789, 37.545006, 26.012125>,  <37.745876, 37.276978, 25.740137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626789, 37.545006, 26.012125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136654, -0.675023, 0.725031,
		0.944821, 0.308778, 0.109400,
		-0.297722, 0.670075, 0.679972,
		37.537472, 37.746029, 26.216116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195328, 37.225689, 26.370974>,  <37.745876, 37.276978, 25.740137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195328, 37.225689, 26.370974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880550, 37.435951, 26.500216>,  <37.691685, 37.562111, 26.577761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880550, 37.435951, 26.500216>,  <38.195328, 37.225689, 26.370974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880550, 37.435951, 26.500216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034836, -0.560670, 0.827306,
		0.616038, 0.639789, 0.459529,
		-0.786946, 0.525660, 0.323106,
		37.644466, 37.593651, 26.597147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.773838, 36.648056, 30.947828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.377254, 36.697994, 30.932695>,  <40.139305, 36.727955, 30.923615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.377254, 36.697994, 30.932695>,  <40.773838, 36.648056, 30.947828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377254, 36.697994, 30.932695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081393, -0.365385, 0.927291,
		0.101941, 0.922447, 0.372424,
		-0.991455, 0.124842, -0.037833,
		40.079819, 36.735447, 30.921345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416561, 37.222336, 31.427151>,  <40.773838, 36.648056, 30.947828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416561, 37.222336, 31.427151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147179, 36.932838, 31.366941>,  <39.985550, 36.759140, 31.330816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.147179, 36.932838, 31.366941>,  <40.416561, 37.222336, 31.427151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147179, 36.932838, 31.366941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090296, -0.282631, 0.954969,
		-0.733696, 0.629534, 0.255689,
		-0.673452, -0.723745, -0.150521,
		39.945145, 36.715714, 31.321785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065578, 37.153278, 32.008614>,  <40.416561, 37.222336, 31.427151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065578, 37.153278, 32.008614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957352, 36.816113, 31.822586>,  <39.892418, 36.613811, 31.710970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957352, 36.816113, 31.822586>,  <40.065578, 37.153278, 32.008614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957352, 36.816113, 31.822586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035118, -0.474122, 0.879759,
		-0.962061, 0.254363, 0.098679,
		-0.270563, -0.842916, -0.465067,
		39.876183, 36.563236, 31.683065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656994, 36.892796, 32.473988>,  <40.065578, 37.153278, 32.008614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656994, 36.892796, 32.473988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717274, 36.574791, 32.238956>,  <39.753441, 36.383987, 32.097939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.717274, 36.574791, 32.238956>,  <39.656994, 36.892796, 32.473988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717274, 36.574791, 32.238956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159083, -0.606125, 0.779298,
		-0.975696, -0.023965, -0.217815,
		0.150699, -0.795008, -0.587581,
		39.762482, 36.336288, 32.062683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167645, 36.425709, 32.622326>,  <39.656994, 36.892796, 32.473988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167645, 36.425709, 32.622326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443707, 36.194736, 32.447845>,  <39.609344, 36.056152, 32.343159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.443707, 36.194736, 32.447845>,  <39.167645, 36.425709, 32.622326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443707, 36.194736, 32.447845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104042, -0.675675, 0.729821,
		-0.716153, -0.458299, -0.526390,
		0.690145, -0.577430, -0.436204,
		39.650753, 36.021507, 32.316986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004559, 35.780437, 32.890091>,  <39.167645, 36.425709, 32.622326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004559, 35.780437, 32.890091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.364098, 35.718037, 32.726269>,  <39.579823, 35.680595, 32.627975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.364098, 35.718037, 32.726269>,  <39.004559, 35.780437, 32.890091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364098, 35.718037, 32.726269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208080, -0.670550, 0.712085,
		-0.385711, -0.725277, -0.570263,
		0.898849, -0.155999, -0.409555,
		39.633751, 35.671238, 32.603401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002491, 35.016930, 32.723740>,  <39.004559, 35.780437, 32.890091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002491, 35.016930, 32.723740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.376427, 35.145428, 32.784248>,  <39.600788, 35.222527, 32.820553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.376427, 35.145428, 32.784248>,  <39.002491, 35.016930, 32.723740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376427, 35.145428, 32.784248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050450, -0.541861, 0.838953,
		0.351474, -0.776653, -0.522759,
		0.934838, 0.321243, 0.151268,
		39.656879, 35.241802, 32.829628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292362, 34.407707, 33.002472>,  <39.002491, 35.016930, 32.723740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292362, 34.407707, 33.002472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534512, 34.713585, 33.090805>,  <39.679802, 34.897110, 33.143803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.534512, 34.713585, 33.090805>,  <39.292362, 34.407707, 33.002472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534512, 34.713585, 33.090805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209670, -0.420855, 0.882564,
		0.767827, -0.487982, -0.415109,
		0.605376, 0.764693, 0.220829,
		39.716125, 34.942993, 33.157055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888611, 34.056831, 33.188915>,  <39.292362, 34.407707, 33.002472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888611, 34.056831, 33.188915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.846928, 34.414501, 33.363083>,  <39.821918, 34.629105, 33.467583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.846928, 34.414501, 33.363083>,  <39.888611, 34.056831, 33.188915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846928, 34.414501, 33.363083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117545, -0.423666, 0.898160,
		0.987585, 0.144774, -0.060958,
		-0.104204, 0.894174, 0.435424,
		39.815666, 34.682755, 33.493710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328789, 34.003914, 33.640232>,  <39.888611, 34.056831, 33.188915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328789, 34.003914, 33.640232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.145905, 34.333565, 33.773956>,  <40.036175, 34.531357, 33.854191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.145905, 34.333565, 33.773956>,  <40.328789, 34.003914, 33.640232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145905, 34.333565, 33.773956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004459, -0.378023, 0.925786,
		0.889346, 0.421791, 0.176512,
		-0.457213, 0.824131, 0.334312,
		40.008739, 34.580803, 33.874249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757282, 34.231773, 34.169842>,  <40.328789, 34.003914, 33.640232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757282, 34.231773, 34.169842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.404232, 34.412235, 34.222668>,  <40.192402, 34.520512, 34.254364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.404232, 34.412235, 34.222668>,  <40.757282, 34.231773, 34.169842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404232, 34.412235, 34.222668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027920, -0.230138, 0.972757,
		0.469254, 0.862264, 0.190529,
		-0.882622, 0.451150, 0.132067,
		40.139446, 34.547581, 34.262287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736282, 34.760029, 34.781162>,  <40.757282, 34.231773, 34.169842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736282, 34.760029, 34.781162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355759, 34.645081, 34.736576>,  <40.127445, 34.576111, 34.709824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355759, 34.645081, 34.736576>,  <40.736282, 34.760029, 34.781162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355759, 34.645081, 34.736576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008446, -0.337180, 0.941402,
		-0.308115, 0.896508, 0.318336,
		-0.951311, -0.287372, -0.111462,
		40.070366, 34.558868, 34.703136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284016, 35.054340, 35.435886>,  <40.736282, 34.760029, 34.781162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284016, 35.054340, 35.435886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.103500, 34.737545, 35.271400>,  <39.995193, 34.547466, 35.172710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.103500, 34.737545, 35.271400>,  <40.284016, 35.054340, 35.435886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103500, 34.737545, 35.271400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120699, -0.402396, 0.907474,
		-0.884180, 0.459161, 0.086003,
		-0.451284, -0.791990, -0.411210,
		39.968117, 34.499947, 35.148037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526875, 34.943138, 35.692219>,  <40.284016, 35.054340, 35.435886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526875, 34.943138, 35.692219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.724892, 34.606899, 35.604286>,  <39.843704, 34.405155, 35.551529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.724892, 34.606899, 35.604286>,  <39.526875, 34.943138, 35.692219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724892, 34.606899, 35.604286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074593, -0.293188, 0.953140,
		-0.865659, -0.455450, -0.207844,
		0.495046, -0.840598, -0.219828,
		39.873405, 34.354721, 35.538338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574707, 35.658741, 35.974327>,  <39.526875, 34.943138, 35.692219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574707, 35.658741, 35.974327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614807, 35.998856, 36.181000>,  <39.638866, 36.202923, 36.305004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.614807, 35.998856, 36.181000>,  <39.574707, 35.658741, 35.974327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614807, 35.998856, 36.181000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303895, 0.468318, -0.829654,
		-0.947417, 0.240190, -0.211449,
		0.100249, 0.850287, 0.516685,
		39.644882, 36.253941, 36.336006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264725, 36.114212, 35.648632>,  <39.574707, 35.658741, 35.974327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264725, 36.114212, 35.648632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506813, 36.338047, 35.875107>,  <39.652065, 36.472347, 36.010994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.506813, 36.338047, 35.875107>,  <39.264725, 36.114212, 35.648632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506813, 36.338047, 35.875107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137149, 0.627312, -0.766597,
		-0.784152, 0.541615, 0.302918,
		0.605224, 0.559583, 0.566190,
		39.688381, 36.505920, 36.044964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880070, 36.862904, 35.621204>,  <39.264725, 36.114212, 35.648632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880070, 36.862904, 35.621204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.267082, 36.870747, 35.721996>,  <39.499290, 36.875454, 35.782471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.267082, 36.870747, 35.721996>,  <38.880070, 36.862904, 35.621204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267082, 36.870747, 35.721996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181791, 0.638641, -0.747723,
		-0.175590, 0.769255, 0.614341,
		0.967533, 0.019611, 0.251982,
		39.557343, 36.876629, 35.797592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010086, 37.545681, 35.578636>,  <38.880070, 36.862904, 35.621204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010086, 37.545681, 35.578636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.375656, 37.383762, 35.566734>,  <39.594997, 37.286610, 35.559593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.375656, 37.383762, 35.566734>,  <39.010086, 37.545681, 35.578636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375656, 37.383762, 35.566734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275420, 0.672326, -0.687111,
		0.298149, 0.619770, 0.725943,
		0.913921, -0.404801, -0.029756,
		39.649834, 37.262321, 35.557808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441349, 38.035789, 35.515308>,  <39.010086, 37.545681, 35.578636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441349, 38.035789, 35.515308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.657909, 37.727951, 35.379887>,  <39.787846, 37.543247, 35.298634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.657909, 37.727951, 35.379887>,  <39.441349, 38.035789, 35.515308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657909, 37.727951, 35.379887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360991, 0.576441, -0.733077,
		0.759326, 0.274671, 0.589899,
		0.541396, -0.769592, -0.338552,
		39.820328, 37.497074, 35.278320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159840, 38.233265, 35.513863>,  <39.441349, 38.035789, 35.515308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159840, 38.233265, 35.513863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.153587, 37.929913, 35.253212>,  <40.149834, 37.747902, 35.096821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.153587, 37.929913, 35.253212>,  <40.159840, 38.233265, 35.513863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153587, 37.929913, 35.253212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570641, 0.528382, -0.628634,
		0.821051, -0.381672, 0.424502,
		-0.015633, -0.758379, -0.651626,
		40.148899, 37.702400, 35.057724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770920, 38.342693, 35.131989>,  <40.159840, 38.233265, 35.513863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770920, 38.342693, 35.131989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.589043, 38.073364, 34.898788>,  <40.479916, 37.911766, 34.758869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.589043, 38.073364, 34.898788>,  <40.770920, 38.342693, 35.131989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589043, 38.073364, 34.898788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487507, 0.359659, -0.795602,
		0.745380, -0.645970, 0.164717,
		-0.454693, -0.673326, -0.582997,
		40.452633, 37.871365, 34.723888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277843, 38.110447, 34.636608>,  <40.770920, 38.342693, 35.131989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277843, 38.110447, 34.636608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.912941, 38.044113, 34.486790>,  <40.694000, 38.004314, 34.396896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.912941, 38.044113, 34.486790>,  <41.277843, 38.110447, 34.636608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912941, 38.044113, 34.486790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292911, 0.375093, -0.879493,
		0.286337, -0.912034, -0.293608,
		-0.912258, -0.165830, -0.374548,
		40.639263, 37.994362, 34.374424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369110, 37.753365, 34.032860>,  <41.277843, 38.110447, 34.636608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369110, 37.753365, 34.032860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.006939, 37.917850, 33.990726>,  <40.789635, 38.016544, 33.965446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.006939, 37.917850, 33.990726>,  <41.369110, 37.753365, 34.032860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.006939, 37.917850, 33.990726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220217, 0.242895, -0.944726,
		-0.362905, -0.878579, -0.310481,
		-0.905431, 0.411219, -0.105330,
		40.735310, 38.041218, 33.959129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217064, 37.657101, 33.314606>,  <41.369110, 37.753365, 34.032860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217064, 37.657101, 33.314606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.965469, 37.938412, 33.447140>,  <40.814514, 38.107197, 33.526661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.965469, 37.938412, 33.447140>,  <41.217064, 37.657101, 33.314606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965469, 37.938412, 33.447140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098978, 0.495176, -0.863136,
		-0.771091, -0.510104, -0.381067,
		-0.628984, 0.703274, 0.331337,
		40.776775, 38.149395, 33.546539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714973, 37.672714, 32.812405>,  <41.217064, 37.657101, 33.314606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714973, 37.672714, 32.812405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.649193, 38.017185, 33.004791>,  <40.609726, 38.223869, 33.120224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.649193, 38.017185, 33.004791>,  <40.714973, 37.672714, 32.812405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649193, 38.017185, 33.004791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225121, 0.441964, -0.868325,
		-0.960353, -0.251069, 0.121190,
		-0.164448, 0.861181, 0.480962,
		40.599857, 38.275539, 33.149078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143631, 38.047901, 32.482906>,  <40.714973, 37.672714, 32.812405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143631, 38.047901, 32.482906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299469, 38.353996, 32.687893>,  <40.392971, 38.537655, 32.810883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299469, 38.353996, 32.687893>,  <40.143631, 38.047901, 32.482906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299469, 38.353996, 32.687893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071294, 0.579819, -0.811620,
		-0.918222, 0.279669, 0.280454,
		0.389598, 0.765242, 0.512464,
		40.416348, 38.583569, 32.841633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726341, 38.642639, 32.321358>,  <40.143631, 38.047901, 32.482906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726341, 38.642639, 32.321358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.077827, 38.770916, 32.462791>,  <40.288719, 38.847881, 32.547653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.077827, 38.770916, 32.462791>,  <39.726341, 38.642639, 32.321358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077827, 38.770916, 32.462791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064556, 0.654076, -0.753669,
		-0.472968, 0.685084, 0.554041,
		0.878711, 0.320695, 0.353584,
		40.341442, 38.867123, 32.568867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732960, 39.401852, 32.304893>,  <39.726341, 38.642639, 32.321358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732960, 39.401852, 32.304893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.116096, 39.288979, 32.326485>,  <40.345978, 39.221252, 32.339439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.116096, 39.288979, 32.326485>,  <39.732960, 39.401852, 32.304893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116096, 39.288979, 32.326485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219307, 0.596756, -0.771872,
		0.185598, 0.751168, 0.633482,
		0.957840, -0.282185, 0.053980,
		40.403450, 39.204323, 32.342678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460701, 39.984169, 32.810379>,  <39.732960, 39.401852, 32.304893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460701, 39.984169, 32.810379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.074039, 39.900555, 32.751194>,  <38.842045, 39.850388, 32.715683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.074039, 39.900555, 32.751194>,  <39.460701, 39.984169, 32.810379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074039, 39.900555, 32.751194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000600, -0.575891, 0.817526,
		-0.256102, 0.790350, 0.556560,
		-0.966650, -0.209036, -0.147961,
		38.784046, 39.837845, 32.706806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267849, 39.881817, 33.412041>,  <39.460701, 39.984169, 32.810379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267849, 39.881817, 33.412041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946041, 39.751099, 33.213665>,  <38.752956, 39.672668, 33.094639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946041, 39.751099, 33.213665>,  <39.267849, 39.881817, 33.412041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946041, 39.751099, 33.213665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256782, -0.561552, 0.786589,
		-0.535548, 0.760174, 0.367864,
		-0.804519, -0.326795, -0.495937,
		38.704685, 39.653061, 33.064884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642139, 40.068687, 33.774921>,  <39.267849, 39.881817, 33.412041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642139, 40.068687, 33.774921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.572323, 39.737667, 33.561493>,  <38.530434, 39.539055, 33.433437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.572323, 39.737667, 33.561493>,  <38.642139, 40.068687, 33.774921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572323, 39.737667, 33.561493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474256, -0.404234, 0.782097,
		-0.862911, 0.389560, -0.321913,
		-0.174546, -0.827550, -0.533569,
		38.519958, 39.489403, 33.401421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840073, 39.905575, 33.906021>,  <38.642139, 40.068687, 33.774921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840073, 39.905575, 33.906021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.021320, 39.572811, 33.777889>,  <38.130070, 39.373154, 33.701012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.021320, 39.572811, 33.777889>,  <37.840073, 39.905575, 33.906021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021320, 39.572811, 33.777889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623736, -0.552589, 0.552810,
		-0.636897, -0.050690, -0.769281,
		0.453118, -0.831911, -0.320325,
		38.157257, 39.323238, 33.681793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279282, 39.300316, 33.915585>,  <37.840073, 39.905575, 33.906021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279282, 39.300316, 33.915585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.629364, 39.108353, 33.891262>,  <37.839413, 38.993176, 33.876667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.629364, 39.108353, 33.891262>,  <37.279282, 39.300316, 33.915585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629364, 39.108353, 33.891262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347334, -0.710913, 0.611525,
		-0.336708, -0.514090, -0.788885,
		0.875207, -0.479912, -0.060809,
		37.891926, 38.964378, 33.873020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151192, 38.674011, 33.773556>,  <37.279282, 39.300316, 33.915585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151192, 38.674011, 33.773556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527569, 38.634270, 33.903015>,  <37.753395, 38.610424, 33.980690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527569, 38.634270, 33.903015>,  <37.151192, 38.674011, 33.773556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527569, 38.634270, 33.903015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292994, -0.717946, 0.631434,
		0.169625, -0.688972, -0.704659,
		0.940947, -0.099354, 0.323646,
		37.809853, 38.604462, 34.000111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436104, 37.894314, 33.814777>,  <37.151192, 38.674011, 33.773556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436104, 37.894314, 33.814777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.658951, 38.093845, 34.080345>,  <37.792660, 38.213562, 34.239685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.658951, 38.093845, 34.080345>,  <37.436104, 37.894314, 33.814777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658951, 38.093845, 34.080345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284574, -0.636404, 0.716943,
		0.780154, -0.588355, -0.212597,
		0.557115, 0.498826, 0.663924,
		37.826084, 38.243492, 34.279522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800571, 37.371159, 34.153919>,  <37.436104, 37.894314, 33.814777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800571, 37.371159, 34.153919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.758324, 37.697247, 34.381699>,  <37.732975, 37.892899, 34.518364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.758324, 37.697247, 34.381699>,  <37.800571, 37.371159, 34.153919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758324, 37.697247, 34.381699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357310, -0.565517, 0.743317,
		0.927994, -0.124957, 0.351017,
		-0.105623, 0.815215, 0.569445,
		37.726635, 37.941811, 34.552532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886272, 37.162144, 34.866867>,  <37.800571, 37.371159, 34.153919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886272, 37.162144, 34.866867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.742462, 37.528942, 34.935978>,  <37.656174, 37.749023, 34.977444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.742462, 37.528942, 34.935978>,  <37.886272, 37.162144, 34.866867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742462, 37.528942, 34.935978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521095, -0.350901, 0.778028,
		0.774080, 0.189688, 0.604002,
		-0.359528, 0.916999, 0.172780,
		37.634605, 37.804043, 34.987812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878540, 37.239662, 35.646866>,  <37.886272, 37.162144, 34.866867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878540, 37.239662, 35.646866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.608189, 37.487328, 35.486954>,  <37.445976, 37.635925, 35.391006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.608189, 37.487328, 35.486954>,  <37.878540, 37.239662, 35.646866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608189, 37.487328, 35.486954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566660, -0.089716, 0.819053,
		0.471260, 0.780121, 0.411492,
		-0.675878, 0.619163, -0.399783,
		37.405426, 37.673077, 35.367020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846622, 37.807018, 36.065208>,  <37.878540, 37.239662, 35.646866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846622, 37.807018, 36.065208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.499474, 37.827484, 35.867550>,  <37.291183, 37.839764, 35.748955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.499474, 37.827484, 35.867550>,  <37.846622, 37.807018, 36.065208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499474, 37.827484, 35.867550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496682, -0.069040, 0.865182,
		0.010150, 0.996301, 0.085330,
		-0.867873, 0.051163, -0.494144,
		37.239113, 37.842834, 35.719307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434578, 38.082596, 36.619473>,  <37.846622, 37.807018, 36.065208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434578, 38.082596, 36.619473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.182396, 37.914066, 36.358700>,  <37.031086, 37.812950, 36.202236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.182396, 37.914066, 36.358700>,  <37.434578, 38.082596, 36.619473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182396, 37.914066, 36.358700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632192, -0.208624, 0.746196,
		-0.450397, 0.882589, -0.134827,
		-0.630456, -0.421321, -0.651930,
		36.993259, 37.787670, 36.163120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.997932, 43.149170, 31.271967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660683, 43.063118, 31.074841>,  <38.458332, 43.011486, 30.956566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660683, 43.063118, 31.074841>,  <38.997932, 43.149170, 31.271967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660683, 43.063118, 31.074841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203584, -0.720550, 0.662843,
		-0.497695, 0.659186, 0.563713,
		-0.843121, -0.215131, -0.492814,
		38.407745, 42.998577, 30.926996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422909, 43.057617, 31.769289>,  <38.997932, 43.149170, 31.271967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422909, 43.057617, 31.769289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336960, 42.831131, 31.450985>,  <38.285389, 42.695240, 31.260002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336960, 42.831131, 31.450985>,  <38.422909, 43.057617, 31.769289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336960, 42.831131, 31.450985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069418, -0.803877, 0.590731,
		-0.974172, 0.182172, 0.133426,
		-0.214873, -0.566211, -0.795760,
		38.272499, 42.661266, 31.212257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834385, 42.564304, 31.983923>,  <38.422909, 43.057617, 31.769289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834385, 42.564304, 31.983923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039734, 42.402702, 31.681076>,  <38.162945, 42.305740, 31.499369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039734, 42.402702, 31.681076>,  <37.834385, 42.564304, 31.983923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039734, 42.402702, 31.681076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027710, -0.873987, 0.485159,
		-0.857715, -0.270050, -0.437490,
		0.513378, -0.404005, -0.757115,
		38.193748, 42.281502, 31.453941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524590, 41.947884, 31.962652>,  <37.834385, 42.564304, 31.983923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524590, 41.947884, 31.962652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848984, 41.891655, 31.735483>,  <38.043621, 41.857918, 31.599182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848984, 41.891655, 31.735483>,  <37.524590, 41.947884, 31.962652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848984, 41.891655, 31.735483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073661, -0.938447, 0.337478,
		-0.580404, -0.315525, -0.750717,
		0.810990, -0.140575, -0.567920,
		38.092281, 41.849483, 31.565107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362450, 41.383560, 31.516191>,  <37.524590, 41.947884, 31.962652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362450, 41.383560, 31.516191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754623, 41.426502, 31.582191>,  <37.989929, 41.452267, 31.621792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754623, 41.426502, 31.582191>,  <37.362450, 41.383560, 31.516191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754623, 41.426502, 31.582191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066920, -0.970052, 0.233498,
		0.185126, -0.217887, -0.958255,
		0.980433, 0.107353, 0.165001,
		38.048752, 41.458710, 31.631691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542755, 40.680099, 31.299353>,  <37.362450, 41.383560, 31.516191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542755, 40.680099, 31.299353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861786, 40.829369, 31.488922>,  <38.053204, 40.918930, 31.602663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861786, 40.829369, 31.488922>,  <37.542755, 40.680099, 31.299353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861786, 40.829369, 31.488922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282651, -0.925283, 0.252904,
		0.532892, -0.067757, -0.843466,
		0.797581, 0.373177, 0.473924,
		38.101059, 40.941322, 31.631100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130474, 40.135986, 31.243841>,  <37.542755, 40.680099, 31.299353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130474, 40.135986, 31.243841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219673, 40.359154, 31.563591>,  <38.273193, 40.493053, 31.755442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219673, 40.359154, 31.563591>,  <38.130474, 40.135986, 31.243841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219673, 40.359154, 31.563591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383408, -0.804131, 0.454282,
		0.896254, 0.205185, -0.393227,
		0.222994, 0.557918, 0.799376,
		38.286572, 40.526527, 31.803404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852936, 39.880898, 31.551571>,  <38.130474, 40.135986, 31.243841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852936, 39.880898, 31.551571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659359, 40.099636, 31.824852>,  <38.543213, 40.230881, 31.988821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659359, 40.099636, 31.824852>,  <38.852936, 39.880898, 31.551571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659359, 40.099636, 31.824852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243948, -0.665461, 0.705444,
		0.840413, 0.508057, 0.188640,
		-0.483938, 0.546845, 0.683201,
		38.514179, 40.263691, 32.029812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364422, 39.972668, 32.032192>,  <38.852936, 39.880898, 31.551571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364422, 39.972668, 32.032192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998676, 40.017593, 32.187794>,  <38.779228, 40.044548, 32.281155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998676, 40.017593, 32.187794>,  <39.364422, 39.972668, 32.032192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998676, 40.017593, 32.187794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188817, -0.731619, 0.655043,
		0.358176, 0.672398, 0.647758,
		-0.914362, 0.112313, 0.389008,
		38.724369, 40.051289, 32.304497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074554, 40.059307, 32.247135>,  <39.364422, 39.972668, 32.032192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074554, 40.059307, 32.247135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357262, 39.784561, 32.179363>,  <40.526886, 39.619713, 32.138702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357262, 39.784561, 32.179363>,  <40.074554, 40.059307, 32.247135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357262, 39.784561, 32.179363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398590, 0.584475, -0.706764,
		0.584475, 0.431984, 0.686862,
		0.706764, -0.686862, -0.169426,
		40.569290, 39.578503, 32.128536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745850, 40.433033, 32.341076>,  <40.074554, 40.059307, 32.247135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745850, 40.433033, 32.341076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764462, 40.115273, 32.098831>,  <40.775627, 39.924618, 31.953484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764462, 40.115273, 32.098831>,  <40.745850, 40.433033, 32.341076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764462, 40.115273, 32.098831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359906, 0.578883, -0.731684,
		0.931828, -0.183922, 0.312842,
		0.046526, -0.794398, -0.605614,
		40.778419, 39.876953, 31.917147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425991, 40.352856, 32.144367>,  <40.745850, 40.433033, 32.341076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425991, 40.352856, 32.144367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253025, 40.130783, 31.860174>,  <41.149246, 39.997540, 31.689657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253025, 40.130783, 31.860174>,  <41.425991, 40.352856, 32.144367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253025, 40.130783, 31.860174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550121, 0.461873, -0.695730,
		0.714410, -0.691699, 0.105694,
		-0.432419, -0.555181, -0.710485,
		41.123299, 39.964230, 31.647028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982330, 40.148705, 31.618799>,  <41.425991, 40.352856, 32.144367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982330, 40.148705, 31.618799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627384, 40.112312, 31.438002>,  <41.414417, 40.090477, 31.329523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627384, 40.112312, 31.438002>,  <41.982330, 40.148705, 31.618799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627384, 40.112312, 31.438002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385896, 0.389914, -0.836093,
		0.252310, -0.916346, -0.310887,
		-0.887369, -0.090985, -0.451993,
		41.361172, 40.085018, 31.302404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214642, 39.821461, 30.946329>,  <41.982330, 40.148705, 31.618799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214642, 39.821461, 30.946329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852573, 39.989826, 30.922659>,  <41.635334, 40.090847, 30.908457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852573, 39.989826, 30.922659>,  <42.214642, 39.821461, 30.946329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852573, 39.989826, 30.922659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251471, 0.418067, -0.872916,
		-0.342683, -0.805017, -0.484268,
		-0.905169, 0.420913, -0.059175,
		41.581024, 40.116100, 30.904907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034595, 39.804523, 30.270332>,  <42.214642, 39.821461, 30.946329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034595, 39.804523, 30.270332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754192, 40.060848, 30.395515>,  <41.585949, 40.214645, 30.470625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754192, 40.060848, 30.395515>,  <42.034595, 39.804523, 30.270332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754192, 40.060848, 30.395515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249859, 0.631715, -0.733830,
		-0.667951, -0.436225, -0.602951,
		-0.701008, 0.640815, 0.312960,
		41.543888, 40.253094, 30.489403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824730, 40.064556, 29.666405>,  <42.034595, 39.804523, 30.270332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824730, 40.064556, 29.666405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722141, 40.345188, 29.932341>,  <41.660587, 40.513569, 30.091902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722141, 40.345188, 29.932341>,  <41.824730, 40.064556, 29.666405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722141, 40.345188, 29.932341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244625, 0.712565, -0.657578,
		-0.935084, -0.006011, -0.354374,
		-0.256467, 0.701580, 0.664838,
		41.645203, 40.555664, 30.131792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198441, 40.468430, 29.392105>,  <41.824730, 40.064556, 29.666405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198441, 40.468430, 29.392105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426365, 40.666321, 29.654573>,  <41.563118, 40.785057, 29.812054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426365, 40.666321, 29.654573>,  <41.198441, 40.468430, 29.392105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426365, 40.666321, 29.654573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248024, 0.657708, -0.711269,
		-0.783456, 0.568033, 0.252062,
		0.569808, 0.494731, 0.656171,
		41.597309, 40.814739, 29.851425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989311, 41.181507, 29.310534>,  <41.198441, 40.468430, 29.392105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989311, 41.181507, 29.310534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337959, 41.219223, 29.502947>,  <41.547146, 41.241852, 29.618395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337959, 41.219223, 29.502947>,  <40.989311, 41.181507, 29.310534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337959, 41.219223, 29.502947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190063, 0.839546, -0.508958,
		-0.451841, 0.535043, 0.713841,
		0.871617, 0.094293, 0.481033,
		41.599445, 41.247513, 29.647257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981239, 41.841679, 29.614491>,  <40.989311, 41.181507, 29.310534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981239, 41.841679, 29.614491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367279, 41.737328, 29.605326>,  <41.598904, 41.674717, 29.599827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367279, 41.737328, 29.605326>,  <40.981239, 41.841679, 29.614491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367279, 41.737328, 29.605326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207249, 0.814316, -0.542159,
		0.160093, 0.518490, 0.839963,
		0.965100, -0.260877, -0.022910,
		41.656811, 41.659065, 29.598454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280567, 42.380413, 29.491585>,  <40.981239, 41.841679, 29.614491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280567, 42.380413, 29.491585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574570, 42.130623, 29.385916>,  <41.750973, 41.980747, 29.322514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574570, 42.130623, 29.385916>,  <41.280567, 42.380413, 29.491585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574570, 42.130623, 29.385916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257862, 0.617764, -0.742882,
		0.627112, 0.477904, 0.615091,
		0.735008, -0.624479, -0.264175,
		41.795071, 41.943279, 29.306664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970928, 42.785751, 29.438700>,  <41.280567, 42.380413, 29.491585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970928, 42.785751, 29.438700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040897, 42.479134, 29.191538>,  <42.082878, 42.295162, 29.043242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040897, 42.479134, 29.191538>,  <41.970928, 42.785751, 29.438700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040897, 42.479134, 29.191538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270302, 0.640855, -0.718500,
		0.946752, -0.041341, 0.319298,
		0.174920, -0.766548, -0.617905,
		42.093372, 42.249168, 29.006166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492558, 43.024837, 29.057957>,  <41.970928, 42.785751, 29.438700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492558, 43.024837, 29.057957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349518, 42.712177, 28.853550>,  <42.263695, 42.524582, 28.730906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349518, 42.712177, 28.853550>,  <42.492558, 43.024837, 29.057957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349518, 42.712177, 28.853550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081849, 0.518864, -0.850930,
		0.930283, -0.346116, -0.121566,
		-0.357596, -0.781655, -0.511019,
		42.242237, 42.477680, 28.700245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932034, 42.800358, 28.475796>,  <42.492558, 43.024837, 29.057957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932034, 42.800358, 28.475796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551155, 42.724770, 28.379789>,  <42.322628, 42.679417, 28.322186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551155, 42.724770, 28.379789>,  <42.932034, 42.800358, 28.475796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551155, 42.724770, 28.379789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135662, 0.442387, -0.886504,
		0.273697, -0.876691, -0.395605,
		-0.952201, -0.188965, -0.240013,
		42.265495, 42.668079, 28.307785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.335228, 38.922672, 25.846739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.473667, 39.212395, 26.085264>,  <34.556732, 39.386230, 26.228380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.473667, 39.212395, 26.085264>,  <34.335228, 38.922672, 25.846739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473667, 39.212395, 26.085264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029995, -0.643812, 0.764595,
		0.937719, -0.246738, -0.244547,
		0.346098, 0.724310, 0.596314,
		34.577496, 39.429688, 26.264158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760540, 38.568905, 26.215130>,  <34.335228, 38.922672, 25.846739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760540, 38.568905, 26.215130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.720547, 38.896435, 26.441236>,  <34.696548, 39.092953, 26.576900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.720547, 38.896435, 26.441236>,  <34.760540, 38.568905, 26.215130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720547, 38.896435, 26.441236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127059, -0.552954, 0.823467,
		0.986843, 0.154159, -0.048751,
		-0.099988, 0.818826, 0.565266,
		34.690552, 39.142082, 26.610817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307358, 38.416943, 26.751167>,  <34.760540, 38.568905, 26.215130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307358, 38.416943, 26.751167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.056961, 38.689117, 26.903557>,  <34.906723, 38.852421, 26.994991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.056961, 38.689117, 26.903557>,  <35.307358, 38.416943, 26.751167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056961, 38.689117, 26.903557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163117, -0.363479, 0.917211,
		0.762577, 0.636312, 0.116546,
		-0.625995, 0.680433, 0.380974,
		34.869164, 38.893246, 27.017849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661278, 38.729359, 27.351986>,  <35.307358, 38.416943, 26.751167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661278, 38.729359, 27.351986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.267593, 38.779560, 27.401913>,  <35.031384, 38.809681, 27.431870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.267593, 38.779560, 27.401913>,  <35.661278, 38.729359, 27.351986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267593, 38.779560, 27.401913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056699, -0.444476, 0.893995,
		0.167680, 0.886955, 0.430342,
		-0.984210, 0.125505, 0.124819,
		34.972332, 38.817211, 27.439358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587891, 38.932949, 28.048508>,  <35.661278, 38.729359, 27.351986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587891, 38.932949, 28.048508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.232807, 38.782429, 27.942398>,  <35.019756, 38.692116, 27.878733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.232807, 38.782429, 27.942398>,  <35.587891, 38.932949, 28.048508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232807, 38.782429, 27.942398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057145, -0.481667, 0.874489,
		-0.456845, 0.791451, 0.406076,
		-0.887709, -0.376301, -0.265275,
		34.966496, 38.669537, 27.862816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140537, 38.971661, 28.615829>,  <35.587891, 38.932949, 28.048508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140537, 38.971661, 28.615829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.964134, 38.678627, 28.408432>,  <34.858292, 38.502808, 28.283995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.964134, 38.678627, 28.408432>,  <35.140537, 38.971661, 28.615829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964134, 38.678627, 28.408432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197622, -0.484263, 0.852312,
		-0.875476, 0.478341, 0.068789,
		-0.441007, -0.732584, -0.518491,
		34.831833, 38.458851, 28.252884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722679, 38.704575, 29.118662>,  <35.140537, 38.971661, 28.615829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722679, 38.704575, 29.118662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.696930, 38.432819, 28.826281>,  <34.681480, 38.269768, 28.650852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.696930, 38.432819, 28.826281>,  <34.722679, 38.704575, 29.118662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696930, 38.432819, 28.826281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109981, -0.723179, 0.681848,
		-0.991847, 0.124282, -0.028168,
		-0.064371, -0.679387, -0.730952,
		34.677620, 38.229004, 28.606995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176266, 38.308254, 29.333681>,  <34.722679, 38.704575, 29.118662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176266, 38.308254, 29.333681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.405045, 38.101269, 29.079090>,  <34.542313, 37.977077, 28.926336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.405045, 38.101269, 29.079090>,  <34.176266, 38.308254, 29.333681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405045, 38.101269, 29.079090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051820, -0.751577, 0.657607,
		-0.818652, -0.409100, -0.403047,
		0.571948, -0.517465, -0.636479,
		34.576630, 37.946030, 28.888147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838608, 37.706379, 29.198858>,  <34.176266, 38.308254, 29.333681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838608, 37.706379, 29.198858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.215519, 37.622715, 29.094275>,  <34.441666, 37.572517, 29.031525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.215519, 37.622715, 29.094275>,  <33.838608, 37.706379, 29.198858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215519, 37.622715, 29.094275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003096, -0.775405, 0.631457,
		-0.334810, -0.595819, -0.730001,
		0.942281, -0.209158, -0.261458,
		34.498203, 37.559967, 29.015837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823009, 37.065807, 29.118158>,  <33.838608, 37.706379, 29.198858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823009, 37.065807, 29.118158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.211178, 37.140797, 29.179010>,  <34.444077, 37.185791, 29.215521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.211178, 37.140797, 29.179010>,  <33.823009, 37.065807, 29.118158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211178, 37.140797, 29.179010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049908, -0.772276, 0.633324,
		0.236215, -0.606997, -0.758787,
		0.970418, 0.187471, 0.152129,
		34.502304, 37.197037, 29.224649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116375, 36.468666, 29.089157>,  <33.823009, 37.065807, 29.118158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116375, 36.468666, 29.089157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.354866, 36.704994, 29.306578>,  <34.497963, 36.846790, 29.437029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.354866, 36.704994, 29.306578>,  <34.116375, 36.468666, 29.089157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354866, 36.704994, 29.306578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087240, -0.720729, 0.687706,
		0.798059, -0.362612, -0.481263,
		0.596230, 0.590816, 0.543550,
		34.533733, 36.882240, 29.469643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543327, 35.976593, 29.368034>,  <34.116375, 36.468666, 29.089157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543327, 35.976593, 29.368034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.632324, 36.302616, 29.582016>,  <34.685722, 36.498230, 29.710405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.632324, 36.302616, 29.582016>,  <34.543327, 35.976593, 29.368034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632324, 36.302616, 29.582016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147950, -0.570578, 0.807806,
		0.963643, -0.100583, -0.247537,
		0.222491, 0.815060, 0.534953,
		34.699070, 36.547134, 29.742502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163250, 35.827591, 29.728424>,  <34.543327, 35.976593, 29.368034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163250, 35.827591, 29.728424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990055, 36.115364, 29.945658>,  <34.886139, 36.288029, 30.075998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.990055, 36.115364, 29.945658>,  <35.163250, 35.827591, 29.728424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990055, 36.115364, 29.945658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185315, -0.518572, 0.834710,
		0.882144, 0.462063, 0.091216,
		-0.432990, 0.719431, 0.543082,
		34.860157, 36.331192, 30.108582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635860, 36.152943, 30.257257>,  <35.163250, 35.827591, 29.728424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635860, 36.152943, 30.257257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.262260, 36.219727, 30.383598>,  <35.038101, 36.259796, 30.459402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.262260, 36.219727, 30.383598>,  <35.635860, 36.152943, 30.257257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262260, 36.219727, 30.383598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146292, -0.627831, 0.764479,
		0.325940, 0.760232, 0.561971,
		-0.934003, 0.166963, 0.315851,
		34.982059, 36.269814, 30.478354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395863, 36.245152, 30.329842>,  <35.635860, 36.152943, 30.257257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395863, 36.245152, 30.329842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694038, 35.998016, 30.229773>,  <36.872944, 35.849735, 30.169731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.694038, 35.998016, 30.229773>,  <36.395863, 36.245152, 30.329842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694038, 35.998016, 30.229773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162795, 0.532697, -0.830501,
		0.646384, 0.578365, 0.497677,
		0.745444, -0.617841, -0.250172,
		36.917671, 35.812664, 30.154720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054676, 36.613209, 30.217634>,  <36.395863, 36.245152, 30.329842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054676, 36.613209, 30.217634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.094604, 36.279060, 30.001417>,  <37.118561, 36.078571, 29.871687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.094604, 36.279060, 30.001417>,  <37.054676, 36.613209, 30.217634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094604, 36.279060, 30.001417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219075, 0.548376, -0.807025,
		0.970589, -0.037864, 0.237747,
		0.099818, -0.835374, -0.540543,
		37.124550, 36.028446, 29.839254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515640, 36.820164, 29.775043>,  <37.054676, 36.613209, 30.217634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515640, 36.820164, 29.775043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.372154, 36.483295, 29.614012>,  <37.286064, 36.281174, 29.517393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.372154, 36.483295, 29.614012>,  <37.515640, 36.820164, 29.775043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372154, 36.483295, 29.614012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160707, 0.369121, -0.915381,
		0.919510, -0.393055, 0.002935,
		-0.358712, -0.842174, -0.402578,
		37.264542, 36.230644, 29.493238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074600, 36.497086, 29.432863>,  <37.515640, 36.820164, 29.775043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074600, 36.497086, 29.432863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739910, 36.350445, 29.270142>,  <37.539097, 36.262463, 29.172508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739910, 36.350445, 29.270142>,  <38.074600, 36.497086, 29.432863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739910, 36.350445, 29.270142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274316, 0.362351, -0.890760,
		0.473958, -0.856917, -0.202626,
		-0.836729, -0.366599, -0.406805,
		37.488892, 36.240467, 29.148100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281647, 36.181671, 28.819473>,  <38.074600, 36.497086, 29.432863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281647, 36.181671, 28.819473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.896503, 36.282063, 28.779667>,  <37.665417, 36.342297, 28.755783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.896503, 36.282063, 28.779667>,  <38.281647, 36.181671, 28.819473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896503, 36.282063, 28.779667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188745, 0.362165, -0.912804,
		-0.193055, -0.897689, -0.396086,
		-0.962863, 0.250981, -0.099517,
		37.607643, 36.357357, 28.749811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102287, 35.994072, 28.246298>,  <38.281647, 36.181671, 28.819473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102287, 35.994072, 28.246298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801445, 36.252296, 28.299335>,  <37.620941, 36.407230, 28.331158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801445, 36.252296, 28.299335>,  <38.102287, 35.994072, 28.246298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801445, 36.252296, 28.299335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176607, 0.391260, -0.903175,
		-0.634937, -0.655867, -0.408281,
		-0.752107, 0.645565, 0.132594,
		37.575813, 36.445965, 28.339113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791496, 36.031681, 27.596668>,  <38.102287, 35.994072, 28.246298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791496, 36.031681, 27.596668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648396, 36.360790, 27.773329>,  <37.562534, 36.558258, 27.879326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.648396, 36.360790, 27.773329>,  <37.791496, 36.031681, 27.596668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648396, 36.360790, 27.773329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116352, 0.508542, -0.853140,
		-0.926541, -0.253823, -0.277662,
		-0.357749, 0.822775, 0.441652,
		37.541069, 36.607624, 27.905825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034470, 36.231010, 27.350346>,  <37.791496, 36.031681, 27.596668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034470, 36.231010, 27.350346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203636, 36.559189, 27.504234>,  <37.305138, 36.756096, 27.596567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203636, 36.559189, 27.504234>,  <37.034470, 36.231010, 27.350346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203636, 36.559189, 27.504234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285231, 0.523505, -0.802861,
		-0.860106, 0.229812, 0.455417,
		0.422920, 0.820445, 0.384720,
		37.330513, 36.805321, 27.619650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625854, 36.827080, 27.175745>,  <37.034470, 36.231010, 27.350346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625854, 36.827080, 27.175745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.950298, 37.043343, 27.265001>,  <37.144962, 37.173100, 27.318556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.950298, 37.043343, 27.265001>,  <36.625854, 36.827080, 27.175745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950298, 37.043343, 27.265001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064598, 0.461980, -0.884535,
		-0.581319, 0.703039, 0.409641,
		0.811108, 0.540659, 0.223143,
		37.193630, 37.205540, 27.331944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410858, 37.494442, 27.136786>,  <36.625854, 36.827080, 27.175745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410858, 37.494442, 27.136786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809795, 37.506485, 27.110243>,  <37.049156, 37.513710, 27.094318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809795, 37.506485, 27.110243>,  <36.410858, 37.494442, 27.136786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809795, 37.506485, 27.110243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069624, 0.662410, -0.745899,
		0.021495, 0.748536, 0.662746,
		0.997342, 0.030110, -0.066354,
		37.108997, 37.515518, 27.090336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629211, 38.262852, 27.044689>,  <36.410858, 37.494442, 27.136786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629211, 38.262852, 27.044689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.934166, 38.036652, 26.918846>,  <37.117138, 37.900932, 26.843340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.934166, 38.036652, 26.918846>,  <36.629211, 38.262852, 27.044689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934166, 38.036652, 26.918846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144317, 0.622494, -0.769203,
		0.630827, 0.541026, 0.556191,
		0.762384, -0.565502, -0.314607,
		37.162880, 37.867001, 26.824465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162243, 38.752529, 26.983425>,  <36.629211, 38.262852, 27.044689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162243, 38.752529, 26.983425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256191, 38.431007, 26.764801>,  <37.312561, 38.238094, 26.633627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256191, 38.431007, 26.764801>,  <37.162243, 38.752529, 26.983425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256191, 38.431007, 26.764801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057589, 0.572810, -0.817663,
		0.970319, 0.160570, 0.180828,
		0.234872, -0.803807, -0.546561,
		37.326653, 38.189865, 26.600832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706474, 39.077129, 26.479202>,  <37.162243, 38.752529, 26.983425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706474, 39.077129, 26.479202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605865, 38.732117, 26.303579>,  <37.545502, 38.525108, 26.198206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.605865, 38.732117, 26.303579>,  <37.706474, 39.077129, 26.479202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605865, 38.732117, 26.303579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033349, 0.445650, -0.894586,
		0.967278, -0.239646, -0.083323,
		-0.251517, -0.862534, -0.439059,
		37.530411, 38.473358, 26.171862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293568, 38.788601, 26.031912>,  <37.706474, 39.077129, 26.479202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293568, 38.788601, 26.031912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932369, 38.675903, 25.902164>,  <37.715649, 38.608284, 25.824316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932369, 38.675903, 25.902164>,  <38.293568, 38.788601, 26.031912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932369, 38.675903, 25.902164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147125, 0.506555, -0.849562,
		0.403668, -0.814876, -0.415968,
		-0.902998, -0.281742, -0.324368,
		37.661469, 38.591381, 25.804853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936039, 38.457127, 25.862631>,  <38.293568, 38.788601, 26.031912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936039, 38.457127, 25.862631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.295639, 38.631710, 25.877035>,  <39.511398, 38.736462, 25.885677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.295639, 38.631710, 25.877035>,  <38.936039, 38.457127, 25.862631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295639, 38.631710, 25.877035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300943, -0.675415, 0.673237,
		0.318165, -0.594404, -0.738550,
		0.899002, 0.436462, 0.036012,
		39.565338, 38.762650, 25.887838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415585, 37.916203, 25.810308>,  <38.936039, 38.457127, 25.862631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415585, 37.916203, 25.810308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.567764, 38.224232, 26.015146>,  <39.659073, 38.409050, 26.138048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.567764, 38.224232, 26.015146>,  <39.415585, 37.916203, 25.810308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567764, 38.224232, 26.015146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225668, -0.614299, 0.756116,
		0.896846, -0.172100, -0.407491,
		0.380449, 0.770077, 0.512094,
		39.681900, 38.455254, 26.168774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053982, 37.732349, 25.909288>,  <39.415585, 37.916203, 25.810308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053982, 37.732349, 25.909288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.958771, 37.997185, 26.193539>,  <39.901646, 38.156086, 26.364088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.958771, 37.997185, 26.193539>,  <40.053982, 37.732349, 25.909288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958771, 37.997185, 26.193539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437634, -0.580060, 0.687028,
		0.867075, 0.474525, -0.151680,
		-0.238028, 0.662085, 0.710624,
		39.887363, 38.195808, 26.406725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634785, 37.841621, 26.307650>,  <40.053982, 37.732349, 25.909288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634785, 37.841621, 26.307650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307941, 37.931793, 26.519880>,  <40.111835, 37.985897, 26.647219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.307941, 37.931793, 26.519880>,  <40.634785, 37.841621, 26.307650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307941, 37.931793, 26.519880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366036, -0.508153, 0.779614,
		0.445360, 0.831242, 0.332703,
		-0.817112, 0.225428, 0.530575,
		40.062809, 37.999420, 26.679052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885120, 38.015820, 26.960812>,  <40.634785, 37.841621, 26.307650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885120, 38.015820, 26.960812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.495445, 37.996964, 27.049124>,  <40.261642, 37.985649, 27.102112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.495445, 37.996964, 27.049124>,  <40.885120, 38.015820, 26.960812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495445, 37.996964, 27.049124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225617, -0.237822, 0.944742,
		0.007970, 0.970164, 0.242318,
		-0.974183, -0.047142, 0.220781,
		40.203190, 37.982822, 27.115358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814407, 38.425636, 27.465897>,  <40.885120, 38.015820, 26.960812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814407, 38.425636, 27.465897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.510902, 38.165089, 27.466127>,  <40.328800, 38.008759, 27.466265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.510902, 38.165089, 27.466127>,  <40.814407, 38.425636, 27.465897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510902, 38.165089, 27.466127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169765, -0.196899, 0.965614,
		-0.628860, 0.732766, 0.259979,
		-0.758759, -0.651371, 0.000576,
		40.283276, 37.969677, 27.466301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327793, 38.576466, 28.049330>,  <40.814407, 38.425636, 27.465897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327793, 38.576466, 28.049330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.296963, 38.184956, 27.973383>,  <40.278465, 37.950050, 27.927814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.296963, 38.184956, 27.973383>,  <40.327793, 38.576466, 28.049330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296963, 38.184956, 27.973383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081256, -0.195966, 0.977238,
		-0.993708, 0.059897, 0.094636,
		-0.077079, -0.978780, -0.189866,
		40.273838, 37.891323, 27.916424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778984, 38.423893, 28.397573>,  <40.327793, 38.576466, 28.049330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778984, 38.423893, 28.397573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.965252, 38.081459, 28.307886>,  <40.077011, 37.875999, 28.254074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.965252, 38.081459, 28.307886>,  <39.778984, 38.423893, 28.397573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965252, 38.081459, 28.307886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070789, -0.288585, 0.954834,
		-0.882125, -0.428762, -0.194986,
		0.465666, -0.856085, -0.224216,
		40.104950, 37.824635, 28.240622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467606, 38.077335, 29.010677>,  <39.778984, 38.423893, 28.397573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467606, 38.077335, 29.010677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722359, 37.818264, 28.843397>,  <39.875210, 37.662823, 28.743029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722359, 37.818264, 28.843397>,  <39.467606, 38.077335, 29.010677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722359, 37.818264, 28.843397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092211, -0.474553, 0.875383,
		-0.765427, -0.596079, -0.242511,
		0.636882, -0.647680, -0.418201,
		39.913422, 37.623959, 28.717937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172920, 37.445210, 28.933289>,  <39.467606, 38.077335, 29.010677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172920, 37.445210, 28.933289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.567974, 37.391891, 28.966309>,  <39.805004, 37.359901, 28.986120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.567974, 37.391891, 28.966309>,  <39.172920, 37.445210, 28.933289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567974, 37.391891, 28.966309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120231, -0.305950, 0.944425,
		-0.100633, -0.942670, -0.318192,
		0.987632, -0.133297, 0.082549,
		39.864265, 37.351902, 28.991074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223660, 36.698761, 29.157839>,  <39.172920, 37.445210, 28.933289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223660, 36.698761, 29.157839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.557796, 36.896122, 29.254803>,  <39.758278, 37.014538, 29.312981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.557796, 36.896122, 29.254803>,  <39.223660, 36.698761, 29.157839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557796, 36.896122, 29.254803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005732, -0.433116, 0.901320,
		0.549704, -0.754298, -0.358971,
		0.835340, 0.493401, 0.242409,
		39.808399, 37.044144, 29.327526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584347, 36.267170, 29.501514>,  <39.223660, 36.698761, 29.157839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584347, 36.267170, 29.501514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.741039, 36.608730, 29.638573>,  <39.835056, 36.813667, 29.720808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.741039, 36.608730, 29.638573>,  <39.584347, 36.267170, 29.501514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741039, 36.608730, 29.638573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080749, -0.339063, 0.937292,
		0.916528, -0.394838, -0.063872,
		0.391735, 0.853896, 0.342644,
		39.858559, 36.864899, 29.741365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148476, 36.006733, 29.854559>,  <39.584347, 36.267170, 29.501514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148476, 36.006733, 29.854559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030678, 36.365780, 29.985748>,  <39.959999, 36.581207, 30.064463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.030678, 36.365780, 29.985748>,  <40.148476, 36.006733, 29.854559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030678, 36.365780, 29.985748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074452, -0.320600, 0.944284,
		0.952750, 0.302501, 0.027584,
		-0.294490, 0.897613, 0.327973,
		39.942329, 36.635063, 30.084141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589588, 36.192188, 30.356163>,  <40.148476, 36.006733, 29.854559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589588, 36.192188, 30.356163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.264484, 36.416721, 30.418547>,  <40.069420, 36.551441, 30.455976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.264484, 36.416721, 30.418547>,  <40.589588, 36.192188, 30.356163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264484, 36.416721, 30.418547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090719, -0.142494, 0.985629,
		0.575488, 0.815232, 0.064890,
		-0.812763, 0.561331, 0.155961,
		40.020657, 36.585121, 30.465334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.382572, 42.558125, 27.375074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.023720, 42.426868, 27.493387>,  <42.808411, 42.348114, 27.564375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.023720, 42.426868, 27.493387>,  <43.382572, 42.558125, 27.375074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023720, 42.426868, 27.493387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401062, 0.324237, -0.856749,
		0.185227, -0.887241, -0.422486,
		-0.897128, -0.328136, 0.295782,
		42.754581, 42.328426, 27.582121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193348, 42.113018, 26.806396>,  <43.382572, 42.558125, 27.375074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193348, 42.113018, 26.806396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.948318, 42.312687, 27.051537>,  <42.801300, 42.432487, 27.198620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.948318, 42.312687, 27.051537>,  <43.193348, 42.113018, 26.806396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948318, 42.312687, 27.051537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356573, 0.517454, -0.777880,
		-0.705417, -0.695032, -0.138986,
		-0.612570, 0.499171, 0.612850,
		42.764545, 42.462437, 27.235392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527534, 42.142990, 26.610367>,  <43.193348, 42.113018, 26.806396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527534, 42.142990, 26.610367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.556458, 42.465023, 26.845860>,  <42.573811, 42.658245, 26.987156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.556458, 42.465023, 26.845860>,  <42.527534, 42.142990, 26.610367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556458, 42.465023, 26.845860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334883, 0.575609, -0.746008,
		-0.939481, -0.143214, 0.311231,
		0.072309, 0.805086, 0.588733,
		42.578152, 42.706551, 27.022480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880707, 42.549904, 26.548061>,  <42.527534, 42.142990, 26.610367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880707, 42.549904, 26.548061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.131809, 42.828960, 26.686172>,  <42.282471, 42.996395, 26.769039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.131809, 42.828960, 26.686172>,  <41.880707, 42.549904, 26.548061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131809, 42.828960, 26.686172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341894, 0.645605, -0.682864,
		-0.699307, 0.310624, 0.643803,
		0.627756, 0.697644, 0.345276,
		42.320137, 43.038254, 26.789755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.450996, 43.205334, 26.497072>,  <41.880707, 42.549904, 26.548061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.450996, 43.205334, 26.497072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.826069, 43.332840, 26.552423>,  <42.051113, 43.409344, 26.585634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.826069, 43.332840, 26.552423>,  <41.450996, 43.205334, 26.497072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826069, 43.332840, 26.552423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206560, 0.831493, -0.515706,
		-0.279449, 0.454983, 0.845516,
		0.937679, 0.318764, 0.138379,
		42.107372, 43.428471, 26.593937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333447, 43.859089, 26.740805>,  <41.450996, 43.205334, 26.497072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333447, 43.859089, 26.740805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.690578, 43.809250, 26.567680>,  <41.904858, 43.779346, 26.463806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.690578, 43.809250, 26.567680>,  <41.333447, 43.859089, 26.740805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690578, 43.809250, 26.567680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192185, 0.763697, -0.616305,
		0.407326, 0.633437, 0.657908,
		0.892833, -0.124597, -0.432811,
		41.958427, 43.771870, 26.437838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539257, 44.424541, 26.713308>,  <41.333447, 43.859089, 26.740805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539257, 44.424541, 26.713308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.767559, 44.233730, 26.445972>,  <41.904541, 44.119244, 26.285570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.767559, 44.233730, 26.445972>,  <41.539257, 44.424541, 26.713308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767559, 44.233730, 26.445972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310532, 0.628089, -0.713494,
		0.760136, 0.614772, 0.210352,
		0.570756, -0.477032, -0.668340,
		41.938786, 44.090622, 26.245470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889050, 44.903946, 26.439987>,  <41.539257, 44.424541, 26.713308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889050, 44.903946, 26.439987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.890736, 44.604744, 26.174517>,  <41.891747, 44.425220, 26.015234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.890736, 44.604744, 26.174517>,  <41.889050, 44.903946, 26.439987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890736, 44.604744, 26.174517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478386, 0.581300, -0.658207,
		0.878140, 0.320269, -0.355385,
		0.004218, -0.748009, -0.663675,
		41.892002, 44.380341, 25.975414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140694, 45.195934, 25.834696>,  <41.889050, 44.903946, 26.439987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140694, 45.195934, 25.834696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.956417, 44.868111, 25.698408>,  <41.845852, 44.671417, 25.616636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.956417, 44.868111, 25.698408>,  <42.140694, 45.195934, 25.834696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956417, 44.868111, 25.698408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408536, 0.536599, -0.738350,
		0.787951, -0.200952, -0.582024,
		-0.460686, -0.819561, -0.340717,
		41.818211, 44.622242, 25.596193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249058, 45.205055, 25.143530>,  <42.140694, 45.195934, 25.834696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249058, 45.205055, 25.143530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.951965, 44.939617, 25.179289>,  <41.773708, 44.780354, 25.200745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.951965, 44.939617, 25.179289>,  <42.249058, 45.205055, 25.143530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951965, 44.939617, 25.179289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548991, 0.527074, -0.648692,
		0.383345, -0.530887, -0.755781,
		-0.742735, -0.663591, 0.089401,
		41.729145, 44.740540, 25.206108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034538, 45.010002, 24.434961>,  <42.249058, 45.205055, 25.143530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034538, 45.010002, 24.434961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.729797, 44.908710, 24.673441>,  <41.546951, 44.847935, 24.816528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.729797, 44.908710, 24.673441>,  <42.034538, 45.010002, 24.434961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729797, 44.908710, 24.673441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639968, 0.436495, -0.632387,
		-0.100099, -0.863335, -0.494604,
		-0.761854, -0.253229, 0.596199,
		41.501240, 44.832741, 24.852301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653214, 44.581303, 24.086939>,  <42.034538, 45.010002, 24.434961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653214, 44.581303, 24.086939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.404228, 44.727539, 24.363745>,  <41.254837, 44.815281, 24.529827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.404228, 44.727539, 24.363745>,  <41.653214, 44.581303, 24.086939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404228, 44.727539, 24.363745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392409, 0.619240, -0.680115,
		-0.677164, -0.694901, -0.241995,
		-0.622466, 0.365588, 0.692012,
		41.217487, 44.837215, 24.571348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987953, 44.453056, 23.817823>,  <41.653214, 44.581303, 24.086939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987953, 44.453056, 23.817823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.008930, 44.774803, 24.054550>,  <41.021515, 44.967850, 24.196587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.008930, 44.774803, 24.054550>,  <40.987953, 44.453056, 23.817823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008930, 44.774803, 24.054550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396485, 0.560690, -0.726930,
		-0.916543, -0.196527, 0.348320,
		0.052439, 0.804366, 0.591816,
		41.024662, 45.016113, 24.232096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039154, 44.005344, 23.206875>,  <40.987953, 44.453056, 23.817823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039154, 44.005344, 23.206875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.682724, 44.007679, 23.025347>,  <40.468864, 44.009079, 22.916430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.682724, 44.007679, 23.025347>,  <41.039154, 44.005344, 23.206875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682724, 44.007679, 23.025347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233313, -0.863573, 0.446998,
		-0.389298, 0.504191, 0.770869,
		-0.891074, 0.005838, -0.453821,
		40.415401, 44.009430, 22.889200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480522, 43.918324, 23.711037>,  <41.039154, 44.005344, 23.206875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480522, 43.918324, 23.711037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.392399, 43.763851, 23.352745>,  <40.339523, 43.671169, 23.137770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.392399, 43.763851, 23.352745>,  <40.480522, 43.918324, 23.711037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392399, 43.763851, 23.352745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204639, -0.879557, 0.429537,
		-0.953722, 0.277932, 0.114750,
		-0.220312, -0.386176, -0.895729,
		40.326305, 43.647999, 23.084026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864101, 43.621216, 23.823881>,  <40.480522, 43.918324, 23.711037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864101, 43.621216, 23.823881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.034657, 43.469814, 23.495266>,  <40.136990, 43.378971, 23.298098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.034657, 43.469814, 23.495266>,  <39.864101, 43.621216, 23.823881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034657, 43.469814, 23.495266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047102, -0.916297, 0.397721,
		-0.903309, -0.130891, -0.408534,
		0.426396, -0.378508, -0.821535,
		40.162575, 43.356262, 23.248804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463711, 42.971779, 23.703720>,  <39.864101, 43.621216, 23.823881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463711, 42.971779, 23.703720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.780128, 42.912319, 23.466352>,  <39.969978, 42.876644, 23.323933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.780128, 42.912319, 23.466352>,  <39.463711, 42.971779, 23.703720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780128, 42.912319, 23.466352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024318, -0.976904, 0.212290,
		-0.611269, -0.153501, -0.776394,
		0.791049, -0.148647, -0.593418,
		40.017445, 42.867725, 23.288326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249767, 42.451958, 23.268303>,  <39.463711, 42.971779, 23.703720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249767, 42.451958, 23.268303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.648853, 42.471424, 23.287027>,  <39.888306, 42.483105, 23.298262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.648853, 42.471424, 23.287027>,  <39.249767, 42.451958, 23.268303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648853, 42.471424, 23.287027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026217, -0.918028, 0.395649,
		0.062230, -0.393519, -0.917208,
		0.997717, 0.048667, 0.046812,
		39.948170, 42.486023, 23.301071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497833, 41.881405, 22.970198>,  <39.249767, 42.451958, 23.268303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497833, 41.881405, 22.970198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.764278, 41.994499, 23.246271>,  <39.924145, 42.062355, 23.411915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.764278, 41.994499, 23.246271>,  <39.497833, 41.881405, 22.970198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764278, 41.994499, 23.246271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120280, -0.872531, 0.473520,
		0.736088, -0.398434, -0.547198,
		0.666114, 0.282736, 0.690183,
		39.964111, 42.079319, 23.453325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819134, 41.292774, 23.054588>,  <39.497833, 41.881405, 22.970198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819134, 41.292774, 23.054588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.936920, 41.506664, 23.371412>,  <40.007591, 41.634998, 23.561506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.936920, 41.506664, 23.371412>,  <39.819134, 41.292774, 23.054588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.936920, 41.506664, 23.371412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118725, -0.801919, 0.585517,
		0.948258, -0.266454, -0.172655,
		0.294468, 0.534722, 0.792061,
		40.025261, 41.667080, 23.609030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394016, 40.920925, 23.348011>,  <39.819134, 41.292774, 23.054588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394016, 40.920925, 23.348011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.266781, 41.162823, 23.640068>,  <40.190441, 41.307961, 23.815302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.266781, 41.162823, 23.640068>,  <40.394016, 40.920925, 23.348011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266781, 41.162823, 23.640068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036564, -0.761742, 0.646848,
		0.947357, 0.232450, 0.220187,
		-0.318086, 0.604745, 0.730140,
		40.171356, 41.344246, 23.859110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814919, 40.841000, 23.967751>,  <40.394016, 40.920925, 23.348011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814919, 40.841000, 23.967751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.475716, 40.999928, 24.108046>,  <40.272194, 41.095284, 24.192223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.475716, 40.999928, 24.108046>,  <40.814919, 40.841000, 23.967751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475716, 40.999928, 24.108046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002418, -0.658882, 0.752243,
		0.529977, 0.638756, 0.557777,
		-0.848009, 0.397323, 0.350736,
		40.221313, 41.119125, 24.213266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951870, 40.839748, 24.695171>,  <40.814919, 40.841000, 23.967751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951870, 40.839748, 24.695171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.559322, 40.876991, 24.627947>,  <40.323795, 40.899338, 24.587612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.559322, 40.876991, 24.627947>,  <40.951870, 40.839748, 24.695171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559322, 40.876991, 24.627947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186063, -0.678666, 0.710488,
		-0.047905, 0.728521, 0.683346,
		-0.981369, 0.093109, -0.168062,
		40.264912, 40.904922, 24.577528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602371, 40.858868, 25.378254>,  <40.951870, 40.839748, 24.695171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602371, 40.858868, 25.378254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.273586, 40.768677, 25.169052>,  <40.076317, 40.714561, 25.043531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.273586, 40.768677, 25.169052>,  <40.602371, 40.858868, 25.378254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273586, 40.768677, 25.169052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245632, -0.688160, 0.682716,
		-0.513849, 0.689634, 0.510259,
		-0.821964, -0.225477, -0.523006,
		40.026997, 40.701035, 25.012150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930859, 40.821957, 25.895939>,  <40.602371, 40.858868, 25.378254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930859, 40.821957, 25.895939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.851810, 40.581570, 25.586157>,  <39.804382, 40.437336, 25.400288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.851810, 40.581570, 25.586157>,  <39.930859, 40.821957, 25.895939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851810, 40.581570, 25.586157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162191, -0.759101, 0.630444,
		-0.966768, 0.250198, 0.052541,
		-0.197620, -0.600972, -0.774454,
		39.792526, 40.401279, 25.353821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317326, 40.280121, 26.108969>,  <39.930859, 40.821957, 25.895939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317326, 40.280121, 26.108969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.493942, 40.133774, 25.781265>,  <39.599911, 40.045967, 25.584644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.493942, 40.133774, 25.781265>,  <39.317326, 40.280121, 26.108969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493942, 40.133774, 25.781265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076939, -0.925162, 0.371693,
		-0.893935, -0.101085, -0.436648,
		0.441543, -0.365865, -0.819258,
		39.626404, 40.024014, 25.535488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948242, 39.695545, 25.991558>,  <39.317326, 40.280121, 26.108969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948242, 39.695545, 25.991558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.287445, 39.629536, 25.790102>,  <39.490967, 39.589931, 25.669228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.287445, 39.629536, 25.790102>,  <38.948242, 39.695545, 25.991558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287445, 39.629536, 25.790102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012236, -0.943940, 0.329891,
		-0.529847, -0.285912, -0.798446,
		0.848005, -0.165022, -0.503642,
		39.541847, 39.580029, 25.639009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873695, 39.116989, 25.618889>,  <38.948242, 39.695545, 25.991558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873695, 39.116989, 25.618889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.271412, 39.140869, 25.654255>,  <39.510040, 39.155197, 25.675474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.271412, 39.140869, 25.654255>,  <38.873695, 39.116989, 25.618889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271412, 39.140869, 25.654255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021461, -0.923746, 0.382403,
		0.104505, -0.378323, -0.919756,
		0.994293, 0.059702, 0.088417,
		39.569698, 39.158779, 25.680780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423363, 38.545525, 25.362854>,  <38.873695, 39.116989, 25.618889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423363, 38.545525, 25.362854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033623, 38.630646, 25.392143>,  <37.799778, 38.681717, 25.409718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.033623, 38.630646, 25.392143>,  <38.423363, 38.545525, 25.362854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033623, 38.630646, 25.392143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015726, 0.388957, -0.921122,
		-0.224495, -0.896342, -0.382326,
		-0.974349, 0.212800, 0.073223,
		37.741318, 38.694485, 25.414110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210407, 38.536896, 24.639256>,  <38.423363, 38.545525, 25.362854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210407, 38.536896, 24.639256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912983, 38.714600, 24.839155>,  <37.734528, 38.821220, 24.959095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.912983, 38.714600, 24.839155>,  <38.210407, 38.536896, 24.639256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912983, 38.714600, 24.839155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217144, 0.546448, -0.808853,
		-0.632429, -0.709949, -0.309849,
		-0.743561, 0.444260, 0.499751,
		37.689915, 38.847878, 24.989080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749870, 38.661701, 24.111784>,  <38.210407, 38.536896, 24.639256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749870, 38.661701, 24.111784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601295, 38.891487, 24.403545>,  <37.512150, 39.029358, 24.578602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.601295, 38.891487, 24.403545>,  <37.749870, 38.661701, 24.111784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601295, 38.891487, 24.403545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317798, 0.659491, -0.681232,
		-0.872376, -0.484836, -0.062396,
		-0.371435, 0.574461, 0.729404,
		37.489864, 39.063824, 24.622366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042370, 38.954151, 23.873131>,  <37.749870, 38.661701, 24.111784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042370, 38.954151, 23.873131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.199909, 39.207417, 24.139658>,  <37.294434, 39.359375, 24.299576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.199909, 39.207417, 24.139658>,  <37.042370, 38.954151, 23.873131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199909, 39.207417, 24.139658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203457, 0.766982, -0.608559,
		-0.896375, 0.104113, 0.430898,
		0.393850, 0.633166, 0.666320,
		37.318066, 39.397366, 24.339554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579227, 39.468948, 23.837614>,  <37.042370, 38.954151, 23.873131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579227, 39.468948, 23.837614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887535, 39.665657, 23.999640>,  <37.072517, 39.783684, 24.096855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.887535, 39.665657, 23.999640>,  <36.579227, 39.468948, 23.837614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887535, 39.665657, 23.999640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056401, 0.685944, -0.725465,
		-0.634617, 0.536317, 0.556439,
		0.770766, 0.491776, 0.405063,
		37.118763, 39.813190, 24.121159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400257, 40.213814, 23.917801>,  <36.579227, 39.468948, 23.837614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400257, 40.213814, 23.917801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.799011, 40.182625, 23.922659>,  <37.038261, 40.163910, 23.925573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.799011, 40.182625, 23.922659>,  <36.400257, 40.213814, 23.917801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799011, 40.182625, 23.922659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060642, 0.658460, -0.750169,
		0.050498, 0.748566, 0.661135,
		0.996881, -0.077974, 0.012144,
		37.098076, 40.159233, 23.926302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518017, 40.834919, 24.066853>,  <36.400257, 40.213814, 23.917801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518017, 40.834919, 24.066853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851753, 40.701649, 23.891186>,  <37.051994, 40.621685, 23.785786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851753, 40.701649, 23.891186>,  <36.518017, 40.834919, 24.066853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851753, 40.701649, 23.891186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146041, 0.901809, -0.406710,
		0.531549, 0.275199, 0.801075,
		0.834343, -0.333176, -0.439165,
		37.102055, 40.601696, 23.759436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230347, 41.146374, 24.597765>,  <36.518017, 40.834919, 24.066853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230347, 41.146374, 24.597765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.896816, 41.363441, 24.638252>,  <35.696697, 41.493683, 24.662544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.896816, 41.363441, 24.638252>,  <36.230347, 41.146374, 24.597765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896816, 41.363441, 24.638252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415777, -0.737985, 0.531515,
		0.363137, 0.401105, 0.840980,
		-0.833823, 0.542673, 0.101219,
		35.646667, 41.526245, 24.668617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128319, 41.316864, 25.296391>,  <36.230347, 41.146374, 24.597765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128319, 41.316864, 25.296391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.783188, 41.305298, 25.094524>,  <35.576107, 41.298359, 24.973404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.783188, 41.305298, 25.094524>,  <36.128319, 41.316864, 25.296391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783188, 41.305298, 25.094524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392397, -0.591065, 0.704746,
		-0.318668, 0.806106, 0.498643,
		-0.862830, -0.028914, -0.504667,
		35.524338, 41.296623, 24.943125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616791, 41.506584, 25.802731>,  <36.128319, 41.316864, 25.296391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616791, 41.506584, 25.802731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413017, 41.331432, 25.506422>,  <35.290752, 41.226341, 25.328636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413017, 41.331432, 25.506422>,  <35.616791, 41.506584, 25.802731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413017, 41.331432, 25.506422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591279, -0.447319, 0.671040,
		-0.625197, 0.779850, -0.031032,
		-0.509430, -0.437881, -0.740771,
		35.260189, 41.200069, 25.284191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926434, 41.635918, 26.010355>,  <35.616791, 41.506584, 25.802731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926434, 41.635918, 26.010355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.903553, 41.323669, 25.761402>,  <34.889824, 41.136322, 25.612030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.903553, 41.323669, 25.761402>,  <34.926434, 41.635918, 26.010355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903553, 41.323669, 25.761402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430222, -0.543279, 0.720942,
		-0.900909, 0.308998, -0.304766,
		-0.057197, -0.780620, -0.622383,
		34.886395, 41.089485, 25.574688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242992, 41.321590, 25.987675>,  <34.926434, 41.635918, 26.010355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242992, 41.321590, 25.987675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.472107, 41.030956, 25.835892>,  <34.609573, 40.856575, 25.744822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.472107, 41.030956, 25.835892>,  <34.242992, 41.321590, 25.987675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472107, 41.030956, 25.835892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509345, -0.678186, 0.529746,
		-0.642249, -0.110157, -0.758540,
		0.572786, -0.726587, -0.379456,
		34.643944, 40.812981, 25.722054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831429, 40.726601, 25.858154>,  <34.242992, 41.321590, 25.987675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831429, 40.726601, 25.858154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.201729, 40.575878, 25.870766>,  <34.423908, 40.485443, 25.878332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.201729, 40.575878, 25.870766>,  <33.831429, 40.726601, 25.858154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201729, 40.575878, 25.870766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351669, -0.827340, 0.437991,
		-0.138952, -0.416561, -0.898426,
		0.925754, -0.376809, 0.031531,
		34.479454, 40.462837, 25.880224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743202, 40.040394, 25.822153>,  <33.831429, 40.726601, 25.858154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.743202, 40.040394, 25.822153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116123, 40.079906, 25.961321>,  <34.339878, 40.103615, 26.044821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.116123, 40.079906, 25.961321>,  <33.743202, 40.040394, 25.822153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116123, 40.079906, 25.961321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116621, -0.828483, 0.547737,
		0.342352, -0.551233, -0.760879,
		0.932306, 0.098785, 0.347918,
		34.395817, 40.109543, 26.065697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.708344, 47.155983, 25.258068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.013935, 46.903076, 25.309565>,  <39.197292, 46.751331, 25.340462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.013935, 46.903076, 25.309565>,  <38.708344, 47.155983, 25.258068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013935, 46.903076, 25.309565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543343, -0.522791, 0.656862,
		-0.348005, -0.571782, -0.742939,
		0.763983, -0.632262, 0.128740,
		39.243130, 46.713398, 25.348186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488453, 46.470753, 25.312675>,  <38.708344, 47.155983, 25.258068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488453, 46.470753, 25.312675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.840416, 46.469765, 25.502733>,  <39.051594, 46.469170, 25.616768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.840416, 46.469765, 25.502733>,  <38.488453, 46.470753, 25.312675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840416, 46.469765, 25.502733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422909, -0.459923, 0.780781,
		0.216600, -0.887955, -0.405734,
		0.879905, -0.002472, 0.475143,
		39.104389, 46.469025, 25.645277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691513, 45.710243, 25.413893>,  <38.488453, 46.470753, 25.312675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691513, 45.710243, 25.413893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868015, 45.924313, 25.702026>,  <38.973915, 46.052753, 25.874907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.868015, 45.924313, 25.702026>,  <38.691513, 45.710243, 25.413893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868015, 45.924313, 25.702026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263822, -0.689870, 0.674150,
		0.857724, -0.487513, -0.163219,
		0.441257, 0.535174, 0.720335,
		39.000393, 46.084866, 25.918127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851776, 45.252823, 25.989239>,  <38.691513, 45.710243, 25.413893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851776, 45.252823, 25.989239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883339, 45.597427, 26.189869>,  <38.902279, 45.804188, 26.310247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.883339, 45.597427, 26.189869>,  <38.851776, 45.252823, 25.989239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883339, 45.597427, 26.189869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163441, -0.485154, 0.859018,
		0.983392, -0.149762, 0.102523,
		0.078909, 0.861508, 0.501574,
		38.907013, 45.855881, 26.340342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051460, 45.035175, 26.640142>,  <38.851776, 45.252823, 25.989239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051460, 45.035175, 26.640142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.955826, 45.418121, 26.705009>,  <38.898445, 45.647888, 26.743929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.955826, 45.418121, 26.705009>,  <39.051460, 45.035175, 26.640142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955826, 45.418121, 26.705009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276577, -0.227235, 0.933739,
		0.930775, 0.178393, 0.319113,
		-0.239086, 0.957361, 0.162165,
		38.884098, 45.705330, 26.753658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303375, 45.156281, 27.249205>,  <39.051460, 45.035175, 26.640142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303375, 45.156281, 27.249205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.017700, 45.433796, 27.212120>,  <38.846294, 45.600307, 27.189869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.017700, 45.433796, 27.212120>,  <39.303375, 45.156281, 27.249205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017700, 45.433796, 27.212120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301623, -0.185517, 0.935204,
		0.631636, 0.695872, 0.341756,
		-0.714184, 0.693791, -0.092712,
		38.803444, 45.641933, 27.184307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262123, 45.580318, 27.923954>,  <39.303375, 45.156281, 27.249205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262123, 45.580318, 27.923954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.918064, 45.583569, 27.719961>,  <38.711628, 45.585518, 27.597567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.918064, 45.583569, 27.719961>,  <39.262123, 45.580318, 27.923954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918064, 45.583569, 27.719961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479442, -0.354003, 0.803005,
		-0.174014, 0.935209, 0.308389,
		-0.860148, 0.008121, -0.509980,
		38.660019, 45.586006, 27.566967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731968, 45.788570, 28.427729>,  <39.262123, 45.580318, 27.923954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731968, 45.788570, 28.427729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493855, 45.627209, 28.149765>,  <38.350986, 45.530392, 27.982986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493855, 45.627209, 28.149765>,  <38.731968, 45.788570, 28.427729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493855, 45.627209, 28.149765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433177, -0.567281, 0.700392,
		-0.676751, 0.717952, 0.162948,
		-0.595286, -0.403406, -0.694909,
		38.315269, 45.506187, 27.941292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104954, 45.717861, 28.738802>,  <38.731968, 45.788570, 28.427729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104954, 45.717861, 28.738802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.079338, 45.463768, 28.430939>,  <38.063969, 45.311310, 28.246220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.079338, 45.463768, 28.430939>,  <38.104954, 45.717861, 28.738802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079338, 45.463768, 28.430939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311157, -0.720085, 0.620209,
		-0.948198, 0.279203, -0.151544,
		-0.064040, -0.635235, -0.769659,
		38.060127, 45.273197, 28.200041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366905, 45.337132, 28.768171>,  <38.104954, 45.717861, 28.738802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366905, 45.337132, 28.768171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601742, 45.103329, 28.544146>,  <37.742641, 44.963047, 28.409729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.601742, 45.103329, 28.544146>,  <37.366905, 45.337132, 28.768171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601742, 45.103329, 28.544146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165385, -0.763859, 0.623833,
		-0.792454, -0.273614, -0.545117,
		0.587082, -0.584513, -0.560071,
		37.777870, 44.927975, 28.376125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988487, 44.758846, 28.586926>,  <37.366905, 45.337132, 28.768171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988487, 44.758846, 28.586926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.361526, 44.622814, 28.538567>,  <37.585350, 44.541195, 28.509552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.361526, 44.622814, 28.538567>,  <36.988487, 44.758846, 28.586926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361526, 44.622814, 28.538567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174498, -0.718047, 0.673765,
		-0.315940, -0.607253, -0.728989,
		0.932595, -0.340076, -0.120895,
		37.641304, 44.520790, 28.502298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981438, 44.034958, 28.569221>,  <36.988487, 44.758846, 28.586926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981438, 44.034958, 28.569221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.356358, 44.116997, 28.681942>,  <37.581310, 44.166218, 28.749575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.356358, 44.116997, 28.681942>,  <36.981438, 44.034958, 28.569221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356358, 44.116997, 28.681942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116238, -0.578295, 0.807505,
		0.328577, -0.789628, -0.518195,
		0.937297, 0.205093, 0.281799,
		37.637547, 44.178524, 28.766481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970562, 43.531250, 27.925476>,  <36.981438, 44.034958, 28.569221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970562, 43.531250, 27.925476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618504, 43.398773, 27.789450>,  <36.407269, 43.319286, 27.707834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.618504, 43.398773, 27.789450>,  <36.970562, 43.531250, 27.925476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618504, 43.398773, 27.789450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058463, 0.635308, -0.770043,
		0.471079, -0.697636, -0.539804,
		-0.880152, -0.331192, -0.340066,
		36.354458, 43.299416, 27.687429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029037, 43.554630, 27.120237>,  <36.970562, 43.531250, 27.925476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029037, 43.554630, 27.120237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.647293, 43.542694, 27.239101>,  <36.418247, 43.535530, 27.310419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.647293, 43.542694, 27.239101>,  <37.029037, 43.554630, 27.120237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647293, 43.542694, 27.239101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248233, 0.632500, -0.733706,
		-0.166057, -0.773985, -0.611042,
		-0.954361, -0.029844, 0.297159,
		36.360985, 43.533741, 27.328249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661682, 43.677509, 26.517227>,  <37.029037, 43.554630, 27.120237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661682, 43.677509, 26.517227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.364410, 43.756870, 26.772829>,  <36.186047, 43.804485, 26.926189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.364410, 43.756870, 26.772829>,  <36.661682, 43.677509, 26.517227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364410, 43.756870, 26.772829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422522, 0.601357, -0.678119,
		-0.518810, -0.773955, -0.363084,
		-0.743176, 0.198403, 0.639003,
		36.141457, 43.816391, 26.964529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928467, 43.628777, 26.195614>,  <36.661682, 43.677509, 26.517227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928467, 43.628777, 26.195614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.860550, 43.855675, 26.517956>,  <35.819798, 43.991814, 26.711361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.860550, 43.855675, 26.517956>,  <35.928467, 43.628777, 26.195614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860550, 43.855675, 26.517956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525345, 0.639745, -0.561016,
		-0.833776, -0.518609, 0.189374,
		-0.169796, 0.567248, 0.805853,
		35.809612, 44.025848, 26.759712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166428, 43.687759, 26.295994>,  <35.928467, 43.628777, 26.195614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166428, 43.687759, 26.295994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.326187, 44.007664, 26.475266>,  <35.422043, 44.199608, 26.582829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.326187, 44.007664, 26.475266>,  <35.166428, 43.687759, 26.295994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326187, 44.007664, 26.475266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539125, 0.600293, -0.590755,
		-0.741503, -0.005680, 0.670926,
		0.399397, 0.799760, 0.448181,
		35.446007, 44.247593, 26.609720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628925, 44.163666, 26.435446>,  <35.166428, 43.687759, 26.295994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628925, 44.163666, 26.435446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.962658, 44.383560, 26.451893>,  <35.162895, 44.515495, 26.461761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.962658, 44.383560, 26.451893>,  <34.628925, 44.163666, 26.435446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962658, 44.383560, 26.451893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452823, 0.725963, -0.517619,
		-0.314401, 0.413245, 0.854623,
		0.834328, 0.549732, 0.041116,
		35.212955, 44.548481, 26.464228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444710, 44.841881, 26.429399>,  <34.628925, 44.163666, 26.435446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444710, 44.841881, 26.429399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.824459, 44.860630, 26.305151>,  <35.052311, 44.871880, 26.230602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.824459, 44.860630, 26.305151>,  <34.444710, 44.841881, 26.429399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824459, 44.860630, 26.305151> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252591, 0.701770, -0.666120,
		0.186760, 0.710859, 0.678085,
		0.949378, 0.046874, -0.310620,
		35.109272, 44.874691, 26.211966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530750, 45.569553, 26.359026>,  <34.444710, 44.841881, 26.429399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530750, 45.569553, 26.359026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.815651, 45.378021, 26.153732>,  <34.986591, 45.263100, 26.030556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.815651, 45.378021, 26.153732>,  <34.530750, 45.569553, 26.359026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815651, 45.378021, 26.153732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067081, 0.681406, -0.728825,
		0.698707, 0.553539, 0.453215,
		0.712256, -0.478833, -0.513235,
		35.029327, 45.234371, 25.999762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870377, 46.058285, 26.062914>,  <34.530750, 45.569553, 26.359026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870377, 46.058285, 26.062914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.968761, 45.746922, 25.831888>,  <35.027794, 45.560104, 25.693274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.968761, 45.746922, 25.831888>,  <34.870377, 46.058285, 26.062914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968761, 45.746922, 25.831888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130107, 0.563962, -0.815487,
		0.960507, 0.275727, 0.037438,
		0.245966, -0.778410, -0.577563,
		35.042553, 45.513397, 25.658619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253994, 46.399696, 25.475212>,  <34.870377, 46.058285, 26.062914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253994, 46.399696, 25.475212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.165836, 46.033028, 25.341862>,  <35.112942, 45.813026, 25.261852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.165836, 46.033028, 25.341862>,  <35.253994, 46.399696, 25.475212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165836, 46.033028, 25.341862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137183, 0.367510, -0.919846,
		0.965717, -0.156992, -0.206748,
		-0.220390, -0.916673, -0.333374,
		35.099720, 45.758026, 25.241850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646019, 46.299904, 24.780518>,  <35.253994, 46.399696, 25.475212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646019, 46.299904, 24.780518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.349339, 46.031837, 24.791533>,  <35.171329, 45.870998, 24.798141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.349339, 46.031837, 24.791533>,  <35.646019, 46.299904, 24.780518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349339, 46.031837, 24.791533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244213, 0.231584, -0.941663,
		0.624695, -0.705155, -0.335429,
		-0.741698, -0.670168, 0.027539,
		35.126827, 45.830788, 24.799795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663166, 45.919899, 24.158844>,  <35.646019, 46.299904, 24.780518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663166, 45.919899, 24.158844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.290192, 45.874172, 24.295950>,  <35.066406, 45.846737, 24.378214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.290192, 45.874172, 24.295950>,  <35.663166, 45.919899, 24.158844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290192, 45.874172, 24.295950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355590, 0.121992, -0.926646,
		0.064114, -0.985926, -0.154399,
		-0.932440, -0.114313, 0.342765,
		35.010460, 45.839878, 24.398779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349251, 45.552296, 23.663477>,  <35.663166, 45.919899, 24.158844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349251, 45.552296, 23.663477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.054287, 45.710564, 23.882444>,  <34.877308, 45.805527, 24.013824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.054287, 45.710564, 23.882444>,  <35.349251, 45.552296, 23.663477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054287, 45.710564, 23.882444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502678, 0.219847, -0.836052,
		-0.451153, -0.891688, 0.036779,
		-0.737412, 0.395675, 0.547417,
		34.833065, 45.829266, 24.046669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419434, 44.896023, 24.031376>,  <35.349251, 45.552296, 23.663477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419434, 44.896023, 24.031376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.471493, 44.730976, 23.670752>,  <35.502728, 44.631950, 23.454376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.471493, 44.730976, 23.670752>,  <35.419434, 44.896023, 24.031376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471493, 44.730976, 23.670752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056811, -0.910905, 0.408687,
		-0.989866, -0.001971, -0.141992,
		0.130146, -0.412612, -0.901561,
		35.510536, 44.607193, 23.400284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825336, 44.502922, 24.024668>,  <35.419434, 44.896023, 24.031376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825336, 44.502922, 24.024668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.074398, 44.364487, 23.743948>,  <35.223835, 44.281425, 23.575516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.074398, 44.364487, 23.743948>,  <34.825336, 44.502922, 24.024668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074398, 44.364487, 23.743948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116739, -0.927922, 0.354024,
		-0.773738, -0.138508, -0.618179,
		0.622657, -0.346088, -0.701799,
		35.261196, 44.260662, 23.533407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411606, 43.958920, 23.766161>,  <34.825336, 44.502922, 24.024668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411606, 43.958920, 23.766161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.798382, 43.899326, 23.683376>,  <35.030449, 43.863571, 23.633705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.798382, 43.899326, 23.683376>,  <34.411606, 43.958920, 23.766161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798382, 43.899326, 23.683376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051134, -0.908388, 0.414990,
		-0.249825, -0.390688, -0.885974,
		0.966940, -0.148979, -0.206960,
		35.088463, 43.854633, 23.621288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398735, 43.333103, 23.498898>,  <34.411606, 43.958920, 23.766161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398735, 43.333103, 23.498898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.786160, 43.367504, 23.592278>,  <35.018612, 43.388145, 23.648306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.786160, 43.367504, 23.592278>,  <34.398735, 43.333103, 23.498898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786160, 43.367504, 23.592278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022250, -0.964539, 0.263002,
		0.247789, -0.249539, -0.936126,
		0.968558, 0.085998, 0.233449,
		35.076729, 43.393303, 23.662312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760235, 42.775520, 23.222462>,  <34.398735, 43.333103, 23.498898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760235, 42.775520, 23.222462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.011055, 42.900711, 23.507799>,  <35.161549, 42.975826, 23.679001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.011055, 42.900711, 23.507799>,  <34.760235, 42.775520, 23.222462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011055, 42.900711, 23.507799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129838, -0.944920, 0.300447,
		0.768083, -0.095776, -0.633147,
		0.627049, 0.312975, 0.713342,
		35.199169, 42.994602, 23.721802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325493, 42.354786, 23.279016>,  <34.760235, 42.775520, 23.222462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325493, 42.354786, 23.279016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.318764, 42.520149, 23.643173>,  <35.314728, 42.619366, 23.861668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.318764, 42.520149, 23.643173>,  <35.325493, 42.354786, 23.279016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318764, 42.520149, 23.643173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334633, -0.855684, 0.394748,
		0.942198, 0.311288, -0.123944,
		-0.016824, 0.413407, 0.910391,
		35.313717, 42.644173, 23.916290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898975, 42.033962, 23.528416>,  <35.325493, 42.354786, 23.279016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898975, 42.033962, 23.528416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.695583, 42.160580, 23.848728>,  <35.573547, 42.236549, 24.040915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.695583, 42.160580, 23.848728>,  <35.898975, 42.033962, 23.528416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695583, 42.160580, 23.848728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261506, -0.829283, 0.493866,
		0.820406, 0.460528, 0.338893,
		-0.508478, 0.316548, 0.800779,
		35.543041, 42.255543, 24.088963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243530, 41.693897, 24.060665>,  <35.898975, 42.033962, 23.528416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243530, 41.693897, 24.060665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.899994, 41.813858, 24.226772>,  <35.693871, 41.885834, 24.326437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.899994, 41.813858, 24.226772>,  <36.243530, 41.693897, 24.060665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899994, 41.813858, 24.226772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101828, -0.894469, 0.435381,
		0.502014, 0.331639, 0.798747,
		-0.858844, 0.299902, 0.415266,
		35.642342, 41.903828, 24.351353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999817, 41.392311, 24.224913>,  <36.243530, 41.693897, 24.060665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999817, 41.392311, 24.224913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184772, 41.183247, 23.938410>,  <37.295746, 41.057808, 23.766508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.184772, 41.183247, 23.938410>,  <36.999817, 41.392311, 24.224913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184772, 41.183247, 23.938410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333369, 0.851005, -0.405777,
		0.821621, -0.051151, 0.567735,
		0.462389, -0.522660, -0.716256,
		37.323490, 41.026447, 23.723534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575974, 41.782429, 24.128405>,  <36.999817, 41.392311, 24.224913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575974, 41.782429, 24.128405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.585899, 41.529213, 23.818914>,  <37.591854, 41.377285, 23.633221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.585899, 41.529213, 23.818914>,  <37.575974, 41.782429, 24.128405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585899, 41.529213, 23.818914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215445, 0.759162, -0.614212,
		0.976200, -0.151454, 0.155223,
		0.024815, -0.633036, -0.773724,
		37.593346, 41.339302, 23.586798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281212, 41.898495, 23.800539>,  <37.575974, 41.782429, 24.128405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281212, 41.898495, 23.800539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.032822, 41.742657, 23.528479>,  <37.883789, 41.649155, 23.365242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.032822, 41.742657, 23.528479>,  <38.281212, 41.898495, 23.800539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032822, 41.742657, 23.528479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360606, 0.628452, -0.689210,
		0.695957, -0.673248, -0.249761,
		-0.620973, -0.389596, -0.680153,
		37.846531, 41.625778, 23.324432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719360, 41.967632, 23.173445>,  <38.281212, 41.898495, 23.800539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719360, 41.967632, 23.173445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.332764, 41.936565, 23.075584>,  <38.100803, 41.917927, 23.016869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.332764, 41.936565, 23.075584>,  <38.719360, 41.967632, 23.173445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332764, 41.936565, 23.075584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124395, 0.691996, -0.711103,
		0.224524, -0.717711, -0.659151,
		-0.966497, -0.077664, -0.244649,
		38.042816, 41.913265, 23.002190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671940, 42.050343, 22.326920>,  <38.719360, 41.967632, 23.173445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671940, 42.050343, 22.326920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.311424, 42.129711, 22.480959>,  <38.095116, 42.177334, 22.573383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.311424, 42.129711, 22.480959>,  <38.671940, 42.050343, 22.326920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311424, 42.129711, 22.480959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081448, 0.795473, -0.600491,
		-0.425489, -0.572583, -0.700791,
		-0.901291, 0.198424, 0.385100,
		38.041039, 42.189240, 22.596489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304016, 42.197762, 21.810833>,  <38.671940, 42.050343, 22.326920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304016, 42.197762, 21.810833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.090244, 42.383232, 22.093502>,  <37.961983, 42.494514, 22.263103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.090244, 42.383232, 22.093502>,  <38.304016, 42.197762, 21.810833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090244, 42.383232, 22.093502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163286, 0.763701, -0.624578,
		-0.829289, -0.449184, -0.332434,
		-0.534431, 0.463674, 0.706675,
		37.929916, 42.522335, 22.305504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767509, 42.465137, 21.484859>,  <38.304016, 42.197762, 21.810833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767509, 42.465137, 21.484859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.763569, 42.676102, 21.824680>,  <37.761204, 42.802681, 22.028572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.763569, 42.676102, 21.824680>,  <37.767509, 42.465137, 21.484859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763569, 42.676102, 21.824680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318897, 0.803573, -0.502569,
		-0.947738, -0.275872, 0.160272,
		-0.009854, 0.527414, 0.849551,
		37.760612, 42.834328, 22.079546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181686, 42.999775, 21.394634>,  <37.767509, 42.465137, 21.484859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181686, 42.999775, 21.394634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.423985, 43.154572, 21.672718>,  <37.569363, 43.247448, 21.839569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.423985, 43.154572, 21.672718>,  <37.181686, 42.999775, 21.394634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423985, 43.154572, 21.672718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241882, 0.921961, -0.302458,
		-0.758004, 0.015052, 0.652076,
		0.605742, 0.386990, 0.695209,
		37.605705, 43.270668, 21.881281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835766, 43.584801, 21.720402>,  <37.181686, 42.999775, 21.394634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835766, 43.584801, 21.720402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.207642, 43.686779, 21.826748>,  <37.430767, 43.747967, 21.890554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.207642, 43.686779, 21.826748>,  <36.835766, 43.584801, 21.720402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207642, 43.686779, 21.826748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120658, 0.892725, -0.434146,
		-0.348027, 0.371542, 0.860717,
		0.929687, 0.254947, 0.265863,
		37.486549, 43.763264, 21.906507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.326275, 33.233372, 34.386223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700405, 33.347843, 34.469433>,  <36.924881, 33.416527, 34.519360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.700405, 33.347843, 34.469433>,  <36.326275, 33.233372, 34.386223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700405, 33.347843, 34.469433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067434, 0.432986, -0.898875,
		-0.347311, 0.854765, 0.385683,
		0.935322, 0.286181, 0.208020,
		36.981003, 33.433697, 34.531837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317101, 33.998062, 34.174591>,  <36.326275, 33.233372, 34.386223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317101, 33.998062, 34.174591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698700, 33.879005, 34.189007>,  <36.927658, 33.807571, 34.197655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.698700, 33.879005, 34.189007>,  <36.317101, 33.998062, 34.174591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698700, 33.879005, 34.189007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216976, 0.602441, -0.768106,
		0.206913, 0.740589, 0.639308,
		0.953996, -0.297645, 0.036037,
		36.984898, 33.789711, 34.199818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687889, 34.641056, 34.152973>,  <36.317101, 33.998062, 34.174591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687889, 34.641056, 34.152973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889545, 34.323910, 34.016029>,  <37.010540, 34.133621, 33.933865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889545, 34.323910, 34.016029>,  <36.687889, 34.641056, 34.152973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889545, 34.323910, 34.016029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357446, 0.552434, -0.753026,
		0.786177, 0.257257, 0.561911,
		0.504141, -0.792865, -0.342356,
		37.040787, 34.086052, 33.913322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219151, 35.002605, 33.806309>,  <36.687889, 34.641056, 34.152973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219151, 35.002605, 33.806309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.227882, 34.636616, 33.645142>,  <37.233120, 34.417023, 33.548443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.227882, 34.636616, 33.645142>,  <37.219151, 35.002605, 33.806309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227882, 34.636616, 33.645142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262087, 0.394151, -0.880883,
		0.964797, -0.086372, 0.248406,
		0.021825, -0.914978, -0.402913,
		37.234428, 34.362122, 33.524269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809593, 34.927803, 33.378109>,  <37.219151, 35.002605, 33.806309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809593, 34.927803, 33.378109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599472, 34.624718, 33.223228>,  <37.473400, 34.442867, 33.130302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.599472, 34.624718, 33.223228>,  <37.809593, 34.927803, 33.378109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599472, 34.624718, 33.223228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128888, 0.378935, -0.916404,
		0.841098, -0.531293, -0.101394,
		-0.525301, -0.757717, -0.387199,
		37.441883, 34.397404, 33.107067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152882, 34.649067, 32.764046>,  <37.809593, 34.927803, 33.378109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152882, 34.649067, 32.764046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.770611, 34.544041, 32.710758>,  <37.541248, 34.481026, 32.678787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.770611, 34.544041, 32.710758>,  <38.152882, 34.649067, 32.764046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770611, 34.544041, 32.710758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046625, 0.311790, -0.949006,
		0.290705, -0.913154, -0.285729,
		-0.955676, -0.262558, -0.133214,
		37.483910, 34.465271, 32.670792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134274, 34.408310, 32.043301>,  <38.152882, 34.649067, 32.764046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134274, 34.408310, 32.043301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.749344, 34.446396, 32.145176>,  <37.518387, 34.469250, 32.206303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.749344, 34.446396, 32.145176>,  <38.134274, 34.408310, 32.043301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749344, 34.446396, 32.145176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227979, 0.227944, -0.946608,
		-0.148192, -0.969007, -0.197648,
		-0.962323, 0.095220, 0.254692,
		37.460648, 34.474960, 32.221584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850101, 34.187252, 31.453646>,  <38.134274, 34.408310, 32.043301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850101, 34.187252, 31.453646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576218, 34.407673, 31.644440>,  <37.411888, 34.539925, 31.758917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.576218, 34.407673, 31.644440>,  <37.850101, 34.187252, 31.453646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576218, 34.407673, 31.644440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333045, 0.345563, -0.877307,
		-0.648266, -0.759561, -0.053087,
		-0.684713, 0.551048, 0.476985,
		37.370804, 34.572987, 31.787535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193539, 33.971424, 31.182997>,  <37.850101, 34.187252, 31.453646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193539, 33.971424, 31.182997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.154003, 34.335022, 31.344965>,  <37.130283, 34.553181, 31.442146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.154003, 34.335022, 31.344965>,  <37.193539, 33.971424, 31.182997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154003, 34.335022, 31.344965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215134, 0.377769, -0.900560,
		-0.971570, -0.176121, 0.158217,
		-0.098838, 0.908995, 0.404919,
		37.124352, 34.607719, 31.466440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703651, 34.208637, 30.850496>,  <37.193539, 33.971424, 31.182997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703651, 34.208637, 30.850496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.885242, 34.545273, 30.967546>,  <36.994198, 34.747253, 31.037777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.885242, 34.545273, 30.967546>,  <36.703651, 34.208637, 30.850496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885242, 34.545273, 30.967546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193318, 0.413629, -0.889685,
		-0.869789, 0.347327, 0.350473,
		0.453977, 0.841591, 0.292625,
		37.021435, 34.797749, 31.055334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241314, 34.907665, 30.781450>,  <36.703651, 34.208637, 30.850496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241314, 34.907665, 30.781450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.621174, 35.032898, 30.776794>,  <36.849091, 35.108040, 30.774000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.621174, 35.032898, 30.776794>,  <36.241314, 34.907665, 30.781450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621174, 35.032898, 30.776794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199356, 0.575192, -0.793355,
		-0.241694, 0.755732, 0.608649,
		0.949654, 0.313086, -0.011639,
		36.906071, 35.126823, 30.773302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187908, 35.597645, 30.579081>,  <36.241314, 34.907665, 30.781450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187908, 35.597645, 30.579081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.582020, 35.540421, 30.541655>,  <36.818489, 35.506084, 30.519199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.582020, 35.540421, 30.541655>,  <36.187908, 35.597645, 30.579081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582020, 35.540421, 30.541655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014508, 0.615348, -0.788122,
		0.170325, 0.775164, 0.608367,
		0.985281, -0.143063, -0.093563,
		36.877605, 35.497501, 30.513586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780548, 36.135849, 30.996874>,  <36.187908, 35.597645, 30.579081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780548, 36.135849, 30.996874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381386, 36.127281, 30.972490>,  <35.141888, 36.122139, 30.957861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381386, 36.127281, 30.972490>,  <35.780548, 36.135849, 30.996874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381386, 36.127281, 30.972490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041939, -0.502973, 0.863284,
		-0.049152, 0.864037, 0.501024,
		-0.997910, -0.021420, -0.060959,
		35.082012, 36.120853, 30.954203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635059, 36.211014, 31.681564>,  <35.780548, 36.135849, 30.996874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635059, 36.211014, 31.681564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294048, 36.098858, 31.505119>,  <35.089443, 36.031563, 31.399252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.294048, 36.098858, 31.505119>,  <35.635059, 36.211014, 31.681564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294048, 36.098858, 31.505119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315199, -0.397428, 0.861800,
		-0.416953, 0.873745, 0.250438,
		-0.852525, -0.280392, -0.441113,
		35.038292, 36.014740, 31.372786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095352, 36.474056, 32.042439>,  <35.635059, 36.211014, 31.681564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095352, 36.474056, 32.042439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946873, 36.156403, 31.849955>,  <34.857784, 35.965813, 31.734463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.946873, 36.156403, 31.849955>,  <35.095352, 36.474056, 32.042439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946873, 36.156403, 31.849955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207762, -0.434070, 0.876595,
		-0.905012, 0.425369, -0.003864,
		-0.371199, -0.794131, -0.481213,
		34.835514, 35.918163, 31.705591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499195, 36.304104, 32.372086>,  <35.095352, 36.474056, 32.042439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499195, 36.304104, 32.372086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577957, 35.957146, 32.189281>,  <34.625214, 35.748970, 32.079597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577957, 35.957146, 32.189281>,  <34.499195, 36.304104, 32.372086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577957, 35.957146, 32.189281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367744, -0.497442, 0.785694,
		-0.908842, 0.013358, -0.416927,
		0.196902, -0.867394, -0.457009,
		34.637028, 35.696926, 32.052177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842255, 35.884270, 32.314938>,  <34.499195, 36.304104, 32.372086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842255, 35.884270, 32.314938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166790, 35.650532, 32.321526>,  <34.361511, 35.510288, 32.325478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166790, 35.650532, 32.321526>,  <33.842255, 35.884270, 32.314938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166790, 35.650532, 32.321526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303230, -0.396599, 0.866464,
		-0.499781, -0.707991, -0.498967,
		0.811339, -0.584344, 0.016471,
		34.410191, 35.475227, 32.326466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562786, 35.368740, 32.653629>,  <33.842255, 35.884270, 32.314938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562786, 35.368740, 32.653629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947571, 35.259945, 32.663860>,  <34.178440, 35.194668, 32.669998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947571, 35.259945, 32.663860>,  <33.562786, 35.368740, 32.653629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947571, 35.259945, 32.663860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186941, -0.587101, 0.787633,
		-0.199207, -0.762454, -0.615614,
		0.961961, -0.271986, 0.025579,
		34.236160, 35.178349, 32.671535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569881, 34.671131, 32.772419>,  <33.562786, 35.368740, 32.653629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569881, 34.671131, 32.772419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.930805, 34.806770, 32.878895>,  <34.147358, 34.888153, 32.942780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.930805, 34.806770, 32.878895>,  <33.569881, 34.671131, 32.772419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930805, 34.806770, 32.878895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051019, -0.529129, 0.847006,
		0.428065, -0.777840, -0.460136,
		0.902307, 0.339098, 0.266186,
		34.201496, 34.908501, 32.958752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970257, 34.148575, 32.964386>,  <33.569881, 34.671131, 32.772419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970257, 34.148575, 32.964386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114914, 34.454735, 33.177319>,  <34.201706, 34.638432, 33.305077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114914, 34.454735, 33.177319>,  <33.970257, 34.148575, 32.964386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114914, 34.454735, 33.177319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187065, -0.499792, 0.845704,
		0.913359, -0.405419, -0.037564,
		0.361639, 0.765404, 0.532329,
		34.223404, 34.684357, 33.337017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174515, 33.809788, 33.533878>,  <33.970257, 34.148575, 32.964386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174515, 33.809788, 33.533878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206314, 34.190426, 33.652641>,  <34.225391, 34.418808, 33.723900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206314, 34.190426, 33.652641>,  <34.174515, 33.809788, 33.533878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206314, 34.190426, 33.652641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054867, -0.293220, 0.954469,
		0.995324, -0.092165, 0.028901,
		0.079495, 0.951592, 0.296905,
		34.230164, 34.475903, 33.741714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735744, 33.889698, 34.103848>,  <34.174515, 33.809788, 33.533878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735744, 33.889698, 34.103848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.505238, 34.209522, 34.171513>,  <34.366932, 34.401417, 34.212112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.505238, 34.209522, 34.171513>,  <34.735744, 33.889698, 34.103848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505238, 34.209522, 34.171513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082907, -0.148732, 0.985396,
		0.813045, 0.581876, 0.019420,
		-0.576267, 0.799562, 0.169167,
		34.332359, 34.449390, 34.222263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038319, 34.278088, 34.624329>,  <34.735744, 33.889698, 34.103848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038319, 34.278088, 34.624329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672657, 34.439808, 34.636070>,  <34.453259, 34.536839, 34.643116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672657, 34.439808, 34.636070>,  <35.038319, 34.278088, 34.624329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672657, 34.439808, 34.636070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065459, 0.075768, 0.994975,
		0.400041, 0.911484, -0.095728,
		-0.914157, 0.404297, 0.029354,
		34.398411, 34.561096, 34.644878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099697, 34.901039, 35.059959>,  <35.038319, 34.278088, 34.624329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099697, 34.901039, 35.059959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714802, 34.794060, 35.039696>,  <34.483864, 34.729870, 35.027538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.714802, 34.794060, 35.039696>,  <35.099697, 34.901039, 35.059959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714802, 34.794060, 35.039696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065777, 0.047856, 0.996686,
		-0.264142, 0.962382, -0.063641,
		-0.962238, -0.267453, -0.050661,
		34.426132, 34.713825, 35.024498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811604, 35.351303, 35.645638>,  <35.099697, 34.901039, 35.059959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811604, 35.351303, 35.645638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554802, 35.053452, 35.572575>,  <34.400723, 34.874741, 35.528736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554802, 35.053452, 35.572575>,  <34.811604, 35.351303, 35.645638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554802, 35.053452, 35.572575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343846, 0.066699, 0.936654,
		-0.685275, 0.664140, -0.298858,
		-0.642003, -0.744627, -0.182655,
		34.362202, 34.830063, 35.517776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339806, 35.612183, 35.893005>,  <34.811604, 35.351303, 35.645638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339806, 35.612183, 35.893005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294994, 35.214809, 35.883728>,  <34.268108, 34.976387, 35.878162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294994, 35.214809, 35.883728>,  <34.339806, 35.612183, 35.893005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294994, 35.214809, 35.883728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274512, 0.008509, 0.961546,
		-0.955036, 0.114086, -0.273662,
		-0.112027, -0.993434, -0.023192,
		34.261387, 34.916779, 35.876770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714470, 36.129108, 35.541332>,  <34.339806, 35.612183, 35.893005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714470, 36.129108, 35.541332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592709, 36.297073, 35.883331>,  <34.519653, 36.397854, 36.088531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592709, 36.297073, 35.883331>,  <34.714470, 36.129108, 35.541332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592709, 36.297073, 35.883331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340245, 0.790443, -0.509346,
		-0.889705, -0.445951, -0.097737,
		-0.304399, 0.419913, 0.854994,
		34.501389, 36.423046, 36.139828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025238, 36.186508, 35.539410>,  <34.714470, 36.129108, 35.541332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025238, 36.186508, 35.539410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182121, 36.487221, 35.751450>,  <34.276253, 36.667648, 35.878674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182121, 36.487221, 35.751450>,  <34.025238, 36.186508, 35.539410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182121, 36.487221, 35.751450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359612, 0.655718, -0.663863,
		-0.846670, 0.069745, 0.527527,
		0.392210, 0.751778, 0.530095,
		34.299786, 36.712753, 35.910477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470863, 36.762508, 35.634117>,  <34.025238, 36.186508, 35.539410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470863, 36.762508, 35.634117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862591, 36.836411, 35.601143>,  <34.097630, 36.880753, 35.581360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862591, 36.836411, 35.601143>,  <33.470863, 36.762508, 35.634117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862591, 36.836411, 35.601143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182058, 0.627104, -0.757361,
		-0.088228, 0.756708, 0.647772,
		0.979322, 0.184753, -0.082437,
		34.156387, 36.891838, 35.576412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520947, 37.459320, 35.404236>,  <33.470863, 36.762508, 35.634117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520947, 37.459320, 35.404236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864418, 37.291977, 35.285816>,  <34.070499, 37.191570, 35.214764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864418, 37.291977, 35.285816>,  <33.520947, 37.459320, 35.404236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864418, 37.291977, 35.285816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009169, 0.565017, -0.825028,
		0.512430, 0.711150, 0.481333,
		0.858680, -0.418356, -0.296053,
		34.122021, 37.166470, 35.196999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917446, 38.022385, 35.174759>,  <33.520947, 37.459320, 35.404236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917446, 38.022385, 35.174759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057648, 37.695595, 34.991585>,  <34.141769, 37.499523, 34.881680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.057648, 37.695595, 34.991585>,  <33.917446, 38.022385, 35.174759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057648, 37.695595, 34.991585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174202, 0.537291, -0.825210,
		0.920218, 0.209464, 0.330640,
		0.350502, -0.816972, -0.457936,
		34.162800, 37.450504, 34.854202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412403, 38.224751, 34.861549>,  <33.917446, 38.022385, 35.174759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412403, 38.224751, 34.861549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390862, 37.898357, 34.631325>,  <34.377937, 37.702522, 34.493191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.390862, 37.898357, 34.631325>,  <34.412403, 38.224751, 34.861549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390862, 37.898357, 34.631325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223236, 0.551971, -0.803426,
		0.973276, -0.171754, 0.152430,
		-0.053855, -0.815983, -0.575562,
		34.374706, 37.653561, 34.458656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075058, 38.102715, 34.476505>,  <34.412403, 38.224751, 34.861549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075058, 38.102715, 34.476505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787216, 37.898884, 34.287827>,  <34.614510, 37.776585, 34.174618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787216, 37.898884, 34.287827>,  <35.075058, 38.102715, 34.476505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787216, 37.898884, 34.287827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255167, 0.437715, -0.862146,
		0.645802, -0.740765, -0.184953,
		-0.719604, -0.509582, -0.471696,
		34.571335, 37.746010, 34.146317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370693, 37.824627, 33.968544>,  <35.075058, 38.102715, 34.476505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370693, 37.824627, 33.968544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992828, 37.813454, 33.837807>,  <34.766109, 37.806747, 33.759365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992828, 37.813454, 33.837807>,  <35.370693, 37.824627, 33.968544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992828, 37.813454, 33.837807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313721, 0.214204, -0.925038,
		0.095853, -0.976389, -0.193587,
		-0.944665, -0.027935, -0.326846,
		34.709431, 37.805073, 33.739754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435902, 37.573593, 33.243969>,  <35.370693, 37.824627, 33.968544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435902, 37.573593, 33.243969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063587, 37.719578, 33.235554>,  <34.840199, 37.807167, 33.230503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063587, 37.719578, 33.235554>,  <35.435902, 37.573593, 33.243969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063587, 37.719578, 33.235554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099721, 0.198114, -0.975093,
		-0.351705, -0.909699, -0.220796,
		-0.930784, 0.364963, -0.021038,
		34.784351, 37.829067, 33.229240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102203, 37.246845, 32.652931>,  <35.435902, 37.573593, 33.243969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102203, 37.246845, 32.652931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911667, 37.587444, 32.740608>,  <34.797344, 37.791805, 32.793213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911667, 37.587444, 32.740608>,  <35.102203, 37.246845, 32.652931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911667, 37.587444, 32.740608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134028, 0.316698, -0.939010,
		-0.868983, -0.417915, -0.264982,
		-0.476346, 0.851498, 0.219192,
		34.768764, 37.842896, 32.806366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600452, 37.436741, 32.200401>,  <35.102203, 37.246845, 32.652931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600452, 37.436741, 32.200401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.674515, 37.796196, 32.359486>,  <34.718952, 38.011868, 32.454937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.674515, 37.796196, 32.359486>,  <34.600452, 37.436741, 32.200401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674515, 37.796196, 32.359486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041228, 0.397249, -0.916784,
		-0.981843, 0.186149, 0.036506,
		0.185160, 0.898633, 0.397710,
		34.730064, 38.065784, 32.478798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301266, 37.855602, 31.719902>,  <34.600452, 37.436741, 32.200401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301266, 37.855602, 31.719902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494236, 38.092472, 31.978079>,  <34.610020, 38.234592, 32.132984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.494236, 38.092472, 31.978079>,  <34.301266, 37.855602, 31.719902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494236, 38.092472, 31.978079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085372, 0.701566, -0.707472,
		-0.871766, 0.396407, 0.287900,
		0.482427, 0.592172, 0.645443,
		34.638966, 38.270123, 32.171711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009277, 38.464439, 31.602316>,  <34.301266, 37.855602, 31.719902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009277, 38.464439, 31.602316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370525, 38.529163, 31.761408>,  <34.587276, 38.567997, 31.856863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.370525, 38.529163, 31.761408>,  <34.009277, 38.464439, 31.602316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370525, 38.529163, 31.761408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166832, 0.721277, -0.672255,
		-0.395648, 0.673483, 0.624407,
		0.903122, 0.161805, 0.397731,
		34.641460, 38.577705, 31.880728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945484, 39.166809, 31.708342>,  <34.009277, 38.464439, 31.602316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945484, 39.166809, 31.708342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324169, 39.049953, 31.654097>,  <34.551380, 38.979839, 31.621550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324169, 39.049953, 31.654097>,  <33.945484, 39.166809, 31.708342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324169, 39.049953, 31.654097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142779, 0.758087, -0.636332,
		0.288704, 0.583061, 0.759401,
		0.946712, -0.292138, -0.135614,
		34.608181, 38.962311, 31.613413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259766, 39.789829, 31.562624>,  <33.945484, 39.166809, 31.708342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259766, 39.789829, 31.562624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583050, 39.570583, 31.476498>,  <34.777020, 39.439037, 31.424822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583050, 39.570583, 31.476498>,  <34.259766, 39.789829, 31.562624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583050, 39.570583, 31.476498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297976, 0.696011, -0.653284,
		0.507936, 0.463834, 0.725850,
		0.808215, -0.548112, -0.215318,
		34.825516, 39.406151, 31.411901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812347, 40.238308, 31.650055>,  <34.259766, 39.789829, 31.562624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812347, 40.238308, 31.650055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900352, 39.944096, 31.393745>,  <34.953156, 39.767567, 31.239960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900352, 39.944096, 31.393745>,  <34.812347, 40.238308, 31.650055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900352, 39.944096, 31.393745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367908, 0.670925, -0.643819,
		0.903459, -0.094098, 0.418219,
		0.220011, -0.735530, -0.640773,
		34.966354, 39.723438, 31.201513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525528, 40.365887, 31.426327>,  <34.812347, 40.238308, 31.650055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525528, 40.365887, 31.426327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365063, 40.123535, 31.151525>,  <35.268784, 39.978123, 30.986645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365063, 40.123535, 31.151525>,  <35.525528, 40.365887, 31.426327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365063, 40.123535, 31.151525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378140, 0.573573, -0.726653,
		0.834311, -0.551293, -0.000991,
		-0.401167, -0.605880, -0.687004,
		35.244713, 39.941772, 30.945425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048378, 40.315800, 30.961687>,  <35.525528, 40.365887, 31.426327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048378, 40.315800, 30.961687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726250, 40.183399, 30.764956>,  <35.532970, 40.103958, 30.646917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.726250, 40.183399, 30.764956>,  <36.048378, 40.315800, 30.961687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726250, 40.183399, 30.764956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204058, 0.624157, -0.754181,
		0.556610, -0.707721, -0.435106,
		-0.805324, -0.330998, -0.491827,
		35.484653, 40.084099, 30.617407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363953, 40.148693, 30.434160>,  <36.048378, 40.315800, 30.961687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363953, 40.148693, 30.434160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976105, 40.200176, 30.350954>,  <35.743397, 40.231068, 30.301029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976105, 40.200176, 30.350954>,  <36.363953, 40.148693, 30.434160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976105, 40.200176, 30.350954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243870, 0.442234, -0.863108,
		-0.019100, -0.887616, -0.460188,
		-0.969620, 0.128711, -0.208016,
		35.685219, 40.238789, 30.288549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306358, 39.945583, 29.715517>,  <36.363953, 40.148693, 30.434160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306358, 39.945583, 29.715517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994671, 40.178211, 29.808977>,  <35.807659, 40.317787, 29.865053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994671, 40.178211, 29.808977>,  <36.306358, 39.945583, 29.715517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994671, 40.178211, 29.808977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210469, 0.593952, -0.776482,
		-0.590355, -0.555875, -0.585222,
		-0.779220, 0.581571, 0.233648,
		35.760906, 40.352684, 29.879072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997089, 40.039734, 29.097109>,  <36.306358, 39.945583, 29.715517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997089, 40.039734, 29.097109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862106, 40.349834, 29.310690>,  <35.781116, 40.535896, 29.438839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862106, 40.349834, 29.310690>,  <35.997089, 40.039734, 29.097109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862106, 40.349834, 29.310690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279347, 0.624148, -0.729660,
		-0.898937, -0.097072, -0.427188,
		-0.337458, 0.775252, 0.533953,
		35.760868, 40.582409, 29.470877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675144, 40.403049, 28.610125>,  <35.997089, 40.039734, 29.097109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675144, 40.403049, 28.610125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.783600, 40.643417, 28.910892>,  <35.848671, 40.787640, 29.091352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.783600, 40.643417, 28.910892>,  <35.675144, 40.403049, 28.610125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783600, 40.643417, 28.910892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193505, 0.731202, -0.654140,
		-0.942890, 0.322861, 0.081974,
		0.271136, 0.600919, 0.751918,
		35.864941, 40.823692, 29.136469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467484, 41.037117, 28.372145>,  <35.675144, 40.403049, 28.610125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467484, 41.037117, 28.372145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693619, 41.160263, 28.678247>,  <35.829300, 41.234150, 28.861908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693619, 41.160263, 28.678247>,  <35.467484, 41.037117, 28.372145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693619, 41.160263, 28.678247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250729, 0.819701, -0.515000,
		-0.785833, 0.483018, 0.386213,
		0.565333, 0.307869, 0.765254,
		35.863220, 41.252625, 28.907824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021061, 41.587868, 28.669704>,  <35.467484, 41.037117, 28.372145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021061, 41.587868, 28.669704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404068, 41.651173, 28.766129>,  <35.633873, 41.689156, 28.823984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.404068, 41.651173, 28.766129>,  <35.021061, 41.587868, 28.669704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404068, 41.651173, 28.766129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026573, 0.880818, -0.472709,
		-0.287141, 0.446223, 0.847606,
		0.957520, 0.158258, 0.241062,
		35.691322, 41.698650, 28.838448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082123, 42.273643, 28.910105>,  <35.021061, 41.587868, 28.669704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082123, 42.273643, 28.910105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461525, 42.182957, 28.821619>,  <35.689167, 42.128544, 28.768528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461525, 42.182957, 28.821619>,  <35.082123, 42.273643, 28.910105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461525, 42.182957, 28.821619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077375, 0.843038, -0.532259,
		0.307165, 0.487735, 0.817169,
		0.948506, -0.226720, -0.221213,
		35.746078, 42.114941, 28.755255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355194, 42.781128, 28.993059>,  <35.082123, 42.273643, 28.910105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355194, 42.781128, 28.993059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632782, 42.593327, 28.774714>,  <35.799335, 42.480644, 28.643705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632782, 42.593327, 28.774714>,  <35.355194, 42.781128, 28.993059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632782, 42.593327, 28.774714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214062, 0.858402, -0.466179,
		0.687444, 0.206667, 0.696211,
		0.693973, -0.469504, -0.545864,
		35.840973, 42.452477, 28.610954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858578, 43.280731, 28.807394>,  <35.355194, 42.781128, 28.993059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858578, 43.280731, 28.807394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940418, 42.994240, 28.540512>,  <35.989525, 42.822346, 28.380383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940418, 42.994240, 28.540512>,  <35.858578, 43.280731, 28.807394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940418, 42.994240, 28.540512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303543, 0.694446, -0.652385,
		0.930591, -0.069045, 0.359491,
		0.204603, -0.716224, -0.667203,
		36.001801, 42.779373, 28.340351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517391, 43.348316, 28.611586>,  <35.858578, 43.280731, 28.807394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517391, 43.348316, 28.611586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326294, 43.172260, 28.307468>,  <36.211636, 43.066628, 28.124998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326294, 43.172260, 28.307468>,  <36.517391, 43.348316, 28.611586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326294, 43.172260, 28.307468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367945, 0.685627, -0.628118,
		0.797734, -0.579823, -0.165606,
		-0.477741, -0.440137, -0.760291,
		36.182972, 43.040218, 28.079382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210758, 43.344788, 28.835104>,  <36.517391, 43.348316, 28.611586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210758, 43.344788, 28.835104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495502, 43.586174, 28.978817>,  <37.666348, 43.731007, 29.065044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.495502, 43.586174, 28.978817>,  <37.210758, 43.344788, 28.835104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495502, 43.586174, 28.978817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274763, -0.710085, 0.648294,
		0.646345, -0.362776, -0.671291,
		0.711859, 0.603468, 0.359283,
		37.709061, 43.767216, 29.086601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761875, 42.944935, 29.024395>,  <37.210758, 43.344788, 28.835104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761875, 42.944935, 29.024395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.847916, 43.266781, 29.245781>,  <37.899540, 43.459888, 29.378613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.847916, 43.266781, 29.245781>,  <37.761875, 42.944935, 29.024395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847916, 43.266781, 29.245781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368391, -0.591715, 0.717050,
		0.904445, 0.049655, -0.423691,
		0.215099, 0.804616, 0.553466,
		37.912445, 43.508167, 29.411821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379345, 42.751095, 29.354166>,  <37.761875, 42.944935, 29.024395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379345, 42.751095, 29.354166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254288, 43.064724, 29.568634>,  <38.179253, 43.252903, 29.697315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.254288, 43.064724, 29.568634>,  <38.379345, 42.751095, 29.354166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254288, 43.064724, 29.568634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402632, -0.401855, 0.822435,
		0.860316, 0.473007, -0.190058,
		-0.312642, 0.784077, 0.536170,
		38.160496, 43.299946, 29.729485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887623, 42.951046, 29.813799>,  <38.379345, 42.751095, 29.354166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887623, 42.951046, 29.813799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576248, 43.124771, 29.995089>,  <38.389423, 43.229004, 30.103863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576248, 43.124771, 29.995089>,  <38.887623, 42.951046, 29.813799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576248, 43.124771, 29.995089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299590, -0.377426, 0.876240,
		0.551617, 0.817878, 0.163688,
		-0.778437, 0.434310, 0.453222,
		38.342716, 43.255066, 30.131056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071819, 43.432457, 30.478777>,  <38.887623, 42.951046, 29.813799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071819, 43.432457, 30.478777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.691101, 43.310814, 30.494802>,  <38.462669, 43.237827, 30.504417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.691101, 43.310814, 30.494802>,  <39.071819, 43.432457, 30.478777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691101, 43.310814, 30.494802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180208, -0.448690, 0.875330,
		-0.248223, 0.840353, 0.481863,
		-0.951793, -0.304112, 0.040063,
		38.405563, 43.219582, 30.506821>
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
