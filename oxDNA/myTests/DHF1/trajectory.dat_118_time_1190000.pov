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
	<3.176904, 5.171392, -0.374487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.103039, 5.002777, -0.019363>,  <3.058720, 4.901608, 0.193711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.103039, 5.002777, -0.019363>,  <3.176904, 5.171392, -0.374487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.103039, 5.002777, -0.019363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975211, 0.033464, 0.218731,
		-0.121913, 0.906193, 0.404909,
		-0.184663, -0.421538, 0.887809,
		3.047640, 4.876316, 0.246979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.687004, 5.550162, -0.013725>,  <3.176904, 5.171392, -0.374487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.687004, 5.550162, -0.013725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.580893, 5.174305, 0.072712>,  <3.517226, 4.948791, 0.124574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.580893, 5.174305, 0.072712>,  <3.687004, 5.550162, -0.013725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.580893, 5.174305, 0.072712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964055, -0.255012, 0.074614,
		-0.015005, 0.228120, 0.973518,
		-0.265279, -0.939644, 0.216093,
		3.501309, 4.892412, 0.137540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.088699, 5.272280, 0.467389>,  <3.687004, 5.550162, -0.013725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.088699, 5.272280, 0.467389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.978176, 4.933876, 0.284996>,  <3.911862, 4.730834, 0.175560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.978176, 4.933876, 0.284996>,  <4.088699, 5.272280, 0.467389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.978176, 4.933876, 0.284996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956223, -0.289589, -0.042142,
		-0.096395, -0.447666, 0.888990,
		-0.276307, -0.846011, -0.455983,
		3.895284, 4.680073, 0.148201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.519863, 4.726639, 0.647856>,  <4.088699, 5.272280, 0.467389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.519863, 4.726639, 0.647856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.362633, 4.558239, 0.320869>,  <4.268295, 4.457199, 0.124678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.362633, 4.558239, 0.320869>,  <4.519863, 4.726639, 0.647856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.362633, 4.558239, 0.320869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895090, -0.378708, -0.235363,
		-0.210493, -0.824220, 0.525694,
		-0.393075, -0.421001, -0.817465,
		4.244710, 4.431939, 0.075630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.500432, 4.049272, 0.698470>,  <4.519863, 4.726639, 0.647856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.500432, 4.049272, 0.698470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.528915, 4.130707, 0.307884>,  <4.546006, 4.179567, 0.073533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.528915, 4.130707, 0.307884>,  <4.500432, 4.049272, 0.698470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.528915, 4.130707, 0.307884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884966, -0.464532, -0.032315,
		-0.460178, -0.861837, -0.213246,
		0.071209, 0.203587, -0.976464,
		4.550278, 4.191782, 0.014945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.577236, 3.396613, 0.288318>,  <4.500432, 4.049272, 0.698470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.577236, 3.396613, 0.288318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.773823, 3.711639, 0.139618>,  <4.891775, 3.900655, 0.050398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.773823, 3.711639, 0.139618>,  <4.577236, 3.396613, 0.288318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.773823, 3.711639, 0.139618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857089, -0.513104, 0.046074,
		-0.154461, -0.341267, -0.927189,
		0.491468, 0.787567, -0.371751,
		4.921263, 3.947909, 0.028093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.001696, 3.073699, -0.182945>,  <4.577236, 3.396613, 0.288318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.001696, 3.073699, -0.182945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.151966, 3.433678, -0.094433>,  <5.242128, 3.649665, -0.041326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.151966, 3.433678, -0.094433>,  <5.001696, 3.073699, -0.182945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.151966, 3.433678, -0.094433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909501, -0.403873, 0.098460,
		0.177977, 0.164265, -0.970227,
		0.375675, 0.899947, 0.221279,
		5.264668, 3.703662, -0.028049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.658273, 3.114892, -0.510840>,  <5.001696, 3.073699, -0.182945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.658273, 3.114892, -0.510840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.658955, 3.349426, -0.186813>,  <5.659364, 3.490146, 0.007603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.658955, 3.349426, -0.186813>,  <5.658273, 3.114892, -0.510840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.658955, 3.349426, -0.186813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924673, -0.309365, 0.221976,
		0.380759, 0.748669, -0.542694,
		0.001704, 0.586334, 0.810067,
		5.659466, 3.525326, 0.056207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.158056, 2.904537, -0.536875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.238258, 3.037231, -0.168148>,  <2.286379, 3.116848, 0.053088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.238258, 3.037231, -0.168148>,  <2.158056, 2.904537, -0.536875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.238258, 3.037231, -0.168148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767858, 0.637571, -0.062426,
		-0.608433, -0.695309, 0.382563,
		0.200506, 0.331736, 0.921818,
		2.298410, 3.136752, 0.108397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.541472, 2.785805, -0.096325>,  <2.158056, 2.904537, -0.536875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.541472, 2.785805, -0.096325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.764648, 3.093170, 0.029049>,  <1.898554, 3.277590, 0.104273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.764648, 3.093170, 0.029049>,  <1.541472, 2.785805, -0.096325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.764648, 3.093170, 0.029049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826139, 0.550108, 0.121961,
		-0.078706, -0.326987, 0.941745,
		0.557942, 0.768414, 0.313434,
		1.932031, 3.323694, 0.123079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.321009, 3.018516, 0.534655>,  <1.541472, 2.785805, -0.096325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.321009, 3.018516, 0.534655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.451795, 3.297401, 0.279472>,  <1.530267, 3.464732, 0.126363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.451795, 3.297401, 0.279472>,  <1.321009, 3.018516, 0.534655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.451795, 3.297401, 0.279472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851142, 0.510609, 0.121809,
		0.410673, 0.503163, 0.760378,
		0.326966, 0.697213, -0.637956,
		1.549885, 3.506565, 0.088086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.205531, 3.525139, 0.877743>,  <1.321009, 3.018516, 0.534655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.205531, 3.525139, 0.877743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.221646, 3.656891, 0.500408>,  <1.231314, 3.735942, 0.274007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.221646, 3.656891, 0.500408>,  <1.205531, 3.525139, 0.877743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.221646, 3.656891, 0.500408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876004, 0.465765, 0.125218,
		0.480618, 0.821323, 0.307302,
		0.040286, 0.329380, -0.943337,
		1.233732, 3.755705, 0.217407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.070357, 4.255887, 0.818854>,  <1.205531, 3.525139, 0.877743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.070357, 4.255887, 0.818854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.954337, 4.097862, 0.470188>,  <0.884725, 4.003047, 0.260989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.954337, 4.097862, 0.470188>,  <1.070357, 4.255887, 0.818854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.954337, 4.097862, 0.470188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852619, 0.520334, 0.047884,
		0.434639, 0.757086, -0.487759,
		-0.290050, -0.395061, -0.871664,
		0.867322, 3.979344, 0.208689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.846732, 4.810183, 0.247141>,  <1.070357, 4.255887, 0.818854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.846732, 4.810183, 0.247141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.667139, 4.465294, 0.153343>,  <0.559383, 4.258360, 0.097065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.667139, 4.465294, 0.153343>,  <0.846732, 4.810183, 0.247141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.667139, 4.465294, 0.153343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840761, 0.496513, -0.215862,
		0.302550, 0.100235, -0.947848,
		-0.448982, -0.862223, -0.234493,
		0.532444, 4.206627, 0.082995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.512967, 5.050563, -0.349371>,  <0.846732, 4.810183, 0.247141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.512967, 5.050563, -0.349371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.346241, 4.711792, -0.217323>,  <0.246205, 4.508530, -0.138094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.346241, 4.711792, -0.217323>,  <0.512967, 5.050563, -0.349371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.346241, 4.711792, -0.217323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908142, 0.372306, -0.191483,
		0.039266, -0.379609, -0.924313,
		-0.416816, -0.846927, 0.330120,
		0.221196, 4.457714, -0.118287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.040484, 4.896367, -0.858504>,  <0.512967, 5.050563, -0.349371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.040484, 4.896367, -0.858504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.109043, 4.723793, -0.504219>,  <-0.150178, 4.620249, -0.291648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.109043, 4.723793, -0.504219>,  <-0.040484, 4.896367, -0.858504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.109043, 4.723793, -0.504219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983555, 0.126887, -0.128524,
		-0.056936, -0.893177, -0.446087,
		-0.171397, -0.431433, 0.885714,
		-0.160462, 4.594363, -0.238505>
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
