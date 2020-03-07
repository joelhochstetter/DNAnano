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
	<2.448351, 3.941852, 3.538044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.703526, 4.211678, 3.686638>,  <2.856630, 4.373573, 3.775794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.703526, 4.211678, 3.686638>,  <2.448351, 3.941852, 3.538044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.703526, 4.211678, 3.686638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769572, -0.576118, -0.275404,
		0.028241, 0.461574, -0.886652,
		0.637936, 0.674564, 0.371485,
		2.894906, 4.414047, 3.798083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.992808, 4.196527, 3.045774>,  <2.448351, 3.941852, 3.538044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.992808, 4.196527, 3.045774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.138920, 4.210915, 3.417854>,  <3.226587, 4.219547, 3.641103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.138920, 4.210915, 3.417854>,  <2.992808, 4.196527, 3.045774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.138920, 4.210915, 3.417854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793489, -0.534545, -0.290925,
		0.486770, 0.844374, -0.223800,
		0.365281, 0.035969, 0.930202,
		3.248504, 4.221705, 3.696915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.663099, 4.379926, 2.930457>,  <2.992808, 4.196527, 3.045774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.663099, 4.379926, 2.930457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.624737, 4.196777, 3.283989>,  <3.601719, 4.086888, 3.496108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.624737, 4.196777, 3.283989>,  <3.663099, 4.379926, 2.930457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.624737, 4.196777, 3.283989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816082, -0.544560, -0.193557,
		0.569923, 0.702714, 0.425888,
		-0.095906, -0.457872, 0.883830,
		3.595965, 4.059416, 3.549138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.396077, 4.401024, 3.300151>,  <3.663099, 4.379926, 2.930457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.396077, 4.401024, 3.300151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.145977, 4.097145, 3.371620>,  <3.995917, 3.914818, 3.414501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.145977, 4.097145, 3.371620>,  <4.396077, 4.401024, 3.300151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.145977, 4.097145, 3.371620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772421, -0.635105, 0.002620,
		0.111485, 0.139648, 0.983905,
		-0.625249, -0.759697, 0.178672,
		3.958402, 3.869236, 3.425222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.755212, 3.957443, 3.673663>,  <4.396077, 4.401024, 3.300151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.755212, 3.957443, 3.673663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.443562, 3.732544, 3.562782>,  <4.256571, 3.597605, 3.496254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.443562, 3.732544, 3.562782>,  <4.755212, 3.957443, 3.673663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.443562, 3.732544, 3.562782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580735, -0.813882, 0.018531,
		-0.236028, -0.146543, 0.960633,
		-0.779126, -0.562247, -0.277201,
		4.209824, 3.563870, 3.479622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.681522, 3.476256, 4.132946>,  <4.755212, 3.957443, 3.673663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.681522, 3.476256, 4.132946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.560139, 3.355560, 3.771423>,  <4.487309, 3.283143, 3.554510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.560139, 3.355560, 3.771423>,  <4.681522, 3.476256, 4.132946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.560139, 3.355560, 3.771423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764628, -0.643100, -0.042026,
		-0.568557, -0.703829, 0.425872,
		-0.303458, -0.301739, -0.903807,
		4.469101, 3.265038, 3.500281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.696031, 2.664240, 4.161826>,  <4.681522, 3.476256, 4.132946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.696031, 2.664240, 4.161826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.666470, 2.750931, 3.772453>,  <4.648733, 2.802945, 3.538830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.666470, 2.750931, 3.772453>,  <4.696031, 2.664240, 4.161826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.666470, 2.750931, 3.772453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691130, -0.692553, -0.206663,
		-0.718942, -0.688040, -0.098604,
		-0.073904, 0.216727, -0.973431,
		4.644299, 2.815949, 3.480424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.546739, 1.997779, 3.799514>,  <4.696031, 2.664240, 4.161826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.546739, 1.997779, 3.799514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.716511, 2.260475, 3.550179>,  <4.818374, 2.418093, 3.400577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.716511, 2.260475, 3.550179>,  <4.546739, 1.997779, 3.799514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.716511, 2.260475, 3.550179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642275, -0.703612, -0.303994,
		-0.638235, -0.271331, -0.720442,
		0.424429, 0.656741, -0.623339,
		4.843839, 2.457498, 3.363177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.211799, 1.349424, 3.222970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.332989, 1.673431, 3.022141>,  <1.405702, 1.867836, 2.901643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.332989, 1.673431, 3.022141>,  <1.211799, 1.349424, 3.222970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.332989, 1.673431, 3.022141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853207, 0.465252, 0.235749,
		0.424552, 0.356947, 0.832072,
		0.302974, 0.810018, -0.502074,
		1.423881, 1.916437, 2.871518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.987682, 1.878352, 3.618269>,  <1.211799, 1.349424, 3.222970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.987682, 1.878352, 3.618269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.017677, 2.011856, 3.242401>,  <1.035674, 2.091959, 3.016880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.017677, 2.011856, 3.242401>,  <0.987682, 1.878352, 3.618269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.017677, 2.011856, 3.242401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915739, 0.396046, 0.067593,
		0.394712, 0.855426, 0.335334,
		0.074987, 0.333759, -0.939671,
		1.040174, 2.111984, 2.960500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.882247, 2.615911, 3.505984>,  <0.987682, 1.878352, 3.618269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.882247, 2.615911, 3.505984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.745731, 2.488380, 3.152290>,  <0.663822, 2.411862, 2.940074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.745731, 2.488380, 3.152290>,  <0.882247, 2.615911, 3.505984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.745731, 2.488380, 3.152290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807043, 0.581657, 0.101767,
		0.481875, 0.748347, -0.455821,
		-0.341289, -0.318828, -0.884234,
		0.643345, 2.392732, 2.887020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.682561, 3.132876, 3.084663>,  <0.882247, 2.615911, 3.505984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.682561, 3.132876, 3.084663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.465546, 2.810562, 2.989700>,  <0.335336, 2.617174, 2.932723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.465546, 2.810562, 2.989700>,  <0.682561, 3.132876, 3.084663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.465546, 2.810562, 2.989700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839758, 0.513049, 0.177731,
		-0.021411, 0.295790, -0.955013,
		-0.542539, -0.805785, -0.237407,
		0.302784, 2.568827, 2.918478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.299490, 3.285727, 2.512621>,  <0.682561, 3.132876, 3.084663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.299490, 3.285727, 2.512621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.122322, 2.994873, 2.722420>,  <0.016021, 2.820360, 2.848299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.122322, 2.994873, 2.722420>,  <0.299490, 3.285727, 2.512621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.122322, 2.994873, 2.722420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809035, 0.576261, 0.115696,
		-0.386373, -0.373092, -0.843516,
		-0.442920, -0.727136, 0.524496,
		-0.010554, 2.776732, 2.879769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.375032, 3.287096, 2.284334>,  <0.299490, 3.285727, 2.512621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.375032, 3.287096, 2.284334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.366558, 3.133667, 2.653641>,  <-0.361474, 3.041610, 2.875225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.366558, 3.133667, 2.653641>,  <-0.375032, 3.287096, 2.284334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.366558, 3.133667, 2.653641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770141, 0.582607, 0.259717,
		-0.637522, -0.716548, -0.283062,
		0.021185, -0.383573, 0.923268,
		-0.360202, 3.018595, 2.930621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.019791, 3.029500, 2.292485>,  <-0.375032, 3.287096, 2.284334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.019791, 3.029500, 2.292485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.851151, 3.091736, 2.649818>,  <-0.749966, 3.129077, 2.864218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.851151, 3.091736, 2.649818>,  <-1.019791, 3.029500, 2.292485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.851151, 3.091736, 2.649818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797230, 0.533011, 0.283414,
		-0.432061, -0.831680, 0.348758,
		0.421602, 0.155588, 0.893333,
		-0.724670, 3.138412, 2.917819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.500213, 2.760642, 2.827617>,  <-1.019791, 3.029500, 2.292485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.500213, 2.760642, 2.827617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.278854, 3.053734, 2.986038>,  <-1.146039, 3.229589, 3.081091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.278854, 3.053734, 2.986038>,  <-1.500213, 2.760642, 2.827617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.278854, 3.053734, 2.986038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821877, 0.403209, 0.402419,
		0.135172, -0.548205, 0.825349,
		0.553396, 0.732731, 0.396054,
		-1.112836, 3.273553, 3.104854>
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
