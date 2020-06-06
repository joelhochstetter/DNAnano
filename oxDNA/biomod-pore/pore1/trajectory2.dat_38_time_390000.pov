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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<41.149204, 43.015659, 42.689529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284447, 43.018692, 43.065960>,  <41.365593, 43.020512, 43.291821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284447, 43.018692, 43.065960>,  <41.149204, 43.015659, 42.689529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284447, 43.018692, 43.065960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762146, -0.584428, 0.278526,
		0.552105, -0.811410, -0.191818,
		0.338103, 0.007582, 0.941079,
		41.385880, 43.020966, 43.348282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026516, 42.316490, 42.998989>,  <41.149204, 43.015659, 42.689529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026516, 42.316490, 42.998989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088730, 42.547623, 43.319469>,  <41.126057, 42.686302, 43.511757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088730, 42.547623, 43.319469>,  <41.026516, 42.316490, 42.998989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088730, 42.547623, 43.319469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829558, -0.363950, 0.423526,
		0.536323, -0.730513, 0.422739,
		0.155536, 0.577833, 0.801198,
		41.135391, 42.720974, 43.559830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144333, 41.829460, 43.581352>,  <41.026516, 42.316490, 42.998989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144333, 41.829460, 43.581352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054012, 42.174652, 43.762138>,  <40.999821, 42.381767, 43.870609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054012, 42.174652, 43.762138>,  <41.144333, 41.829460, 43.581352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054012, 42.174652, 43.762138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665586, -0.475442, 0.575283,
		0.711344, -0.170926, 0.681743,
		-0.225799, 0.862983, 0.451969,
		40.986271, 42.433548, 43.897728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197262, 41.748482, 44.355774>,  <41.144333, 41.829460, 43.581352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197262, 41.748482, 44.355774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942173, 42.042488, 44.263626>,  <40.789120, 42.218891, 44.208336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942173, 42.042488, 44.263626>,  <41.197262, 41.748482, 44.355774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942173, 42.042488, 44.263626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707956, -0.441457, 0.551285,
		0.303502, 0.514658, 0.801882,
		-0.637719, 0.735013, -0.230372,
		40.750858, 42.262993, 44.194515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592598, 41.732925, 44.849266>,  <41.197262, 41.748482, 44.355774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592598, 41.732925, 44.849266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407112, 41.988731, 44.603996>,  <40.295818, 42.142216, 44.456833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407112, 41.988731, 44.603996>,  <40.592598, 41.732925, 44.849266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407112, 41.988731, 44.603996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876759, -0.231626, 0.421477,
		0.127512, 0.733057, 0.668108,
		-0.463718, 0.639513, -0.613179,
		40.267998, 42.180584, 44.420044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179531, 42.087032, 45.257137>,  <40.592598, 41.732925, 44.849266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179531, 42.087032, 45.257137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025398, 42.150116, 44.893456>,  <39.932919, 42.187965, 44.675247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025398, 42.150116, 44.893456>,  <40.179531, 42.087032, 45.257137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025398, 42.150116, 44.893456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902663, -0.269025, 0.335893,
		-0.191624, 0.950133, 0.246023,
		-0.385329, 0.157711, -0.909202,
		39.909798, 42.197430, 44.620693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518425, 42.298237, 45.286335>,  <40.179531, 42.087032, 45.257137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518425, 42.298237, 45.286335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509823, 42.136185, 44.920731>,  <39.504662, 42.038956, 44.701370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509823, 42.136185, 44.920731>,  <39.518425, 42.298237, 45.286335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509823, 42.136185, 44.920731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934838, -0.315946, 0.162040,
		-0.354424, 0.857934, -0.371933,
		-0.021509, -0.405127, -0.914007,
		39.503368, 42.014645, 44.646530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873325, 42.403984, 45.008533>,  <39.518425, 42.298237, 45.286335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873325, 42.403984, 45.008533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008690, 42.096886, 44.790894>,  <39.089909, 41.912628, 44.660309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008690, 42.096886, 44.790894>,  <38.873325, 42.403984, 45.008533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008690, 42.096886, 44.790894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905734, -0.422566, 0.032917,
		-0.255191, 0.481672, -0.838373,
		0.338413, -0.767743, -0.544102,
		39.110214, 41.866562, 44.627663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444279, 42.247261, 44.555614>,  <38.873325, 42.403984, 45.008533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444279, 42.247261, 44.555614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630802, 41.894844, 44.587387>,  <38.742718, 41.683392, 44.606449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630802, 41.894844, 44.587387>,  <38.444279, 42.247261, 44.555614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630802, 41.894844, 44.587387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884620, -0.464406, 0.042116,
		-0.000218, -0.089906, -0.995950,
		0.466312, -0.881047, 0.079432,
		38.770695, 41.630531, 44.611217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996593, 41.675961, 44.189018>,  <38.444279, 42.247261, 44.555614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996593, 41.675961, 44.189018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249714, 41.474960, 44.424667>,  <38.401585, 41.354362, 44.566055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249714, 41.474960, 44.424667>,  <37.996593, 41.675961, 44.189018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249714, 41.474960, 44.424667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726482, -0.648559, 0.227146,
		0.267939, -0.571723, -0.775462,
		0.632798, -0.502498, 0.589121,
		38.439552, 41.324211, 44.601402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936768, 41.050468, 44.063229>,  <37.996593, 41.675961, 44.189018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936768, 41.050468, 44.063229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100662, 41.013184, 44.426201>,  <38.199001, 40.990814, 44.643982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100662, 41.013184, 44.426201>,  <37.936768, 41.050468, 44.063229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100662, 41.013184, 44.426201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683287, -0.690405, 0.237612,
		0.604344, -0.717393, -0.346579,
		0.409741, -0.093214, 0.907427,
		38.223583, 40.985218, 44.698429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614105, 40.515484, 44.239040>,  <37.936768, 41.050468, 44.063229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614105, 40.515484, 44.239040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772263, 40.615173, 44.592663>,  <37.867157, 40.674988, 44.804836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772263, 40.615173, 44.592663>,  <37.614105, 40.515484, 44.239040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772263, 40.615173, 44.592663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670527, -0.579477, 0.463250,
		0.627743, -0.775947, -0.062008,
		0.395390, 0.249224, 0.884055,
		37.890881, 40.689941, 44.857880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637653, 39.915211, 44.621986>,  <37.614105, 40.515484, 44.239040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637653, 39.915211, 44.621986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648975, 40.220032, 44.880745>,  <37.655769, 40.402924, 45.035999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648975, 40.220032, 44.880745>,  <37.637653, 39.915211, 44.621986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648975, 40.220032, 44.880745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714853, -0.436922, 0.545971,
		0.698702, -0.477892, 0.532386,
		0.028304, 0.762049, 0.646901,
		37.657467, 40.448647, 45.074814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571224, 39.635990, 45.225491>,  <37.637653, 39.915211, 44.621986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571224, 39.635990, 45.225491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474815, 40.012360, 45.320625>,  <37.416969, 40.238182, 45.377708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474815, 40.012360, 45.320625>,  <37.571224, 39.635990, 45.225491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474815, 40.012360, 45.320625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576312, -0.335938, 0.744990,
		0.780879, 0.042492, 0.623235,
		-0.241025, 0.940925, 0.237839,
		37.402508, 40.294636, 45.391975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712063, 39.717865, 45.899231>,  <37.571224, 39.635990, 45.225491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712063, 39.717865, 45.899231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464840, 40.028099, 45.847893>,  <37.316505, 40.214241, 45.817089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464840, 40.028099, 45.847893>,  <37.712063, 39.717865, 45.899231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464840, 40.028099, 45.847893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571649, -0.331326, 0.750627,
		0.539649, 0.537301, 0.648140,
		-0.618059, 0.775584, -0.128348,
		37.279423, 40.260773, 45.809387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605469, 40.068699, 46.523724>,  <37.712063, 39.717865, 45.899231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605469, 40.068699, 46.523724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295273, 40.187187, 46.300705>,  <37.109154, 40.258282, 46.166893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295273, 40.187187, 46.300705>,  <37.605469, 40.068699, 46.523724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295273, 40.187187, 46.300705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629564, -0.296319, 0.718223,
		0.047543, 0.907990, 0.416285,
		-0.775493, 0.296225, -0.557550,
		37.062626, 40.276054, 46.133438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159412, 40.454803, 47.035469>,  <37.605469, 40.068699, 46.523724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159412, 40.454803, 47.035469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948826, 40.354836, 46.710415>,  <36.822475, 40.294853, 46.515385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948826, 40.354836, 46.710415>,  <37.159412, 40.454803, 47.035469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948826, 40.354836, 46.710415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797305, -0.186735, 0.573964,
		-0.295193, 0.950089, -0.100953,
		-0.526466, -0.249921, -0.812634,
		36.790886, 40.279858, 46.466625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485874, 40.798325, 47.186367>,  <37.159412, 40.454803, 47.035469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485874, 40.798325, 47.186367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445023, 40.496407, 46.927181>,  <36.420513, 40.315254, 46.771671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445023, 40.496407, 46.927181>,  <36.485874, 40.798325, 47.186367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445023, 40.496407, 46.927181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795449, -0.329178, 0.508825,
		-0.597353, 0.567384, -0.566784,
		-0.102126, -0.754796, -0.647961,
		36.414383, 40.269966, 46.732792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753662, 40.627026, 47.204998>,  <36.485874, 40.798325, 47.186367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753662, 40.627026, 47.204998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854836, 40.286095, 47.021885>,  <35.915539, 40.081535, 46.912018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854836, 40.286095, 47.021885>,  <35.753662, 40.627026, 47.204998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854836, 40.286095, 47.021885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821095, -0.439366, 0.364363,
		-0.511690, 0.283725, -0.810971,
		0.252934, -0.852325, -0.457785,
		35.930717, 40.030396, 46.884548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179966, 40.376945, 46.981838>,  <35.753662, 40.627026, 47.204998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179966, 40.376945, 46.981838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397793, 40.043968, 46.940857>,  <35.528488, 39.844181, 46.916267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397793, 40.043968, 46.940857>,  <35.179966, 40.376945, 46.981838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397793, 40.043968, 46.940857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771810, -0.545176, 0.327248,
		-0.328267, -0.099137, -0.939368,
		0.544564, -0.832439, -0.102449,
		35.561161, 39.794235, 46.910122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796635, 39.965553, 46.542908>,  <35.179966, 40.376945, 46.981838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796635, 39.965553, 46.542908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035892, 39.750595, 46.780708>,  <35.179447, 39.621620, 46.923389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035892, 39.750595, 46.780708>,  <34.796635, 39.965553, 46.542908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035892, 39.750595, 46.780708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790423, -0.517904, 0.327118,
		0.132101, -0.665570, -0.734552,
		0.598147, -0.537394, 0.594498,
		35.215336, 39.589378, 46.959057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625961, 39.290157, 46.456215>,  <34.796635, 39.965553, 46.542908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625961, 39.290157, 46.456215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803108, 39.287239, 46.814838>,  <34.909397, 39.285488, 47.030014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803108, 39.287239, 46.814838>,  <34.625961, 39.290157, 46.456215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803108, 39.287239, 46.814838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693071, -0.637160, 0.337163,
		0.568793, -0.770697, -0.287230,
		0.442862, -0.007295, 0.896560,
		34.935966, 39.285049, 47.083805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649235, 38.659336, 46.648865>,  <34.625961, 39.290157, 46.456215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649235, 38.659336, 46.648865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711517, 38.815727, 47.011719>,  <34.748886, 38.909561, 47.229431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711517, 38.815727, 47.011719>,  <34.649235, 38.659336, 46.648865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711517, 38.815727, 47.011719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604664, -0.688456, 0.400513,
		0.781114, -0.610872, 0.129215,
		0.155703, 0.390978, 0.907135,
		34.758228, 38.933022, 47.283859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723587, 38.082146, 47.202728>,  <34.649235, 38.659336, 46.648865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723587, 38.082146, 47.202728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671673, 38.401260, 47.438248>,  <34.640526, 38.592731, 47.579559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671673, 38.401260, 47.438248>,  <34.723587, 38.082146, 47.202728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671673, 38.401260, 47.438248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577144, -0.543643, 0.609391,
		0.806263, -0.260732, 0.530998,
		-0.129786, 0.797791, 0.588799,
		34.632736, 38.640598, 47.614887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807568, 37.830158, 47.924191>,  <34.723587, 38.082146, 47.202728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807568, 37.830158, 47.924191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597420, 38.169434, 47.951214>,  <34.471333, 38.373001, 47.967430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597420, 38.169434, 47.951214>,  <34.807568, 37.830158, 47.924191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597420, 38.169434, 47.951214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667130, -0.459898, 0.586030,
		0.528137, 0.262807, 0.807468,
		-0.525365, 0.848190, 0.067562,
		34.439812, 38.423889, 47.971481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753117, 38.035416, 48.701351>,  <34.807568, 37.830158, 47.924191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753117, 38.035416, 48.701351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452679, 38.225975, 48.518528>,  <34.272415, 38.340309, 48.408836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452679, 38.225975, 48.518528>,  <34.753117, 38.035416, 48.701351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452679, 38.225975, 48.518528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592130, -0.179964, 0.785490,
		0.291954, 0.860614, 0.417260,
		-0.751096, 0.476400, -0.457054,
		34.227348, 38.368896, 48.381413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511547, 38.444950, 49.285965>,  <34.753117, 38.035416, 48.701351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511547, 38.444950, 49.285965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240749, 38.436859, 48.991684>,  <34.078270, 38.432003, 48.815113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240749, 38.436859, 48.991684>,  <34.511547, 38.444950, 49.285965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240749, 38.436859, 48.991684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732333, -0.080938, 0.676119,
		-0.073226, 0.996513, 0.039979,
		-0.676998, -0.020232, -0.735707,
		34.037651, 38.430790, 48.770973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871017, 38.839729, 49.483158>,  <34.511547, 38.444950, 49.285965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871017, 38.839729, 49.483158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708534, 38.621040, 49.190285>,  <33.611042, 38.489826, 49.014561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708534, 38.621040, 49.190285>,  <33.871017, 38.839729, 49.483158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708534, 38.621040, 49.190285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727356, -0.291563, 0.621244,
		-0.553125, 0.784912, -0.279225,
		-0.406210, -0.546722, -0.732181,
		33.586670, 38.457024, 48.970631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244465, 39.044315, 49.503162>,  <33.871017, 38.839729, 49.483158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244465, 39.044315, 49.503162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236942, 38.669662, 49.363235>,  <33.232430, 38.444870, 49.279278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236942, 38.669662, 49.363235>,  <33.244465, 39.044315, 49.503162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236942, 38.669662, 49.363235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721724, -0.229417, 0.653056,
		-0.691925, 0.264754, -0.671673,
		-0.018806, -0.936629, -0.349818,
		33.231300, 38.388676, 49.258289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576290, 38.829952, 49.631508>,  <33.244465, 39.044315, 49.503162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576290, 38.829952, 49.631508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795235, 38.498848, 49.582191>,  <32.926601, 38.300186, 49.552601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795235, 38.498848, 49.582191>,  <32.576290, 38.829952, 49.631508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795235, 38.498848, 49.582191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543243, -0.463494, 0.700043,
		-0.636614, -0.316202, -0.703377,
		0.547366, -0.827762, -0.123292,
		32.959446, 38.250519, 49.545204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129013, 38.326927, 49.636940>,  <32.576290, 38.829952, 49.631508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129013, 38.326927, 49.636940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466583, 38.131546, 49.725666>,  <32.669125, 38.014317, 49.778900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466583, 38.131546, 49.725666>,  <32.129013, 38.326927, 49.636940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466583, 38.131546, 49.725666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480623, -0.504738, 0.717106,
		-0.238316, -0.711793, -0.660724,
		0.843923, -0.488457, 0.221817,
		32.719761, 37.985008, 49.792210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766850, 37.732414, 49.662701>,  <32.129013, 38.326927, 49.636940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766850, 37.732414, 49.662701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135513, 37.683395, 49.809956>,  <32.356712, 37.653984, 49.898308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135513, 37.683395, 49.809956>,  <31.766850, 37.732414, 49.662701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135513, 37.683395, 49.809956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374832, -0.526295, 0.763226,
		0.100218, -0.841425, -0.531000,
		0.921660, -0.122547, 0.368137,
		32.412010, 37.646633, 49.920395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874414, 37.020252, 49.790497>,  <31.766850, 37.732414, 49.662701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874414, 37.020252, 49.790497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148270, 37.170578, 50.040306>,  <32.312584, 37.260773, 50.190193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148270, 37.170578, 50.040306>,  <31.874414, 37.020252, 49.790497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148270, 37.170578, 50.040306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357020, -0.574099, 0.736850,
		0.635457, -0.727445, -0.258879,
		0.684640, 0.375811, 0.624527,
		32.353661, 37.283321, 50.227665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063339, 36.469593, 50.177094>,  <31.874414, 37.020252, 49.790497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063339, 36.469593, 50.177094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139553, 36.790565, 50.403301>,  <32.185284, 36.983147, 50.539024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139553, 36.790565, 50.403301>,  <32.063339, 36.469593, 50.177094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139553, 36.790565, 50.403301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461047, -0.435438, 0.773194,
		0.866678, -0.408051, 0.286990,
		0.190537, 0.802427, 0.565515,
		32.196712, 37.031292, 50.572956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121384, 36.237816, 50.868279>,  <32.063339, 36.469593, 50.177094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121384, 36.237816, 50.868279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064434, 36.629745, 50.924377>,  <32.030266, 36.864902, 50.958038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064434, 36.629745, 50.924377>,  <32.121384, 36.237816, 50.868279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064434, 36.629745, 50.924377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489309, -0.192838, 0.850523,
		0.860410, 0.052469, 0.506894,
		-0.142375, 0.979827, 0.140246,
		32.021721, 36.923695, 50.966450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243740, 36.320179, 51.641533>,  <32.121384, 36.237816, 50.868279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243740, 36.320179, 51.641533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030155, 36.622185, 51.489307>,  <31.902004, 36.803387, 51.397972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030155, 36.622185, 51.489307>,  <32.243740, 36.320179, 51.641533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030155, 36.622185, 51.489307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464564, 0.114087, 0.878159,
		0.706442, 0.645706, 0.289835,
		-0.533966, 0.755015, -0.380568,
		31.869965, 36.848690, 51.375137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296474, 36.891640, 52.141499>,  <32.243740, 36.320179, 51.641533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296474, 36.891640, 52.141499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967196, 36.934929, 51.918564>,  <31.769627, 36.960903, 51.784801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967196, 36.934929, 51.918564>,  <32.296474, 36.891640, 52.141499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967196, 36.934929, 51.918564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543106, 0.135970, 0.828582,
		0.165455, 0.984784, -0.053153,
		-0.823202, 0.108225, -0.557339,
		31.720236, 36.967396, 51.751362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834763, 37.348915, 52.504570>,  <32.296474, 36.891640, 52.141499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834763, 37.348915, 52.504570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586008, 37.151329, 52.261505>,  <31.436756, 37.032780, 52.115665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586008, 37.151329, 52.261505>,  <31.834763, 37.348915, 52.504570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586008, 37.151329, 52.261505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573325, -0.241387, 0.782963,
		-0.533437, 0.835303, -0.133086,
		-0.621887, -0.493963, -0.607665,
		31.399443, 37.003139, 52.079205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215502, 37.639820, 52.645039>,  <31.834763, 37.348915, 52.504570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215502, 37.639820, 52.645039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124195, 37.286842, 52.480511>,  <31.069410, 37.075054, 52.381794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124195, 37.286842, 52.480511>,  <31.215502, 37.639820, 52.645039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124195, 37.286842, 52.480511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631269, -0.187488, 0.752561,
		-0.741211, 0.431441, -0.514261,
		-0.228268, -0.882444, -0.411324,
		31.055716, 37.022110, 52.357113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485603, 37.530178, 52.835255>,  <31.215502, 37.639820, 52.645039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485603, 37.530178, 52.835255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628998, 37.179947, 52.705730>,  <30.715034, 36.969807, 52.628017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628998, 37.179947, 52.705730>,  <30.485603, 37.530178, 52.835255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628998, 37.179947, 52.705730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665166, -0.482948, 0.569487,
		-0.655014, 0.011236, -0.755533,
		0.358485, -0.875577, -0.323812,
		30.736544, 36.917274, 52.608585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979809, 37.159058, 52.520683>,  <30.485603, 37.530178, 52.835255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979809, 37.159058, 52.520683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250801, 36.901291, 52.662529>,  <30.413397, 36.746632, 52.747635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250801, 36.901291, 52.662529>,  <29.979809, 37.159058, 52.520683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250801, 36.901291, 52.662529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697259, -0.409147, 0.588582,
		-0.234204, -0.646008, -0.726514,
		0.677480, -0.644417, 0.354610,
		30.454044, 36.707966, 52.768913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693012, 36.541153, 52.556919>,  <29.979809, 37.159058, 52.520683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693012, 36.541153, 52.556919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985613, 36.518005, 52.828671>,  <30.161173, 36.504116, 52.991722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985613, 36.518005, 52.828671>,  <29.693012, 36.541153, 52.556919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985613, 36.518005, 52.828671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657806, -0.322102, 0.680839,
		0.179431, -0.944935, -0.273683,
		0.731502, -0.057866, 0.679379,
		30.205063, 36.500645, 53.032486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747484, 35.853710, 52.599430>,  <29.693012, 36.541153, 52.556919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747484, 35.853710, 52.599430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869497, 36.091110, 52.897346>,  <29.942705, 36.233551, 53.076096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.869497, 36.091110, 52.897346>,  <29.747484, 35.853710, 52.599430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869497, 36.091110, 52.897346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611149, -0.477793, 0.631039,
		0.730378, -0.647665, 0.216975,
		0.305033, 0.593501, 0.744790,
		29.961008, 36.269161, 53.120785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289530, 35.768280, 53.196301>,  <29.747484, 35.853710, 52.599430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289530, 35.768280, 53.196301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563278, 36.009445, 53.360317>,  <29.727528, 36.154144, 53.458729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563278, 36.009445, 53.360317>,  <29.289530, 35.768280, 53.196301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563278, 36.009445, 53.360317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437762, -0.109978, 0.892339,
		0.583097, -0.790192, 0.188666,
		0.684370, 0.602911, 0.410043,
		29.768589, 36.190319, 53.483330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175030, 35.519779, 53.864265>,  <29.289530, 35.768280, 53.196301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175030, 35.519779, 53.864265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350887, 35.878090, 53.890503>,  <29.456402, 36.093075, 53.906246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350887, 35.878090, 53.890503>,  <29.175030, 35.519779, 53.864265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350887, 35.878090, 53.890503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240142, 0.046860, 0.969606,
		0.865474, -0.442033, 0.235714,
		0.439643, 0.895774, 0.065594,
		29.482780, 36.146824, 53.910183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757605, 35.204693, 53.604359>,  <29.175030, 35.519779, 53.864265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757605, 35.204693, 53.604359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579380, 35.125305, 53.953548>,  <29.472445, 35.077671, 54.163063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.579380, 35.125305, 53.953548>,  <29.757605, 35.204693, 53.604359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579380, 35.125305, 53.953548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894621, -0.135310, 0.425846,
		0.033605, 0.970722, 0.237843,
		-0.445561, -0.198469, 0.872975,
		29.445711, 35.065765, 54.215443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905127, 35.603382, 54.196014>,  <29.757605, 35.204693, 53.604359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905127, 35.603382, 54.196014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844774, 35.230309, 54.327068>,  <29.808563, 35.006466, 54.405701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844774, 35.230309, 54.327068>,  <29.905127, 35.603382, 54.196014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844774, 35.230309, 54.327068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813497, 0.071156, 0.577199,
		-0.561656, 0.353615, 0.747997,
		-0.150882, -0.932681, 0.327630,
		29.799509, 34.950504, 54.425358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730011, 36.225643, 54.619812>,  <29.905127, 35.603382, 54.196014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730011, 36.225643, 54.619812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822538, 36.517517, 54.877197>,  <29.878054, 36.692642, 55.031628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822538, 36.517517, 54.877197>,  <29.730011, 36.225643, 54.619812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822538, 36.517517, 54.877197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942313, -0.003559, -0.334713,
		-0.241946, 0.683770, -0.688419,
		0.231317, 0.729689, 0.643465,
		29.891933, 36.736423, 55.070236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133200, 36.853188, 54.277573>,  <29.730011, 36.225643, 54.619812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133200, 36.853188, 54.277573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203566, 36.838654, 54.671066>,  <30.245785, 36.829933, 54.907162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203566, 36.838654, 54.671066>,  <30.133200, 36.853188, 54.277573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203566, 36.838654, 54.671066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984065, -0.019771, -0.176704,
		0.025870, 0.999144, 0.032280,
		0.175914, -0.036337, 0.983735,
		30.256340, 36.827751, 54.966187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643633, 37.354603, 54.374008>,  <30.133200, 36.853188, 54.277573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643633, 37.354603, 54.374008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691460, 37.125778, 54.698589>,  <30.720156, 36.988483, 54.893337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691460, 37.125778, 54.698589>,  <30.643633, 37.354603, 54.374008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691460, 37.125778, 54.698589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992293, 0.042068, -0.116558,
		0.032542, 0.819131, 0.572682,
		0.119568, -0.572061, 0.811449,
		30.727329, 36.954159, 54.942024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077965, 37.676365, 54.773129>,  <30.643633, 37.354603, 54.374008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077965, 37.676365, 54.773129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094221, 37.282463, 54.840794>,  <31.103975, 37.046124, 54.881393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094221, 37.282463, 54.840794>,  <31.077965, 37.676365, 54.773129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094221, 37.282463, 54.840794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986777, 0.012973, -0.161561,
		0.156903, 0.173489, 0.972257,
		0.040642, -0.984751, 0.169159,
		31.106415, 36.987038, 54.891541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527021, 37.414955, 55.404236>,  <31.077965, 37.676365, 54.773129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527021, 37.414955, 55.404236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509302, 37.185593, 55.077007>,  <31.498671, 37.047974, 54.880669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509302, 37.185593, 55.077007>,  <31.527021, 37.414955, 55.404236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509302, 37.185593, 55.077007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941501, 0.249880, -0.226130,
		0.334085, -0.780233, 0.528795,
		-0.044299, -0.573408, -0.818071,
		31.496012, 37.013569, 54.831585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248817, 37.281612, 55.320869>,  <31.527021, 37.414955, 55.404236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248817, 37.281612, 55.320869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076408, 37.192497, 54.971107>,  <31.972963, 37.139030, 54.761250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.076408, 37.192497, 54.971107>,  <32.248817, 37.281612, 55.320869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076408, 37.192497, 54.971107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870839, 0.151111, -0.467765,
		0.236343, -0.963085, 0.128878,
		-0.431023, -0.222785, -0.874406,
		31.947102, 37.125664, 54.708786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760700, 36.876942, 54.866901>,  <32.248817, 37.281612, 55.320869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760700, 36.876942, 54.866901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492119, 36.999458, 54.596985>,  <32.330971, 37.072968, 54.435036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492119, 36.999458, 54.596985>,  <32.760700, 36.876942, 54.866901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492119, 36.999458, 54.596985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740890, 0.258689, -0.619808,
		-0.015281, -0.916115, -0.400624,
		-0.671453, 0.306290, -0.674787,
		32.290684, 37.091347, 54.394550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035851, 36.722511, 54.189259>,  <32.760700, 36.876942, 54.866901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035851, 36.722511, 54.189259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775932, 37.020332, 54.128063>,  <32.619984, 37.199024, 54.091347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775932, 37.020332, 54.128063>,  <33.035851, 36.722511, 54.189259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775932, 37.020332, 54.128063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688057, 0.490623, -0.534665,
		-0.323027, -0.452688, -0.831100,
		-0.649793, 0.744556, -0.152991,
		32.580994, 37.243698, 54.082165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175373, 36.961910, 53.580551>,  <33.035851, 36.722511, 54.189259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175373, 36.961910, 53.580551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951046, 37.258682, 53.727531>,  <32.816452, 37.436745, 53.815720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951046, 37.258682, 53.727531>,  <33.175373, 36.961910, 53.580551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951046, 37.258682, 53.727531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620901, 0.670472, -0.406139,
		-0.547696, 0.000383, -0.836678,
		-0.560813, 0.741935, 0.367453,
		32.782803, 37.481262, 53.837769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001999, 37.331284, 52.931538>,  <33.175373, 36.961910, 53.580551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001999, 37.331284, 52.931538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969456, 37.575165, 53.246914>,  <32.949928, 37.721493, 53.436142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969456, 37.575165, 53.246914>,  <33.001999, 37.331284, 52.931538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969456, 37.575165, 53.246914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657963, 0.627051, -0.417002,
		-0.748642, 0.484841, -0.452177,
		-0.081358, 0.609701, 0.788445,
		32.945049, 37.758076, 53.483448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962601, 38.044941, 52.627911>,  <33.001999, 37.331284, 52.931538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962601, 38.044941, 52.627911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063744, 38.123901, 53.006771>,  <33.124428, 38.171276, 53.234089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063744, 38.123901, 53.006771>,  <32.962601, 38.044941, 52.627911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063744, 38.123901, 53.006771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617533, 0.720686, -0.315063,
		-0.744793, 0.664563, 0.060327,
		0.252856, 0.197402, 0.947152,
		33.139599, 38.183121, 53.290916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978790, 38.788528, 52.640072>,  <32.962601, 38.044941, 52.627911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978790, 38.788528, 52.640072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191139, 38.639763, 52.944664>,  <33.318550, 38.550503, 53.127419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191139, 38.639763, 52.944664>,  <32.978790, 38.788528, 52.640072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191139, 38.639763, 52.944664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767925, 0.591153, -0.246637,
		-0.358422, 0.715692, 0.599432,
		0.530872, -0.371918, 0.761480,
		33.350399, 38.528187, 53.173107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259155, 39.382408, 53.066761>,  <32.978790, 38.788528, 52.640072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259155, 39.382408, 53.066761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502560, 39.071548, 53.130951>,  <33.648602, 38.885033, 53.169464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502560, 39.071548, 53.130951>,  <33.259155, 39.382408, 53.066761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502560, 39.071548, 53.130951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793536, 0.597043, -0.117645,
		-0.004380, 0.198928, 0.980004,
		0.608508, -0.777153, 0.160472,
		33.685112, 38.838402, 53.179092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782646, 39.648167, 53.401848>,  <33.259155, 39.382408, 53.066761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782646, 39.648167, 53.401848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956253, 39.310936, 53.274826>,  <34.060417, 39.108597, 53.198612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.956253, 39.310936, 53.274826>,  <33.782646, 39.648167, 53.401848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956253, 39.310936, 53.274826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822470, 0.514650, -0.242234,
		0.367651, -0.156042, 0.916779,
		0.434022, -0.843081, -0.317552,
		34.086460, 39.058010, 53.179562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447048, 39.570171, 53.753281>,  <33.782646, 39.648167, 53.401848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447048, 39.570171, 53.753281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466492, 39.354706, 53.416832>,  <34.478157, 39.225426, 53.214962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466492, 39.354706, 53.416832>,  <34.447048, 39.570171, 53.753281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466492, 39.354706, 53.416832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738532, 0.586344, -0.332823,
		0.672464, -0.605014, 0.426322,
		0.048608, -0.538664, -0.841118,
		34.481075, 39.193108, 53.164497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156773, 39.478184, 53.588737>,  <34.447048, 39.570171, 53.753281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156773, 39.478184, 53.588737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984879, 39.401207, 53.235855>,  <34.881741, 39.355019, 53.024124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984879, 39.401207, 53.235855>,  <35.156773, 39.478184, 53.588737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984879, 39.401207, 53.235855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771806, 0.428818, -0.469501,
		0.468660, -0.882655, -0.035748,
		-0.429737, -0.192446, -0.882208,
		34.855957, 39.343472, 52.971191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703800, 39.191628, 53.176445>,  <35.156773, 39.478184, 53.588737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703800, 39.191628, 53.176445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421188, 39.326256, 52.927437>,  <35.251621, 39.407032, 52.778030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421188, 39.326256, 52.927437>,  <35.703800, 39.191628, 53.176445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421188, 39.326256, 52.927437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705931, 0.397082, -0.586504,
		0.049790, -0.853840, -0.518148,
		-0.706528, 0.336575, -0.622524,
		35.209229, 39.427227, 52.740681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953346, 39.028275, 52.475739>,  <35.703800, 39.191628, 53.176445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953346, 39.028275, 52.475739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680305, 39.316780, 52.428677>,  <35.516483, 39.489883, 52.400440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680305, 39.316780, 52.428677>,  <35.953346, 39.028275, 52.475739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680305, 39.316780, 52.428677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576779, 0.432851, -0.692796,
		-0.448758, -0.540764, -0.711471,
		-0.682599, 0.721259, -0.117656,
		35.475525, 39.533157, 52.393379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037067, 39.149994, 51.848270>,  <35.953346, 39.028275, 52.475739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037067, 39.149994, 51.848270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848663, 39.477348, 51.979958>,  <35.735622, 39.673763, 52.058971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848663, 39.477348, 51.979958>,  <36.037067, 39.149994, 51.848270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848663, 39.477348, 51.979958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611244, 0.571882, -0.547113,
		-0.636027, -0.056461, -0.769598,
		-0.471010, 0.818391, 0.329221,
		35.707359, 39.722866, 52.078724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826393, 39.474361, 51.293236>,  <36.037067, 39.149994, 51.848270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826393, 39.474361, 51.293236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811676, 39.751709, 51.581093>,  <35.802845, 39.918118, 51.753807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811676, 39.751709, 51.581093>,  <35.826393, 39.474361, 51.293236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811676, 39.751709, 51.581093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532332, 0.623052, -0.573087,
		-0.845735, 0.362002, -0.392029,
		-0.036796, 0.693370, 0.719642,
		35.800636, 39.959721, 51.796986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672050, 40.041512, 50.946835>,  <35.826393, 39.474361, 51.293236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672050, 40.041512, 50.946835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847595, 40.164848, 51.284431>,  <35.952923, 40.238850, 51.486988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847595, 40.164848, 51.284431>,  <35.672050, 40.041512, 50.946835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847595, 40.164848, 51.284431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599188, 0.599530, -0.530602,
		-0.669606, 0.738572, 0.078356,
		0.438864, 0.308344, 0.843992,
		35.979256, 40.257351, 51.537628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653568, 40.684994, 50.750278>,  <35.672050, 40.041512, 50.946835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653568, 40.684994, 50.750278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914696, 40.659035, 51.052170>,  <36.071373, 40.643459, 51.233303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914696, 40.659035, 51.052170>,  <35.653568, 40.684994, 50.750278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914696, 40.659035, 51.052170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627028, 0.605338, -0.490308,
		-0.425046, 0.793319, 0.435868,
		0.652818, -0.064898, 0.754730,
		36.110542, 40.639565, 51.278587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882019, 41.352547, 50.970230>,  <35.653568, 40.684994, 50.750278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882019, 41.352547, 50.970230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164322, 41.083870, 51.060318>,  <36.333706, 40.922665, 51.114372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164322, 41.083870, 51.060318>,  <35.882019, 41.352547, 50.970230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164322, 41.083870, 51.060318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687486, 0.572583, -0.446668,
		0.171066, 0.470078, 0.865888,
		0.705762, -0.671696, 0.225222,
		36.376049, 40.882362, 51.127884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515747, 41.766098, 51.169559>,  <35.882019, 41.352547, 50.970230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515747, 41.766098, 51.169559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646690, 41.397568, 51.085663>,  <36.725258, 41.176449, 51.035324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646690, 41.397568, 51.085663>,  <36.515747, 41.766098, 51.169559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646690, 41.397568, 51.085663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695475, 0.385201, -0.606577,
		0.639648, 0.052699, 0.766859,
		0.327361, -0.921327, -0.209742,
		36.744900, 41.121170, 51.022739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250957, 41.894493, 51.121063>,  <36.515747, 41.766098, 51.169559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250957, 41.894493, 51.121063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165306, 41.561493, 50.916676>,  <37.113914, 41.361691, 50.794044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165306, 41.561493, 50.916676>,  <37.250957, 41.894493, 51.121063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165306, 41.561493, 50.916676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689080, 0.242020, -0.683078,
		0.692329, -0.498362, 0.521839,
		-0.214125, -0.832503, -0.510969,
		37.101067, 41.311741, 50.763386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786884, 41.890179, 50.764462>,  <37.250957, 41.894493, 51.121063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786884, 41.890179, 50.764462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587147, 41.600327, 50.574486>,  <37.467304, 41.426414, 50.460499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587147, 41.600327, 50.574486>,  <37.786884, 41.890179, 50.764462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587147, 41.600327, 50.574486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741973, -0.074609, -0.666266,
		0.447363, -0.685086, 0.574912,
		-0.499343, -0.724632, -0.474938,
		37.437344, 41.382938, 50.432003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324036, 41.380173, 50.632187>,  <37.786884, 41.890179, 50.764462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324036, 41.380173, 50.632187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015865, 41.337326, 50.380802>,  <37.830963, 41.311619, 50.229969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015865, 41.337326, 50.380802>,  <38.324036, 41.380173, 50.632187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015865, 41.337326, 50.380802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637518, -0.134530, -0.758599,
		-0.003289, -0.985103, 0.171934,
		-0.770428, -0.107116, -0.628463,
		37.784737, 41.305191, 50.192265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520168, 40.898060, 50.230682>,  <38.324036, 41.380173, 50.632187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520168, 40.898060, 50.230682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236458, 41.091614, 50.025635>,  <38.066231, 41.207748, 49.902607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236458, 41.091614, 50.025635>,  <38.520168, 40.898060, 50.230682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236458, 41.091614, 50.025635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548988, -0.076987, -0.832277,
		-0.442193, -0.871737, -0.211043,
		-0.709279, 0.483888, -0.512616,
		38.023674, 41.236778, 49.871849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290092, 40.395256, 49.714359>,  <38.520168, 40.898060, 50.230682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290092, 40.395256, 49.714359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205620, 40.768532, 49.598038>,  <38.154938, 40.992496, 49.528244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205620, 40.768532, 49.598038>,  <38.290092, 40.395256, 49.714359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205620, 40.768532, 49.598038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539848, -0.136668, -0.830594,
		-0.814843, -0.332393, -0.474917,
		-0.211177, 0.933186, -0.290805,
		38.142265, 41.048489, 49.510796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136784, 40.320869, 48.897060>,  <38.290092, 40.395256, 49.714359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136784, 40.320869, 48.897060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239372, 40.699509, 48.975212>,  <38.300926, 40.926693, 49.022102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239372, 40.699509, 48.975212>,  <38.136784, 40.320869, 48.897060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239372, 40.699509, 48.975212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592601, 0.005696, -0.805476,
		-0.763576, 0.322361, -0.559496,
		0.256467, 0.946600, 0.195381,
		38.316311, 40.983490, 49.033825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283722, 40.541447, 48.291061>,  <38.136784, 40.320869, 48.897060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283722, 40.541447, 48.291061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428993, 40.857826, 48.488041>,  <38.516155, 41.047653, 48.606228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428993, 40.857826, 48.488041>,  <38.283722, 40.541447, 48.291061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428993, 40.857826, 48.488041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606975, 0.200150, -0.769104,
		-0.706883, 0.578227, -0.407394,
		0.363177, 0.790945, 0.492451,
		38.537945, 41.095108, 48.635777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270309, 41.065369, 47.806152>,  <38.283722, 40.541447, 48.291061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270309, 41.065369, 47.806152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550018, 41.175507, 48.070030>,  <38.717846, 41.241589, 48.228355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550018, 41.175507, 48.070030>,  <38.270309, 41.065369, 47.806152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550018, 41.175507, 48.070030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600719, 0.273893, -0.751078,
		-0.387491, 0.921503, 0.026123,
		0.699276, 0.275344, 0.659696,
		38.759800, 41.258110, 48.267941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557117, 41.644730, 47.434799>,  <38.270309, 41.065369, 47.806152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557117, 41.644730, 47.434799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808514, 41.551880, 47.731747>,  <38.959351, 41.496170, 47.909916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808514, 41.551880, 47.731747>,  <38.557117, 41.644730, 47.434799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808514, 41.551880, 47.731747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770266, 0.318394, -0.552553,
		-0.108108, 0.919100, 0.378903,
		0.628492, -0.232121, 0.742373,
		38.997063, 41.482243, 47.954460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893372, 42.294277, 47.739902>,  <38.557117, 41.644730, 47.434799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893372, 42.294277, 47.739902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139183, 41.985901, 47.806843>,  <39.286671, 41.800877, 47.847008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139183, 41.985901, 47.806843>,  <38.893372, 42.294277, 47.739902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139183, 41.985901, 47.806843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724774, 0.467951, -0.505693,
		0.311545, 0.432056, 0.846326,
		0.614527, -0.770940, 0.167355,
		39.323540, 41.754620, 47.857048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452393, 42.666340, 47.876278>,  <38.893372, 42.294277, 47.739902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452393, 42.666340, 47.876278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571007, 42.292152, 47.799385>,  <39.642178, 42.067638, 47.753250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571007, 42.292152, 47.799385>,  <39.452393, 42.666340, 47.876278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571007, 42.292152, 47.799385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731403, 0.351888, -0.584144,
		0.614096, 0.032622, 0.788557,
		0.296540, -0.935473, -0.192234,
		39.659969, 42.011509, 47.741714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186172, 42.716259, 48.086411>,  <39.452393, 42.666340, 47.876278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186172, 42.716259, 48.086411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174820, 42.377769, 47.873581>,  <40.168007, 42.174675, 47.745884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174820, 42.377769, 47.873581>,  <40.186172, 42.716259, 48.086411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174820, 42.377769, 47.873581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785845, 0.310072, -0.535073,
		0.617772, -0.433312, 0.656200,
		-0.028384, -0.846225, -0.532069,
		40.166306, 42.123901, 47.713959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858944, 42.459366, 48.068642>,  <40.186172, 42.716259, 48.086411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858944, 42.459366, 48.068642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704147, 42.272087, 47.750893>,  <40.611267, 42.159718, 47.560246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704147, 42.272087, 47.750893>,  <40.858944, 42.459366, 48.068642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704147, 42.272087, 47.750893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793348, 0.269986, -0.545626,
		0.469930, -0.841366, 0.266962,
		-0.386995, -0.468200, -0.794370,
		40.588047, 42.131626, 47.512581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423195, 42.143555, 47.807384>,  <40.858944, 42.459366, 48.068642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423195, 42.143555, 47.807384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159149, 42.163094, 47.507553>,  <41.000721, 42.174816, 47.327656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159149, 42.163094, 47.507553>,  <41.423195, 42.143555, 47.807384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159149, 42.163094, 47.507553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716840, 0.339180, -0.609177,
		0.224487, -0.939452, -0.258910,
		-0.660110, 0.048845, -0.749579,
		40.961117, 42.177746, 47.282681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824574, 41.905392, 47.206715>,  <41.423195, 42.143555, 47.807384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824574, 41.905392, 47.206715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516624, 42.102341, 47.044296>,  <41.331856, 42.220512, 46.946846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.516624, 42.102341, 47.044296>,  <41.824574, 41.905392, 47.206715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516624, 42.102341, 47.044296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631254, 0.493861, -0.598012,
		-0.093918, -0.716706, -0.691022,
		-0.769868, 0.492375, -0.406041,
		41.285664, 42.250053, 46.922485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975025, 41.970608, 46.508438>,  <41.824574, 41.905392, 47.206715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975025, 41.970608, 46.508438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680504, 42.238960, 46.543705>,  <41.503792, 42.399971, 46.564865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680504, 42.238960, 46.543705>,  <41.975025, 41.970608, 46.508438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680504, 42.238960, 46.543705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504527, 0.631152, -0.589152,
		-0.450901, -0.389310, -0.803198,
		-0.736302, 0.670884, 0.088169,
		41.459614, 42.440224, 46.570156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656353, 42.167763, 45.785908>,  <41.975025, 41.970608, 46.508438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656353, 42.167763, 45.785908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580193, 42.457100, 46.051395>,  <41.534496, 42.630703, 46.210690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.580193, 42.457100, 46.051395>,  <41.656353, 42.167763, 45.785908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580193, 42.457100, 46.051395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413257, 0.672326, -0.614163,
		-0.890485, 0.157348, -0.426939,
		-0.190405, 0.723339, 0.663722,
		41.523071, 42.674103, 46.250511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412609, 42.811871, 45.398518>,  <41.656353, 42.167763, 45.785908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412609, 42.811871, 45.398518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552238, 42.933037, 45.753231>,  <41.636017, 43.005737, 45.966061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552238, 42.933037, 45.753231>,  <41.412609, 42.811871, 45.398518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552238, 42.933037, 45.753231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357970, 0.831442, -0.424924,
		-0.866030, 0.465772, 0.181795,
		0.349070, 0.302920, 0.886786,
		41.656960, 43.023914, 46.019268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243523, 43.600033, 45.431190>,  <41.412609, 42.811871, 45.398518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243523, 43.600033, 45.431190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530037, 43.531349, 45.701729>,  <41.701946, 43.490139, 45.864052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530037, 43.531349, 45.701729>,  <41.243523, 43.600033, 45.431190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530037, 43.531349, 45.701729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503370, 0.798408, -0.330397,
		-0.483267, 0.577112, 0.658327,
		0.716290, -0.171712, 0.676346,
		41.744923, 43.479836, 45.904633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358650, 44.246544, 45.746960>,  <41.243523, 43.600033, 45.431190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358650, 44.246544, 45.746960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681763, 44.029724, 45.839626>,  <41.875629, 43.899632, 45.895226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681763, 44.029724, 45.839626>,  <41.358650, 44.246544, 45.746960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681763, 44.029724, 45.839626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587823, 0.711260, -0.385453,
		0.044163, 0.447539, 0.893173,
		0.807783, -0.542050, 0.231663,
		41.924099, 43.867107, 45.909126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773308, 44.668846, 46.230640>,  <41.358650, 44.246544, 45.746960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773308, 44.668846, 46.230640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033833, 44.405663, 46.079437>,  <42.190147, 44.247753, 45.988716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033833, 44.405663, 46.079437>,  <41.773308, 44.668846, 46.230640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033833, 44.405663, 46.079437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619543, 0.748724, -0.235752,
		0.438136, -0.080642, 0.895284,
		0.651309, -0.657959, -0.378004,
		42.229225, 44.208275, 45.966038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931000, 44.404156, 46.953392>,  <41.773308, 44.668846, 46.230640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931000, 44.404156, 46.953392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973598, 44.801880, 46.953545>,  <41.999157, 45.040516, 46.953636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973598, 44.801880, 46.953545>,  <41.931000, 44.404156, 46.953392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973598, 44.801880, 46.953545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460820, 0.049018, 0.886139,
		0.881080, -0.094551, 0.463420,
		0.106501, 0.994313, 0.000383,
		42.005550, 45.100174, 46.953659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261536, 44.555519, 47.582138>,  <41.931000, 44.404156, 46.953392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261536, 44.555519, 47.582138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076927, 44.881500, 47.441936>,  <41.966164, 45.077087, 47.357815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076927, 44.881500, 47.441936>,  <42.261536, 44.555519, 47.582138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076927, 44.881500, 47.441936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429234, 0.140631, 0.892178,
		0.776374, 0.562204, 0.284901,
		-0.461520, 0.814953, -0.350500,
		41.938473, 45.125988, 47.336788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407780, 45.173569, 47.980045>,  <42.261536, 44.555519, 47.582138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407780, 45.173569, 47.980045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068146, 45.265572, 47.789822>,  <41.864365, 45.320774, 47.675690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068146, 45.265572, 47.789822>,  <42.407780, 45.173569, 47.980045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068146, 45.265572, 47.789822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441563, 0.185119, 0.877926,
		0.289965, 0.955420, -0.055619,
		-0.849084, 0.230008, -0.475556,
		41.813419, 45.334576, 47.647156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027473, 45.636051, 48.446667>,  <42.407780, 45.173569, 47.980045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027473, 45.636051, 48.446667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744705, 45.505112, 48.195877>,  <41.575043, 45.426548, 48.045403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744705, 45.505112, 48.195877>,  <42.027473, 45.636051, 48.446667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744705, 45.505112, 48.195877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688777, 0.117128, 0.715450,
		-0.160765, 0.937616, -0.308271,
		-0.706924, -0.327349, -0.626978,
		41.532627, 45.406906, 48.007782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471966, 46.103241, 48.518761>,  <42.027473, 45.636051, 48.446667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471966, 46.103241, 48.518761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341125, 45.756111, 48.369156>,  <41.262623, 45.547832, 48.279392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341125, 45.756111, 48.369156>,  <41.471966, 46.103241, 48.518761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341125, 45.756111, 48.369156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731499, -0.018039, 0.681603,
		-0.598258, 0.496545, -0.628911,
		-0.327102, -0.867823, -0.374015,
		41.242996, 45.495766, 48.256950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656242, 46.118279, 48.631691>,  <41.471966, 46.103241, 48.518761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656242, 46.118279, 48.631691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765121, 45.735359, 48.592751>,  <40.830448, 45.505608, 48.569386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765121, 45.735359, 48.592751>,  <40.656242, 46.118279, 48.631691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765121, 45.735359, 48.592751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676908, -0.262408, 0.687705,
		-0.683887, -0.121297, -0.719434,
		0.272202, -0.957303, -0.097350,
		40.846783, 45.448170, 48.563545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045094, 45.758991, 48.518543>,  <40.656242, 46.118279, 48.631691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045094, 45.758991, 48.518543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293350, 45.469376, 48.638924>,  <40.442307, 45.295609, 48.711151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293350, 45.469376, 48.638924>,  <40.045094, 45.758991, 48.518543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293350, 45.469376, 48.638924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661944, -0.278095, 0.696056,
		-0.420276, -0.631216, -0.651870,
		0.620643, -0.724036, 0.300953,
		40.479542, 45.252163, 48.729210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637230, 45.281162, 48.530884>,  <40.045094, 45.758991, 48.518543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637230, 45.281162, 48.530884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925571, 45.109261, 48.748394>,  <40.098576, 45.006119, 48.878899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925571, 45.109261, 48.748394>,  <39.637230, 45.281162, 48.530884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925571, 45.109261, 48.748394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691095, -0.386177, 0.610945,
		-0.052564, -0.816197, -0.575377,
		0.720850, -0.429754, 0.543771,
		40.141827, 44.980335, 48.911526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440460, 44.533386, 48.642067>,  <39.637230, 45.281162, 48.530884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440460, 44.533386, 48.642067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698948, 44.631058, 48.931282>,  <39.854038, 44.689659, 49.104813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698948, 44.631058, 48.931282>,  <39.440460, 44.533386, 48.642067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698948, 44.631058, 48.931282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630949, -0.362034, 0.686174,
		0.429313, -0.899616, -0.079887,
		0.646215, 0.244179, 0.723038,
		39.892811, 44.704311, 49.148193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459099, 43.988586, 49.084686>,  <39.440460, 44.533386, 48.642067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459099, 43.988586, 49.084686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608467, 44.277725, 49.317253>,  <39.698090, 44.451210, 49.456791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608467, 44.277725, 49.317253>,  <39.459099, 43.988586, 49.084686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608467, 44.277725, 49.317253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570191, -0.315530, 0.758501,
		0.731736, -0.614759, 0.294336,
		0.373423, 0.722850, 0.581415,
		39.720493, 44.494579, 49.491676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663219, 43.622566, 49.727577>,  <39.459099, 43.988586, 49.084686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663219, 43.622566, 49.727577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625439, 44.014519, 49.797913>,  <39.602768, 44.249691, 49.840115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625439, 44.014519, 49.797913>,  <39.663219, 43.622566, 49.727577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625439, 44.014519, 49.797913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401488, -0.199122, 0.893956,
		0.910981, 0.013841, 0.412217,
		-0.094455, 0.979877, 0.175839,
		39.597103, 44.308483, 49.850666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944149, 43.757767, 50.374256>,  <39.663219, 43.622566, 49.727577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944149, 43.757767, 50.374256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685062, 44.056931, 50.316170>,  <39.529610, 44.236431, 50.281319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685062, 44.056931, 50.316170>,  <39.944149, 43.757767, 50.374256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685062, 44.056931, 50.316170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478255, -0.250773, 0.841656,
		0.593071, 0.614605, 0.520123,
		-0.647718, 0.747913, -0.145212,
		39.490746, 44.281303, 50.272606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806293, 44.005611, 51.007511>,  <39.944149, 43.757767, 50.374256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806293, 44.005611, 51.007511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497696, 44.162704, 50.807289>,  <39.312538, 44.256958, 50.687157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497696, 44.162704, 50.807289>,  <39.806293, 44.005611, 51.007511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497696, 44.162704, 50.807289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610651, -0.236221, 0.755847,
		0.178602, 0.888798, 0.422065,
		-0.771497, 0.392730, -0.500556,
		39.266247, 44.280525, 50.657124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425194, 44.304672, 51.572811>,  <39.806293, 44.005611, 51.007511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425194, 44.304672, 51.572811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166618, 44.265717, 51.270119>,  <39.011475, 44.242344, 51.088505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166618, 44.265717, 51.270119>,  <39.425194, 44.304672, 51.572811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166618, 44.265717, 51.270119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692737, -0.340739, 0.635621,
		-0.319748, 0.935101, 0.152801,
		-0.646434, -0.097387, -0.756729,
		38.972687, 44.236500, 51.043098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811218, 44.730976, 51.789154>,  <39.425194, 44.304672, 51.572811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811218, 44.730976, 51.789154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709290, 44.474922, 51.499245>,  <38.648132, 44.321289, 51.325298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709290, 44.474922, 51.499245>,  <38.811218, 44.730976, 51.789154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709290, 44.474922, 51.499245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778894, -0.308303, 0.546144,
		-0.573055, 0.703689, -0.420035,
		-0.254818, -0.640133, -0.724774,
		38.632843, 44.282883, 51.281811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151577, 44.858700, 51.676567>,  <38.811218, 44.730976, 51.789154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151577, 44.858700, 51.676567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199730, 44.484932, 51.542484>,  <38.228622, 44.260670, 51.462036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199730, 44.484932, 51.542484>,  <38.151577, 44.858700, 51.676567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199730, 44.484932, 51.542484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747959, -0.307392, 0.588276,
		-0.652738, 0.179904, -0.735913,
		0.120380, -0.934422, -0.335207,
		38.235844, 44.204605, 51.441921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442680, 44.585125, 51.527042>,  <38.151577, 44.858700, 51.676567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442680, 44.585125, 51.527042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672211, 44.258194, 51.547810>,  <37.809929, 44.062035, 51.560272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672211, 44.258194, 51.547810>,  <37.442680, 44.585125, 51.527042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672211, 44.258194, 51.547810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701018, -0.457413, 0.547127,
		-0.423430, -0.350359, -0.835438,
		0.573831, -0.817326, 0.051925,
		37.844360, 44.012997, 51.563385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999287, 43.981762, 51.362480>,  <37.442680, 44.585125, 51.527042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999287, 43.981762, 51.362480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309433, 43.797157, 51.534904>,  <37.495522, 43.686394, 51.638359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309433, 43.797157, 51.534904>,  <36.999287, 43.981762, 51.362480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309433, 43.797157, 51.534904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623171, -0.448622, 0.640621,
		-0.102270, -0.765342, -0.635447,
		0.775370, -0.461509, 0.431059,
		37.542046, 43.658703, 51.664223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909306, 43.273628, 51.295082>,  <36.999287, 43.981762, 51.362480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909306, 43.273628, 51.295082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139538, 43.324982, 51.618126>,  <37.277676, 43.355793, 51.811951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139538, 43.324982, 51.618126>,  <36.909306, 43.273628, 51.295082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139538, 43.324982, 51.618126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642731, -0.539566, 0.543843,
		0.505576, -0.832098, -0.228048,
		0.575578, 0.128380, 0.807607,
		37.312210, 43.363495, 51.860409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834862, 42.637165, 51.685719>,  <36.909306, 43.273628, 51.295082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834862, 42.637165, 51.685719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000130, 42.875931, 51.960815>,  <37.099289, 43.019192, 52.125874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000130, 42.875931, 51.960815>,  <36.834862, 42.637165, 51.685719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000130, 42.875931, 51.960815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584508, -0.405291, 0.702915,
		0.698315, -0.692411, 0.181448,
		0.413167, 0.596914, 0.687740,
		37.124081, 43.055004, 52.167137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203403, 42.216530, 52.182812>,  <36.834862, 42.637165, 51.685719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203403, 42.216530, 52.182812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088692, 42.558846, 52.355042>,  <37.019867, 42.764233, 52.458378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088692, 42.558846, 52.355042>,  <37.203403, 42.216530, 52.182812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088692, 42.558846, 52.355042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532218, -0.516030, 0.671161,
		0.796557, -0.036684, 0.603449,
		-0.286777, 0.855785, 0.430571,
		37.002659, 42.815582, 52.484211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240078, 42.028194, 52.846451>,  <37.203403, 42.216530, 52.182812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240078, 42.028194, 52.846451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986500, 42.335258, 52.808891>,  <36.834354, 42.519497, 52.786358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986500, 42.335258, 52.808891>,  <37.240078, 42.028194, 52.846451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986500, 42.335258, 52.808891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545190, -0.357481, 0.758271,
		0.548525, 0.531894, 0.645142,
		-0.633946, 0.767656, -0.093896,
		36.796314, 42.565556, 52.780724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847031, 42.038952, 53.468719>,  <37.240078, 42.028194, 52.846451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847031, 42.038952, 53.468719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617344, 42.237122, 53.208004>,  <36.479530, 42.356022, 53.051575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617344, 42.237122, 53.208004>,  <36.847031, 42.038952, 53.468719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617344, 42.237122, 53.208004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817284, -0.393695, 0.420773,
		-0.048148, 0.774315, 0.630966,
		-0.574219, 0.495420, -0.651791,
		36.445080, 42.385746, 53.012466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204369, 41.997646, 53.738937>,  <36.847031, 42.038952, 53.468719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204369, 41.997646, 53.738937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074089, 42.151337, 53.393387>,  <35.995922, 42.243549, 53.186054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074089, 42.151337, 53.393387>,  <36.204369, 41.997646, 53.738937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074089, 42.151337, 53.393387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941729, -0.213068, 0.260285,
		-0.084057, 0.898317, 0.431233,
		-0.325700, 0.384226, -0.863881,
		35.976379, 42.266605, 53.134224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543255, 42.450104, 53.922798>,  <36.204369, 41.997646, 53.738937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543255, 42.450104, 53.922798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534019, 42.340477, 53.538223>,  <35.528477, 42.274700, 53.307480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534019, 42.340477, 53.538223>,  <35.543255, 42.450104, 53.922798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534019, 42.340477, 53.538223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957477, -0.270579, 0.100127,
		-0.287585, 0.922862, -0.256166,
		-0.023090, -0.274068, -0.961433,
		35.527092, 42.258255, 53.249794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832695, 42.720654, 53.733494>,  <35.543255, 42.450104, 53.922798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832695, 42.720654, 53.733494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967987, 42.481339, 53.442936>,  <35.049160, 42.337749, 53.268600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967987, 42.481339, 53.442936>,  <34.832695, 42.720654, 53.733494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967987, 42.481339, 53.442936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939746, -0.173895, -0.294343,
		0.049786, 0.782181, -0.621059,
		0.338228, -0.598292, -0.726394,
		35.069454, 42.301849, 53.225018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571251, 42.948154, 53.029507>,  <34.832695, 42.720654, 53.733494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571251, 42.948154, 53.029507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640739, 42.555489, 53.060883>,  <34.682434, 42.319889, 53.079708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640739, 42.555489, 53.060883>,  <34.571251, 42.948154, 53.029507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640739, 42.555489, 53.060883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946500, -0.188430, -0.261977,
		0.271954, -0.028733, -0.961881,
		0.173720, -0.981666, 0.078440,
		34.692856, 42.260990, 53.084415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188347, 42.619747, 52.523563>,  <34.571251, 42.948154, 53.029507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188347, 42.619747, 52.523563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300514, 42.297157, 52.731781>,  <34.367813, 42.103603, 52.856712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300514, 42.297157, 52.731781>,  <34.188347, 42.619747, 52.523563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300514, 42.297157, 52.731781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820234, -0.483007, -0.306464,
		0.498581, -0.341028, -0.796942,
		0.280416, -0.806476, 0.520541,
		34.384640, 42.055214, 52.887943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829151, 42.100231, 52.153915>,  <34.188347, 42.619747, 52.523563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829151, 42.100231, 52.153915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926270, 41.909576, 52.491879>,  <33.984539, 41.795181, 52.694656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926270, 41.909576, 52.491879>,  <33.829151, 42.100231, 52.153915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926270, 41.909576, 52.491879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912181, -0.408563, 0.031641,
		0.330116, -0.778390, -0.533978,
		0.242793, -0.476640, 0.844906,
		33.999107, 41.766586, 52.745350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793320, 41.283039, 52.149200>,  <33.829151, 42.100231, 52.153915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793320, 41.283039, 52.149200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759834, 41.354408, 52.541355>,  <33.739742, 41.397228, 52.776649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759834, 41.354408, 52.541355>,  <33.793320, 41.283039, 52.149200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759834, 41.354408, 52.541355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868499, -0.495432, 0.016006,
		0.488571, -0.850125, 0.196435,
		-0.083713, 0.178424, 0.980386,
		33.734722, 41.407936, 52.835472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647354, 40.737587, 52.416550>,  <33.793320, 41.283039, 52.149200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647354, 40.737587, 52.416550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523033, 40.953506, 52.729477>,  <33.448441, 41.083057, 52.917233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523033, 40.953506, 52.729477>,  <33.647354, 40.737587, 52.416550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523033, 40.953506, 52.729477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733519, -0.659650, 0.163742,
		0.604443, -0.522954, 0.600972,
		-0.310801, 0.539797, 0.782318,
		33.429794, 41.115444, 52.964172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544086, 40.308926, 53.021172>,  <33.647354, 40.737587, 52.416550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544086, 40.308926, 53.021172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317963, 40.624405, 53.117825>,  <33.182289, 40.813690, 53.175816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317963, 40.624405, 53.117825>,  <33.544086, 40.308926, 53.021172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317963, 40.624405, 53.117825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719899, -0.614731, 0.322259,
		0.402701, 0.008228, 0.915294,
		-0.565311, 0.788694, 0.241630,
		33.148369, 40.861012, 53.190315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191307, 40.012684, 53.557404>,  <33.544086, 40.308926, 53.021172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191307, 40.012684, 53.557404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991257, 40.346840, 53.466190>,  <32.871227, 40.547333, 53.411461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991257, 40.346840, 53.466190>,  <33.191307, 40.012684, 53.557404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991257, 40.346840, 53.466190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842531, -0.408597, 0.350984,
		0.200033, 0.367662, 0.908191,
		-0.500128, 0.835388, -0.228034,
		32.841217, 40.597458, 53.397781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817692, 40.144333, 54.174595>,  <33.191307, 40.012684, 53.557404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817692, 40.144333, 54.174595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627075, 40.304085, 53.861317>,  <32.512707, 40.399937, 53.673347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627075, 40.304085, 53.861317>,  <32.817692, 40.144333, 54.174595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627075, 40.304085, 53.861317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877007, -0.278163, 0.391771,
		-0.061390, 0.873566, 0.482819,
		-0.476540, 0.399385, -0.783200,
		32.484112, 40.423901, 53.626358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345688, 40.658165, 54.490654>,  <32.817692, 40.144333, 54.174595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345688, 40.658165, 54.490654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214760, 40.604324, 54.116543>,  <32.136204, 40.572021, 53.892075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214760, 40.604324, 54.116543>,  <32.345688, 40.658165, 54.490654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214760, 40.604324, 54.116543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917930, -0.189554, 0.348530,
		-0.224197, 0.972601, -0.061505,
		-0.327322, -0.134597, -0.935277,
		32.116562, 40.563946, 53.835960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909458, 41.140049, 54.428310>,  <32.345688, 40.658165, 54.490654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909458, 41.140049, 54.428310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819607, 40.841248, 54.178024>,  <31.765696, 40.661964, 54.027851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819607, 40.841248, 54.178024>,  <31.909458, 41.140049, 54.428310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819607, 40.841248, 54.178024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875835, -0.126702, 0.465682,
		-0.427147, 0.652631, -0.625794,
		-0.224629, -0.747007, -0.625718,
		31.752218, 40.617146, 53.990311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226049, 41.181782, 54.383595>,  <31.909458, 41.140049, 54.428310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226049, 41.181782, 54.383595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311529, 40.808685, 54.267441>,  <31.362818, 40.584827, 54.197746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311529, 40.808685, 54.267441>,  <31.226049, 41.181782, 54.383595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311529, 40.808685, 54.267441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757001, -0.346000, 0.554287,
		-0.617481, 0.101373, -0.780026,
		0.213699, -0.932742, -0.290388,
		31.375639, 40.528862, 54.180325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525669, 40.881733, 54.299023>,  <31.226049, 41.181782, 54.383595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525669, 40.881733, 54.299023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760763, 40.560448, 54.337845>,  <30.901819, 40.367676, 54.361137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760763, 40.560448, 54.337845>,  <30.525669, 40.881733, 54.299023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760763, 40.560448, 54.337845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638629, -0.386933, 0.665158,
		-0.496710, -0.452917, -0.740368,
		0.587735, -0.803211, 0.097053,
		30.937084, 40.319485, 54.366962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848595, 41.064449, 54.595425>,  <30.525669, 40.881733, 54.299023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848595, 41.064449, 54.595425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615480, 41.385353, 54.543682>,  <29.475611, 41.577896, 54.512634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615480, 41.385353, 54.543682>,  <29.848595, 41.064449, 54.595425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615480, 41.385353, 54.543682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653228, 0.367810, -0.661822,
		-0.483375, -0.470203, -0.738416,
		-0.582787, 0.802262, -0.129359,
		29.440643, 41.626030, 54.504875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927683, 41.283829, 53.936264>,  <29.848595, 41.064449, 54.595425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927683, 41.283829, 53.936264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774136, 41.619987, 54.089302>,  <29.682007, 41.821682, 54.181126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774136, 41.619987, 54.089302>,  <29.927683, 41.283829, 53.936264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774136, 41.619987, 54.089302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536994, 0.540243, -0.647901,
		-0.751188, -0.043256, -0.658670,
		-0.383867, 0.840397, 0.382595,
		29.658976, 41.872108, 54.204082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614100, 41.585785, 53.451263>,  <29.927683, 41.283829, 53.936264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614100, 41.585785, 53.451263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737019, 41.869392, 53.705147>,  <29.810770, 42.039558, 53.857475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737019, 41.869392, 53.705147>,  <29.614100, 41.585785, 53.451263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737019, 41.869392, 53.705147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608177, 0.366664, -0.704044,
		-0.731908, 0.602367, -0.318536,
		0.307297, 0.709022, 0.634710,
		29.829208, 42.082100, 53.895561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749277, 42.188000, 53.006443>,  <29.614100, 41.585785, 53.451263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749277, 42.188000, 53.006443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933891, 42.287651, 53.347012>,  <30.044661, 42.347443, 53.551353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.933891, 42.287651, 53.347012>,  <29.749277, 42.188000, 53.006443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933891, 42.287651, 53.347012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686838, 0.507082, -0.520693,
		-0.561462, 0.825107, 0.062923,
		0.461535, 0.249131, 0.851422,
		30.072351, 42.362389, 53.602440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977352, 42.855064, 52.967007>,  <29.749277, 42.188000, 53.006443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977352, 42.855064, 52.967007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234350, 42.731964, 53.247719>,  <30.388550, 42.658104, 53.416145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234350, 42.731964, 53.247719>,  <29.977352, 42.855064, 52.967007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234350, 42.731964, 53.247719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732959, 0.513965, -0.445658,
		-0.223538, 0.800707, 0.555787,
		0.642497, -0.307747, 0.701776,
		30.427099, 42.639641, 53.458252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343859, 43.560211, 53.120052>,  <29.977352, 42.855064, 52.967007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343859, 43.560211, 53.120052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558769, 43.242378, 53.233170>,  <30.687716, 43.051678, 53.301041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558769, 43.242378, 53.233170>,  <30.343859, 43.560211, 53.120052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558769, 43.242378, 53.233170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807594, 0.388017, -0.444112,
		0.243156, 0.466993, 0.850172,
		0.537278, -0.794582, 0.282792,
		30.719954, 43.004005, 53.318008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998322, 43.896141, 53.316151>,  <30.343859, 43.560211, 53.120052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998322, 43.896141, 53.316151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078667, 43.510361, 53.247467>,  <31.126875, 43.278893, 53.206257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078667, 43.510361, 53.247467>,  <30.998322, 43.896141, 53.316151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078667, 43.510361, 53.247467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798640, 0.262728, -0.541431,
		0.567298, -0.028382, 0.823023,
		0.200865, -0.964452, -0.171712,
		31.138926, 43.221024, 53.195953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666065, 43.899113, 53.335281>,  <30.998322, 43.896141, 53.316151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666065, 43.899113, 53.335281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570728, 43.569565, 53.129589>,  <31.513527, 43.371838, 53.006176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570728, 43.569565, 53.129589>,  <31.666065, 43.899113, 53.335281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570728, 43.569565, 53.129589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746818, 0.183008, -0.639352,
		0.620851, -0.536420, 0.571663,
		-0.238342, -0.823870, -0.514229,
		31.499226, 43.322403, 52.975319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321144, 43.706684, 53.172394>,  <31.666065, 43.899113, 53.335281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321144, 43.706684, 53.172394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099121, 43.468880, 52.939686>,  <31.965906, 43.326195, 52.800060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099121, 43.468880, 52.939686>,  <32.321144, 43.706684, 53.172394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099121, 43.468880, 52.939686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682565, 0.074194, -0.727049,
		0.475406, -0.800653, 0.364613,
		-0.555062, -0.594516, -0.581771,
		31.932602, 43.290524, 52.765156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788952, 43.074238, 52.945621>,  <32.321144, 43.706684, 53.172394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788952, 43.074238, 52.945621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498100, 43.179451, 52.691978>,  <32.323589, 43.242580, 52.539791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498100, 43.179451, 52.691978>,  <32.788952, 43.074238, 52.945621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498100, 43.179451, 52.691978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681964, 0.170763, -0.711171,
		-0.078778, -0.949555, -0.303546,
		-0.727130, 0.263032, -0.634110,
		32.279961, 43.258362, 52.501747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972561, 42.675827, 52.382256>,  <32.788952, 43.074238, 52.945621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972561, 42.675827, 52.382256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724236, 42.955170, 52.239769>,  <32.575241, 43.122776, 52.154278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724236, 42.955170, 52.239769>,  <32.972561, 42.675827, 52.382256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724236, 42.955170, 52.239769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593875, 0.122319, -0.795204,
		-0.511768, -0.705217, -0.490676,
		-0.620811, 0.698360, -0.356212,
		32.537991, 43.164677, 52.132904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900352, 42.477093, 51.705193>,  <32.972561, 42.675827, 52.382256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900352, 42.477093, 51.705193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815315, 42.867897, 51.698681>,  <32.764294, 43.102379, 51.694775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815315, 42.867897, 51.698681>,  <32.900352, 42.477093, 51.705193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815315, 42.867897, 51.698681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684495, 0.137013, -0.716026,
		-0.697332, -0.163359, -0.697884,
		-0.212588, 0.977006, -0.016275,
		32.751537, 43.160999, 51.693798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247456, 42.744862, 50.966469>,  <32.900352, 42.477093, 51.705193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247456, 42.744862, 50.966469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125149, 43.082245, 51.143143>,  <33.051765, 43.284676, 51.249146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125149, 43.082245, 51.143143>,  <33.247456, 42.744862, 50.966469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125149, 43.082245, 51.143143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789992, 0.483686, -0.376776,
		-0.531431, 0.233721, -0.814221,
		-0.305767, 0.843459, 0.441683,
		33.033421, 43.335281, 51.275646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103287, 43.277096, 50.579296>,  <33.247456, 42.744862, 50.966469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103287, 43.277096, 50.579296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243336, 43.429733, 50.921478>,  <33.327366, 43.521317, 51.126785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243336, 43.429733, 50.921478>,  <33.103287, 43.277096, 50.579296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243336, 43.429733, 50.921478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798550, 0.355769, -0.485537,
		-0.489622, 0.853120, -0.180159,
		0.350127, 0.381595, 0.855451,
		33.348373, 43.544212, 51.178112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497433, 43.825657, 50.358604>,  <33.103287, 43.277096, 50.579296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497433, 43.825657, 50.358604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608547, 43.803421, 50.742218>,  <33.675217, 43.790077, 50.972385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608547, 43.803421, 50.742218>,  <33.497433, 43.825657, 50.358604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608547, 43.803421, 50.742218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894939, 0.377842, -0.237319,
		-0.349170, 0.924200, 0.154711,
		0.277786, -0.055593, 0.959033,
		33.691883, 43.786743, 51.029926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660610, 44.603939, 50.603249>,  <33.497433, 43.825657, 50.358604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660610, 44.603939, 50.603249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845428, 44.326057, 50.823753>,  <33.956318, 44.159328, 50.956059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845428, 44.326057, 50.823753>,  <33.660610, 44.603939, 50.603249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845428, 44.326057, 50.823753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875535, 0.456321, -0.158777,
		-0.141250, 0.556014, 0.819083,
		0.462047, -0.694709, 0.551264,
		33.984043, 44.117645, 50.989132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990185, 44.958279, 51.252579>,  <33.660610, 44.603939, 50.603249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990185, 44.958279, 51.252579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188934, 44.623474, 51.160912>,  <34.308186, 44.422592, 51.105911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188934, 44.623474, 51.160912>,  <33.990185, 44.958279, 51.252579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188934, 44.623474, 51.160912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857393, 0.514296, -0.019438,
		0.134132, -0.186832, 0.973192,
		0.496877, -0.837015, -0.229172,
		34.337997, 44.372368, 51.092159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569073, 44.980434, 51.595535>,  <33.990185, 44.958279, 51.252579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569073, 44.980434, 51.595535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686100, 44.679794, 51.359058>,  <34.756317, 44.499413, 51.217175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686100, 44.679794, 51.359058>,  <34.569073, 44.980434, 51.595535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686100, 44.679794, 51.359058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898773, 0.427233, -0.098375,
		0.326514, -0.502564, 0.800511,
		0.292565, -0.751599, -0.591189,
		34.773869, 44.454315, 51.181702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233826, 44.819374, 51.749340>,  <34.569073, 44.980434, 51.595535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233826, 44.819374, 51.749340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190041, 44.674423, 51.379108>,  <35.163769, 44.587452, 51.156967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190041, 44.674423, 51.379108>,  <35.233826, 44.819374, 51.749340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190041, 44.674423, 51.379108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903964, 0.350947, -0.244307,
		0.413361, -0.863434, 0.289160,
		-0.109463, -0.362377, -0.925581,
		35.157200, 44.565712, 51.101433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878269, 44.633183, 51.613640>,  <35.233826, 44.819374, 51.749340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878269, 44.633183, 51.613640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715630, 44.624527, 51.248299>,  <35.618046, 44.619331, 51.029095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715630, 44.624527, 51.248299>,  <35.878269, 44.633183, 51.613640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715630, 44.624527, 51.248299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830327, 0.408267, -0.379308,
		0.381100, -0.912606, -0.148031,
		-0.406595, -0.021640, -0.913352,
		35.593651, 44.618034, 50.974293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332291, 44.329746, 51.117428>,  <35.878269, 44.633183, 51.613640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332291, 44.329746, 51.117428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079422, 44.560326, 50.910328>,  <35.927700, 44.698673, 50.786068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079422, 44.560326, 50.910328>,  <36.332291, 44.329746, 51.117428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079422, 44.560326, 50.910328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772674, 0.419241, -0.476668,
		-0.057709, -0.701391, -0.710437,
		-0.632175, 0.576444, -0.517752,
		35.889771, 44.733257, 50.755001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546223, 44.377499, 50.397820>,  <36.332291, 44.329746, 51.117428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546223, 44.377499, 50.397820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308578, 44.695854, 50.444447>,  <36.165993, 44.886868, 50.472424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308578, 44.695854, 50.444447>,  <36.546223, 44.377499, 50.397820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308578, 44.695854, 50.444447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654189, 0.562400, -0.505711,
		-0.468046, -0.224195, -0.854792,
		-0.594113, 0.795891, 0.116563,
		36.130344, 44.934620, 50.479416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421440, 44.459362, 49.755222>,  <36.546223, 44.377499, 50.397820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421440, 44.459362, 49.755222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349983, 44.792076, 49.965450>,  <36.307110, 44.991703, 50.091587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.349983, 44.792076, 49.965450>,  <36.421440, 44.459362, 49.755222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349983, 44.792076, 49.965450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737080, 0.466972, -0.488518,
		-0.651767, 0.300117, -0.696512,
		-0.178639, 0.831786, 0.525567,
		36.296391, 45.041611, 50.123119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455284, 44.964264, 49.305813>,  <36.421440, 44.459362, 49.755222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455284, 44.964264, 49.305813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511932, 45.161232, 49.649315>,  <36.545921, 45.279411, 49.855415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511932, 45.161232, 49.649315>,  <36.455284, 44.964264, 49.305813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511932, 45.161232, 49.649315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707279, 0.556621, -0.435809,
		-0.692604, 0.669102, -0.269449,
		0.141619, 0.492419, 0.858760,
		36.554417, 45.308956, 49.906944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298084, 45.613560, 49.184166>,  <36.455284, 44.964264, 49.305813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298084, 45.613560, 49.184166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537308, 45.622803, 49.504612>,  <36.680843, 45.628349, 49.696880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537308, 45.622803, 49.504612>,  <36.298084, 45.613560, 49.184166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537308, 45.622803, 49.504612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626893, 0.609284, -0.485570,
		-0.499328, 0.792616, 0.349903,
		0.598061, 0.023107, 0.801118,
		36.716724, 45.629734, 49.744946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413670, 46.269516, 49.326168>,  <36.298084, 45.613560, 49.184166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413670, 46.269516, 49.326168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718597, 46.104767, 49.525860>,  <36.901554, 46.005917, 49.645676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718597, 46.104767, 49.525860>,  <36.413670, 46.269516, 49.326168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718597, 46.104767, 49.525860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643667, 0.562979, -0.518408,
		-0.067542, 0.716532, 0.694276,
		0.762319, -0.411868, 0.499233,
		36.947292, 45.981205, 49.675629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730801, 46.865734, 49.639843>,  <36.413670, 46.269516, 49.326168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730801, 46.865734, 49.639843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990532, 46.561531, 49.638863>,  <37.146370, 46.379009, 49.638275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990532, 46.561531, 49.638863>,  <36.730801, 46.865734, 49.639843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990532, 46.561531, 49.638863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747640, 0.638929, -0.181117,
		0.139303, 0.115775, 0.983459,
		0.649329, -0.760504, -0.002447,
		37.185329, 46.333382, 49.638130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306488, 47.155903, 50.063728>,  <36.730801, 46.865734, 49.639843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306488, 47.155903, 50.063728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436081, 46.865608, 49.820961>,  <37.513836, 46.691433, 49.675301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436081, 46.865608, 49.820961>,  <37.306488, 47.155903, 50.063728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436081, 46.865608, 49.820961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885244, 0.458855, -0.076126,
		0.333733, -0.512605, 0.791112,
		0.323983, -0.725733, -0.606916,
		37.533276, 46.647888, 49.638885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901806, 47.069138, 50.377316>,  <37.306488, 47.155903, 50.063728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901806, 47.069138, 50.377316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945076, 46.897316, 50.018700>,  <37.971039, 46.794224, 49.803532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945076, 46.897316, 50.018700>,  <37.901806, 47.069138, 50.377316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945076, 46.897316, 50.018700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792724, 0.581478, -0.182954,
		0.599906, -0.690916, 0.403420,
		0.108173, -0.429556, -0.896538,
		37.977528, 46.768448, 49.749737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634853, 46.886097, 50.245495>,  <37.901806, 47.069138, 50.377316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634853, 46.886097, 50.245495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480347, 46.919807, 49.878082>,  <38.387642, 46.940033, 49.657635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480347, 46.919807, 49.878082>,  <38.634853, 46.886097, 50.245495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480347, 46.919807, 49.878082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817112, 0.493266, -0.298355,
		0.427935, -0.865786, -0.259395,
		-0.386263, 0.084278, -0.918531,
		38.364468, 46.945091, 49.602524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180305, 46.845284, 49.856861>,  <38.634853, 46.886097, 50.245495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180305, 46.845284, 49.856861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923588, 47.022270, 49.606316>,  <38.769558, 47.128464, 49.455990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923588, 47.022270, 49.606316>,  <39.180305, 46.845284, 49.856861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923588, 47.022270, 49.606316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751194, 0.527072, -0.397370,
		0.154315, -0.725547, -0.670648,
		-0.641790, 0.442467, -0.626361,
		38.731052, 47.155010, 49.418407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390526, 46.656586, 49.216549>,  <39.180305, 46.845284, 49.856861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390526, 46.656586, 49.216549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143593, 46.959267, 49.130470>,  <38.995434, 47.140873, 49.078823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.143593, 46.959267, 49.130470>,  <39.390526, 46.656586, 49.216549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.143593, 46.959267, 49.130470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701494, 0.405650, -0.585964,
		-0.356102, -0.512695, -0.781239,
		-0.617331, 0.756698, -0.215199,
		38.958393, 47.186275, 49.065910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416363, 46.776207, 48.499290>,  <39.390526, 46.656586, 49.216549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416363, 46.776207, 48.499290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280415, 47.122032, 48.647350>,  <39.198845, 47.329529, 48.736187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280415, 47.122032, 48.647350>,  <39.416363, 46.776207, 48.499290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280415, 47.122032, 48.647350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477282, 0.497693, -0.724227,
		-0.810365, -0.069475, -0.581792,
		-0.339869, 0.864566, 0.370154,
		39.178455, 47.381401, 48.758396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200985, 47.169144, 47.936226>,  <39.416363, 46.776207, 48.499290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200985, 47.169144, 47.936226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248959, 47.449135, 48.217834>,  <39.277740, 47.617130, 48.386799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248959, 47.449135, 48.217834>,  <39.200985, 47.169144, 47.936226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248959, 47.449135, 48.217834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549585, 0.543759, -0.634258,
		-0.826785, 0.462988, -0.319483,
		0.119932, 0.699978, 0.704022,
		39.284939, 47.659130, 48.429043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.086758, 47.748676, 47.649651>,  <39.200985, 47.169144, 47.936226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.086758, 47.748676, 47.649651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300735, 47.912140, 47.945442>,  <39.429123, 48.010220, 48.122917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300735, 47.912140, 47.945442>,  <39.086758, 47.748676, 47.649651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300735, 47.912140, 47.945442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351299, 0.688412, -0.634570,
		-0.768390, 0.599238, 0.224700,
		0.534944, 0.408660, 0.739480,
		39.461220, 48.034737, 48.167286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907730, 48.389442, 47.546764>,  <39.086758, 47.748676, 47.649651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907730, 48.389442, 47.546764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233147, 48.420868, 47.777233>,  <39.428398, 48.439724, 47.915516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233147, 48.420868, 47.777233>,  <38.907730, 48.389442, 47.546764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233147, 48.420868, 47.777233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284039, 0.810901, -0.511626,
		-0.507418, 0.579885, 0.637385,
		0.813541, 0.078566, 0.576176,
		39.477207, 48.444439, 47.950085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917313, 49.087795, 47.892868>,  <38.907730, 48.389442, 47.546764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917313, 49.087795, 47.892868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281921, 48.927139, 47.857510>,  <39.500687, 48.830746, 47.836296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281921, 48.927139, 47.857510>,  <38.917313, 49.087795, 47.892868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281921, 48.927139, 47.857510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306746, 0.807159, -0.504382,
		0.273927, 0.432641, 0.858945,
		0.911521, -0.401642, -0.088392,
		39.555378, 48.806648, 47.830994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261105, 49.638321, 47.921776>,  <38.917313, 49.087795, 47.892868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261105, 49.638321, 47.921776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542999, 49.390335, 47.783794>,  <39.712135, 49.241543, 47.701008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542999, 49.390335, 47.783794>,  <39.261105, 49.638321, 47.921776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542999, 49.390335, 47.783794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359149, 0.731053, -0.580149,
		0.611850, 0.284962, 0.737859,
		0.704735, -0.619966, -0.344951,
		39.754421, 49.204346, 47.680309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875111, 49.990509, 47.871128>,  <39.261105, 49.638321, 47.921776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875111, 49.990509, 47.871128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938820, 49.681046, 47.625828>,  <39.977047, 49.495365, 47.478645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938820, 49.681046, 47.625828>,  <39.875111, 49.990509, 47.871128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938820, 49.681046, 47.625828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313490, 0.628668, -0.711689,
		0.936138, -0.078893, 0.342667,
		0.159277, -0.773662, -0.613252,
		39.986603, 49.448948, 47.441853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481339, 50.192806, 47.568329>,  <39.875111, 49.990509, 47.871128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481339, 50.192806, 47.568329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332706, 49.919785, 47.316601>,  <40.243526, 49.755970, 47.165565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332706, 49.919785, 47.316601>,  <40.481339, 50.192806, 47.568329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332706, 49.919785, 47.316601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375148, 0.509659, -0.774281,
		0.849231, -0.523795, 0.066682,
		-0.371580, -0.682559, -0.629319,
		40.221233, 49.715015, 47.127804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.872463, 42.516415, 48.519543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.969078, 42.132591, 48.461716>,  <33.027046, 41.902298, 48.427021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.969078, 42.132591, 48.461716>,  <32.872463, 42.516415, 48.519543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969078, 42.132591, 48.461716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694780, 0.275009, -0.664568,
		0.677453, 0.060074, 0.733109,
		0.241535, -0.959563, -0.144568,
		33.041538, 41.844723, 48.418346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568413, 42.415195, 48.789612>,  <32.872463, 42.516415, 48.519543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568413, 42.415195, 48.789612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.475853, 42.141029, 48.513451>,  <33.420315, 41.976528, 48.347755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.475853, 42.141029, 48.513451>,  <33.568413, 42.415195, 48.789612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475853, 42.141029, 48.513451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738768, 0.337939, -0.583112,
		0.632989, -0.644980, 0.428165,
		-0.231403, -0.685418, -0.690402,
		33.406433, 41.935406, 48.306332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160896, 42.078281, 48.639488>,  <33.568413, 42.415195, 48.789612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160896, 42.078281, 48.639488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.966545, 41.968445, 48.307579>,  <33.849934, 41.902542, 48.108433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.966545, 41.968445, 48.307579>,  <34.160896, 42.078281, 48.639488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966545, 41.968445, 48.307579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825157, 0.168890, -0.539066,
		0.288162, -0.946613, 0.144519,
		-0.485879, -0.274590, -0.829772,
		33.820782, 41.886066, 48.058647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653282, 41.631104, 48.278934>,  <34.160896, 42.078281, 48.639488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653282, 41.631104, 48.278934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.395142, 41.768021, 48.005775>,  <34.240257, 41.850170, 47.841881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.395142, 41.768021, 48.005775>,  <34.653282, 41.631104, 48.278934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395142, 41.768021, 48.005775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711328, -0.056576, -0.700579,
		-0.278443, -0.937886, -0.206974,
		-0.645354, 0.342298, -0.682899,
		34.201534, 41.870708, 47.800907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765614, 41.183784, 47.655777>,  <34.653282, 41.631104, 48.278934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765614, 41.183784, 47.655777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.593109, 41.517708, 47.518894>,  <34.489609, 41.718063, 47.436764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.593109, 41.517708, 47.518894>,  <34.765614, 41.183784, 47.655777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593109, 41.517708, 47.518894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599492, -0.018313, -0.800171,
		-0.674260, -0.550229, -0.492566,
		-0.431258, 0.834813, -0.342205,
		34.463734, 41.768150, 47.416233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708580, 41.044151, 46.967255>,  <34.765614, 41.183784, 47.655777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708580, 41.044151, 46.967255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667015, 41.441551, 46.985809>,  <34.642075, 41.679993, 46.996944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.667015, 41.441551, 46.985809>,  <34.708580, 41.044151, 46.967255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667015, 41.441551, 46.985809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626341, 0.101600, -0.772900,
		-0.772592, -0.051260, -0.632830,
		-0.103914, 0.993504, 0.046389,
		34.635841, 41.739601, 46.999725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795677, 41.301598, 46.215401>,  <34.708580, 41.044151, 46.967255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795677, 41.301598, 46.215401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.855171, 41.646385, 46.409264>,  <34.890869, 41.853256, 46.525581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.855171, 41.646385, 46.409264>,  <34.795677, 41.301598, 46.215401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855171, 41.646385, 46.409264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688633, 0.261452, -0.676334,
		-0.709691, 0.434347, -0.554691,
		0.148739, 0.861966, 0.484656,
		34.899792, 41.904976, 46.554661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662476, 41.904175, 45.728485>,  <34.795677, 41.301598, 46.215401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662476, 41.904175, 45.728485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.905594, 41.995979, 46.032566>,  <35.051464, 42.051060, 46.215015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.905594, 41.995979, 46.032566>,  <34.662476, 41.904175, 45.728485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905594, 41.995979, 46.032566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627130, 0.448529, -0.636812,
		-0.487128, 0.863798, 0.128682,
		0.607795, 0.229509, 0.760205,
		35.087933, 42.064831, 46.260628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855938, 42.562817, 45.570065>,  <34.662476, 41.904175, 45.728485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855938, 42.562817, 45.570065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110107, 42.448586, 45.857029>,  <35.262611, 42.380047, 46.029209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110107, 42.448586, 45.857029>,  <34.855938, 42.562817, 45.570065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110107, 42.448586, 45.857029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721958, 0.549265, -0.420814,
		-0.273875, 0.785337, 0.555192,
		0.635428, -0.285575, 0.717411,
		35.300735, 42.362911, 46.072250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140942, 43.109734, 45.991165>,  <34.855938, 42.562817, 45.570065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140942, 43.109734, 45.991165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392124, 42.800812, 45.952774>,  <35.542835, 42.615459, 45.929741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.392124, 42.800812, 45.952774>,  <35.140942, 43.109734, 45.991165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392124, 42.800812, 45.952774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720553, 0.623566, -0.303263,
		0.294058, 0.121282, 0.948061,
		0.627959, -0.772306, -0.095974,
		35.580513, 42.569118, 45.923981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697678, 43.392406, 46.437405>,  <35.140942, 43.109734, 45.991165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697678, 43.392406, 46.437405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854439, 43.090431, 46.227081>,  <35.948494, 42.909245, 46.100887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.854439, 43.090431, 46.227081>,  <35.697678, 43.392406, 46.437405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854439, 43.090431, 46.227081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783282, 0.573586, -0.239726,
		0.482578, -0.317910, 0.816120,
		0.391903, -0.754939, -0.525813,
		35.972012, 42.863949, 46.069336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351448, 43.350018, 46.654442>,  <35.697678, 43.392406, 46.437405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351448, 43.350018, 46.654442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337822, 43.161713, 46.301804>,  <36.329647, 43.048729, 46.090221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337822, 43.161713, 46.301804>,  <36.351448, 43.350018, 46.654442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337822, 43.161713, 46.301804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868591, 0.422388, -0.259110,
		0.494357, -0.774576, 0.394516,
		-0.034062, -0.470766, -0.881600,
		36.327602, 43.020481, 46.037323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035740, 43.032940, 46.549614>,  <36.351448, 43.350018, 46.654442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035740, 43.032940, 46.549614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.889858, 43.082237, 46.180443>,  <36.802330, 43.111816, 45.958939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.889858, 43.082237, 46.180443>,  <37.035740, 43.032940, 46.549614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889858, 43.082237, 46.180443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687303, 0.704339, -0.177539,
		0.628174, -0.699083, -0.341586,
		-0.364707, 0.123247, -0.922930,
		36.780445, 43.119213, 45.903564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554787, 42.898384, 46.194782>,  <37.035740, 43.032940, 46.549614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554787, 42.898384, 46.194782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325409, 43.105415, 45.940765>,  <37.187782, 43.229633, 45.788357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325409, 43.105415, 45.940765>,  <37.554787, 42.898384, 46.194782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325409, 43.105415, 45.940765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793266, 0.544454, -0.272577,
		0.204672, -0.660065, -0.722789,
		-0.573444, 0.517575, -0.635042,
		37.153378, 43.260689, 45.750252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998440, 43.035419, 45.570602>,  <37.554787, 42.898384, 46.194782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998440, 43.035419, 45.570602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.701462, 43.287956, 45.481003>,  <37.523273, 43.439480, 45.427242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.701462, 43.287956, 45.481003>,  <37.998440, 43.035419, 45.570602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701462, 43.287956, 45.481003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617279, 0.514841, -0.594900,
		-0.260261, -0.579954, -0.771957,
		-0.742449, 0.631342, -0.224001,
		37.478725, 43.477360, 45.413803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018326, 43.163170, 44.824471>,  <37.998440, 43.035419, 45.570602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018326, 43.163170, 44.824471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847145, 43.466248, 45.021553>,  <37.744438, 43.648094, 45.139801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847145, 43.466248, 45.021553>,  <38.018326, 43.163170, 44.824471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847145, 43.466248, 45.021553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662415, 0.633817, -0.399351,
		-0.614870, 0.155472, -0.773151,
		-0.427949, 0.757696, 0.492703,
		37.718761, 43.693558, 45.169365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957680, 43.668736, 44.317501>,  <38.018326, 43.163170, 44.824471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957680, 43.668736, 44.317501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955990, 43.842850, 44.677616>,  <37.954975, 43.947319, 44.893684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.955990, 43.842850, 44.677616>,  <37.957680, 43.668736, 44.317501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955990, 43.842850, 44.677616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690471, 0.652500, -0.312240,
		-0.723348, 0.620301, -0.303306,
		-0.004225, 0.435282, 0.900284,
		37.954723, 43.973434, 44.947701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922657, 44.356544, 44.153492>,  <37.957680, 43.668736, 44.317501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922657, 44.356544, 44.153492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023773, 44.371964, 44.540192>,  <38.084442, 44.381214, 44.772213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023773, 44.371964, 44.540192>,  <37.922657, 44.356544, 44.153492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023773, 44.371964, 44.540192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647379, 0.735833, -0.198620,
		-0.719025, 0.676065, 0.161057,
		0.252791, 0.038548, 0.966753,
		38.099609, 44.383530, 44.830219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916088, 45.168728, 44.398994>,  <37.922657, 44.356544, 44.153492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916088, 45.168728, 44.398994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134438, 44.958588, 44.660080>,  <38.265446, 44.832504, 44.816730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134438, 44.958588, 44.660080>,  <37.916088, 45.168728, 44.398994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134438, 44.958588, 44.660080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640634, 0.763775, 0.078965,
		-0.540008, 0.375044, 0.753481,
		0.545875, -0.525348, 0.652710,
		38.298199, 44.800983, 44.855892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249454, 45.693802, 44.771980>,  <37.916088, 45.168728, 44.398994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249454, 45.693802, 44.771980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.459671, 45.366577, 44.865425>,  <38.585800, 45.170242, 44.921490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.459671, 45.366577, 44.865425>,  <38.249454, 45.693802, 44.771980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459671, 45.366577, 44.865425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787904, 0.571593, 0.229103,
		-0.320950, 0.063658, 0.944954,
		0.525545, -0.818064, 0.233609,
		38.617336, 45.121159, 44.935509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532555, 45.852501, 45.428596>,  <38.249454, 45.693802, 44.771980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532555, 45.852501, 45.428596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765419, 45.557907, 45.290794>,  <38.905136, 45.381153, 45.208115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765419, 45.557907, 45.290794>,  <38.532555, 45.852501, 45.428596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765419, 45.557907, 45.290794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801460, 0.448428, 0.395696,
		-0.136937, -0.506465, 0.851317,
		0.582160, -0.736482, -0.344505,
		38.940067, 45.336964, 45.187443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143044, 45.893368, 45.799931>,  <38.532555, 45.852501, 45.428596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143044, 45.893368, 45.799931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250534, 45.701630, 45.465744>,  <39.315029, 45.586586, 45.265232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250534, 45.701630, 45.465744>,  <39.143044, 45.893368, 45.799931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250534, 45.701630, 45.465744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822523, 0.565565, -0.059930,
		0.501241, -0.671089, 0.546257,
		0.268726, -0.479348, -0.835471,
		39.331150, 45.557827, 45.215103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681557, 46.412251, 45.920616>,  <39.143044, 45.893368, 45.799931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681557, 46.412251, 45.920616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620239, 46.805412, 45.879837>,  <38.583450, 47.041309, 45.855370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.620239, 46.805412, 45.879837>,  <38.681557, 46.412251, 45.920616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620239, 46.805412, 45.879837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909651, -0.100056, 0.403142,
		0.386051, 0.154536, 0.909441,
		-0.153295, 0.982908, -0.101947,
		38.574249, 47.100285, 45.849255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354176, 46.602856, 46.551540>,  <38.681557, 46.412251, 45.920616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354176, 46.602856, 46.551540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261578, 46.869255, 46.267891>,  <38.206020, 47.029095, 46.097702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.261578, 46.869255, 46.267891>,  <38.354176, 46.602856, 46.551540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261578, 46.869255, 46.267891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937521, 0.041894, 0.345398,
		0.259742, 0.744777, 0.614689,
		-0.231493, 0.665998, -0.709125,
		38.192131, 47.069054, 46.055153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867752, 47.179020, 46.810295>,  <38.354176, 46.602856, 46.551540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867752, 47.179020, 46.810295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779076, 47.225464, 46.423023>,  <37.725868, 47.253330, 46.190659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779076, 47.225464, 46.423023>,  <37.867752, 47.179020, 46.810295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779076, 47.225464, 46.423023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974780, -0.000258, 0.223170,
		0.025663, 0.993236, 0.113240,
		-0.221690, 0.116111, -0.968180,
		37.712570, 47.260296, 46.132568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311371, 47.596123, 46.847694>,  <37.867752, 47.179020, 46.810295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311371, 47.596123, 46.847694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316071, 47.384056, 46.508568>,  <37.318890, 47.256817, 46.305092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.316071, 47.384056, 46.508568>,  <37.311371, 47.596123, 46.847694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316071, 47.384056, 46.508568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991556, -0.115682, 0.058598,
		-0.129144, 0.839967, -0.527045,
		0.011749, -0.530162, -0.847815,
		37.319595, 47.225006, 46.254223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681347, 47.824947, 46.534657>,  <37.311371, 47.596123, 46.847694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681347, 47.824947, 46.534657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792511, 47.491043, 46.344521>,  <36.859211, 47.290703, 46.230438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792511, 47.491043, 46.344521>,  <36.681347, 47.824947, 46.534657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792511, 47.491043, 46.344521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948954, -0.315414, -0.000914,
		-0.149164, 0.451326, -0.879804,
		0.277915, -0.834757, -0.475336,
		36.875885, 47.240616, 46.201920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374065, 47.828709, 45.989841>,  <36.681347, 47.824947, 46.534657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374065, 47.828709, 45.989841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469360, 47.440582, 46.006462>,  <36.526539, 47.207706, 46.016434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469360, 47.440582, 46.006462>,  <36.374065, 47.828709, 45.989841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469360, 47.440582, 46.006462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969546, -0.235112, 0.068583,
		-0.056778, -0.056628, -0.996780,
		0.238239, -0.970317, 0.041554,
		36.540833, 47.149487, 46.018929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831947, 47.466812, 45.562481>,  <36.374065, 47.828709, 45.989841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831947, 47.466812, 45.562481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969517, 47.165581, 45.786835>,  <36.052059, 46.984844, 45.921448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.969517, 47.165581, 45.786835>,  <35.831947, 47.466812, 45.562481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969517, 47.165581, 45.786835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936812, -0.315911, 0.150275,
		0.064022, -0.577129, -0.814139,
		0.343924, -0.753075, 0.560887,
		36.072693, 46.939659, 45.955101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407894, 46.844299, 45.443779>,  <35.831947, 47.466812, 45.562481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407894, 46.844299, 45.443779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.579880, 46.773254, 45.797859>,  <35.683071, 46.730629, 46.010307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.579880, 46.773254, 45.797859>,  <35.407894, 46.844299, 45.443779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579880, 46.773254, 45.797859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876078, -0.319043, 0.361522,
		0.218208, -0.930950, -0.292777,
		0.429967, -0.177608, 0.885202,
		35.708870, 46.719971, 46.063419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187294, 46.166443, 45.587307>,  <35.407894, 46.844299, 45.443779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187294, 46.166443, 45.587307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313812, 46.316261, 45.935944>,  <35.389725, 46.406151, 46.145126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313812, 46.316261, 45.935944>,  <35.187294, 46.166443, 45.587307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313812, 46.316261, 45.935944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743472, -0.472802, 0.472977,
		0.589242, -0.797605, 0.128920,
		0.316295, 0.374546, 0.871592,
		35.408699, 46.428627, 46.197422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117256, 45.605938, 46.041332>,  <35.187294, 46.166443, 45.587307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117256, 45.605938, 46.041332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.131203, 45.934464, 46.269096>,  <35.139572, 46.131577, 46.405754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.131203, 45.934464, 46.269096>,  <35.117256, 45.605938, 46.041332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131203, 45.934464, 46.269096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714245, -0.378040, 0.589016,
		0.699027, -0.427238, 0.573436,
		0.034868, 0.821312, 0.569413,
		35.141663, 46.180859, 46.439919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233898, 45.386921, 46.854889>,  <35.117256, 45.605938, 46.041332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233898, 45.386921, 46.854889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052158, 45.742218, 46.827793>,  <34.943115, 45.955399, 46.811535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.052158, 45.742218, 46.827793>,  <35.233898, 45.386921, 46.854889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052158, 45.742218, 46.827793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725059, -0.324553, 0.607416,
		0.517549, 0.325094, 0.791490,
		-0.454348, 0.888245, -0.067740,
		34.915855, 46.008690, 46.807472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980824, 45.480392, 47.438061>,  <35.233898, 45.386921, 46.854889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980824, 45.480392, 47.438061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753071, 45.761597, 47.267612>,  <34.616421, 45.930321, 47.165344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753071, 45.761597, 47.267612>,  <34.980824, 45.480392, 47.438061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753071, 45.761597, 47.267612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721189, -0.178359, 0.669383,
		0.394582, 0.688448, 0.608560,
		-0.569378, 0.703014, -0.426123,
		34.582256, 45.972500, 47.139774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528725, 45.949173, 47.988148>,  <34.980824, 45.480392, 47.438061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528725, 45.949173, 47.988148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348049, 45.925095, 47.632092>,  <34.239643, 45.910648, 47.418457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348049, 45.925095, 47.632092>,  <34.528725, 45.949173, 47.988148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348049, 45.925095, 47.632092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877485, -0.150328, 0.455436,
		-0.161226, 0.986802, 0.015085,
		-0.451693, -0.060191, -0.890141,
		34.212540, 45.907036, 47.365047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869663, 46.252972, 48.093781>,  <34.528725, 45.949173, 47.988148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869663, 46.252972, 48.093781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.819328, 46.048134, 47.753914>,  <33.789127, 45.925232, 47.549995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.819328, 46.048134, 47.753914>,  <33.869663, 46.252972, 48.093781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819328, 46.048134, 47.753914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870493, -0.353798, 0.342154,
		-0.475823, 0.782681, -0.401251,
		-0.125836, -0.512091, -0.849664,
		33.781578, 45.894508, 47.499016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186279, 46.371830, 47.850670>,  <33.869663, 46.252972, 48.093781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186279, 46.371830, 47.850670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277172, 46.020271, 47.682907>,  <33.331707, 45.809334, 47.582249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277172, 46.020271, 47.682907>,  <33.186279, 46.371830, 47.850670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277172, 46.020271, 47.682907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874116, -0.373924, 0.310004,
		-0.429288, 0.296167, -0.853227,
		0.227229, -0.878901, -0.419405,
		33.345341, 45.756599, 47.557087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559837, 46.065628, 47.734394>,  <33.186279, 46.371830, 47.850670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559837, 46.065628, 47.734394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.819389, 45.761330, 47.728596>,  <32.975121, 45.578751, 47.725117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.819389, 45.761330, 47.728596>,  <32.559837, 46.065628, 47.734394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819389, 45.761330, 47.728596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681150, -0.589271, 0.434505,
		-0.339092, -0.272069, -0.900553,
		0.648885, -0.760748, -0.014497,
		33.014053, 45.533104, 47.724247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085033, 45.543854, 47.521313>,  <32.559837, 46.065628, 47.734394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085033, 45.543854, 47.521313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.399452, 45.319145, 47.624493>,  <32.588104, 45.184319, 47.686401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.399452, 45.319145, 47.624493>,  <32.085033, 45.543854, 47.521313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399452, 45.319145, 47.624493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614368, -0.663771, 0.426568,
		-0.068412, -0.493781, -0.866891,
		0.786048, -0.561773, 0.257953,
		32.635265, 45.150612, 47.701878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031277, 44.864319, 47.283897>,  <32.085033, 45.543854, 47.521313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031277, 44.864319, 47.283897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.256096, 44.838295, 47.613712>,  <32.390987, 44.822681, 47.811604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.256096, 44.838295, 47.613712>,  <32.031277, 44.864319, 47.283897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256096, 44.838295, 47.613712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710403, -0.548521, 0.440968,
		0.423591, -0.833602, -0.354512,
		0.562049, -0.065056, 0.824541,
		32.424709, 44.818779, 47.861076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.354885, 43.961292, 47.517982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.387688, 44.197678, 47.838993>,  <32.407368, 44.339508, 48.031597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.387688, 44.197678, 47.838993>,  <32.354885, 43.961292, 47.517982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387688, 44.197678, 47.838993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275532, -0.760406, 0.588102,
		0.957788, -0.269349, 0.100469,
		0.082008, 0.590960, 0.802522,
		32.412289, 44.374966, 48.079750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395695, 43.539963, 48.023796>,  <32.354885, 43.961292, 47.517982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395695, 43.539963, 48.023796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332489, 43.877686, 48.228611>,  <32.294563, 44.080318, 48.351501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332489, 43.877686, 48.228611>,  <32.395695, 43.539963, 48.023796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332489, 43.877686, 48.228611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352840, -0.532596, 0.769315,
		0.922244, -0.059102, 0.382063,
		-0.158018, 0.844304, 0.512037,
		32.285084, 44.130978, 48.382221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721844, 43.598991, 48.662354>,  <32.395695, 43.539963, 48.023796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721844, 43.598991, 48.662354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.411446, 43.849762, 48.690079>,  <32.225208, 44.000225, 48.706715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.411446, 43.849762, 48.690079>,  <32.721844, 43.598991, 48.662354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411446, 43.849762, 48.690079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408757, -0.583529, 0.701721,
		0.480371, 0.516198, 0.709072,
		-0.775991, 0.626925, 0.069311,
		32.178650, 44.037838, 48.710873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616692, 43.783394, 49.438210>,  <32.721844, 43.598991, 48.662354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616692, 43.783394, 49.438210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.289108, 43.828346, 49.213116>,  <32.092560, 43.855316, 49.078056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.289108, 43.828346, 49.213116>,  <32.616692, 43.783394, 49.438210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289108, 43.828346, 49.213116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503625, -0.610825, 0.610946,
		-0.275077, 0.783750, 0.556838,
		-0.818960, 0.112380, -0.562739,
		32.043419, 43.862061, 49.044292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142662, 43.575619, 49.881565>,  <32.616692, 43.783394, 49.438210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142662, 43.575619, 49.881565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.904320, 43.627640, 49.564568>,  <31.761314, 43.658852, 49.374371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.904320, 43.627640, 49.564568>,  <32.142662, 43.575619, 49.881565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904320, 43.627640, 49.564568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684611, -0.598131, 0.416589,
		-0.419835, 0.790775, 0.445435,
		-0.595857, 0.130052, -0.792490,
		31.725563, 43.666656, 49.326820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543671, 43.814865, 50.122078>,  <32.142662, 43.575619, 49.881565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543671, 43.814865, 50.122078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477087, 43.627731, 49.774879>,  <31.437138, 43.515450, 49.566559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477087, 43.627731, 49.774879>,  <31.543671, 43.814865, 50.122078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477087, 43.627731, 49.774879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692721, -0.570979, 0.440591,
		-0.701733, 0.674621, -0.229035,
		-0.166458, -0.467834, -0.867999,
		31.427149, 43.487381, 49.514481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829491, 43.819626, 50.065029>,  <31.543671, 43.814865, 50.122078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829491, 43.819626, 50.065029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.965691, 43.529396, 49.825829>,  <31.047411, 43.355259, 49.682308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.965691, 43.529396, 49.825829>,  <30.829491, 43.819626, 50.065029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965691, 43.529396, 49.825829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737814, -0.600430, 0.308408,
		-0.582829, 0.336199, -0.739784,
		0.340502, -0.725572, -0.598000,
		31.067841, 43.311726, 49.646427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199032, 43.706013, 49.909603>,  <30.829491, 43.819626, 50.065029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199032, 43.706013, 49.909603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424557, 43.406570, 49.770058>,  <30.559872, 43.226906, 49.686329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424557, 43.406570, 49.770058>,  <30.199032, 43.706013, 49.909603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424557, 43.406570, 49.770058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674950, -0.661076, 0.327749,
		-0.475983, 0.050680, -0.877993,
		0.563810, -0.748605, -0.348868,
		30.593700, 43.181988, 49.665398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735931, 43.254120, 49.627289>,  <30.199032, 43.706013, 49.909603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735931, 43.254120, 49.627289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061394, 43.042076, 49.722744>,  <30.256672, 42.914852, 49.780018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.061394, 43.042076, 49.722744>,  <29.735931, 43.254120, 49.627289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061394, 43.042076, 49.722744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571769, -0.655518, 0.493332,
		-0.105086, -0.537850, -0.836465,
		0.813657, -0.530106, 0.238640,
		30.305490, 42.883045, 49.794334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541761, 42.603817, 49.435921>,  <29.735931, 43.254120, 49.627289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541761, 42.603817, 49.435921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.847431, 42.575470, 49.692364>,  <30.030832, 42.558460, 49.846230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.847431, 42.575470, 49.692364>,  <29.541761, 42.603817, 49.435921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847431, 42.575470, 49.692364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548368, -0.594706, 0.587892,
		0.339603, -0.800813, -0.493323,
		0.764174, -0.070872, 0.641105,
		30.076683, 42.554207, 49.884697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705345, 41.905163, 49.537819>,  <29.541761, 42.603817, 49.435921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705345, 41.905163, 49.537819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.845264, 42.079422, 49.869568>,  <29.929216, 42.183979, 50.068615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.845264, 42.079422, 49.869568>,  <29.705345, 41.905163, 49.537819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845264, 42.079422, 49.869568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292740, -0.790135, 0.538507,
		0.889912, -0.431159, -0.148858,
		0.349800, 0.435647, 0.829368,
		29.950205, 42.210117, 50.118378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774626, 41.463497, 49.990826>,  <29.705345, 41.905163, 49.537819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774626, 41.463497, 49.990826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.794708, 41.742897, 50.276367>,  <29.806757, 41.910538, 50.447693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.794708, 41.742897, 50.276367>,  <29.774626, 41.463497, 49.990826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794708, 41.742897, 50.276367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415875, -0.635219, 0.650803,
		0.908035, -0.329545, 0.258596,
		0.050204, 0.698496, 0.713851,
		29.809769, 41.952446, 50.490524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033533, 41.109222, 50.696510>,  <29.774626, 41.463497, 49.990826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033533, 41.109222, 50.696510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855919, 41.444923, 50.822044>,  <29.749352, 41.646343, 50.897366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.855919, 41.444923, 50.822044>,  <30.033533, 41.109222, 50.696510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855919, 41.444923, 50.822044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530315, -0.528481, 0.662928,
		0.722219, 0.127931, 0.679731,
		-0.444034, 0.839250, 0.313835,
		29.722708, 41.696697, 50.916195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071609, 41.087082, 51.417530>,  <30.033533, 41.109222, 50.696510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071609, 41.087082, 51.417530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.770945, 41.343170, 51.354126>,  <29.590546, 41.496822, 51.316082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.770945, 41.343170, 51.354126>,  <30.071609, 41.087082, 51.417530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770945, 41.343170, 51.354126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549669, -0.475251, 0.687023,
		0.364515, 0.603535, 0.709136,
		-0.751660, 0.640220, -0.158509,
		29.545446, 41.535236, 51.306572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676350, 41.133835, 52.125587>,  <30.071609, 41.087082, 51.417530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676350, 41.133835, 52.125587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.413464, 41.337440, 51.903244>,  <29.255732, 41.459602, 51.769840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.413464, 41.337440, 51.903244>,  <29.676350, 41.133835, 52.125587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413464, 41.337440, 51.903244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724324, -0.222647, 0.652521,
		0.208381, 0.831466, 0.515016,
		-0.657216, 0.509012, -0.555855,
		29.216299, 41.490143, 51.736488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334230, 41.547550, 52.538666>,  <29.676350, 41.133835, 52.125587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334230, 41.547550, 52.538666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.077740, 41.479553, 52.239349>,  <28.923845, 41.438755, 52.059761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.077740, 41.479553, 52.239349>,  <29.334230, 41.547550, 52.538666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077740, 41.479553, 52.239349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739334, -0.124244, 0.661777,
		-0.205466, 0.977582, -0.046012,
		-0.641225, -0.169990, -0.748287,
		28.885372, 41.428555, 52.014862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725563, 41.945129, 52.678848>,  <29.334230, 41.547550, 52.538666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725563, 41.945129, 52.678848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.599669, 41.677132, 52.409912>,  <28.524132, 41.516331, 52.248550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.599669, 41.677132, 52.409912>,  <28.725563, 41.945129, 52.678848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599669, 41.677132, 52.409912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812582, -0.175901, 0.555670,
		-0.490563, 0.721223, -0.489066,
		-0.314735, -0.669997, -0.672343,
		28.505249, 41.476131, 52.208210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038376, 41.987160, 52.696575>,  <28.725563, 41.945129, 52.678848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038376, 41.987160, 52.696575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.102665, 41.622986, 52.544109>,  <28.141237, 41.404484, 52.452629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.102665, 41.622986, 52.544109>,  <28.038376, 41.987160, 52.696575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102665, 41.622986, 52.544109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727908, -0.370145, 0.577186,
		-0.666573, 0.184685, -0.722200,
		0.160721, -0.910431, -0.381162,
		28.150881, 41.349857, 52.429760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373217, 41.723701, 52.762817>,  <28.038376, 41.987160, 52.696575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373217, 41.723701, 52.762817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.608322, 41.404434, 52.709969>,  <27.749386, 41.212872, 52.678261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.608322, 41.404434, 52.709969>,  <27.373217, 41.723701, 52.762817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608322, 41.404434, 52.709969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584118, -0.531660, 0.613306,
		-0.559766, -0.283306, -0.778717,
		0.587766, -0.798170, -0.132121,
		27.784653, 41.164982, 52.670334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919964, 41.218292, 52.566818>,  <27.373217, 41.723701, 52.762817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919964, 41.218292, 52.566818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.245874, 41.043716, 52.719479>,  <27.441422, 40.938969, 52.811073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.245874, 41.043716, 52.719479>,  <26.919964, 41.218292, 52.566818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245874, 41.043716, 52.719479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579736, -0.620742, 0.527812,
		0.006546, -0.651305, -0.758788,
		0.814778, -0.436441, 0.381648,
		27.490309, 40.912785, 52.833973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.846106, 40.482822, 52.376884>,  <26.919964, 41.218292, 52.566818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.846106, 40.482822, 52.376884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.095308, 40.506012, 52.688911>,  <27.244831, 40.519924, 52.876125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.095308, 40.506012, 52.688911>,  <26.846106, 40.482822, 52.376884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095308, 40.506012, 52.688911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515716, -0.719369, 0.465344,
		0.588130, -0.692205, -0.418277,
		0.623009, 0.057970, 0.780064,
		27.282211, 40.523403, 52.922932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829023, 39.830986, 52.693710>,  <26.846106, 40.482822, 52.376884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829023, 39.830986, 52.693710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.974936, 40.070648, 52.978794>,  <27.062483, 40.214447, 53.149845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.974936, 40.070648, 52.978794>,  <26.829023, 39.830986, 52.693710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974936, 40.070648, 52.978794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495870, -0.522855, 0.693351,
		0.788067, -0.606328, 0.106377,
		0.364779, 0.599156, 0.712705,
		27.084370, 40.250397, 53.192604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129383, 39.421528, 53.241531>,  <26.829023, 39.830986, 52.693710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129383, 39.421528, 53.241531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.001337, 39.777962, 53.370216>,  <26.924509, 39.991821, 53.447430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.001337, 39.777962, 53.370216>,  <27.129383, 39.421528, 53.241531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001337, 39.777962, 53.370216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601921, -0.453534, 0.657265,
		0.731585, 0.016753, 0.681544,
		-0.320115, 0.891081, 0.321715,
		26.905302, 40.045284, 53.466732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045992, 38.867619, 52.830147>,  <27.129383, 39.421528, 53.241531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045992, 38.867619, 52.830147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.298330, 38.580528, 52.948067>,  <27.449734, 38.408276, 53.018818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.298330, 38.580528, 52.948067>,  <27.045992, 38.867619, 52.830147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298330, 38.580528, 52.948067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692642, 0.349686, -0.630846,
		0.349686, 0.602157, 0.717723,
		0.630846, -0.717723, 0.294799,
		27.487585, 38.365211, 53.036507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789238, 39.188576, 53.020855>,  <27.045992, 38.867619, 52.830147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789238, 39.188576, 53.020855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.805698, 38.808800, 52.896355>,  <27.815575, 38.580936, 52.821655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.805698, 38.808800, 52.896355>,  <27.789238, 39.188576, 53.020855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805698, 38.808800, 52.896355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717347, 0.244918, -0.652249,
		0.695499, -0.196432, 0.691155,
		0.041153, -0.949437, -0.311250,
		27.818045, 38.523968, 52.802979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543278, 38.964230, 52.964825>,  <27.789238, 39.188576, 53.020855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543278, 38.964230, 52.964825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.366268, 38.680252, 52.745678>,  <28.260061, 38.509865, 52.614189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.366268, 38.680252, 52.745678>,  <28.543278, 38.964230, 52.964825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366268, 38.680252, 52.745678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764784, 0.020242, -0.643969,
		0.468270, -0.703970, 0.533994,
		-0.442526, -0.709942, -0.547863,
		28.233511, 38.467270, 52.581318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973040, 38.442402, 53.016068>,  <28.543278, 38.964230, 52.964825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973040, 38.442402, 53.016068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.760349, 38.418274, 52.678162>,  <28.632734, 38.403797, 52.475418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.760349, 38.418274, 52.678162>,  <28.973040, 38.442402, 53.016068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760349, 38.418274, 52.678162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843959, 0.045550, -0.534471,
		0.070720, -0.997139, 0.026690,
		-0.531726, -0.060323, -0.844765,
		28.600832, 38.400177, 52.424732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409870, 38.136734, 52.516083>,  <28.973040, 38.442402, 53.016068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409870, 38.136734, 52.516083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.105539, 38.252258, 52.283623>,  <28.922941, 38.321575, 52.144146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.105539, 38.252258, 52.283623>,  <29.409870, 38.136734, 52.516083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105539, 38.252258, 52.283623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640670, 0.191618, -0.743522,
		-0.103383, -0.938013, -0.330824,
		-0.760825, 0.288816, -0.581146,
		28.877293, 38.338902, 52.109280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429865, 37.692749, 51.860615>,  <29.409870, 38.136734, 52.516083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429865, 37.692749, 51.860615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.256794, 38.048515, 51.801651>,  <29.152952, 38.261974, 51.766273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.256794, 38.048515, 51.801651>,  <29.429865, 37.692749, 51.860615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256794, 38.048515, 51.801651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682351, 0.216211, -0.698320,
		-0.589227, -0.402730, -0.700444,
		-0.432678, 0.889417, -0.147406,
		29.126991, 38.315342, 51.757431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154514, 37.566105, 51.266941>,  <29.429865, 37.692749, 51.860615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154514, 37.566105, 51.266941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186741, 37.955345, 51.353268>,  <29.206078, 38.188889, 51.405064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.186741, 37.955345, 51.353268>,  <29.154514, 37.566105, 51.266941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186741, 37.955345, 51.353268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701620, 0.098427, -0.705721,
		-0.707982, 0.208278, -0.674820,
		0.080566, 0.973105, 0.215816,
		29.210911, 38.247276, 51.418011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330351, 37.843910, 50.596283>,  <29.154514, 37.566105, 51.266941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330351, 37.843910, 50.596283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.422625, 38.137955, 50.851280>,  <29.477989, 38.314381, 51.004280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.422625, 38.137955, 50.851280>,  <29.330351, 37.843910, 50.596283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422625, 38.137955, 50.851280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705940, 0.324450, -0.629588,
		-0.669651, 0.595268, -0.444099,
		0.230686, 0.735111, 0.637492,
		29.491831, 38.358486, 51.042526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229855, 38.529068, 50.309814>,  <29.330351, 37.843910, 50.596283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229855, 38.529068, 50.309814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515633, 38.595894, 50.581596>,  <29.687099, 38.635990, 50.744663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.515633, 38.595894, 50.581596>,  <29.229855, 38.529068, 50.309814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515633, 38.595894, 50.581596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577780, 0.406833, -0.707571,
		-0.394634, 0.898096, 0.194134,
		0.714447, 0.167064, 0.679452,
		29.729967, 38.646011, 50.785431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543365, 39.155685, 50.213428>,  <29.229855, 38.529068, 50.309814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543365, 39.155685, 50.213428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823103, 39.051132, 50.479542>,  <29.990946, 38.988400, 50.639210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823103, 39.051132, 50.479542>,  <29.543365, 39.155685, 50.213428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823103, 39.051132, 50.479542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634839, 0.654849, -0.410063,
		-0.328477, 0.709122, 0.623899,
		0.699344, -0.261379, 0.665281,
		30.032906, 38.972717, 50.679127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745686, 39.774406, 50.679104>,  <29.543365, 39.155685, 50.213428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745686, 39.774406, 50.679104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.037045, 39.500626, 50.666718>,  <30.211861, 39.336357, 50.659286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.037045, 39.500626, 50.666718>,  <29.745686, 39.774406, 50.679104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037045, 39.500626, 50.666718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645545, 0.700735, -0.303712,
		0.229577, 0.201233, 0.952260,
		0.728399, -0.684453, -0.030968,
		30.255564, 39.295288, 50.657429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189623, 40.143280, 50.895901>,  <29.745686, 39.774406, 50.679104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189623, 40.143280, 50.895901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377844, 39.838310, 50.718231>,  <30.490776, 39.655327, 50.611629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377844, 39.838310, 50.718231>,  <30.189623, 40.143280, 50.895901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377844, 39.838310, 50.718231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708520, 0.626502, -0.324800,
		0.525911, -0.161870, 0.834995,
		0.470550, -0.762426, -0.444172,
		30.519009, 39.609581, 50.584980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865063, 40.356518, 50.948364>,  <30.189623, 40.143280, 50.895901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865063, 40.356518, 50.948364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.890995, 40.072075, 50.668327>,  <30.906555, 39.901409, 50.500305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.890995, 40.072075, 50.668327>,  <30.865063, 40.356518, 50.948364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890995, 40.072075, 50.668327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752523, 0.495593, -0.433701,
		0.655367, -0.498718, 0.567251,
		0.064831, -0.711103, -0.700092,
		30.910444, 39.858746, 50.458302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492384, 39.991875, 50.892399>,  <30.865063, 40.356518, 50.948364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492384, 39.991875, 50.892399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357885, 39.977730, 50.515957>,  <31.277185, 39.969242, 50.290092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.357885, 39.977730, 50.515957>,  <31.492384, 39.991875, 50.892399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357885, 39.977730, 50.515957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815116, 0.489608, -0.309628,
		0.471723, -0.871225, -0.135807,
		-0.336248, -0.035360, -0.941109,
		31.257011, 39.967121, 50.233624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100819, 40.009048, 50.494663>,  <31.492384, 39.991875, 50.892399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100819, 40.009048, 50.494663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.812569, 40.051071, 50.220535>,  <31.639620, 40.076286, 50.056057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.812569, 40.051071, 50.220535>,  <32.100819, 40.009048, 50.494663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812569, 40.051071, 50.220535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629742, 0.512694, -0.583583,
		0.290052, -0.852120, -0.435617,
		-0.720621, 0.105057, -0.685324,
		31.596382, 40.082588, 50.014938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369926, 39.749500, 49.896385>,  <32.100819, 40.009048, 50.494663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369926, 39.749500, 49.896385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062233, 39.981812, 49.789818>,  <31.877617, 40.121197, 49.725880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062233, 39.981812, 49.789818>,  <32.369926, 39.749500, 49.896385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062233, 39.981812, 49.789818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617376, 0.568093, -0.544166,
		-0.164690, -0.583070, -0.795554,
		-0.769236, 0.580775, -0.266414,
		31.831463, 40.156044, 49.709892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345551, 39.811150, 49.183369>,  <32.369926, 39.749500, 49.896385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345551, 39.811150, 49.183369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.151878, 40.136345, 49.312744>,  <32.035675, 40.331463, 49.390369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.151878, 40.136345, 49.312744>,  <32.345551, 39.811150, 49.183369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151878, 40.136345, 49.312744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605179, 0.578143, -0.547275,
		-0.631922, -0.069245, -0.771932,
		-0.484183, 0.812992, 0.323436,
		32.006622, 40.380241, 49.409775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186985, 40.136627, 48.641502>,  <32.345551, 39.811150, 49.183369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186985, 40.136627, 48.641502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.163231, 40.425095, 48.917587>,  <32.148979, 40.598175, 49.083237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.163231, 40.425095, 48.917587>,  <32.186985, 40.136627, 48.641502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163231, 40.425095, 48.917587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524243, 0.610937, -0.593233,
		-0.849495, 0.326607, -0.414349,
		-0.059387, 0.721169, 0.690209,
		32.145416, 40.641445, 49.124649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858185, 40.632786, 48.277546>,  <32.186985, 40.136627, 48.641502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858185, 40.632786, 48.277546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.053291, 40.786819, 48.590927>,  <32.170357, 40.879238, 48.778957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.053291, 40.786819, 48.590927>,  <31.858185, 40.632786, 48.277546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053291, 40.786819, 48.590927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305941, 0.765128, -0.566549,
		-0.817609, 0.516033, 0.255391,
		0.487765, 0.385082, 0.783452,
		32.199619, 40.902344, 48.825962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718317, 41.318066, 48.224472>,  <31.858185, 40.632786, 48.277546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718317, 41.318066, 48.224472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044735, 41.272316, 48.451096>,  <32.240585, 41.244865, 48.587070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.044735, 41.272316, 48.451096>,  <31.718317, 41.318066, 48.224472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044735, 41.272316, 48.451096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504906, 0.618163, -0.602449,
		-0.281327, 0.777685, 0.562193,
		0.816043, -0.114370, 0.566563,
		32.289547, 41.238007, 48.621063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002697, 42.013920, 48.405846>,  <31.718317, 41.318066, 48.224472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002697, 42.013920, 48.405846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.312309, 41.765968, 48.457428>,  <32.498077, 41.617199, 48.488377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.312309, 41.765968, 48.457428>,  <32.002697, 42.013920, 48.405846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312309, 41.765968, 48.457428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553472, 0.563525, -0.613277,
		0.307484, 0.546071, 0.779269,
		0.774030, -0.619877, 0.128960,
		32.544518, 41.580006, 48.496117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.788185, 46.856918, 46.591267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.032913, 46.583290, 46.750122>,  <34.179749, 46.419113, 46.845436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.032913, 46.583290, 46.750122>,  <33.788185, 46.856918, 46.591267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032913, 46.583290, 46.750122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768741, 0.395974, -0.502237,
		0.186310, 0.612576, 0.768140,
		0.611822, -0.684072, 0.397139,
		34.216461, 46.378067, 46.869263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364376, 47.159035, 46.963512>,  <33.788185, 46.856918, 46.591267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364376, 47.159035, 46.963512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.530746, 46.803535, 46.886433>,  <34.630569, 46.590237, 46.840187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.530746, 46.803535, 46.886433>,  <34.364376, 47.159035, 46.963512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530746, 46.803535, 46.886433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773060, 0.457141, -0.439773,
		0.478937, 0.033948, 0.877193,
		0.415930, -0.888746, -0.192698,
		34.655525, 46.536911, 46.828625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119045, 47.291588, 47.136761>,  <34.364376, 47.159035, 46.963512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119045, 47.291588, 47.136761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.128979, 46.952576, 46.924698>,  <35.134941, 46.749168, 46.797459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.128979, 46.952576, 46.924698>,  <35.119045, 47.291588, 47.136761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128979, 46.952576, 46.924698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872715, 0.277046, -0.402012,
		0.487597, -0.452692, 0.746538,
		0.024837, -0.847535, -0.530158,
		35.136429, 46.698315, 46.765652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828346, 47.065746, 47.245895>,  <35.119045, 47.291588, 47.136761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828346, 47.065746, 47.245895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.697262, 46.841011, 46.942066>,  <35.618610, 46.706169, 46.759769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.697262, 46.841011, 46.942066>,  <35.828346, 47.065746, 47.245895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697262, 46.841011, 46.942066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916913, 0.004688, -0.399059,
		0.227768, -0.827233, 0.513621,
		-0.327707, -0.561839, -0.759569,
		35.598949, 46.672459, 46.714195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337318, 46.531086, 47.168350>,  <35.828346, 47.065746, 47.245895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337318, 46.531086, 47.168350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.136749, 46.560425, 46.823517>,  <36.016407, 46.578030, 46.616615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.136749, 46.560425, 46.823517>,  <36.337318, 46.531086, 47.168350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136749, 46.560425, 46.823517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864579, 0.080276, -0.496043,
		0.032821, -0.994071, -0.103667,
		-0.501424, 0.073348, -0.862087,
		35.986320, 46.582428, 46.564892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489399, 45.983639, 46.712440>,  <36.337318, 46.531086, 47.168350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489399, 45.983639, 46.712440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.366314, 46.285492, 46.480633>,  <36.292461, 46.466606, 46.341549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.366314, 46.285492, 46.480633>,  <36.489399, 45.983639, 46.712440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366314, 46.285492, 46.480633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917921, 0.075114, -0.389589,
		-0.250468, -0.651830, -0.715809,
		-0.307713, 0.754636, -0.579515,
		36.273998, 46.511883, 46.306778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948685, 45.958893, 46.235760>,  <36.489399, 45.983639, 46.712440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948685, 45.958893, 46.235760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810669, 46.328812, 46.171627>,  <36.727859, 46.550762, 46.133148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810669, 46.328812, 46.171627>,  <36.948685, 45.958893, 46.235760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810669, 46.328812, 46.171627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916460, 0.295077, -0.270243,
		-0.202609, -0.240181, -0.949349,
		-0.345038, 0.924793, -0.160331,
		36.707157, 46.606251, 46.123528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240719, 46.130074, 45.567719>,  <36.948685, 45.958893, 46.235760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240719, 46.130074, 45.567719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.149231, 46.462463, 45.770565>,  <37.094337, 46.661896, 45.892273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.149231, 46.462463, 45.770565>,  <37.240719, 46.130074, 45.567719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149231, 46.462463, 45.770565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916672, 0.359208, -0.175165,
		-0.327718, 0.424793, -0.843891,
		-0.228723, 0.830976, 0.507114,
		37.080612, 46.711758, 45.922699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296967, 46.644188, 45.097790>,  <37.240719, 46.130074, 45.567719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296967, 46.644188, 45.097790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.296516, 46.823273, 45.455460>,  <37.296246, 46.930721, 45.670063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.296516, 46.823273, 45.455460>,  <37.296967, 46.644188, 45.097790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296516, 46.823273, 45.455460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863213, 0.451852, -0.225151,
		-0.504838, 0.771613, -0.386978,
		-0.001127, 0.447709, 0.894179,
		37.296177, 46.957584, 45.723713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398708, 47.305866, 44.897316>,  <37.296967, 46.644188, 45.097790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398708, 47.305866, 44.897316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.502335, 47.268364, 45.281834>,  <37.564510, 47.245861, 45.512547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.502335, 47.268364, 45.281834>,  <37.398708, 47.305866, 44.897316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502335, 47.268364, 45.281834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876358, 0.441241, -0.193139,
		-0.406056, 0.892477, 0.196477,
		0.259066, -0.093759, 0.961298,
		37.580055, 47.240234, 45.570225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851017, 47.880978, 45.055016>,  <37.398708, 47.305866, 44.897316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851017, 47.880978, 45.055016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959091, 47.635818, 45.352028>,  <38.023933, 47.488724, 45.530235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959091, 47.635818, 45.352028>,  <37.851017, 47.880978, 45.055016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959091, 47.635818, 45.352028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896358, 0.441664, 0.038406,
		-0.351489, 0.655198, 0.668709,
		0.270181, -0.612902, 0.742531,
		38.040146, 47.451946, 45.574787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112492, 48.353939, 45.473171>,  <37.851017, 47.880978, 45.055016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112492, 48.353939, 45.473171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.249672, 47.993416, 45.579018>,  <38.331982, 47.777100, 45.642525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.249672, 47.993416, 45.579018>,  <38.112492, 48.353939, 45.473171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249672, 47.993416, 45.579018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899032, 0.396584, 0.185639,
		-0.272261, 0.174232, 0.946318,
		0.342950, -0.901313, 0.264614,
		38.352558, 47.723022, 45.658401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723362, 48.572887, 45.848141>,  <38.112492, 48.353939, 45.473171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723362, 48.572887, 45.848141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780060, 48.177010, 45.840061>,  <38.814079, 47.939484, 45.835213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.780060, 48.177010, 45.840061>,  <38.723362, 48.572887, 45.848141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780060, 48.177010, 45.840061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978618, 0.137022, 0.153399,
		-0.149050, -0.041514, 0.987958,
		0.141740, -0.989698, -0.020203,
		38.822582, 47.880100, 45.834000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128342, 48.334869, 46.452801>,  <38.723362, 48.572887, 45.848141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128342, 48.334869, 46.452801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.191219, 48.133766, 46.112797>,  <39.228947, 48.013103, 45.908794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.191219, 48.133766, 46.112797>,  <39.128342, 48.334869, 46.452801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191219, 48.133766, 46.112797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945504, 0.325143, -0.017458,
		0.285153, -0.800946, 0.526473,
		0.157196, -0.502761, -0.850012,
		39.238377, 47.982937, 45.857792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591438, 48.814728, 46.347027>,  <39.128342, 48.334869, 46.452801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591438, 48.814728, 46.347027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.795341, 49.073044, 46.574394>,  <39.917683, 49.228035, 46.710815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.795341, 49.073044, 46.574394>,  <39.591438, 48.814728, 46.347027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795341, 49.073044, 46.574394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202373, -0.552153, 0.808809,
		0.836174, -0.527332, -0.150776,
		0.509762, 0.645792, 0.568414,
		39.948269, 49.266781, 46.744919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258938, 48.474598, 46.603256>,  <39.591438, 48.814728, 46.347027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258938, 48.474598, 46.603256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.183891, 48.771851, 46.860176>,  <40.138863, 48.950203, 47.014328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.183891, 48.771851, 46.860176>,  <40.258938, 48.474598, 46.603256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183891, 48.771851, 46.860176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179596, -0.668842, 0.721384,
		0.965685, 0.019985, 0.258947,
		-0.187612, 0.743136, 0.642301,
		40.127609, 48.994793, 47.052868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591972, 48.318459, 47.278973>,  <40.258938, 48.474598, 46.603256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591972, 48.318459, 47.278973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.344345, 48.603363, 47.411301>,  <40.195766, 48.774303, 47.490696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.344345, 48.603363, 47.411301>,  <40.591972, 48.318459, 47.278973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344345, 48.603363, 47.411301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200410, -0.550576, 0.810372,
		0.759333, 0.435379, 0.483589,
		-0.619071, 0.712258, 0.330816,
		40.158623, 48.817039, 47.510544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776123, 48.410332, 47.951817>,  <40.591972, 48.318459, 47.278973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776123, 48.410332, 47.951817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393631, 48.521080, 47.913933>,  <40.164135, 48.587528, 47.891201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.393631, 48.521080, 47.913933>,  <40.776123, 48.410332, 47.951817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393631, 48.521080, 47.913933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239451, -0.554324, 0.797112,
		0.168193, 0.784901, 0.596357,
		-0.956229, 0.276867, -0.094712,
		40.106762, 48.604141, 47.885521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570110, 48.393055, 48.629116>,  <40.776123, 48.410332, 47.951817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570110, 48.393055, 48.629116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.225498, 48.419495, 48.427765>,  <40.018730, 48.435360, 48.306953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.225498, 48.419495, 48.427765>,  <40.570110, 48.393055, 48.629116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225498, 48.419495, 48.427765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442182, -0.584887, 0.679987,
		-0.249475, 0.808417, 0.533127,
		-0.861532, 0.066099, -0.503383,
		39.967037, 48.439323, 48.276749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044209, 48.652027, 49.116978>,  <40.570110, 48.393055, 48.629116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044209, 48.652027, 49.116978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.861023, 48.455147, 48.820869>,  <39.751110, 48.337017, 48.643204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.861023, 48.455147, 48.820869>,  <40.044209, 48.652027, 49.116978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861023, 48.455147, 48.820869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560731, -0.486238, 0.670189,
		-0.689816, 0.722020, -0.053310,
		-0.457968, -0.492200, -0.740273,
		39.723633, 48.307487, 48.598789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399368, 48.655987, 49.321953>,  <40.044209, 48.652027, 49.116978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399368, 48.655987, 49.321953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.384148, 48.342125, 49.074448>,  <39.375015, 48.153809, 48.925945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.384148, 48.342125, 49.074448>,  <39.399368, 48.655987, 49.321953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384148, 48.342125, 49.074448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596218, -0.479089, 0.644203,
		-0.801920, 0.393429, -0.449596,
		-0.038052, -0.784657, -0.618761,
		39.372734, 48.106728, 48.888821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708138, 48.501022, 49.277782>,  <39.399368, 48.655987, 49.321953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708138, 48.501022, 49.277782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834282, 48.161552, 49.107937>,  <38.909969, 47.957870, 49.006031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.834282, 48.161552, 49.107937>,  <38.708138, 48.501022, 49.277782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834282, 48.161552, 49.107937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770831, -0.490067, 0.407006,
		-0.553506, 0.198953, -0.808733,
		0.315358, -0.848677, -0.424614,
		38.928890, 47.906948, 48.980553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153965, 48.182186, 48.917053>,  <38.708138, 48.501022, 49.277782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153965, 48.182186, 48.917053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420479, 47.889771, 48.975906>,  <38.580387, 47.714321, 49.011219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420479, 47.889771, 48.975906>,  <38.153965, 48.182186, 48.917053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420479, 47.889771, 48.975906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725517, -0.589918, 0.354432,
		-0.172310, -0.342897, -0.923434,
		0.666284, -0.731039, 0.147129,
		38.620365, 47.670460, 49.020046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977974, 47.670090, 48.518269>,  <38.153965, 48.182186, 48.917053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977974, 47.670090, 48.518269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.208530, 47.491402, 48.791973>,  <38.346863, 47.384190, 48.956196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.208530, 47.491402, 48.791973>,  <37.977974, 47.670090, 48.518269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208530, 47.491402, 48.791973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736700, -0.646415, 0.198546,
		0.353624, -0.618537, -0.701685,
		0.576388, -0.446720, 0.684264,
		38.381447, 47.357384, 48.997253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860046, 46.977737, 48.470436>,  <37.977974, 47.670090, 48.518269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860046, 46.977737, 48.470436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.043869, 46.937271, 48.823383>,  <38.154163, 46.912991, 49.035152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.043869, 46.937271, 48.823383>,  <37.860046, 46.977737, 48.470436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043869, 46.937271, 48.823383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673725, -0.687054, 0.272123,
		0.578706, -0.719530, -0.383897,
		0.459558, -0.101162, 0.882368,
		38.181736, 46.906921, 49.088093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014122, 46.318371, 48.553940>,  <37.860046, 46.977737, 48.470436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014122, 46.318371, 48.553940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031792, 46.444130, 48.933247>,  <38.042393, 46.519585, 49.160831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031792, 46.444130, 48.933247>,  <38.014122, 46.318371, 48.553940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031792, 46.444130, 48.933247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658550, -0.704600, 0.264291,
		0.751239, -0.636155, 0.175918,
		0.044178, 0.314397, 0.948263,
		38.045044, 46.538448, 49.217724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072662, 45.673397, 48.946636>,  <38.014122, 46.318371, 48.553940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072662, 45.673397, 48.946636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913010, 45.972977, 49.158211>,  <37.817219, 46.152725, 49.285156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.913010, 45.972977, 49.158211>,  <38.072662, 45.673397, 48.946636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913010, 45.972977, 49.158211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693515, -0.623954, 0.360163,
		0.599776, -0.223075, 0.768444,
		-0.399131, 0.748945, 0.528938,
		37.793270, 46.197659, 49.316891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017632, 45.348045, 49.542988>,  <38.072662, 45.673397, 48.946636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017632, 45.348045, 49.542988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.760811, 45.653610, 49.568947>,  <37.606720, 45.836948, 49.584522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.760811, 45.653610, 49.568947>,  <38.017632, 45.348045, 49.542988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760811, 45.653610, 49.568947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683223, -0.608521, 0.403619,
		0.347818, 0.214807, 0.912623,
		-0.642051, 0.763911, 0.064894,
		37.568195, 45.882782, 49.588413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680954, 45.280209, 50.093517>,  <38.017632, 45.348045, 49.542988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680954, 45.280209, 50.093517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.943939, 44.985832, 50.158180>,  <39.101730, 44.809208, 50.196980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.943939, 44.985832, 50.158180>,  <38.680954, 45.280209, 50.093517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943939, 44.985832, 50.158180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688344, 0.499369, -0.526130,
		0.306475, 0.457187, 0.834898,
		0.657461, -0.735942, 0.161658,
		39.141178, 44.765049, 50.206676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434822, 45.572865, 50.171238>,  <38.680954, 45.280209, 50.093517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434822, 45.572865, 50.171238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.491272, 45.188438, 50.076214>,  <39.525143, 44.957783, 50.019199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.491272, 45.188438, 50.076214>,  <39.434822, 45.572865, 50.171238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491272, 45.188438, 50.076214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697058, 0.266864, -0.665503,
		0.702989, -0.071674, 0.707580,
		0.141129, -0.961065, -0.237564,
		39.533611, 44.900120, 50.004944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163593, 45.433022, 50.233963>,  <39.434822, 45.572865, 50.171238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163593, 45.433022, 50.233963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.034039, 45.122627, 50.017464>,  <39.956306, 44.936390, 49.887566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.034039, 45.122627, 50.017464>,  <40.163593, 45.433022, 50.233963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034039, 45.122627, 50.017464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735271, 0.153556, -0.660150,
		0.595375, -0.611779, 0.520821,
		-0.323891, -0.775981, -0.541247,
		39.936871, 44.889832, 49.855091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725948, 45.087448, 50.065605>,  <40.163593, 45.433022, 50.233963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725948, 45.087448, 50.065605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.469490, 44.959328, 49.786652>,  <40.315617, 44.882454, 49.619282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.469490, 44.959328, 49.786652>,  <40.725948, 45.087448, 50.065605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469490, 44.959328, 49.786652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670429, 0.208434, -0.712096,
		0.373445, -0.924100, 0.081104,
		-0.641143, -0.320303, -0.697382,
		40.277145, 44.863235, 49.577438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068481, 44.583683, 49.706959>,  <40.725948, 45.087448, 50.065605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068481, 44.583683, 49.706959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.784363, 44.721405, 49.461380>,  <40.613892, 44.804039, 49.314034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.784363, 44.721405, 49.461380>,  <41.068481, 44.583683, 49.706959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784363, 44.721405, 49.461380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681847, 0.119918, -0.721598,
		-0.174827, -0.931167, -0.319942,
		-0.710295, 0.344306, -0.613949,
		40.571274, 44.824696, 49.277195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327713, 44.304935, 49.086807>,  <41.068481, 44.583683, 49.706959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327713, 44.304935, 49.086807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.067566, 44.587379, 48.974785>,  <40.911476, 44.756844, 48.907570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.067566, 44.587379, 48.974785>,  <41.327713, 44.304935, 49.086807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067566, 44.587379, 48.974785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597378, 0.247698, -0.762749,
		-0.469211, -0.663371, -0.582907,
		-0.650370, 0.706106, -0.280061,
		40.872456, 44.799210, 48.890766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273060, 44.224403, 48.328411>,  <41.327713, 44.304935, 49.086807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273060, 44.224403, 48.328411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.140625, 44.592682, 48.411076>,  <41.061165, 44.813648, 48.460674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.140625, 44.592682, 48.411076>,  <41.273060, 44.224403, 48.328411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140625, 44.592682, 48.411076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413918, 0.338522, -0.845030,
		-0.847970, -0.194240, -0.493171,
		-0.331088, 0.920692, 0.206657,
		41.041298, 44.868889, 48.473072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683300, 44.431637, 47.768959>,  <41.273060, 44.224403, 48.328411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683300, 44.431637, 47.768959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884605, 44.743355, 47.918320>,  <41.005390, 44.930386, 48.007935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.884605, 44.743355, 47.918320>,  <40.683300, 44.431637, 47.768959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884605, 44.743355, 47.918320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196963, 0.317290, -0.927649,
		-0.841386, 0.540399, 0.006189,
		0.503264, 0.779292, 0.373402,
		41.035583, 44.977142, 48.030342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575642, 45.032265, 47.198151>,  <40.683300, 44.431637, 47.768959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575642, 45.032265, 47.198151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.869644, 45.140671, 47.446770>,  <41.046043, 45.205715, 47.595940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.869644, 45.140671, 47.446770>,  <40.575642, 45.032265, 47.198151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869644, 45.140671, 47.446770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553695, 0.289222, -0.780879,
		-0.391398, 0.918096, 0.062517,
		0.735003, 0.271019, 0.621546,
		41.090145, 45.221977, 47.633232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756733, 45.691914, 47.010750>,  <40.575642, 45.032265, 47.198151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756733, 45.691914, 47.010750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.076160, 45.563606, 47.214470>,  <41.267818, 45.486622, 47.336704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.076160, 45.563606, 47.214470>,  <40.756733, 45.691914, 47.010750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076160, 45.563606, 47.214470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586078, 0.221652, -0.779348,
		0.137103, 0.920857, 0.365001,
		0.798571, -0.320770, 0.509304,
		41.315731, 45.467377, 47.367260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311474, 46.191128, 46.845207>,  <40.756733, 45.691914, 47.010750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311474, 46.191128, 46.845207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.498150, 45.867523, 46.988152>,  <41.610157, 45.673363, 47.073917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.498150, 45.867523, 46.988152>,  <41.311474, 46.191128, 46.845207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498150, 45.867523, 46.988152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752208, 0.150562, -0.641494,
		0.465170, 0.568187, 0.678808,
		0.466691, -0.809009, 0.357358,
		41.638157, 45.624821, 47.095360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977657, 46.435596, 47.097160>,  <41.311474, 46.191128, 46.845207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977657, 46.435596, 47.097160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.014347, 46.046379, 47.012527>,  <42.036362, 45.812847, 46.961750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.014347, 46.046379, 47.012527>,  <41.977657, 46.435596, 47.097160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014347, 46.046379, 47.012527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697506, 0.214424, -0.683745,
		0.710684, -0.084862, 0.698374,
		0.091724, -0.973047, -0.211579,
		42.041862, 45.754463, 46.949055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.736088, 43.953674, 53.126087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805893, 43.622490, 52.912910>,  <36.847775, 43.423779, 52.785004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805893, 43.622490, 52.912910>,  <36.736088, 43.953674, 53.126087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805893, 43.622490, 52.912910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797383, 0.436376, -0.416841,
		0.577691, -0.352215, 0.736354,
		0.174510, -0.827962, -0.532941,
		36.858246, 43.374100, 52.753029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559689, 43.928062, 53.029701>,  <36.736088, 43.953674, 53.126087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559689, 43.928062, 53.029701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415871, 43.667717, 52.762238>,  <37.329578, 43.511509, 52.601757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415871, 43.667717, 52.762238>,  <37.559689, 43.928062, 53.029701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415871, 43.667717, 52.762238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794502, 0.162285, -0.585176,
		0.489381, -0.741650, 0.458760,
		-0.359546, -0.650860, -0.668662,
		37.308006, 43.472458, 52.561638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200424, 43.726334, 52.723381>,  <37.559689, 43.928062, 53.029701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200424, 43.726334, 52.723381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920959, 43.576584, 52.479504>,  <37.753281, 43.486732, 52.333179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920959, 43.576584, 52.479504>,  <38.200424, 43.726334, 52.723381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920959, 43.576584, 52.479504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607952, 0.138612, -0.781781,
		0.377189, -0.916859, 0.130760,
		-0.698658, -0.374375, -0.609689,
		37.711361, 43.464272, 52.296597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613705, 43.234280, 52.242432>,  <38.200424, 43.726334, 52.723381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613705, 43.234280, 52.242432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281544, 43.378571, 52.072578>,  <38.082249, 43.465145, 51.970665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281544, 43.378571, 52.072578>,  <38.613705, 43.234280, 52.242432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281544, 43.378571, 52.072578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525324, 0.252942, -0.812438,
		-0.185659, -0.897718, -0.399541,
		-0.830401, 0.360725, -0.424632,
		38.032425, 43.486790, 51.945190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578678, 42.921089, 51.553341>,  <38.613705, 43.234280, 52.242432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578678, 42.921089, 51.553341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358513, 43.255043, 51.554092>,  <38.226414, 43.455418, 51.554543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358513, 43.255043, 51.554092>,  <38.578678, 42.921089, 51.553341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358513, 43.255043, 51.554092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401386, 0.266591, -0.876253,
		-0.732073, -0.481551, -0.481848,
		-0.550416, 0.834888, 0.001876,
		38.193390, 43.505508, 51.554657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422459, 43.037804, 50.909973>,  <38.578678, 42.921089, 51.553341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422459, 43.037804, 50.909973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374447, 43.393448, 51.086643>,  <38.345638, 43.606834, 51.192646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374447, 43.393448, 51.086643>,  <38.422459, 43.037804, 50.909973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374447, 43.393448, 51.086643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390098, 0.451345, -0.802565,
		-0.912916, 0.075960, -0.401017,
		-0.120034, 0.889110, 0.441672,
		38.338436, 43.660179, 51.219147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241096, 43.374084, 50.386292>,  <38.422459, 43.037804, 50.909973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241096, 43.374084, 50.386292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354843, 43.642258, 50.660416>,  <38.423092, 43.803162, 50.824890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354843, 43.642258, 50.660416>,  <38.241096, 43.374084, 50.386292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354843, 43.642258, 50.660416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413303, 0.559262, -0.718614,
		-0.865052, 0.487594, -0.118055,
		0.284368, 0.670431, 0.685315,
		38.440155, 43.843388, 50.866009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015522, 43.986164, 50.146046>,  <38.241096, 43.374084, 50.386292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015522, 43.986164, 50.146046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318764, 44.067657, 50.393845>,  <38.500710, 44.116554, 50.542522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318764, 44.067657, 50.393845>,  <38.015522, 43.986164, 50.146046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318764, 44.067657, 50.393845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506687, 0.414019, -0.756212,
		-0.410551, 0.887175, 0.210637,
		0.758100, 0.203737, 0.619496,
		38.546192, 44.128780, 50.579693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166771, 44.730576, 50.103081>,  <38.015522, 43.986164, 50.146046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166771, 44.730576, 50.103081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504829, 44.572769, 50.247349>,  <38.707664, 44.478085, 50.333908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504829, 44.572769, 50.247349>,  <38.166771, 44.730576, 50.103081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504829, 44.572769, 50.247349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529471, 0.525221, -0.666185,
		0.073394, 0.753987, 0.652776,
		0.845147, -0.394520, 0.360667,
		38.758373, 44.454414, 50.355549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855797, 45.356091, 50.296741>,  <38.166771, 44.730576, 50.103081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855797, 45.356091, 50.296741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565620, 45.570389, 50.123898>,  <37.391514, 45.698967, 50.020191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565620, 45.570389, 50.123898>,  <37.855797, 45.356091, 50.296741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565620, 45.570389, 50.123898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680577, -0.464620, 0.566518,
		0.102742, 0.705058, 0.701668,
		-0.725437, 0.535744, -0.432110,
		37.347988, 45.731113, 49.994263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458115, 45.629017, 50.852737>,  <37.855797, 45.356091, 50.296741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458115, 45.629017, 50.852737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236702, 45.621124, 50.519699>,  <37.103855, 45.616390, 50.319878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236702, 45.621124, 50.519699>,  <37.458115, 45.629017, 50.852737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236702, 45.621124, 50.519699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788890, -0.308001, 0.531778,
		-0.266932, 0.951182, 0.154923,
		-0.553534, -0.019731, -0.832593,
		37.070641, 45.615204, 50.269920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840584, 45.970444, 51.025879>,  <37.458115, 45.629017, 50.852737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840584, 45.970444, 51.025879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775337, 45.731956, 50.711449>,  <36.736191, 45.588863, 50.522793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775337, 45.731956, 50.711449>,  <36.840584, 45.970444, 51.025879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775337, 45.731956, 50.711449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889688, -0.255482, 0.378397,
		-0.426436, 0.761083, -0.488779,
		-0.163117, -0.596222, -0.786073,
		36.726402, 45.553089, 50.475628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072620, 46.087959, 50.903629>,  <36.840584, 45.970444, 51.025879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072620, 46.087959, 50.903629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137356, 45.767624, 50.672993>,  <36.176197, 45.575420, 50.534611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137356, 45.767624, 50.672993>,  <36.072620, 46.087959, 50.903629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137356, 45.767624, 50.672993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891097, -0.369634, 0.263281,
		-0.423975, 0.471191, -0.773450,
		0.161838, -0.800843, -0.576592,
		36.185905, 45.527370, 50.500015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350540, 45.970184, 50.576584>,  <36.072620, 46.087959, 50.903629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350540, 45.970184, 50.576584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607544, 45.664795, 50.550358>,  <35.761745, 45.481564, 50.534622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607544, 45.664795, 50.550358>,  <35.350540, 45.970184, 50.576584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607544, 45.664795, 50.550358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754880, -0.645332, 0.117059,
		-0.131679, -0.025721, -0.990959,
		0.642508, -0.763469, -0.065560,
		35.800297, 45.435753, 50.530689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993057, 45.437752, 50.134228>,  <35.350540, 45.970184, 50.576584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993057, 45.437752, 50.134228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278999, 45.226738, 50.317833>,  <35.450565, 45.100128, 50.427994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278999, 45.226738, 50.317833>,  <34.993057, 45.437752, 50.134228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278999, 45.226738, 50.317833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628882, -0.772024, 0.092122,
		0.305768, -0.354517, -0.883642,
		0.714852, -0.527538, 0.459010,
		35.493454, 45.068478, 50.455536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008625, 44.814922, 49.822964>,  <34.993057, 45.437752, 50.134228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008625, 44.814922, 49.822964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182480, 44.758636, 50.178780>,  <35.286793, 44.724865, 50.392269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182480, 44.758636, 50.178780>,  <35.008625, 44.814922, 49.822964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182480, 44.758636, 50.178780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648517, -0.734260, 0.200718,
		0.624911, -0.664124, -0.410397,
		0.434640, -0.140719, 0.889543,
		35.312870, 44.716419, 50.445641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980534, 44.076790, 49.901833>,  <35.008625, 44.814922, 49.822964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980534, 44.076790, 49.901833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050728, 44.212379, 50.271545>,  <35.092846, 44.293736, 50.493374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050728, 44.212379, 50.271545>,  <34.980534, 44.076790, 49.901833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050728, 44.212379, 50.271545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642690, -0.671746, 0.368384,
		0.745758, -0.658673, 0.099976,
		0.175485, 0.338979, 0.924282,
		35.103374, 44.314072, 50.548832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092880, 43.544174, 50.332371>,  <34.980534, 44.076790, 49.901833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092880, 43.544174, 50.332371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989090, 43.836418, 50.584999>,  <34.926815, 44.011765, 50.736576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989090, 43.836418, 50.584999>,  <35.092880, 43.544174, 50.332371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989090, 43.836418, 50.584999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759660, -0.558212, 0.333641,
		0.596312, -0.393209, 0.699856,
		-0.259477, 0.730607, 0.631574,
		34.911247, 44.055599, 50.774471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943283, 43.223228, 51.054386>,  <35.092880, 43.544174, 50.332371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943283, 43.223228, 51.054386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750053, 43.572670, 51.077885>,  <34.634117, 43.782337, 51.091984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750053, 43.572670, 51.077885>,  <34.943283, 43.223228, 51.054386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750053, 43.572670, 51.077885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809760, -0.471276, 0.349555,
		0.333061, 0.121287, 0.935072,
		-0.483073, 0.873607, 0.058750,
		34.605133, 43.834751, 51.095509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518112, 43.224133, 51.717773>,  <34.943283, 43.223228, 51.054386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518112, 43.224133, 51.717773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369083, 43.510506, 51.481590>,  <34.279667, 43.682327, 51.339882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369083, 43.510506, 51.481590>,  <34.518112, 43.224133, 51.717773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369083, 43.510506, 51.481590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926043, -0.245469, 0.286686,
		0.060308, 0.653598, 0.754435,
		-0.372568, 0.715929, -0.590456,
		34.257313, 43.725285, 51.304455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115849, 43.557392, 52.194466>,  <34.518112, 43.224133, 51.717773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115849, 43.557392, 52.194466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993179, 43.639229, 51.822639>,  <33.919579, 43.688332, 51.599545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993179, 43.639229, 51.822639>,  <34.115849, 43.557392, 52.194466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993179, 43.639229, 51.822639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949774, -0.129682, 0.284802,
		-0.062281, 0.970220, 0.234083,
		-0.306677, 0.204588, -0.929566,
		33.901176, 43.700603, 51.543770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654461, 44.090347, 52.262917>,  <34.115849, 43.557392, 52.194466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654461, 44.090347, 52.262917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556984, 43.901299, 51.924156>,  <33.498497, 43.787868, 51.720901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556984, 43.901299, 51.924156>,  <33.654461, 44.090347, 52.262917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556984, 43.901299, 51.924156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950785, -0.055881, 0.304770,
		-0.191366, 0.879493, -0.435743,
		-0.243693, -0.472621, -0.846902,
		33.483875, 43.759514, 51.670086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939735, 44.181572, 52.202076>,  <33.654461, 44.090347, 52.262917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939735, 44.181572, 52.202076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957970, 43.938820, 51.884682>,  <32.968910, 43.793171, 51.694244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957970, 43.938820, 51.884682>,  <32.939735, 44.181572, 52.202076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957970, 43.938820, 51.884682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943342, -0.287494, 0.165692,
		-0.328678, 0.740977, -0.585598,
		0.045582, -0.606878, -0.793487,
		32.971645, 43.756756, 51.646637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.147434, 37.673660, 48.056259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.275490, 37.915855, 48.347710>,  <33.352322, 38.061172, 48.522579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.275490, 37.915855, 48.347710>,  <33.147434, 37.673660, 48.056259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275490, 37.915855, 48.347710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593181, 0.471575, -0.652498,
		-0.738681, 0.641096, -0.208195,
		0.320135, 0.605486, 0.728629,
		33.371529, 38.097500, 48.566299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125126, 38.378498, 47.772678>,  <33.147434, 37.673660, 48.056259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125126, 38.378498, 47.772678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.401573, 38.381973, 48.061756>,  <33.567440, 38.384060, 48.235203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.401573, 38.381973, 48.061756>,  <33.125126, 38.378498, 47.772678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401573, 38.381973, 48.061756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614902, 0.518398, -0.594272,
		-0.379805, 0.855095, 0.352931,
		0.691118, 0.008690, 0.722690,
		33.608910, 38.384579, 48.278564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361530, 39.073326, 47.695251>,  <33.125126, 38.378498, 47.772678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361530, 39.073326, 47.695251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.615585, 38.847069, 47.905640>,  <33.768017, 38.711315, 48.031872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.615585, 38.847069, 47.905640>,  <33.361530, 39.073326, 47.695251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615585, 38.847069, 47.905640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771141, 0.503201, -0.390038,
		-0.044044, 0.653324, 0.755796,
		0.635139, -0.565647, 0.525968,
		33.806126, 38.677376, 48.063431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773514, 39.517555, 48.049114>,  <33.361530, 39.073326, 47.695251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773514, 39.517555, 48.049114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.974030, 39.172089, 48.027992>,  <34.094337, 38.964809, 48.015320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.974030, 39.172089, 48.027992>,  <33.773514, 39.517555, 48.049114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974030, 39.172089, 48.027992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757489, 0.467517, -0.455673,
		0.418237, 0.188425, 0.888580,
		0.501286, -0.863669, -0.052803,
		34.124416, 38.912987, 48.012150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395805, 39.654209, 48.383057>,  <33.773514, 39.517555, 48.049114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395805, 39.654209, 48.383057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.465546, 39.341164, 48.144020>,  <34.507389, 39.153336, 48.000599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.465546, 39.341164, 48.144020>,  <34.395805, 39.654209, 48.383057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465546, 39.341164, 48.144020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876007, 0.400429, -0.268827,
		0.449682, -0.476627, 0.755389,
		0.174350, -0.782613, -0.597594,
		34.517849, 39.106380, 47.964741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082302, 39.359177, 48.420403>,  <34.395805, 39.654209, 48.383057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082302, 39.359177, 48.420403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.970787, 39.242065, 48.054550>,  <34.903877, 39.171799, 47.835037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.970787, 39.242065, 48.054550>,  <35.082302, 39.359177, 48.420403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970787, 39.242065, 48.054550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844192, 0.379330, -0.378746,
		0.457838, -0.877717, 0.141408,
		-0.278792, -0.292780, -0.914634,
		34.887150, 39.154232, 47.780159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612507, 39.021046, 48.176407>,  <35.082302, 39.359177, 48.420403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612507, 39.021046, 48.176407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.395027, 39.109253, 47.852489>,  <35.264542, 39.162178, 47.658138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.395027, 39.109253, 47.852489>,  <35.612507, 39.021046, 48.176407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395027, 39.109253, 47.852489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812566, 0.379819, -0.442125,
		0.210078, -0.898392, -0.385693,
		-0.543695, 0.220520, -0.809794,
		35.231918, 39.175407, 47.609550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047489, 38.851078, 47.577374>,  <35.612507, 39.021046, 48.176407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047489, 38.851078, 47.577374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.776474, 39.075783, 47.387482>,  <35.613865, 39.210606, 47.273544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.776474, 39.075783, 47.387482>,  <36.047489, 38.851078, 47.577374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776474, 39.075783, 47.387482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682985, 0.241054, -0.689510,
		-0.272905, -0.791402, -0.546997,
		-0.677536, 0.561762, -0.474731,
		35.573212, 39.244312, 47.245064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201057, 38.689510, 46.924732>,  <36.047489, 38.851078, 47.577374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201057, 38.689510, 46.924732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.037048, 39.054024, 46.939968>,  <35.938644, 39.272732, 46.949108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.037048, 39.054024, 46.939968>,  <36.201057, 38.689510, 46.924732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037048, 39.054024, 46.939968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652249, 0.322153, -0.686141,
		-0.637536, -0.256492, -0.726471,
		-0.410024, 0.911279, 0.038087,
		35.914040, 39.327408, 46.951393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336571, 38.891178, 46.297211>,  <36.201057, 38.689510, 46.924732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336571, 38.891178, 46.297211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.216888, 39.228790, 46.475235>,  <36.145077, 39.431358, 46.582050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.216888, 39.228790, 46.475235>,  <36.336571, 38.891178, 46.297211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216888, 39.228790, 46.475235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517978, 0.535398, -0.667119,
		-0.801358, 0.030926, -0.597386,
		-0.299208, 0.844033, 0.445065,
		36.127125, 39.481998, 46.608753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133709, 39.433571, 45.778557>,  <36.336571, 38.891178, 46.297211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133709, 39.433571, 45.778557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.219948, 39.680298, 46.081360>,  <36.271690, 39.828335, 46.263042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.219948, 39.680298, 46.081360>,  <36.133709, 39.433571, 45.778557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219948, 39.680298, 46.081360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550748, 0.563355, -0.615880,
		-0.806347, 0.549699, -0.218254,
		0.215594, 0.616816, 0.757006,
		36.284626, 39.865341, 46.308460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988392, 39.975822, 45.439396>,  <36.133709, 39.433571, 45.778557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988392, 39.975822, 45.439396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.229630, 40.054741, 45.748550>,  <36.374374, 40.102093, 45.934044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.229630, 40.054741, 45.748550>,  <35.988392, 39.975822, 45.439396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229630, 40.054741, 45.748550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571859, 0.568560, -0.591368,
		-0.556103, 0.798633, 0.230074,
		0.603097, 0.197292, 0.772884,
		36.410561, 40.113930, 45.980415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078541, 40.713409, 45.472950>,  <35.988392, 39.975822, 45.439396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078541, 40.713409, 45.472950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383865, 40.558418, 45.679726>,  <36.567059, 40.465424, 45.803791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383865, 40.558418, 45.679726>,  <36.078541, 40.713409, 45.472950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383865, 40.558418, 45.679726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640515, 0.558275, -0.527323,
		-0.084269, 0.733617, 0.674318,
		0.763308, -0.387474, 0.516938,
		36.612858, 40.442177, 45.834808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403919, 41.239391, 45.691746>,  <36.078541, 40.713409, 45.472950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403919, 41.239391, 45.691746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685219, 40.955414, 45.706825>,  <36.854000, 40.785027, 45.715874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.685219, 40.955414, 45.706825>,  <36.403919, 41.239391, 45.691746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685219, 40.955414, 45.706825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633545, 0.601750, -0.486330,
		0.322578, 0.365899, 0.872961,
		0.703252, -0.709940, 0.037702,
		36.896194, 40.742432, 45.718136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450478, 41.687920, 46.251602>,  <36.403919, 41.239391, 45.691746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450478, 41.687920, 46.251602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196144, 41.989418, 46.185169>,  <36.043545, 42.170319, 46.145309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196144, 41.989418, 46.185169>,  <36.450478, 41.687920, 46.251602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196144, 41.989418, 46.185169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573798, -0.317699, 0.754867,
		0.516214, 0.575266, 0.634501,
		-0.635830, 0.753748, -0.166086,
		36.005394, 42.215542, 46.135342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263481, 41.964561, 46.856686>,  <36.450478, 41.687920, 46.251602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263481, 41.964561, 46.856686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.961700, 42.067818, 46.615299>,  <35.780632, 42.129772, 46.470467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.961700, 42.067818, 46.615299>,  <36.263481, 41.964561, 46.856686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961700, 42.067818, 46.615299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647677, -0.143741, 0.748233,
		0.106406, 0.955355, 0.275636,
		-0.754448, 0.258140, -0.603467,
		35.735367, 42.145260, 46.434258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849586, 42.517315, 47.222584>,  <36.263481, 41.964561, 46.856686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849586, 42.517315, 47.222584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.617241, 42.352814, 46.941597>,  <35.477833, 42.254112, 46.773003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.617241, 42.352814, 46.941597>,  <35.849586, 42.517315, 47.222584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617241, 42.352814, 46.941597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763722, -0.023246, 0.645126,
		-0.281642, 0.911223, -0.300582,
		-0.580866, -0.411256, -0.702469,
		35.442982, 42.229435, 46.730858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177094, 42.881302, 47.254910>,  <35.849586, 42.517315, 47.222584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177094, 42.881302, 47.254910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.096565, 42.540565, 47.061478>,  <35.048248, 42.336124, 46.945419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.096565, 42.540565, 47.061478>,  <35.177094, 42.881302, 47.254910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096565, 42.540565, 47.061478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916746, -0.010044, 0.399343,
		-0.345033, 0.523710, -0.778897,
		-0.201317, -0.851837, -0.483575,
		35.036171, 42.285015, 46.916405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476669, 43.010418, 47.112289>,  <35.177094, 42.881302, 47.254910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476669, 43.010418, 47.112289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.541794, 42.616287, 47.091778>,  <34.580868, 42.379810, 47.079472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.541794, 42.616287, 47.091778>,  <34.476669, 43.010418, 47.112289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541794, 42.616287, 47.091778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899926, -0.169609, 0.401704,
		-0.404505, -0.019258, -0.914333,
		0.162815, -0.985323, -0.051277,
		34.590637, 42.320690, 47.076393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799660, 42.825008, 47.002644>,  <34.476669, 43.010418, 47.112289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799660, 42.825008, 47.002644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.997055, 42.494827, 47.112259>,  <34.115494, 42.296719, 47.178028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.997055, 42.494827, 47.112259>,  <33.799660, 42.825008, 47.002644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997055, 42.494827, 47.112259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828420, -0.350122, 0.437190,
		-0.264934, -0.442765, -0.856603,
		0.493488, -0.825454, 0.274037,
		34.145100, 42.247192, 47.194469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345638, 42.242680, 46.887024>,  <33.799660, 42.825008, 47.002644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345638, 42.242680, 46.887024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.604313, 42.138626, 47.173832>,  <33.759518, 42.076195, 47.345917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.604313, 42.138626, 47.173832>,  <33.345638, 42.242680, 46.887024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604313, 42.138626, 47.173832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738287, -0.449655, 0.502736,
		0.191635, -0.854484, -0.482839,
		0.646690, -0.260131, 0.717023,
		33.798321, 42.060585, 47.388939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219898, 41.497593, 47.029915>,  <33.345638, 42.242680, 46.887024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219898, 41.497593, 47.029915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.406422, 41.653152, 47.347736>,  <33.518333, 41.746487, 47.538429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.406422, 41.653152, 47.347736>,  <33.219898, 41.497593, 47.029915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406422, 41.653152, 47.347736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702963, -0.382363, 0.599701,
		0.537031, -0.838187, 0.095083,
		0.466305, 0.388898, 0.794555,
		33.546314, 41.769821, 47.586102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257320, 40.961418, 47.456345>,  <33.219898, 41.497593, 47.029915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257320, 40.961418, 47.456345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.262665, 41.270317, 47.710419>,  <33.265873, 41.455654, 47.862862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.262665, 41.270317, 47.710419>,  <33.257320, 40.961418, 47.456345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262665, 41.270317, 47.710419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544373, -0.527228, 0.652448,
		0.838737, -0.354498, 0.413343,
		0.013365, 0.772245, 0.635185,
		33.266674, 41.501991, 47.900974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395187, 40.655510, 48.085514>,  <33.257320, 40.961418, 47.456345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395187, 40.655510, 48.085514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.270691, 41.018257, 48.199154>,  <33.195995, 41.235905, 48.267338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.270691, 41.018257, 48.199154>,  <33.395187, 40.655510, 48.085514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270691, 41.018257, 48.199154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441976, -0.402781, 0.801514,
		0.841302, 0.123894, 0.526176,
		-0.311237, 0.906872, 0.284102,
		33.177319, 41.290318, 48.284386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534660, 40.797955, 48.816265>,  <33.395187, 40.655510, 48.085514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534660, 40.797955, 48.816265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.232025, 41.035873, 48.707603>,  <33.050446, 41.178623, 48.642406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.232025, 41.035873, 48.707603>,  <33.534660, 40.797955, 48.816265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232025, 41.035873, 48.707603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489346, -0.239459, 0.838570,
		0.433726, 0.767385, 0.472231,
		-0.756586, 0.594794, -0.271657,
		33.005051, 41.214310, 48.626106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354847, 41.127171, 49.421074>,  <33.534660, 40.797955, 48.816265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354847, 41.127171, 49.421074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.033943, 41.181892, 49.188637>,  <32.841400, 41.214725, 49.049175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.033943, 41.181892, 49.188637>,  <33.354847, 41.127171, 49.421074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033943, 41.181892, 49.188637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591902, -0.308983, 0.744434,
		-0.077709, 0.941178, 0.328856,
		-0.802255, 0.136802, -0.581095,
		32.793266, 41.222935, 49.014309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761539, 41.536629, 49.823746>,  <33.354847, 41.127171, 49.421074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761539, 41.536629, 49.823746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.597954, 41.333778, 49.520279>,  <32.499802, 41.212067, 49.338200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.597954, 41.333778, 49.520279>,  <32.761539, 41.536629, 49.823746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597954, 41.333778, 49.520279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667256, -0.400949, 0.627701,
		-0.622511, 0.762929, -0.174411,
		-0.408961, -0.507128, -0.758665,
		32.475266, 41.181641, 49.292679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982479, 41.694973, 49.842785>,  <32.761539, 41.536629, 49.823746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982479, 41.694973, 49.842785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.017971, 41.367134, 49.616375>,  <32.039265, 41.170429, 49.480530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.017971, 41.367134, 49.616375>,  <31.982479, 41.694973, 49.842785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017971, 41.367134, 49.616375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744681, -0.431979, 0.508768,
		-0.661497, 0.376365, -0.648669,
		0.088729, -0.819600, -0.566024,
		32.044590, 41.121254, 49.446568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364622, 42.079918, 49.425755>,  <31.982479, 41.694973, 49.842785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364622, 42.079918, 49.425755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.144812, 42.410225, 49.476540>,  <31.012924, 42.608410, 49.507011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.144812, 42.410225, 49.476540>,  <31.364622, 42.079918, 49.425755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144812, 42.410225, 49.476540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682669, 0.531413, -0.501560,
		-0.481645, -0.188946, -0.855756,
		-0.549528, 0.825772, 0.126965,
		30.979954, 42.657955, 49.514629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408731, 42.403061, 48.823166>,  <31.364622, 42.079918, 49.425755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408731, 42.403061, 48.823166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.286127, 42.682213, 49.082092>,  <31.212564, 42.849705, 49.237446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.286127, 42.682213, 49.082092>,  <31.408731, 42.403061, 48.823166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286127, 42.682213, 49.082092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598934, 0.669950, -0.438686,
		-0.739818, 0.253235, -0.623331,
		-0.306510, 0.697882, 0.647312,
		31.194174, 42.891579, 49.276287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285522, 42.893559, 48.346970>,  <31.408731, 42.403061, 48.823166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285522, 42.893559, 48.346970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.300936, 43.099319, 48.689644>,  <31.310184, 43.222778, 48.895248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.300936, 43.099319, 48.689644>,  <31.285522, 42.893559, 48.346970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300936, 43.099319, 48.689644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518253, 0.722714, -0.457273,
		-0.854359, 0.461598, -0.238742,
		0.038534, 0.514405, 0.856681,
		31.312496, 43.253639, 48.946648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033817, 43.692776, 48.218136>,  <31.285522, 42.893559, 48.346970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033817, 43.692776, 48.218136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.271912, 43.663071, 48.538181>,  <31.414768, 43.645248, 48.730209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.271912, 43.663071, 48.538181>,  <31.033817, 43.692776, 48.218136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271912, 43.663071, 48.538181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478076, 0.833049, -0.278340,
		-0.645862, 0.548193, 0.531363,
		0.595235, -0.074262, 0.800113,
		31.450481, 43.640793, 48.778214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976711, 44.325226, 48.376457>,  <31.033817, 43.692776, 48.218136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976711, 44.325226, 48.376457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.287830, 44.163544, 48.568974>,  <31.474503, 44.066532, 48.684483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.287830, 44.163544, 48.568974>,  <30.976711, 44.325226, 48.376457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287830, 44.163544, 48.568974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601950, 0.699345, -0.385452,
		-0.180789, 0.589520, 0.787262,
		0.777799, -0.404207, 0.481295,
		31.521170, 44.042282, 48.713364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223677, 44.871571, 48.723019>,  <30.976711, 44.325226, 48.376457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223677, 44.871571, 48.723019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.507858, 44.591438, 48.695332>,  <31.678368, 44.423359, 48.678719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.507858, 44.591438, 48.695332>,  <31.223677, 44.871571, 48.723019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507858, 44.591438, 48.695332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587023, 0.643992, -0.490590,
		0.388152, 0.307908, 0.868637,
		0.710452, -0.700333, -0.069218,
		31.720993, 44.381340, 48.674564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890903, 45.161171, 48.976181>,  <31.223677, 44.871571, 48.723019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890903, 45.161171, 48.976181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.023674, 44.844223, 48.771446>,  <32.103336, 44.654053, 48.648605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.023674, 44.844223, 48.771446>,  <31.890903, 45.161171, 48.976181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023674, 44.844223, 48.771446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670315, 0.579896, -0.463031,
		0.663702, -0.189398, 0.723621,
		0.331928, -0.792369, -0.511835,
		32.123253, 44.606514, 48.617897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604820, 45.119801, 49.117043>,  <31.890903, 45.161171, 48.976181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604820, 45.119801, 49.117043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.542274, 44.901321, 48.787872>,  <32.504745, 44.770233, 48.590370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.542274, 44.901321, 48.787872>,  <32.604820, 45.119801, 49.117043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542274, 44.901321, 48.787872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686121, 0.539264, -0.488295,
		0.710484, -0.640983, 0.290437,
		-0.156367, -0.546201, -0.822930,
		32.495365, 44.737461, 48.540993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198723, 44.798450, 48.833183>,  <32.604820, 45.119801, 49.117043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198723, 44.798450, 48.833183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.960831, 44.803001, 48.511646>,  <32.818096, 44.805733, 48.318726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.960831, 44.803001, 48.511646>,  <33.198723, 44.798450, 48.833183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960831, 44.803001, 48.511646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732712, 0.419109, -0.536172,
		0.330797, -0.907865, -0.257594,
		-0.594732, 0.011378, -0.803844,
		32.782410, 44.806416, 48.270493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626087, 44.590908, 48.293381>,  <33.198723, 44.798450, 48.833183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626087, 44.590908, 48.293381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.324371, 44.771721, 48.102921>,  <33.143341, 44.880207, 47.988644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.324371, 44.771721, 48.102921>,  <33.626087, 44.590908, 48.293381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324371, 44.771721, 48.102921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656536, 0.516596, -0.549626,
		-0.002471, -0.727185, -0.686437,
		-0.754291, 0.452029, -0.476147,
		33.098083, 44.907330, 47.960075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779846, 44.538868, 47.549744>,  <33.626087, 44.590908, 48.293381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779846, 44.538868, 47.549744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.547981, 44.860146, 47.604691>,  <33.408863, 45.052914, 47.637657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.547981, 44.860146, 47.604691>,  <33.779846, 44.538868, 47.549744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547981, 44.860146, 47.604691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464160, 0.464012, -0.754486,
		-0.669739, -0.373586, -0.641781,
		-0.579660, 0.803197, 0.137363,
		33.374084, 45.101105, 47.645901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644669, 44.708126, 46.880623>,  <33.779846, 44.538868, 47.549744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644669, 44.708126, 46.880623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.547897, 45.034927, 47.089993>,  <33.489834, 45.231010, 47.215614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.547897, 45.034927, 47.089993>,  <33.644669, 44.708126, 46.880623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547897, 45.034927, 47.089993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606173, 0.548483, -0.575952,
		-0.757645, 0.177945, -0.627941,
		-0.241927, 0.817008, 0.523421,
		33.475319, 45.280029, 47.247017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659313, 45.188404, 46.432873>,  <33.644669, 44.708126, 46.880623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659313, 45.188404, 46.432873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719723, 45.410782, 46.759827>,  <33.755970, 45.544209, 46.955997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.719723, 45.410782, 46.759827>,  <33.659313, 45.188404, 46.432873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719723, 45.410782, 46.759827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535116, 0.649265, -0.540468,
		-0.831170, 0.519019, -0.199441,
		0.151023, 0.555945, 0.817385,
		33.765030, 45.577564, 47.005043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653706, 45.846531, 46.212322>,  <33.659313, 45.188404, 46.432873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653706, 45.846531, 46.212322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.834461, 45.863548, 46.568748>,  <33.942913, 45.873756, 46.782604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.834461, 45.863548, 46.568748>,  <33.653706, 45.846531, 46.212322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834461, 45.863548, 46.568748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763971, 0.497276, -0.411175,
		-0.460595, 0.866549, 0.192213,
		0.451886, 0.042540, 0.891061,
		33.970028, 45.876308, 46.836067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.321903, 44.380066, 51.815006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.441593, 44.001831, 51.763885>,  <32.513409, 43.774891, 51.733212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.441593, 44.001831, 51.763885>,  <32.321903, 44.380066, 51.815006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441593, 44.001831, 51.763885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870886, -0.325377, 0.368359,
		-0.389898, 0.001077, -0.920857,
		0.299229, -0.945584, -0.127802,
		32.531361, 43.718155, 51.725544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758661, 44.000519, 51.530071>,  <32.321903, 44.380066, 51.815006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758661, 44.000519, 51.530071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.997721, 43.750259, 51.730625>,  <32.141155, 43.600105, 51.850956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.997721, 43.750259, 51.730625>,  <31.758661, 44.000519, 51.530071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997721, 43.750259, 51.730625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780328, -0.310280, 0.542969,
		-0.184137, -0.715747, -0.673647,
		0.597647, -0.625646, 0.501383,
		32.177013, 43.562565, 51.881039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270042, 43.405376, 51.664482>,  <31.758661, 44.000519, 51.530071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270042, 43.405376, 51.664482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577753, 43.365837, 51.916973>,  <31.762379, 43.342113, 52.068466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.577753, 43.365837, 51.916973>,  <31.270042, 43.405376, 51.664482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577753, 43.365837, 51.916973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622043, -0.341435, 0.704616,
		0.145873, -0.934693, -0.324145,
		0.769275, -0.098847, 0.631226,
		31.808535, 43.336182, 52.106342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226189, 42.758720, 51.848911>,  <31.270042, 43.405376, 51.664482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226189, 42.758720, 51.848911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.454081, 42.917282, 52.136875>,  <31.590815, 43.012421, 52.309654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.454081, 42.917282, 52.136875>,  <31.226189, 42.758720, 51.848911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454081, 42.917282, 52.136875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570869, -0.439265, 0.693653,
		0.591200, -0.806168, -0.023965,
		0.569728, 0.396407, 0.719911,
		31.625000, 43.036205, 52.352848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424187, 42.219151, 52.348858>,  <31.226189, 42.758720, 51.848911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424187, 42.219151, 52.348858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422020, 42.573166, 52.535053>,  <31.420721, 42.785576, 52.646770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422020, 42.573166, 52.535053>,  <31.424187, 42.219151, 52.348858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422020, 42.573166, 52.535053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352852, -0.437244, 0.827232,
		0.935663, -0.159768, 0.314655,
		-0.005416, 0.885037, 0.465488,
		31.420395, 42.838676, 52.674698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398546, 41.936352, 52.887516>,  <31.424187, 42.219151, 52.348858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398546, 41.936352, 52.887516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308628, 42.315498, 52.977859>,  <31.254677, 42.542988, 53.032066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308628, 42.315498, 52.977859>,  <31.398546, 41.936352, 52.887516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308628, 42.315498, 52.977859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465900, -0.308132, 0.829453,
		0.855806, 0.081230, 0.510879,
		-0.224795, 0.947869, 0.225856,
		31.241190, 42.599857, 53.045616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442259, 41.981449, 53.757973>,  <31.398546, 41.936352, 52.887516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442259, 41.981449, 53.757973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227421, 42.290581, 53.622757>,  <31.098518, 42.476059, 53.541630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227421, 42.290581, 53.622757>,  <31.442259, 41.981449, 53.757973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227421, 42.290581, 53.622757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636453, -0.108285, 0.763676,
		0.553585, 0.625310, 0.550027,
		-0.537094, 0.772827, -0.338036,
		31.066292, 42.522430, 53.521347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223103, 42.234703, 54.401676>,  <31.442259, 41.981449, 53.757973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223103, 42.234703, 54.401676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.987450, 42.386505, 54.116325>,  <30.846058, 42.477585, 53.945114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.987450, 42.386505, 54.116325>,  <31.223103, 42.234703, 54.401676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987450, 42.386505, 54.116325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803691, -0.183770, 0.565959,
		0.083687, 0.906756, 0.413268,
		-0.589133, 0.379503, -0.713372,
		30.810709, 42.500355, 53.902313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604269, 42.716068, 54.690353>,  <31.223103, 42.234703, 54.401676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604269, 42.716068, 54.690353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.423119, 42.643867, 54.341110>,  <30.314428, 42.600548, 54.131565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.423119, 42.643867, 54.341110>,  <30.604269, 42.716068, 54.690353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423119, 42.643867, 54.341110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846859, -0.219145, 0.484566,
		-0.278804, 0.958850, -0.053615,
		-0.452877, -0.180504, -0.873110,
		30.287256, 42.589718, 54.079178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000912, 43.003887, 54.779743>,  <30.604269, 42.716068, 54.690353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000912, 43.003887, 54.779743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.957521, 42.722450, 54.498833>,  <29.931488, 42.553589, 54.330288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.957521, 42.722450, 54.498833>,  <30.000912, 43.003887, 54.779743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957521, 42.722450, 54.498833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681493, -0.461684, 0.567816,
		-0.723741, 0.540189, -0.429413,
		-0.108475, -0.703593, -0.702274,
		29.924978, 42.511372, 54.288151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233107, 42.923645, 54.815121>,  <30.000912, 43.003887, 54.779743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233107, 42.923645, 54.815121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.367735, 42.603477, 54.616707>,  <29.448511, 42.411377, 54.497658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.367735, 42.603477, 54.616707>,  <29.233107, 42.923645, 54.815121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367735, 42.603477, 54.616707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727168, -0.555605, 0.403149,
		-0.598286, 0.225007, -0.769042,
		0.336572, -0.800421, -0.496028,
		29.468706, 42.363350, 54.467899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647085, 42.687126, 54.565697>,  <29.233107, 42.923645, 54.815121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647085, 42.687126, 54.565697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.890726, 42.373268, 54.519512>,  <29.036911, 42.184956, 54.491802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.890726, 42.373268, 54.519512>,  <28.647085, 42.687126, 54.565697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890726, 42.373268, 54.519512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681957, -0.592490, 0.428824,
		-0.404880, -0.182462, -0.895980,
		0.609103, -0.784642, -0.115456,
		29.073458, 42.137875, 54.484875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306587, 42.010025, 54.332764>,  <28.647085, 42.687126, 54.565697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306587, 42.010025, 54.332764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.608795, 41.897797, 54.569565>,  <28.790119, 41.830460, 54.711647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.608795, 41.897797, 54.569565>,  <28.306587, 42.010025, 54.332764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608795, 41.897797, 54.569565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622223, -0.590096, 0.514418,
		0.205011, -0.757012, -0.620405,
		0.755519, -0.280569, 0.592007,
		28.835451, 41.813625, 54.747166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333471, 41.253254, 54.352028>,  <28.306587, 42.010025, 54.332764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333471, 41.253254, 54.352028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.515476, 41.373268, 54.687393>,  <28.624680, 41.445278, 54.888611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.515476, 41.373268, 54.687393>,  <28.333471, 41.253254, 54.352028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515476, 41.373268, 54.687393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578174, -0.616534, 0.534415,
		0.677257, -0.727916, -0.107056,
		0.455013, 0.300039, 0.838415,
		28.651979, 41.463280, 54.938919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728947, 40.926456, 54.040970>,  <28.333471, 41.253254, 54.352028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728947, 40.926456, 54.040970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.543070, 40.678291, 53.788258>,  <27.431543, 40.529392, 53.636631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.543070, 40.678291, 53.788258>,  <27.728947, 40.926456, 54.040970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543070, 40.678291, 53.788258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683020, 0.202920, -0.701646,
		0.563509, -0.757572, 0.329457,
		-0.464694, -0.620410, -0.631785,
		27.403662, 40.492168, 53.598721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269341, 40.533592, 53.712154>,  <27.728947, 40.926456, 54.040970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269341, 40.533592, 53.712154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.961143, 40.487442, 53.461384>,  <27.776226, 40.459751, 53.310921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.961143, 40.487442, 53.461384>,  <28.269341, 40.533592, 53.712154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961143, 40.487442, 53.461384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578073, 0.288025, -0.763462,
		0.268646, -0.950649, -0.155232,
		-0.770494, -0.115366, -0.626920,
		27.729996, 40.452827, 53.273308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489054, 40.139015, 53.182938>,  <28.269341, 40.533592, 53.712154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489054, 40.139015, 53.182938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.189745, 40.388214, 53.091759>,  <28.010160, 40.537735, 53.037052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.189745, 40.388214, 53.091759>,  <28.489054, 40.139015, 53.182938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189745, 40.388214, 53.091759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563644, 0.415845, -0.713708,
		-0.349850, -0.662528, -0.662315,
		-0.748272, 0.623000, -0.227946,
		27.965263, 40.575115, 53.023376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723394, 40.296719, 52.527561>,  <28.489054, 40.139015, 53.182938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723394, 40.296719, 52.527561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.400585, 40.529266, 52.568981>,  <28.206900, 40.668797, 52.593834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.400585, 40.529266, 52.568981>,  <28.723394, 40.296719, 52.527561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400585, 40.529266, 52.568981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321094, 0.579180, -0.749299,
		-0.495594, -0.571452, -0.654086,
		-0.807022, 0.581372, 0.103548,
		28.158478, 40.703678, 52.600044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268888, 40.182377, 51.918034>,  <28.723394, 40.296719, 52.527561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268888, 40.182377, 51.918034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.243103, 40.548782, 52.076405>,  <28.227633, 40.768627, 52.171429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.243103, 40.548782, 52.076405>,  <28.268888, 40.182377, 51.918034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243103, 40.548782, 52.076405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474778, 0.377128, -0.795211,
		-0.877742, 0.136718, -0.459214,
		-0.064463, 0.916015, 0.395931,
		28.223764, 40.823586, 52.195183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114199, 40.537762, 51.375771>,  <28.268888, 40.182377, 51.918034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114199, 40.537762, 51.375771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.224398, 40.831856, 51.623489>,  <28.290518, 41.008312, 51.772121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.224398, 40.831856, 51.623489>,  <28.114199, 40.537762, 51.375771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224398, 40.831856, 51.623489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482609, 0.451370, -0.750569,
		-0.831378, 0.505658, -0.230481,
		0.275499, 0.735238, 0.619294,
		28.307047, 41.052429, 51.809277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094000, 41.231300, 51.042290>,  <28.114199, 40.537762, 51.375771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094000, 41.231300, 51.042290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.348562, 41.275009, 51.347721>,  <28.501299, 41.301235, 51.530979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.348562, 41.275009, 51.347721>,  <28.094000, 41.231300, 51.042290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348562, 41.275009, 51.347721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652845, 0.450935, -0.608646,
		-0.410831, 0.885843, 0.215640,
		0.636405, 0.109271, 0.763576,
		28.539484, 41.307789, 51.576794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320677, 41.858269, 50.842255>,  <28.094000, 41.231300, 51.042290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320677, 41.858269, 50.842255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.595613, 41.732399, 51.104107>,  <28.760576, 41.656879, 51.261219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.595613, 41.732399, 51.104107>,  <28.320677, 41.858269, 50.842255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595613, 41.732399, 51.104107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710900, 0.476260, -0.517492,
		-0.148935, 0.821071, 0.551054,
		0.687343, -0.314672, 0.654631,
		28.801817, 41.637997, 51.300495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592810, 42.383923, 51.179844>,  <28.320677, 41.858269, 50.842255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592810, 42.383923, 51.179844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897202, 42.127518, 51.219887>,  <29.079836, 41.973675, 51.243912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897202, 42.127518, 51.219887>,  <28.592810, 42.383923, 51.179844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897202, 42.127518, 51.219887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560975, 0.572601, -0.597859,
		0.325913, 0.511113, 0.795327,
		0.760978, -0.641008, 0.100104,
		29.125496, 41.935215, 51.249916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110474, 42.813953, 51.184612>,  <28.592810, 42.383923, 51.179844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110474, 42.813953, 51.184612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.314943, 42.476784, 51.117455>,  <29.437624, 42.274483, 51.077160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.314943, 42.476784, 51.117455>,  <29.110474, 42.813953, 51.184612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314943, 42.476784, 51.117455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697235, 0.520910, -0.492459,
		0.502560, 0.134673, 0.853989,
		0.511172, -0.842921, -0.167890,
		29.468294, 42.223907, 51.067089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840977, 42.929482, 51.306877>,  <29.110474, 42.813953, 51.184612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840977, 42.929482, 51.306877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834684, 42.619812, 51.053768>,  <29.830910, 42.434010, 50.901901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834684, 42.619812, 51.053768>,  <29.840977, 42.929482, 51.306877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834684, 42.619812, 51.053768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755333, 0.405465, -0.514851,
		0.655153, -0.486052, 0.578384,
		-0.015730, -0.774178, -0.632773,
		29.829966, 42.387558, 50.863937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464638, 42.818596, 51.169384>,  <29.840977, 42.929482, 51.306877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464638, 42.818596, 51.169384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.316376, 42.617828, 50.856796>,  <30.227419, 42.497368, 50.669243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.316376, 42.617828, 50.856796>,  <30.464638, 42.818596, 51.169384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316376, 42.617828, 50.856796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712324, 0.386303, -0.585973,
		0.595996, -0.773850, 0.214347,
		-0.370653, -0.501922, -0.781467,
		30.205179, 42.467251, 50.622356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986685, 42.306580, 50.774906>,  <30.464638, 42.818596, 51.169384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986685, 42.306580, 50.774906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.707218, 42.397881, 50.503681>,  <30.539539, 42.452660, 50.340946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.707218, 42.397881, 50.503681>,  <30.986685, 42.306580, 50.774906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707218, 42.397881, 50.503681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710620, 0.331317, -0.620684,
		0.082980, -0.915494, -0.393681,
		-0.698665, 0.228253, -0.678061,
		30.497618, 42.466358, 50.300262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336424, 42.136097, 50.143051>,  <30.986685, 42.306580, 50.774906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336424, 42.136097, 50.143051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.031971, 42.368813, 50.028370>,  <30.849298, 42.508442, 49.959560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.031971, 42.368813, 50.028370>,  <31.336424, 42.136097, 50.143051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031971, 42.368813, 50.028370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559129, 0.364532, -0.744641,
		-0.328714, -0.727073, -0.602753,
		-0.761132, 0.581791, -0.286701,
		30.803631, 42.543350, 49.942360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297495, 41.450447, 49.741051>,  <31.336424, 42.136097, 50.143051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297495, 41.450447, 49.741051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.508595, 41.129341, 49.630020>,  <31.635254, 40.936676, 49.563400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.508595, 41.129341, 49.630020>,  <31.297495, 41.450447, 49.741051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508595, 41.129341, 49.630020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764351, -0.591362, 0.257018,
		-0.370473, 0.076525, -0.925686,
		0.527747, -0.802767, -0.277575,
		31.666918, 40.888512, 49.546749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830580, 40.996372, 49.566425>,  <31.297495, 41.450447, 49.741051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830580, 40.996372, 49.566425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.149639, 40.755371, 49.577316>,  <31.341076, 40.610771, 49.583851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.149639, 40.755371, 49.577316>,  <30.830580, 40.996372, 49.566425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149639, 40.755371, 49.577316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583466, -0.759440, 0.287780,
		-0.152710, -0.245434, -0.957309,
		0.797650, -0.602505, 0.027229,
		31.388935, 40.574619, 49.585484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709429, 40.422710, 49.071201>,  <30.830580, 40.996372, 49.566425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709429, 40.422710, 49.071201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.955702, 40.325844, 49.371147>,  <31.103466, 40.267723, 49.551113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.955702, 40.325844, 49.371147>,  <30.709429, 40.422710, 49.071201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955702, 40.325844, 49.371147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631171, -0.721268, 0.285301,
		0.471760, -0.648945, -0.596920,
		0.615684, -0.242165, 0.749860,
		31.140408, 40.253193, 49.596104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634014, 39.603233, 49.222633>,  <30.709429, 40.422710, 49.071201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634014, 39.603233, 49.222633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.842676, 39.738060, 49.536133>,  <30.967875, 39.818958, 49.724232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.842676, 39.738060, 49.536133>,  <30.634014, 39.603233, 49.222633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842676, 39.738060, 49.536133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371005, -0.737610, 0.564169,
		0.768264, -0.585076, -0.259725,
		0.521657, 0.337071, 0.783745,
		30.999174, 39.839180, 49.771255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898424, 38.989712, 49.451847>,  <30.634014, 39.603233, 49.222633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898424, 38.989712, 49.451847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.919207, 39.237846, 49.764893>,  <30.931677, 39.386726, 49.952721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.919207, 39.237846, 49.764893>,  <30.898424, 38.989712, 49.451847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919207, 39.237846, 49.764893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406006, -0.702860, 0.584078,
		0.912392, -0.348093, 0.215342,
		0.051958, 0.620338, 0.782612,
		30.934793, 39.423946, 49.999676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227005, 38.595448, 50.069832>,  <30.898424, 38.989712, 49.451847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227005, 38.595448, 50.069832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006332, 38.892067, 50.222546>,  <30.873930, 39.070038, 50.314175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.006332, 38.892067, 50.222546>,  <31.227005, 38.595448, 50.069832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006332, 38.892067, 50.222546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419589, -0.642353, 0.641348,
		0.720829, 0.193626, 0.665518,
		-0.551679, 0.741547, 0.381784,
		30.840828, 39.114532, 50.337082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146318, 38.355019, 50.684681>,  <31.227005, 38.595448, 50.069832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146318, 38.355019, 50.684681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.887842, 38.660233, 50.678745>,  <30.732756, 38.843361, 50.675182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.887842, 38.660233, 50.678745>,  <31.146318, 38.355019, 50.684681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887842, 38.660233, 50.678745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548218, -0.450567, 0.704590,
		0.530936, 0.463437, 0.709460,
		-0.646192, 0.763031, -0.014842,
		30.693985, 38.889141, 50.674294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684229, 38.118820, 51.182457>,  <31.146318, 38.355019, 50.684681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684229, 38.118820, 51.182457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810020, 37.744591, 51.118202>,  <31.885496, 37.520054, 51.079647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810020, 37.744591, 51.118202>,  <31.684229, 38.118820, 51.182457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810020, 37.744591, 51.118202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703665, 0.343339, -0.622072,
		0.637148, 0.082593, 0.766303,
		0.314481, -0.935573, -0.160640,
		31.904366, 37.463921, 51.070011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492249, 38.101902, 51.259148>,  <31.684229, 38.118820, 51.182457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492249, 38.101902, 51.259148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.375881, 37.789703, 51.037811>,  <32.306061, 37.602383, 50.905010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.375881, 37.789703, 51.037811>,  <32.492249, 38.101902, 51.259148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375881, 37.789703, 51.037811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721052, 0.201283, -0.663000,
		0.628850, -0.591866, 0.504224,
		-0.290916, -0.780499, -0.553343,
		32.288605, 37.555553, 50.871807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120007, 37.955906, 51.000866>,  <32.492249, 38.101902, 51.259148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120007, 37.955906, 51.000866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867531, 37.750954, 50.767948>,  <32.716045, 37.627983, 50.628197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867531, 37.750954, 50.767948>,  <33.120007, 37.955906, 51.000866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867531, 37.750954, 50.767948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531029, 0.261719, -0.805922,
		0.565335, -0.817906, 0.106893,
		-0.631193, -0.512379, -0.582291,
		32.678173, 37.597240, 50.593262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570812, 37.621918, 50.484905>,  <33.120007, 37.955906, 51.000866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570812, 37.621918, 50.484905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202023, 37.624954, 50.330032>,  <32.980751, 37.626774, 50.237106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202023, 37.624954, 50.330032>,  <33.570812, 37.621918, 50.484905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202023, 37.624954, 50.330032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370735, 0.306248, -0.876794,
		0.111921, -0.951922, -0.285165,
		-0.921970, 0.007589, -0.387186,
		32.925430, 37.627232, 50.213875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683552, 37.165211, 49.938095>,  <33.570812, 37.621918, 50.484905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683552, 37.165211, 49.938095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.364857, 37.400215, 49.881470>,  <33.173637, 37.541218, 49.847492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.364857, 37.400215, 49.881470>,  <33.683552, 37.165211, 49.938095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364857, 37.400215, 49.881470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352195, 0.261049, -0.898784,
		-0.491086, -0.765956, -0.414905,
		-0.796739, 0.587507, -0.141568,
		33.125835, 37.576466, 49.839001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501781, 37.154167, 49.234631>,  <33.683552, 37.165211, 49.938095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501781, 37.154167, 49.234631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324860, 37.497688, 49.338032>,  <33.218708, 37.703800, 49.400074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.324860, 37.497688, 49.338032>,  <33.501781, 37.154167, 49.234631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324860, 37.497688, 49.338032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355603, 0.432538, -0.828528,
		-0.823355, -0.274537, -0.496706,
		-0.442305, 0.858802, 0.258506,
		33.192169, 37.755329, 49.415585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073032, 37.222317, 48.667473>,  <33.501781, 37.154167, 49.234631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073032, 37.222317, 48.667473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132748, 37.573128, 48.850132>,  <33.168575, 37.783615, 48.959728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.132748, 37.573128, 48.850132>,  <33.073032, 37.222317, 48.667473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132748, 37.573128, 48.850132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310338, 0.396930, -0.863792,
		-0.938831, 0.270669, -0.212919,
		0.149287, 0.877032, 0.456649,
		33.177532, 37.836239, 48.987125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.786243, 39.419086, 54.392628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.481421, 39.665169, 54.311844>,  <31.298527, 39.812820, 54.263374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.481421, 39.665169, 54.311844>,  <31.786243, 39.419086, 54.392628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481421, 39.665169, 54.311844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550115, 0.450628, -0.703070,
		-0.341528, -0.646879, -0.681840,
		-0.762058, 0.615209, -0.201955,
		31.252804, 39.849731, 54.251259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539133, 39.350468, 53.657307>,  <31.786243, 39.419086, 54.392628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539133, 39.350468, 53.657307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.485512, 39.720032, 53.800655>,  <31.453339, 39.941769, 53.886665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.485512, 39.720032, 53.800655>,  <31.539133, 39.350468, 53.657307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485512, 39.720032, 53.800655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599656, 0.363535, -0.712920,
		-0.788951, 0.119329, -0.602758,
		-0.134051, 0.923906, 0.358368,
		31.445297, 39.997204, 53.908165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456951, 39.738998, 53.027008>,  <31.539133, 39.350468, 53.657307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456951, 39.738998, 53.027008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.532881, 39.989845, 53.329182>,  <31.578438, 40.140354, 53.510487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.532881, 39.989845, 53.329182>,  <31.456951, 39.738998, 53.027008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532881, 39.989845, 53.329182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635293, 0.508189, -0.581504,
		-0.748578, 0.590308, -0.301939,
		0.189824, 0.627121, 0.755438,
		31.589828, 40.177982, 53.555813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490808, 40.348152, 52.684280>,  <31.456951, 39.738998, 53.027008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490808, 40.348152, 52.684280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.695141, 40.425117, 53.019428>,  <31.817739, 40.471298, 53.220516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.695141, 40.425117, 53.019428>,  <31.490808, 40.348152, 52.684280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695141, 40.425117, 53.019428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716217, 0.443805, -0.538581,
		-0.475483, 0.875221, 0.088897,
		0.510831, 0.192417, 0.837871,
		31.848391, 40.482841, 53.270790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907248, 41.040482, 52.612591>,  <31.490808, 40.348152, 52.684280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907248, 41.040482, 52.612591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.066692, 40.850975, 52.926701>,  <32.162357, 40.737270, 53.115166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.066692, 40.850975, 52.926701>,  <31.907248, 41.040482, 52.612591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066692, 40.850975, 52.926701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834080, 0.543294, -0.095612,
		-0.381339, 0.693095, 0.611719,
		0.398612, -0.473762, 0.785276,
		32.186275, 40.708847, 53.162285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003471, 41.529583, 53.085026>,  <31.907248, 41.040482, 52.612591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003471, 41.529583, 53.085026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.264709, 41.237595, 53.165634>,  <32.421452, 41.062401, 53.213997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.264709, 41.237595, 53.165634>,  <32.003471, 41.529583, 53.085026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264709, 41.237595, 53.165634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757249, 0.631829, -0.165426,
		-0.006569, 0.260638, 0.965414,
		0.653094, -0.729972, 0.201518,
		32.460636, 41.018604, 53.226089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476364, 41.929073, 53.334541>,  <32.003471, 41.529583, 53.085026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476364, 41.929073, 53.334541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.684807, 41.590874, 53.287918>,  <32.809872, 41.387955, 53.259945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.684807, 41.590874, 53.287918>,  <32.476364, 41.929073, 53.334541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684807, 41.590874, 53.287918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853096, 0.520151, 0.040863,
		0.026076, -0.120725, 0.992343,
		0.521102, -0.845498, -0.116554,
		32.841137, 41.337223, 53.252953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025288, 41.921745, 53.860893>,  <32.476364, 41.929073, 53.334541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025288, 41.921745, 53.860893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.140266, 41.668167, 53.573704>,  <33.209251, 41.516018, 53.401390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.140266, 41.668167, 53.573704>,  <33.025288, 41.921745, 53.860893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140266, 41.668167, 53.573704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886016, 0.460721, -0.052084,
		0.363804, -0.621164, 0.694120,
		0.287443, -0.633949, -0.717973,
		33.226498, 41.477982, 53.358311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632141, 41.624401, 54.051880>,  <33.025288, 41.921745, 53.860893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632141, 41.624401, 54.051880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.641548, 41.566032, 53.656273>,  <33.647190, 41.531010, 53.418907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.641548, 41.566032, 53.656273>,  <33.632141, 41.624401, 54.051880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641548, 41.566032, 53.656273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980594, 0.195969, -0.005600,
		0.194634, -0.969692, 0.147699,
		0.023514, -0.145923, -0.989016,
		33.648602, 41.522255, 53.359570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268391, 41.364799, 53.933918>,  <33.632141, 41.624401, 54.051880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268391, 41.364799, 53.933918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.174896, 41.449074, 53.554237>,  <34.118797, 41.499638, 53.326431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.174896, 41.449074, 53.554237>,  <34.268391, 41.364799, 53.933918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174896, 41.449074, 53.554237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969277, 0.127400, -0.210406,
		0.076598, -0.969216, -0.233993,
		-0.233740, 0.210687, -0.949198,
		34.104774, 41.512280, 53.269478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642910, 41.006596, 53.603085>,  <34.268391, 41.364799, 53.933918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642910, 41.006596, 53.603085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.575218, 41.336517, 53.387287>,  <34.534603, 41.534470, 53.257809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.575218, 41.336517, 53.387287>,  <34.642910, 41.006596, 53.603085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575218, 41.336517, 53.387287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971542, 0.047565, -0.232042,
		-0.165728, -0.563411, -0.809384,
		-0.169233, 0.824806, -0.539495,
		34.524448, 41.583958, 53.225437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171879, 41.022041, 53.159332>,  <34.642910, 41.006596, 53.603085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171879, 41.022041, 53.159332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.027321, 41.393593, 53.126888>,  <34.940586, 41.616524, 53.107422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.027321, 41.393593, 53.126888>,  <35.171879, 41.022041, 53.159332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027321, 41.393593, 53.126888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915145, 0.336697, -0.221686,
		-0.178608, -0.154348, -0.971738,
		-0.361398, 0.928877, -0.081114,
		34.918900, 41.672256, 53.102554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046337, 40.653954, 52.620392>,  <35.171879, 41.022041, 53.159332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046337, 40.653954, 52.620392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.214348, 40.373672, 52.389709>,  <35.315155, 40.205505, 52.251301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.214348, 40.373672, 52.389709>,  <35.046337, 40.653954, 52.620392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214348, 40.373672, 52.389709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593755, -0.692778, 0.409285,
		-0.686319, 0.170514, -0.707030,
		0.420026, -0.700702, -0.576710,
		35.340355, 40.163460, 52.216698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560089, 40.371220, 52.120193>,  <35.046337, 40.653954, 52.620392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560089, 40.371220, 52.120193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.839981, 40.094513, 52.191570>,  <35.007915, 39.928490, 52.234394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.839981, 40.094513, 52.191570>,  <34.560089, 40.371220, 52.120193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839981, 40.094513, 52.191570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699124, -0.611677, 0.370238,
		-0.146970, -0.383818, -0.911638,
		0.699732, -0.691762, 0.178439,
		35.049900, 39.886986, 52.245102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256897, 39.742786, 51.939201>,  <34.560089, 40.371220, 52.120193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256897, 39.742786, 51.939201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.559616, 39.646637, 52.182343>,  <34.741245, 39.588947, 52.328228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.559616, 39.646637, 52.182343>,  <34.256897, 39.742786, 51.939201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559616, 39.646637, 52.182343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571858, -0.693908, 0.437573,
		0.316610, -0.678756, -0.662607,
		0.756793, -0.240377, 0.607851,
		34.786655, 39.574524, 52.364697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341919, 39.011360, 51.863552>,  <34.256897, 39.742786, 51.939201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341919, 39.011360, 51.863552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492439, 39.118912, 52.218201>,  <34.582752, 39.183441, 52.430992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.492439, 39.118912, 52.218201>,  <34.341919, 39.011360, 51.863552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492439, 39.118912, 52.218201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596674, -0.661764, 0.453925,
		0.708786, -0.699838, -0.088591,
		0.376300, 0.268876, 0.886625,
		34.605328, 39.199574, 52.484188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547977, 38.366673, 52.196507>,  <34.341919, 39.011360, 51.863552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547977, 38.366673, 52.196507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.521179, 38.640053, 52.487274>,  <34.505100, 38.804081, 52.661736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.521179, 38.640053, 52.487274>,  <34.547977, 38.366673, 52.196507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521179, 38.640053, 52.487274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627619, -0.595231, 0.501791,
		0.775632, -0.422609, 0.468824,
		-0.066997, 0.683448, 0.726918,
		34.501080, 38.845089, 52.705349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646488, 37.939354, 52.837238>,  <34.547977, 38.366673, 52.196507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646488, 37.939354, 52.837238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.481499, 38.284050, 52.955406>,  <34.382504, 38.490868, 53.026306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.481499, 38.284050, 52.955406>,  <34.646488, 37.939354, 52.837238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481499, 38.284050, 52.955406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689872, -0.507267, 0.516485,
		0.594931, 0.009235, 0.803724,
		-0.412472, 0.861739, 0.295418,
		34.357758, 38.542572, 53.044033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529709, 37.843723, 53.533085>,  <34.646488, 37.939354, 52.837238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529709, 37.843723, 53.533085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.272896, 38.134186, 53.434711>,  <34.118809, 38.308464, 53.375687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.272896, 38.134186, 53.434711>,  <34.529709, 37.843723, 53.533085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272896, 38.134186, 53.434711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724144, -0.469009, 0.505614,
		0.251810, 0.502715, 0.826964,
		-0.642033, 0.726160, -0.245937,
		34.080284, 38.352036, 53.360931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158840, 37.901985, 54.024261>,  <34.529709, 37.843723, 53.533085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158840, 37.901985, 54.024261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.904121, 38.108292, 53.795013>,  <33.751289, 38.232075, 53.657463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.904121, 38.108292, 53.795013>,  <34.158840, 37.901985, 54.024261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904121, 38.108292, 53.795013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761882, -0.306763, 0.570467,
		0.118415, 0.799925, 0.588301,
		-0.636800, 0.515768, -0.573123,
		33.713081, 38.263023, 53.623077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640850, 38.203808, 54.489494>,  <34.158840, 37.901985, 54.024261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640850, 38.203808, 54.489494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.465542, 38.187042, 54.130348>,  <33.360355, 38.176983, 53.914860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.465542, 38.187042, 54.130348>,  <33.640850, 38.203808, 54.489494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465542, 38.187042, 54.130348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812545, -0.408615, 0.415698,
		-0.384303, 0.911744, 0.145031,
		-0.438272, -0.041910, -0.897865,
		33.334061, 38.174469, 53.860989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992668, 38.513821, 54.574020>,  <33.640850, 38.203808, 54.489494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992668, 38.513821, 54.574020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.968147, 38.270782, 54.257271>,  <32.953434, 38.124958, 54.067223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.968147, 38.270782, 54.257271>,  <32.992668, 38.513821, 54.574020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968147, 38.270782, 54.257271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861453, -0.368499, 0.349438,
		-0.504123, 0.703585, -0.500827,
		-0.061305, -0.607599, -0.791874,
		32.949757, 38.088501, 54.019707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282921, 38.531971, 54.351639>,  <32.992668, 38.513821, 54.574020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282921, 38.531971, 54.351639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.415489, 38.209007, 54.156395>,  <32.495029, 38.015228, 54.039249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.415489, 38.209007, 54.156395>,  <32.282921, 38.531971, 54.351639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415489, 38.209007, 54.156395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873280, -0.458347, 0.165225,
		-0.357127, 0.371495, -0.857002,
		0.331424, -0.807409, -0.488107,
		32.514915, 37.966785, 54.009964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766804, 38.233654, 53.888889>,  <32.282921, 38.531971, 54.351639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766804, 38.233654, 53.888889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.010429, 37.928612, 53.976040>,  <32.156605, 37.745586, 54.028332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.010429, 37.928612, 53.976040>,  <31.766804, 38.233654, 53.888889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010429, 37.928612, 53.976040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791163, -0.603478, 0.099379,
		0.055698, -0.232906, -0.970903,
		0.609064, -0.762607, 0.217879,
		32.193150, 37.699829, 54.041405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496870, 37.718174, 53.637718>,  <31.766804, 38.233654, 53.888889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496870, 37.718174, 53.637718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.729864, 37.508163, 53.885933>,  <31.869661, 37.382156, 54.034863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.729864, 37.508163, 53.885933>,  <31.496870, 37.718174, 53.637718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729864, 37.508163, 53.885933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771135, -0.598325, 0.217618,
		0.257026, -0.605275, -0.753379,
		0.582484, -0.525023, 0.620534,
		31.904610, 37.350655, 54.072094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380606, 37.015049, 53.521294>,  <31.496870, 37.718174, 53.637718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380606, 37.015049, 53.521294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.537455, 37.025963, 53.889095>,  <31.631565, 37.032509, 54.109776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.537455, 37.025963, 53.889095>,  <31.380606, 37.015049, 53.521294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537455, 37.025963, 53.889095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671385, -0.674834, 0.306334,
		0.628874, -0.737465, -0.246301,
		0.392123, 0.027283, 0.919508,
		31.655092, 37.034149, 54.164948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349985, 36.310860, 53.687588>,  <31.380606, 37.015049, 53.521294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349985, 36.310860, 53.687588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.003319, 36.279518, 53.490509>,  <30.795319, 36.260712, 53.372261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.003319, 36.279518, 53.490509>,  <31.349985, 36.310860, 53.687588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003319, 36.279518, 53.490509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468268, 0.212878, -0.857559,
		0.172080, -0.973932, -0.147803,
		-0.866668, -0.078357, -0.492693,
		30.743319, 36.256012, 53.342701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462975, 35.992985, 53.041878>,  <31.349985, 36.310860, 53.687588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462975, 35.992985, 53.041878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.108931, 36.156876, 52.953606>,  <30.896503, 36.255211, 52.900642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.108931, 36.156876, 52.953606>,  <31.462975, 35.992985, 53.041878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108931, 36.156876, 52.953606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340503, 0.246919, -0.907243,
		-0.317233, -0.878153, -0.358064,
		-0.885111, 0.409729, -0.220683,
		30.843397, 36.279793, 52.887402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261066, 35.716393, 52.370697>,  <31.462975, 35.992985, 53.041878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261066, 35.716393, 52.370697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.101776, 36.077293, 52.436863>,  <31.006201, 36.293835, 52.476562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.101776, 36.077293, 52.436863>,  <31.261066, 35.716393, 52.370697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101776, 36.077293, 52.436863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314055, 0.303538, -0.899575,
		-0.861849, -0.306287, -0.404233,
		-0.398228, 0.902249, 0.165413,
		30.982307, 36.347969, 52.486488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846325, 35.913868, 51.700527>,  <31.261066, 35.716393, 52.370697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846325, 35.913868, 51.700527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.903694, 36.258667, 51.895004>,  <30.938116, 36.465546, 52.011692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.903694, 36.258667, 51.895004>,  <30.846325, 35.913868, 51.700527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903694, 36.258667, 51.895004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341023, 0.418138, -0.841940,
		-0.929049, 0.286556, -0.233992,
		0.143422, 0.862001, 0.486194,
		30.946720, 36.517269, 52.040863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665575, 36.402763, 51.227066>,  <30.846325, 35.913868, 51.700527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665575, 36.402763, 51.227066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.886951, 36.588181, 51.503857>,  <31.019777, 36.699432, 51.669930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.886951, 36.588181, 51.503857>,  <30.665575, 36.402763, 51.227066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886951, 36.588181, 51.503857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453384, 0.529267, -0.717161,
		-0.698675, 0.710637, 0.082755,
		0.553440, 0.463543, 0.691976,
		31.052984, 36.727245, 51.711449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571198, 37.212456, 51.125717>,  <30.665575, 36.402763, 51.227066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571198, 37.212456, 51.125717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912554, 37.112755, 51.308846>,  <31.117369, 37.052937, 51.418720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.912554, 37.112755, 51.308846>,  <30.571198, 37.212456, 51.125717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912554, 37.112755, 51.308846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518852, 0.490651, -0.700039,
		-0.050146, 0.834947, 0.548040,
		0.853392, -0.249248, 0.457818,
		31.168571, 37.037979, 51.446190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004553, 37.756363, 51.061043>,  <30.571198, 37.212456, 51.125717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004553, 37.756363, 51.061043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.276674, 37.470993, 51.128231>,  <31.439947, 37.299770, 51.168545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.276674, 37.470993, 51.128231>,  <31.004553, 37.756363, 51.061043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276674, 37.470993, 51.128231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582250, 0.386865, -0.715067,
		0.445162, 0.584265, 0.678576,
		0.680306, -0.713422, 0.167970,
		31.480766, 37.256966, 51.178623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897655, 38.406277, 51.458481>,  <31.004553, 37.756363, 51.061043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897655, 38.406277, 51.458481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.629442, 38.610298, 51.242992>,  <30.468513, 38.732712, 51.113697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.629442, 38.610298, 51.242992>,  <30.897655, 38.406277, 51.458481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629442, 38.610298, 51.242992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718787, -0.266901, 0.641957,
		0.183649, 0.817683, 0.545590,
		-0.670535, 0.510058, -0.538724,
		30.428282, 38.763317, 51.081375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533703, 38.941799, 51.844631>,  <30.897655, 38.406277, 51.458481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533703, 38.941799, 51.844631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295784, 38.839828, 51.539677>,  <30.153032, 38.778645, 51.356705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295784, 38.839828, 51.539677>,  <30.533703, 38.941799, 51.844631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295784, 38.839828, 51.539677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779117, -0.050738, 0.624822,
		-0.197966, 0.965628, -0.168440,
		-0.594799, -0.254928, -0.762382,
		30.117344, 38.763351, 51.310963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860117, 39.262939, 51.891010>,  <30.533703, 38.941799, 51.844631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860117, 39.262939, 51.891010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757614, 38.983925, 51.623344>,  <29.696112, 38.816517, 51.462746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757614, 38.983925, 51.623344>,  <29.860117, 39.262939, 51.891010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757614, 38.983925, 51.623344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928629, -0.014490, 0.370727,
		-0.268290, 0.716407, -0.644035,
		-0.256259, -0.697532, -0.669163,
		29.680737, 38.774666, 51.422596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252411, 39.568890, 51.533764>,  <29.860117, 39.262939, 51.891010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252411, 39.568890, 51.533764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.267147, 39.169174, 51.530453>,  <29.275990, 38.929344, 51.528465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.267147, 39.169174, 51.530453>,  <29.252411, 39.568890, 51.533764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267147, 39.169174, 51.530453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927333, -0.037275, 0.372376,
		-0.372419, -0.006038, -0.928045,
		0.036841, -0.999287, -0.008282,
		29.278200, 38.869389, 51.527969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531151, 39.421185, 51.433807>,  <29.252411, 39.568890, 51.533764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531151, 39.421185, 51.433807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.709682, 39.076225, 51.529350>,  <28.816801, 38.869247, 51.586678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.709682, 39.076225, 51.529350>,  <28.531151, 39.421185, 51.433807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709682, 39.076225, 51.529350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862721, -0.343782, 0.370846,
		-0.237702, -0.371590, -0.897451,
		0.446331, -0.862401, 0.238861,
		28.843582, 38.817505, 51.601009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033426, 38.993519, 51.499191>,  <28.531151, 39.421185, 51.433807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033426, 38.993519, 51.499191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304014, 38.736633, 51.643383>,  <28.466366, 38.582500, 51.729897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304014, 38.736633, 51.643383>,  <28.033426, 38.993519, 51.499191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304014, 38.736633, 51.643383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713334, -0.449635, 0.537572,
		-0.183153, -0.620794, -0.762280,
		0.676469, -0.642218, 0.360481,
		28.506954, 38.543968, 51.751526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805342, 38.269478, 51.437901>,  <28.033426, 38.993519, 51.499191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805342, 38.269478, 51.437901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.055752, 38.294312, 51.748833>,  <28.205997, 38.309212, 51.935390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.055752, 38.294312, 51.748833>,  <27.805342, 38.269478, 51.437901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055752, 38.294312, 51.748833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720551, -0.335083, 0.607063,
		0.298156, -0.940141, -0.165039,
		0.626026, 0.062080, 0.777327,
		28.243559, 38.312935, 51.982029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802748, 37.621735, 51.743050>,  <27.805342, 38.269478, 51.437901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802748, 37.621735, 51.743050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924116, 37.885139, 52.018528>,  <27.996937, 38.043182, 52.183815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.924116, 37.885139, 52.018528>,  <27.802748, 37.621735, 51.743050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924116, 37.885139, 52.018528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678559, -0.358091, 0.641349,
		0.668949, -0.661921, 0.338183,
		0.303422, 0.658507, 0.688697,
		28.015142, 38.082691, 52.225136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776209, 37.302624, 52.383850>,  <27.802748, 37.621735, 51.743050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776209, 37.302624, 52.383850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.759399, 37.695206, 52.458672>,  <27.749313, 37.930756, 52.503563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.759399, 37.695206, 52.458672>,  <27.776209, 37.302624, 52.383850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759399, 37.695206, 52.458672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667877, -0.166837, 0.725331,
		0.743084, -0.094447, 0.662500,
		-0.042025, 0.981450, 0.187053,
		27.746792, 37.989639, 52.514786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.709736, 45.040085, 44.169052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.628139, 45.166687, 44.539612>,  <39.579182, 45.242649, 44.761948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.628139, 45.166687, 44.539612>,  <39.709736, 45.040085, 44.169052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628139, 45.166687, 44.539612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724582, -0.685147, 0.074527,
		0.658307, -0.656048, 0.369098,
		-0.203994, 0.316504, 0.926397,
		39.566940, 45.261639, 44.817532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654507, 44.449821, 44.587395>,  <39.709736, 45.040085, 44.169052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654507, 44.449821, 44.587395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.436752, 44.727150, 44.776264>,  <39.306099, 44.893547, 44.889587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.436752, 44.727150, 44.776264>,  <39.654507, 44.449821, 44.587395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436752, 44.727150, 44.776264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687171, -0.691423, 0.223003,
		0.481085, -0.203065, 0.852831,
		-0.544383, 0.693325, 0.472174,
		39.273438, 44.935146, 44.917915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493992, 44.222523, 45.211739>,  <39.654507, 44.449821, 44.587395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493992, 44.222523, 45.211739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.196415, 44.482193, 45.148335>,  <39.017868, 44.637993, 45.110291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.196415, 44.482193, 45.148335>,  <39.493992, 44.222523, 45.211739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196415, 44.482193, 45.148335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668232, -0.721193, 0.182611,
		0.004228, 0.241776, 0.970323,
		-0.743941, 0.649173, -0.158513,
		38.973232, 44.676945, 45.100780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974155, 44.038311, 45.691925>,  <39.493992, 44.222523, 45.211739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974155, 44.038311, 45.691925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.769218, 44.289207, 45.457294>,  <38.646255, 44.439747, 45.316517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.769218, 44.289207, 45.457294>,  <38.974155, 44.038311, 45.691925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769218, 44.289207, 45.457294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848797, -0.473701, 0.234842,
		-0.130561, 0.618205, 0.775097,
		-0.512345, 0.627239, -0.586578,
		38.615517, 44.477379, 45.281322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467304, 44.405239, 46.076084>,  <38.974155, 44.038311, 45.691925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467304, 44.405239, 46.076084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345306, 44.398491, 45.695202>,  <38.272110, 44.394444, 45.466671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345306, 44.398491, 45.695202>,  <38.467304, 44.405239, 46.076084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345306, 44.398491, 45.695202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788781, -0.555807, 0.262493,
		-0.533671, 0.831141, 0.156209,
		-0.304991, -0.016870, -0.952206,
		38.253811, 44.393429, 45.409538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843193, 44.603672, 46.125286>,  <38.467304, 44.405239, 46.076084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843193, 44.603672, 46.125286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.874809, 44.420006, 45.771355>,  <37.893780, 44.309807, 45.558994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.874809, 44.420006, 45.771355>,  <37.843193, 44.603672, 46.125286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874809, 44.420006, 45.771355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804698, -0.553293, 0.215239,
		-0.588400, 0.695009, -0.413218,
		0.079038, -0.459162, -0.884830,
		37.898521, 44.282257, 45.505905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151844, 44.744217, 45.741222>,  <37.843193, 44.603672, 46.125286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151844, 44.744217, 45.741222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.320297, 44.416817, 45.584915>,  <37.421368, 44.220375, 45.491131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.320297, 44.416817, 45.584915>,  <37.151844, 44.744217, 45.741222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320297, 44.416817, 45.584915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871838, -0.484105, 0.074431,
		-0.250096, 0.309344, -0.917474,
		0.421129, -0.818504, -0.390771,
		37.446636, 44.171265, 45.467686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688362, 44.436878, 45.383179>,  <37.151844, 44.744217, 45.741222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688362, 44.436878, 45.383179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927498, 44.117981, 45.416637>,  <37.070980, 43.926643, 45.436714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927498, 44.117981, 45.416637>,  <36.688362, 44.436878, 45.383179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927498, 44.117981, 45.416637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801615, -0.594558, 0.062565,
		-0.000146, -0.104457, -0.994530,
		0.597841, -0.797239, 0.083647,
		37.106850, 43.878811, 45.441730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340858, 43.963345, 45.015587>,  <36.688362, 44.436878, 45.383179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340858, 43.963345, 45.015587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594948, 43.752716, 45.241585>,  <36.747402, 43.626339, 45.377182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594948, 43.752716, 45.241585>,  <36.340858, 43.963345, 45.015587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594948, 43.752716, 45.241585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720309, -0.667861, 0.187395,
		0.278661, -0.526007, -0.803532,
		0.635219, -0.526572, 0.564995,
		36.785515, 43.594746, 45.411083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189465, 43.239704, 44.822037>,  <36.340858, 43.963345, 45.015587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189465, 43.239704, 44.822037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411083, 43.178230, 45.149307>,  <36.544056, 43.141346, 45.345669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411083, 43.178230, 45.149307>,  <36.189465, 43.239704, 44.822037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411083, 43.178230, 45.149307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546525, -0.808510, 0.218224,
		0.627963, -0.568060, -0.531949,
		0.554051, -0.153687, 0.818173,
		36.577297, 43.132126, 45.394760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255085, 42.470772, 44.878380>,  <36.189465, 43.239704, 44.822037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255085, 42.470772, 44.878380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305580, 42.624649, 45.244129>,  <36.335876, 42.716976, 45.463577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305580, 42.624649, 45.244129>,  <36.255085, 42.470772, 44.878380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305580, 42.624649, 45.244129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568372, -0.727402, 0.384499,
		0.813030, -0.568241, 0.126823,
		0.126237, 0.384692, 0.914372,
		36.343452, 42.740055, 45.518440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471409, 41.969780, 45.332249>,  <36.255085, 42.470772, 44.878380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471409, 41.969780, 45.332249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301628, 42.251701, 45.559612>,  <36.199760, 42.420856, 45.696030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.301628, 42.251701, 45.559612>,  <36.471409, 41.969780, 45.332249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301628, 42.251701, 45.559612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513416, -0.704431, 0.490082,
		0.745819, -0.083816, 0.660855,
		-0.424450, 0.704807, 0.568411,
		36.174294, 42.463142, 45.730137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064507, 41.597271, 45.594273>,  <36.471409, 41.969780, 45.332249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064507, 41.597271, 45.594273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167358, 41.210747, 45.589851>,  <37.229069, 40.978832, 45.587200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167358, 41.210747, 45.589851>,  <37.064507, 41.597271, 45.594273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167358, 41.210747, 45.589851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818645, 0.223885, -0.528863,
		0.513522, 0.126939, 0.848635,
		0.257130, -0.966314, -0.011052,
		37.244499, 40.920853, 45.586536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622459, 41.400482, 45.966820>,  <37.064507, 41.597271, 45.594273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622459, 41.400482, 45.966820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.622356, 41.119759, 45.681873>,  <37.622295, 40.951324, 45.510906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.622356, 41.119759, 45.681873>,  <37.622459, 41.400482, 45.966820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622356, 41.119759, 45.681873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896138, 0.315970, -0.311608,
		0.443775, -0.638455, 0.628839,
		-0.000253, -0.701810, -0.712364,
		37.622280, 40.909214, 45.468163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271805, 41.040237, 46.084499>,  <37.622459, 41.400482, 45.966820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271805, 41.040237, 46.084499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170967, 40.935646, 45.711815>,  <38.110466, 40.872890, 45.488205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170967, 40.935646, 45.711815>,  <38.271805, 41.040237, 46.084499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170967, 40.935646, 45.711815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913631, 0.253023, -0.318209,
		0.318947, -0.931456, 0.175106,
		-0.252092, -0.261474, -0.931709,
		38.095341, 40.857204, 45.432301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859951, 40.957077, 45.802391>,  <38.271805, 41.040237, 46.084499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859951, 40.957077, 45.802391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.648712, 40.965080, 45.462811>,  <38.521969, 40.969883, 45.259064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.648712, 40.965080, 45.462811>,  <38.859951, 40.957077, 45.802391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648712, 40.965080, 45.462811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802520, 0.338599, -0.491236,
		0.277624, -0.940718, -0.194870,
		-0.528097, 0.020008, -0.848949,
		38.490284, 40.971081, 45.208126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378746, 40.755733, 45.261196>,  <38.859951, 40.957077, 45.802391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378746, 40.755733, 45.261196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.081257, 40.930511, 45.058830>,  <38.902763, 41.035378, 44.937408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.081257, 40.930511, 45.058830>,  <39.378746, 40.755733, 45.261196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081257, 40.930511, 45.058830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667700, 0.448823, -0.593914,
		-0.032442, -0.779509, -0.625549,
		-0.743723, 0.436948, -0.505918,
		38.858139, 41.061596, 44.907055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590965, 40.628868, 44.536549>,  <39.378746, 40.755733, 45.261196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590965, 40.628868, 44.536549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.324650, 40.925156, 44.572456>,  <39.164860, 41.102928, 44.594002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.324650, 40.925156, 44.572456>,  <39.590965, 40.628868, 44.536549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324650, 40.925156, 44.572456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582466, 0.591165, -0.557904,
		-0.466319, -0.319160, -0.825036,
		-0.665793, 0.740717, 0.089772,
		39.124912, 41.147369, 44.599388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637596, 40.956047, 43.877800>,  <39.590965, 40.628868, 44.536549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637596, 40.956047, 43.877800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.460419, 41.244377, 44.091045>,  <39.354111, 41.417374, 44.218994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.460419, 41.244377, 44.091045>,  <39.637596, 40.956047, 43.877800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460419, 41.244377, 44.091045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613943, 0.677206, -0.405544,
		-0.653354, 0.147667, -0.742511,
		-0.442948, 0.720823, 0.533115,
		39.327534, 41.460625, 44.250980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468983, 41.537521, 43.425323>,  <39.637596, 40.956047, 43.877800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468983, 41.537521, 43.425323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.478104, 41.665710, 43.804115>,  <39.483578, 41.742622, 44.031391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.478104, 41.665710, 43.804115>,  <39.468983, 41.537521, 43.425323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478104, 41.665710, 43.804115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775106, 0.592589, -0.219203,
		-0.631420, 0.739011, -0.234887,
		0.022802, 0.320471, 0.946984,
		39.484943, 41.761852, 44.088211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467552, 42.235935, 43.410374>,  <39.468983, 41.537521, 43.425323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467552, 42.235935, 43.410374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.584656, 42.281181, 43.790161>,  <39.654919, 42.308331, 44.018036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.584656, 42.281181, 43.790161>,  <39.467552, 42.235935, 43.410374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584656, 42.281181, 43.790161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835498, 0.452644, -0.311538,
		-0.465013, 0.884488, 0.038008,
		0.292756, 0.113114, 0.949473,
		39.672482, 42.315117, 44.075005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744671, 42.923378, 43.503326>,  <39.467552, 42.235935, 43.410374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744671, 42.923378, 43.503326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.899353, 42.723404, 43.813301>,  <39.992161, 42.603420, 43.999287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.899353, 42.723404, 43.813301>,  <39.744671, 42.923378, 43.503326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899353, 42.723404, 43.813301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889882, 0.422806, -0.171301,
		-0.242009, 0.755845, 0.608384,
		0.386706, -0.499933, 0.774936,
		40.015366, 42.573425, 44.045780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990658, 43.321873, 44.044331>,  <39.744671, 42.923378, 43.503326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990658, 43.321873, 44.044331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.218349, 42.993614, 44.064384>,  <40.354965, 42.796658, 44.076416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.218349, 42.993614, 44.064384>,  <39.990658, 43.321873, 44.044331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218349, 42.993614, 44.064384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821373, 0.570314, 0.009458,
		-0.036353, 0.035795, 0.998698,
		0.569233, -0.820647, 0.050133,
		40.389118, 42.747421, 44.079426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598083, 43.506702, 44.394573>,  <39.990658, 43.321873, 44.044331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598083, 43.506702, 44.394573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.714989, 43.168434, 44.215942>,  <40.785130, 42.965473, 44.108765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.714989, 43.168434, 44.215942>,  <40.598083, 43.506702, 44.394573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714989, 43.168434, 44.215942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909951, 0.389571, -0.142207,
		0.294234, -0.364802, 0.883372,
		0.292259, -0.845667, -0.446577,
		40.802666, 42.914734, 44.081970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206451, 43.374516, 44.633858>,  <40.598083, 43.506702, 44.394573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206451, 43.374516, 44.633858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.199730, 43.179329, 44.284779>,  <41.195698, 43.062218, 44.075329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.199730, 43.179329, 44.284779>,  <41.206451, 43.374516, 44.633858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199730, 43.179329, 44.284779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932189, 0.307998, -0.190160,
		0.361581, -0.816719, 0.449699,
		-0.016801, -0.487963, -0.872703,
		41.194691, 43.032940, 44.022968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935711, 43.301697, 44.566723>,  <41.206451, 43.374516, 44.633858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935711, 43.301697, 44.566723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.766262, 43.221848, 44.213295>,  <41.664593, 43.173939, 44.001240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.766262, 43.221848, 44.213295>,  <41.935711, 43.301697, 44.566723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766262, 43.221848, 44.213295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795449, 0.384670, -0.468284,
		0.433361, -0.901210, -0.004168,
		-0.423626, -0.199621, -0.883568,
		41.639175, 43.161961, 43.948223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099079, 43.657627, 45.273781>,  <41.935711, 43.301697, 44.566723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099079, 43.657627, 45.273781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.040436, 43.919044, 44.976761>,  <42.005249, 44.075893, 44.798550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.040436, 43.919044, 44.976761>,  <42.099079, 43.657627, 45.273781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040436, 43.919044, 44.976761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982273, 0.184828, -0.031270,
		0.116808, -0.733975, -0.669057,
		-0.146611, 0.653544, -0.742553,
		41.996452, 44.115108, 44.753994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770042, 43.817051, 44.943878>,  <42.099079, 43.657627, 45.273781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770042, 43.817051, 44.943878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.735088, 44.034615, 45.277710>,  <42.714115, 44.165154, 45.478008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.735088, 44.034615, 45.277710>,  <42.770042, 43.817051, 44.943878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735088, 44.034615, 45.277710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237507, -0.825000, 0.512801,
		0.967447, -0.153408, 0.201275,
		-0.087384, 0.543912, 0.834580,
		42.708874, 44.197788, 45.528084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101288, 43.371849, 45.493237>,  <42.770042, 43.817051, 44.943878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101288, 43.371849, 45.493237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.832439, 43.623634, 45.649197>,  <42.671131, 43.774704, 45.742775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.832439, 43.623634, 45.649197>,  <43.101288, 43.371849, 45.493237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832439, 43.623634, 45.649197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342982, -0.731359, 0.589472,
		0.656210, 0.262469, 0.707459,
		-0.672125, 0.629464, 0.389903,
		42.630802, 43.812473, 45.766167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005188, 43.226265, 46.230427>,  <43.101288, 43.371849, 45.493237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005188, 43.226265, 46.230427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.671761, 43.430199, 46.145355>,  <42.471703, 43.552559, 46.094315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.671761, 43.430199, 46.145355>,  <43.005188, 43.226265, 46.230427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671761, 43.430199, 46.145355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524811, -0.610707, 0.592968,
		0.172431, 0.605896, 0.776632,
		-0.833571, 0.509831, -0.212676,
		42.421688, 43.583149, 46.081551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641010, 43.286774, 46.837624>,  <43.005188, 43.226265, 46.230427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641010, 43.286774, 46.837624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.349976, 43.356552, 46.572235>,  <42.175354, 43.398418, 46.413002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.349976, 43.356552, 46.572235>,  <42.641010, 43.286774, 46.837624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349976, 43.356552, 46.572235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560197, -0.709326, 0.427828,
		-0.395982, 0.682954, 0.613818,
		-0.727584, 0.174446, -0.663469,
		42.131699, 43.408886, 46.373196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058132, 43.466869, 47.164509>,  <42.641010, 43.286774, 46.837624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058132, 43.466869, 47.164509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.932396, 43.339729, 46.806702>,  <41.856953, 43.263443, 46.592018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.932396, 43.339729, 46.806702>,  <42.058132, 43.466869, 47.164509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932396, 43.339729, 46.806702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566413, -0.693379, 0.445423,
		-0.761818, 0.646680, 0.037923,
		-0.314341, -0.317852, -0.894517,
		41.838093, 43.244373, 46.538345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383991, 43.680321, 47.133373>,  <42.058132, 43.466869, 47.164509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383991, 43.680321, 47.133373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.416889, 43.381340, 46.869694>,  <41.436626, 43.201950, 46.711487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.416889, 43.381340, 46.869694>,  <41.383991, 43.680321, 47.133373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416889, 43.381340, 46.869694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629550, -0.551729, 0.547048,
		-0.772595, 0.370010, -0.515936,
		0.082244, -0.747454, -0.659203,
		41.441563, 43.157104, 46.671932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641979, 43.409485, 46.865517>,  <41.383991, 43.680321, 47.133373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641979, 43.409485, 46.865517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.888351, 43.104752, 46.785286>,  <41.036175, 42.921909, 46.737148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.888351, 43.104752, 46.785286>,  <40.641979, 43.409485, 46.865517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888351, 43.104752, 46.785286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668649, -0.640181, 0.378255,
		-0.416577, -0.098862, -0.903709,
		0.615932, -0.761836, -0.200581,
		41.073132, 42.876202, 46.725113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282738, 42.923885, 46.479317>,  <40.641979, 43.409485, 46.865517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282738, 42.923885, 46.479317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.594501, 42.723000, 46.629143>,  <40.781559, 42.602467, 46.719036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.594501, 42.723000, 46.629143>,  <40.282738, 42.923885, 46.479317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594501, 42.723000, 46.629143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613987, -0.731242, 0.297162,
		0.124655, -0.461587, -0.878293,
		0.779410, -0.502218, 0.374562,
		40.828323, 42.572334, 46.741512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184914, 42.227432, 46.193363>,  <40.282738, 42.923885, 46.479317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184914, 42.227432, 46.193363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.408043, 42.215477, 46.525131>,  <40.541920, 42.208305, 46.724194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.408043, 42.215477, 46.525131>,  <40.184914, 42.227432, 46.193363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408043, 42.215477, 46.525131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660052, -0.621818, 0.421514,
		0.503151, -0.782591, -0.366593,
		0.557827, -0.029885, 0.829419,
		40.575390, 42.206512, 46.773956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026386, 41.551147, 46.490490>,  <40.184914, 42.227432, 46.193363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026386, 41.551147, 46.490490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.190113, 41.741318, 46.801983>,  <40.288349, 41.855419, 46.988880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.190113, 41.741318, 46.801983>,  <40.026386, 41.551147, 46.490490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190113, 41.741318, 46.801983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669465, -0.423389, 0.610375,
		0.619897, -0.771173, 0.144981,
		0.409322, 0.475429, 0.778732,
		40.312908, 41.883945, 47.035603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151852, 41.071327, 46.872433>,  <40.026386, 41.551147, 46.490490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151852, 41.071327, 46.872433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.140991, 41.389191, 47.115009>,  <40.134476, 41.579910, 47.260555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.140991, 41.389191, 47.115009>,  <40.151852, 41.071327, 46.872433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140991, 41.389191, 47.115009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717493, -0.437913, 0.541698,
		0.696037, -0.420410, 0.582056,
		-0.027155, 0.794662, 0.606444,
		40.132843, 41.627590, 47.296944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071213, 40.769188, 47.482025>,  <40.151852, 41.071327, 46.872433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071213, 40.769188, 47.482025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.948929, 41.142593, 47.556953>,  <39.875557, 41.366638, 47.601910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.948929, 41.142593, 47.556953>,  <40.071213, 40.769188, 47.482025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948929, 41.142593, 47.556953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748224, -0.357218, 0.559067,
		0.588812, 0.030756, 0.807684,
		-0.305714, 0.933514, 0.187322,
		39.857216, 41.422649, 47.613152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037460, 40.764637, 48.187798>,  <40.071213, 40.769188, 47.482025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037460, 40.764637, 48.187798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.814953, 41.081291, 48.086697>,  <39.681450, 41.271282, 48.026035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.814953, 41.081291, 48.086697>,  <40.037460, 40.764637, 48.187798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814953, 41.081291, 48.086697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717682, -0.304314, 0.626359,
		0.418930, 0.529819, 0.737420,
		-0.556264, 0.791634, -0.252756,
		39.648075, 41.318783, 48.010868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885468, 41.093704, 48.840317>,  <40.037460, 40.764637, 48.187798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885468, 41.093704, 48.840317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618927, 41.237808, 48.579185>,  <39.459003, 41.324272, 48.422508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.618927, 41.237808, 48.579185>,  <39.885468, 41.093704, 48.840317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618927, 41.237808, 48.579185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733458, -0.159095, 0.660854,
		0.134220, 0.919184, 0.370251,
		-0.666352, 0.360263, -0.652829,
		39.419022, 41.345886, 48.383335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588612, 41.707249, 49.124344>,  <39.885468, 41.093704, 48.840317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588612, 41.707249, 49.124344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.327728, 41.557587, 48.860638>,  <39.171200, 41.467789, 48.702412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.327728, 41.557587, 48.860638>,  <39.588612, 41.707249, 49.124344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327728, 41.557587, 48.860638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722121, 0.042116, 0.690483,
		-0.230581, 0.926410, -0.297652,
		-0.652206, -0.374153, -0.659270,
		39.132065, 41.445339, 48.662857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050522, 42.010204, 49.395100>,  <39.588612, 41.707249, 49.124344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050522, 42.010204, 49.395100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884651, 41.743851, 49.147018>,  <38.785130, 41.584038, 48.998169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884651, 41.743851, 49.147018>,  <39.050522, 42.010204, 49.395100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884651, 41.743851, 49.147018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804044, -0.051020, 0.592378,
		-0.426095, 0.744312, -0.514240,
		-0.414677, -0.665880, -0.620199,
		38.760246, 41.544086, 48.960960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452518, 42.276028, 49.167206>,  <39.050522, 42.010204, 49.395100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452518, 42.276028, 49.167206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418823, 41.880363, 49.119091>,  <38.398605, 41.642967, 49.090221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.418823, 41.880363, 49.119091>,  <38.452518, 42.276028, 49.167206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418823, 41.880363, 49.119091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866242, 0.013030, 0.499454,
		-0.492472, 0.146270, -0.857949,
		-0.084234, -0.989159, -0.120288,
		38.393555, 41.583614, 49.083004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728901, 42.210629, 49.052441>,  <38.452518, 42.276028, 49.167206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728901, 42.210629, 49.052441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.871887, 41.869972, 49.205769>,  <37.957680, 41.665581, 49.297768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.871887, 41.869972, 49.205769>,  <37.728901, 42.210629, 49.052441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871887, 41.869972, 49.205769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838013, -0.111313, 0.534176,
		-0.412255, -0.512177, -0.753473,
		0.357464, -0.851636, 0.383321,
		37.979126, 41.614483, 49.320766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124401, 41.799126, 49.094990>,  <37.728901, 42.210629, 49.052441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124401, 41.799126, 49.094990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.385109, 41.626160, 49.344215>,  <37.541534, 41.522381, 49.493752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.385109, 41.626160, 49.344215>,  <37.124401, 41.799126, 49.094990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385109, 41.626160, 49.344215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738271, -0.173644, 0.651769,
		-0.173644, -0.884796, -0.432417,
		-0.651769, 0.432417, -0.623067,
		37.580639, 41.496433, 49.531136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811291, 41.215321, 49.287712>,  <37.124401, 41.799126, 49.094990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811291, 41.215321, 49.287712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093079, 41.285034, 49.562916>,  <37.262150, 41.326862, 49.728039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.093079, 41.285034, 49.562916>,  <36.811291, 41.215321, 49.287712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093079, 41.285034, 49.562916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646655, -0.241908, 0.723407,
		0.292516, -0.954518, -0.057712,
		0.704466, 0.174289, 0.688005,
		37.304417, 41.337322, 49.769318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611675, 40.615120, 49.795628>,  <36.811291, 41.215321, 49.287712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611675, 40.615120, 49.795628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880127, 40.847656, 49.979641>,  <37.041199, 40.987179, 50.090050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880127, 40.847656, 49.979641>,  <36.611675, 40.615120, 49.795628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880127, 40.847656, 49.979641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241259, -0.415491, 0.877019,
		0.700984, -0.699580, -0.138595,
		0.671130, 0.581339, 0.460032,
		37.081467, 41.022057, 50.117649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118011, 40.191925, 50.177460>,  <36.611675, 40.615120, 49.795628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118011, 40.191925, 50.177460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041618, 40.540886, 50.357437>,  <36.995781, 40.750263, 50.465424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041618, 40.540886, 50.357437>,  <37.118011, 40.191925, 50.177460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041618, 40.540886, 50.357437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248756, -0.486430, 0.837560,
		0.949550, 0.048035, 0.309915,
		-0.190984, 0.872398, 0.449941,
		36.984322, 40.802605, 50.492420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365940, 40.008530, 50.806431>,  <37.118011, 40.191925, 50.177460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365940, 40.008530, 50.806431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144314, 40.338715, 50.849545>,  <37.011337, 40.536827, 50.875412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.144314, 40.338715, 50.849545>,  <37.365940, 40.008530, 50.806431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144314, 40.338715, 50.849545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367611, -0.358780, 0.857985,
		0.746910, 0.435756, 0.502238,
		-0.554065, 0.825466, 0.107788,
		36.978096, 40.586353, 50.881882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303932, 40.087433, 51.565987>,  <37.365940, 40.008530, 50.806431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303932, 40.087433, 51.565987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021503, 40.329643, 51.419121>,  <36.852047, 40.474968, 51.331001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.021503, 40.329643, 51.419121>,  <37.303932, 40.087433, 51.565987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021503, 40.329643, 51.419121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575403, -0.188348, 0.795887,
		0.412772, 0.773220, 0.481405,
		-0.706067, 0.605522, -0.367168,
		36.809685, 40.511299, 51.308971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107098, 40.597832, 52.170521>,  <37.303932, 40.087433, 51.565987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107098, 40.597832, 52.170521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802406, 40.587593, 51.911564>,  <36.619591, 40.581451, 51.756191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802406, 40.587593, 51.911564>,  <37.107098, 40.597832, 52.170521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802406, 40.587593, 51.911564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619247, -0.265078, 0.739099,
		-0.190526, 0.963887, 0.186068,
		-0.761731, -0.025595, -0.647388,
		36.573887, 40.579914, 51.717346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572281, 40.633224, 52.631130>,  <37.107098, 40.597832, 52.170521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572281, 40.633224, 52.631130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.387360, 40.532730, 52.290977>,  <36.276405, 40.472431, 52.086884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.387360, 40.532730, 52.290977>,  <36.572281, 40.633224, 52.631130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387360, 40.532730, 52.290977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741887, -0.415679, 0.526131,
		-0.485671, 0.874122, 0.005779,
		-0.462306, -0.251239, -0.850384,
		36.248669, 40.457359, 52.035862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791271, 40.860798, 52.685860>,  <36.572281, 40.633224, 52.631130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791271, 40.860798, 52.685860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820347, 40.564499, 52.418724>,  <35.837791, 40.386719, 52.258442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.820347, 40.564499, 52.418724>,  <35.791271, 40.860798, 52.685860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820347, 40.564499, 52.418724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665879, -0.534555, 0.520438,
		-0.742510, 0.406867, -0.532108,
		0.072691, -0.740750, -0.667836,
		35.842155, 40.342274, 52.218372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350460, 41.299023, 52.442226>,  <35.791271, 40.860798, 52.685860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350460, 41.299023, 52.442226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.269936, 41.626747, 52.656967>,  <35.221622, 41.823380, 52.785812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.269936, 41.626747, 52.656967>,  <35.350460, 41.299023, 52.442226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269936, 41.626747, 52.656967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934657, 0.324650, -0.144981,
		-0.293073, 0.472587, -0.831125,
		-0.201308, 0.819307, 0.536853,
		35.209541, 41.872540, 52.818024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617538, 41.819534, 52.026264>,  <35.350460, 41.299023, 52.442226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617538, 41.819534, 52.026264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.588577, 41.983597, 52.389919>,  <35.571201, 42.082035, 52.608112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.588577, 41.983597, 52.389919>,  <35.617538, 41.819534, 52.026264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588577, 41.983597, 52.389919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821908, 0.540907, -0.178570,
		-0.565000, 0.734297, -0.376276,
		-0.072407, 0.410156, 0.909136,
		35.566856, 42.106644, 52.662659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625271, 42.530495, 51.920189>,  <35.617538, 41.819534, 52.026264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.625271, 42.530495, 51.920189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723160, 42.493530, 52.306259>,  <35.781895, 42.471352, 52.537903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.723160, 42.493530, 52.306259>,  <35.625271, 42.530495, 51.920189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723160, 42.493530, 52.306259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790051, 0.596068, -0.143254,
		-0.562074, 0.797599, 0.218880,
		0.244726, -0.092407, 0.965179,
		35.796577, 42.465809, 52.595814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689480, 43.188263, 52.297199>,  <35.625271, 42.530495, 51.920189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689480, 43.188263, 52.297199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914581, 42.940384, 52.516029>,  <36.049641, 42.791656, 52.647327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914581, 42.940384, 52.516029>,  <35.689480, 43.188263, 52.297199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914581, 42.940384, 52.516029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757960, 0.650924, -0.042350,
		-0.329860, 0.438494, 0.836012,
		0.562751, -0.619694, 0.547075,
		36.083408, 42.754475, 52.680153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995724, 43.653805, 52.844963>,  <35.689480, 43.188263, 52.297199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995724, 43.653805, 52.844963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252785, 43.350983, 52.797855>,  <36.407021, 43.169289, 52.769592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.252785, 43.350983, 52.797855>,  <35.995724, 43.653805, 52.844963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252785, 43.350983, 52.797855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749772, 0.653053, -0.106600,
		0.157610, -0.019792, 0.987303,
		0.642652, -0.757053, -0.117768,
		36.445580, 43.123867, 52.762524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
