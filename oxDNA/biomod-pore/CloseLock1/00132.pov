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
	<24.113781, 35.449703, 34.563038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304615, 35.149021, 34.745174>,  <24.419115, 34.968613, 34.854454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304615, 35.149021, 34.745174>,  <24.113781, 35.449703, 34.563038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304615, 35.149021, 34.745174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843603, 0.246421, -0.477085,
		0.246421, 0.611735, 0.751703,
		0.477085, -0.751703, 0.455338,
		24.447741, 34.923512, 34.881775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572220, 35.700562, 35.085575>,  <24.113781, 35.449703, 34.563038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572220, 35.700562, 35.085575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677216, 35.366344, 34.892506>,  <24.740213, 35.165813, 34.776665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677216, 35.366344, 34.892506>,  <24.572220, 35.700562, 35.085575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677216, 35.366344, 34.892506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807871, 0.463834, -0.363597,
		0.527679, -0.294495, 0.796761,
		0.262487, -0.835542, -0.482669,
		24.755962, 35.115681, 34.747704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.243849, 35.429535, 35.393757>,  <24.572220, 35.700562, 35.085575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.243849, 35.429535, 35.393757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140503, 35.360336, 35.013584>,  <25.078495, 35.318817, 34.785480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.140503, 35.360336, 35.013584>,  <25.243849, 35.429535, 35.393757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140503, 35.360336, 35.013584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774836, 0.550470, -0.310825,
		0.576956, -0.816734, -0.008177,
		-0.258363, -0.172997, -0.950432,
		25.062994, 35.308437, 34.728455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854063, 35.135735, 35.133339>,  <25.243849, 35.429535, 35.393757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854063, 35.135735, 35.133339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644583, 35.335075, 34.856968>,  <25.518894, 35.454681, 34.691143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.644583, 35.335075, 34.856968>,  <25.854063, 35.135735, 35.133339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.644583, 35.335075, 34.856968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832519, 0.471419, -0.290993,
		0.180700, -0.727605, -0.661769,
		-0.523699, 0.498352, -0.690930,
		25.487473, 35.484581, 34.649689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113499, 34.999657, 34.407436>,  <25.854063, 35.135735, 35.133339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113499, 34.999657, 34.407436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950144, 35.364475, 34.422401>,  <25.852131, 35.583366, 34.431381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950144, 35.364475, 34.422401>,  <26.113499, 34.999657, 34.407436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950144, 35.364475, 34.422401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702593, 0.340240, -0.624980,
		-0.582739, -0.228944, -0.779743,
		-0.408385, 0.912042, 0.037417,
		25.827629, 35.638088, 34.433628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942410, 35.148930, 33.713673>,  <26.113499, 34.999657, 34.407436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942410, 35.148930, 33.713673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020672, 35.494625, 33.899059>,  <26.067629, 35.702042, 34.010292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020672, 35.494625, 33.899059>,  <25.942410, 35.148930, 33.713673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020672, 35.494625, 33.899059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513618, 0.312294, -0.799168,
		-0.835414, 0.394407, -0.382789,
		0.195654, 0.864243, 0.463469,
		26.079369, 35.753899, 34.038101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826223, 35.678364, 33.211025>,  <25.942410, 35.148930, 33.713673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826223, 35.678364, 33.211025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071806, 35.829235, 33.488380>,  <26.219156, 35.919758, 33.654793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071806, 35.829235, 33.488380>,  <25.826223, 35.678364, 33.211025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071806, 35.829235, 33.488380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627245, 0.300151, -0.718661,
		-0.479187, 0.876153, -0.052304,
		0.613958, 0.377180, 0.693391,
		26.255993, 35.942390, 33.696400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916695, 36.449589, 33.225502>,  <25.826223, 35.678364, 33.211025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916695, 36.449589, 33.225502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245836, 36.299507, 33.396210>,  <26.443321, 36.209457, 33.498634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245836, 36.299507, 33.396210>,  <25.916695, 36.449589, 33.225502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245836, 36.299507, 33.396210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546698, 0.317795, -0.774679,
		0.155038, 0.870762, 0.466623,
		0.822852, -0.375207, 0.426773,
		26.492691, 36.186947, 33.524242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399258, 36.945377, 33.004848>,  <25.916695, 36.449589, 33.225502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399258, 36.945377, 33.004848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655317, 36.693714, 33.181194>,  <26.808954, 36.542717, 33.287003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655317, 36.693714, 33.181194>,  <26.399258, 36.945377, 33.004848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655317, 36.693714, 33.181194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718370, 0.286812, -0.633785,
		0.272308, 0.722423, 0.635573,
		0.640151, -0.629161, 0.440866,
		26.847363, 36.504967, 33.313454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859156, 37.406265, 33.209717>,  <26.399258, 36.945377, 33.004848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859156, 37.406265, 33.209717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014631, 37.042313, 33.151707>,  <27.107916, 36.823940, 33.116901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014631, 37.042313, 33.151707>,  <26.859156, 37.406265, 33.209717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014631, 37.042313, 33.151707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605621, 0.370924, -0.704016,
		0.694367, 0.185811, 0.695218,
		0.388687, -0.909884, -0.145026,
		27.131237, 36.769348, 33.108200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540766, 37.528934, 33.297569>,  <26.859156, 37.406265, 33.209717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540766, 37.528934, 33.297569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492731, 37.199570, 33.075733>,  <27.463911, 37.001949, 32.942631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492731, 37.199570, 33.075733>,  <27.540766, 37.528934, 33.297569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492731, 37.199570, 33.075733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749892, 0.290842, -0.594200,
		0.650571, -0.487234, 0.582547,
		-0.120086, -0.823416, -0.554586,
		27.456705, 36.952545, 32.909359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292198, 37.441696, 33.100368>,  <27.540766, 37.528934, 33.297569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292198, 37.441696, 33.100368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077852, 37.202080, 32.862377>,  <27.949245, 37.058311, 32.719582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077852, 37.202080, 32.862377>,  <28.292198, 37.441696, 33.100368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077852, 37.202080, 32.862377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508097, 0.334006, -0.793900,
		0.674305, -0.727729, 0.125390,
		-0.535863, -0.599041, -0.594979,
		27.917093, 37.022369, 32.683884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792656, 36.970261, 32.838272>,  <28.292198, 37.441696, 33.100368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792656, 36.970261, 32.838272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467152, 36.998623, 32.607529>,  <28.271849, 37.015640, 32.469082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467152, 36.998623, 32.607529>,  <28.792656, 36.970261, 32.838272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467152, 36.998623, 32.607529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570605, 0.286130, -0.769766,
		0.110475, -0.955564, -0.273301,
		-0.813760, 0.070907, -0.576860,
		28.223024, 37.019894, 32.434471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085268, 36.668209, 32.129112>,  <28.792656, 36.970261, 32.838272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085268, 36.668209, 32.129112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749973, 36.883213, 32.092373>,  <28.548796, 37.012215, 32.070328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749973, 36.883213, 32.092373>,  <29.085268, 36.668209, 32.129112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749973, 36.883213, 32.092373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413200, 0.516178, -0.750217,
		-0.355841, -0.666812, -0.654781,
		-0.838238, 0.537514, -0.091849,
		28.498503, 37.044468, 32.064819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105904, 36.835835, 31.441425>,  <29.085268, 36.668209, 32.129112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105904, 36.835835, 31.441425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830072, 37.083176, 31.592224>,  <28.664574, 37.231579, 31.682703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830072, 37.083176, 31.592224>,  <29.105904, 36.835835, 31.441425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830072, 37.083176, 31.592224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240263, 0.686410, -0.686379,
		-0.683195, -0.382734, -0.621900,
		-0.689578, 0.618350, 0.376995,
		28.623199, 37.268681, 31.705322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782301, 37.191738, 30.842945>,  <29.105904, 36.835835, 31.441425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782301, 37.191738, 30.842945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717394, 37.435326, 31.153513>,  <28.678450, 37.581478, 31.339853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717394, 37.435326, 31.153513>,  <28.782301, 37.191738, 30.842945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717394, 37.435326, 31.153513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342251, 0.772736, -0.534550,
		-0.925491, 0.178991, -0.333808,
		-0.162266, 0.608967, 0.776420,
		28.668715, 37.618015, 31.386438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445480, 37.953342, 30.609987>,  <28.782301, 37.191738, 30.842945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445480, 37.953342, 30.609987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623243, 37.997707, 30.965559>,  <28.729900, 38.024326, 31.178902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623243, 37.997707, 30.965559>,  <28.445480, 37.953342, 30.609987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623243, 37.997707, 30.965559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375492, 0.877864, -0.297256,
		-0.813331, 0.465889, 0.348482,
		0.444408, 0.110916, 0.888932,
		28.756565, 38.030983, 31.232239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381409, 38.615440, 30.710253>,  <28.445480, 37.953342, 30.609987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381409, 38.615440, 30.710253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671026, 38.507938, 30.964350>,  <28.844797, 38.443439, 31.116808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671026, 38.507938, 30.964350>,  <28.381409, 38.615440, 30.710253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671026, 38.507938, 30.964350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493740, 0.845041, -0.205246,
		-0.481646, 0.462252, 0.744540,
		0.724043, -0.268753, 0.635243,
		28.888239, 38.427311, 31.154922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543406, 39.266838, 31.050137>,  <28.381409, 38.615440, 30.710253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543406, 39.266838, 31.050137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845856, 39.008305, 31.091173>,  <29.027325, 38.853184, 31.115795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845856, 39.008305, 31.091173>,  <28.543406, 39.266838, 31.050137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845856, 39.008305, 31.091173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647331, 0.715649, -0.262315,
		0.096124, 0.264754, 0.959513,
		0.756124, -0.646337, 0.102592,
		29.072693, 38.814404, 31.121950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958860, 39.665955, 31.203402>,  <28.543406, 39.266838, 31.050137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958860, 39.665955, 31.203402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200548, 39.361794, 31.108150>,  <29.345560, 39.179295, 31.051001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.200548, 39.361794, 31.108150>,  <28.958860, 39.665955, 31.203402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200548, 39.361794, 31.108150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705563, 0.649441, -0.283561,
		0.370270, 0.003319, 0.928918,
		0.604219, -0.760404, -0.238127,
		29.381813, 39.133671, 31.036713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603796, 39.805012, 31.482841>,  <28.958860, 39.665955, 31.203402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603796, 39.805012, 31.482841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673021, 39.560913, 31.173611>,  <29.714556, 39.414455, 30.988071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673021, 39.560913, 31.173611>,  <29.603796, 39.805012, 31.482841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673021, 39.560913, 31.173611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641676, 0.665337, -0.381549,
		0.747196, -0.430034, 0.506724,
		0.173062, -0.610244, -0.773079,
		29.724939, 39.377838, 30.941687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205853, 40.028736, 31.317839>,  <29.603796, 39.805012, 31.482841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205853, 40.028736, 31.317839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088846, 39.795731, 31.014496>,  <30.018642, 39.655926, 30.832489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088846, 39.795731, 31.014496>,  <30.205853, 40.028736, 31.317839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088846, 39.795731, 31.014496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487773, 0.591228, -0.642283,
		0.822503, -0.557786, 0.111191,
		-0.292518, -0.582516, -0.758359,
		30.001091, 39.620975, 30.786987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863075, 39.757977, 31.024208>,  <30.205853, 40.028736, 31.317839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863075, 39.757977, 31.024208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591331, 39.760223, 30.730694>,  <30.428286, 39.761574, 30.554586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591331, 39.760223, 30.730694>,  <30.863075, 39.757977, 31.024208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591331, 39.760223, 30.730694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549549, 0.666557, -0.503684,
		0.486277, -0.745433, -0.455922,
		-0.679361, 0.005621, -0.733783,
		30.387524, 39.761909, 30.510559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246809, 39.865261, 30.370073>,  <30.863075, 39.757977, 31.024208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246809, 39.865261, 30.370073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874788, 39.958340, 30.256332>,  <30.651575, 40.014187, 30.188087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874788, 39.958340, 30.256332>,  <31.246809, 39.865261, 30.370073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874788, 39.958340, 30.256332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365444, 0.666153, -0.650147,
		0.038133, -0.708585, -0.704594,
		-0.930052, 0.232698, -0.284350,
		30.595772, 40.028149, 30.171028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125013, 39.729496, 29.611193>,  <31.246809, 39.865261, 30.370073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125013, 39.729496, 29.611193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928547, 40.044758, 29.759556>,  <30.810667, 40.233913, 29.848574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928547, 40.044758, 29.759556>,  <31.125013, 39.729496, 29.611193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928547, 40.044758, 29.759556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593684, 0.614488, -0.519561,
		-0.637412, -0.034988, -0.769728,
		-0.491167, 0.788150, 0.370910,
		30.781197, 40.281204, 29.870829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004774, 40.186131, 29.027079>,  <31.125013, 39.729496, 29.611193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004774, 40.186131, 29.027079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050179, 40.385807, 29.370687>,  <31.077421, 40.505611, 29.576853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050179, 40.385807, 29.370687>,  <31.004774, 40.186131, 29.027079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050179, 40.385807, 29.370687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789403, 0.479690, -0.383068,
		-0.603289, 0.721599, -0.339613,
		0.113513, 0.499192, 0.859024,
		31.084232, 40.535564, 29.628395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097332, 41.001694, 28.966621>,  <31.004774, 40.186131, 29.027079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097332, 41.001694, 28.966621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277025, 40.880810, 29.302921>,  <31.384842, 40.808281, 29.504702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277025, 40.880810, 29.302921>,  <31.097332, 41.001694, 28.966621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277025, 40.880810, 29.302921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812639, 0.529236, -0.243980,
		-0.371222, 0.792830, 0.483338,
		0.449234, -0.302209, 0.840749,
		31.411795, 40.790146, 29.555145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336708, 41.026722, 28.732336>,  <31.097332, 41.001694, 28.966621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336708, 41.026722, 28.732336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398930, 41.086372, 29.122938>,  <30.436262, 41.122162, 29.357300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398930, 41.086372, 29.122938>,  <30.336708, 41.026722, 28.732336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398930, 41.086372, 29.122938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228366, 0.956332, -0.182423,
		-0.961068, 0.251378, 0.114708,
		0.155556, 0.149125, 0.976506,
		30.445597, 41.131111, 29.415890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334997, 41.611824, 28.477005>,  <30.336708, 41.026722, 28.732336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334997, 41.611824, 28.477005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069698, 41.372189, 28.656424>,  <29.910519, 41.228405, 28.764074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069698, 41.372189, 28.656424>,  <30.334997, 41.611824, 28.477005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069698, 41.372189, 28.656424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350546, 0.778210, 0.521063,
		-0.661227, 0.188358, -0.726155,
		-0.663247, -0.599091, 0.448546,
		29.870724, 41.192463, 28.790987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737247, 41.786674, 28.295479>,  <30.334997, 41.611824, 28.477005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737247, 41.786674, 28.295479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682615, 41.639767, 28.663492>,  <29.649836, 41.551620, 28.884300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682615, 41.639767, 28.663492>,  <29.737247, 41.786674, 28.295479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682615, 41.639767, 28.663492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413535, 0.865081, 0.283945,
		-0.900186, -0.341683, -0.270033,
		-0.136581, -0.367271, 0.920031,
		29.641642, 41.529587, 28.939501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056479, 42.342125, 28.415115>,  <29.737247, 41.786674, 28.295479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056479, 42.342125, 28.415115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310690, 42.327232, 28.723587>,  <30.463217, 42.318295, 28.908670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310690, 42.327232, 28.723587>,  <30.056479, 42.342125, 28.415115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310690, 42.327232, 28.723587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193617, 0.974605, -0.112503,
		-0.747407, 0.220812, 0.626598,
		0.635528, -0.037234, 0.771180,
		30.501348, 42.316063, 28.954941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912889, 42.843456, 29.015932>,  <30.056479, 42.342125, 28.415115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912889, 42.843456, 29.015932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305412, 42.775421, 28.979914>,  <30.540926, 42.734600, 28.958302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305412, 42.775421, 28.979914>,  <29.912889, 42.843456, 29.015932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305412, 42.775421, 28.979914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161059, 0.981910, -0.099567,
		0.105353, 0.083203, 0.990948,
		0.981306, -0.170091, -0.090047,
		30.599804, 42.724396, 28.952900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350481, 43.235931, 29.575439>,  <29.912889, 42.843456, 29.015932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350481, 43.235931, 29.575439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570761, 43.164612, 29.249264>,  <30.702929, 43.121819, 29.053558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570761, 43.164612, 29.249264>,  <30.350481, 43.235931, 29.575439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570761, 43.164612, 29.249264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156581, 0.981643, -0.108898,
		0.819886, -0.067712, 0.568509,
		0.550700, -0.178301, -0.815438,
		30.735971, 43.111122, 29.004633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621727, 43.390553, 30.301224>,  <30.350481, 43.235931, 29.575439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621727, 43.390553, 30.301224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785311, 43.614407, 30.589544>,  <30.883461, 43.748718, 30.762537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785311, 43.614407, 30.589544>,  <30.621727, 43.390553, 30.301224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785311, 43.614407, 30.589544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581067, -0.449352, 0.678560,
		0.703642, -0.696339, 0.141419,
		0.408961, 0.559638, 0.720802,
		30.907999, 43.782299, 30.805784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074196, 43.109196, 30.784685>,  <30.621727, 43.390553, 30.301224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074196, 43.109196, 30.784685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841436, 43.385750, 30.955978>,  <30.701780, 43.551682, 31.058754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841436, 43.385750, 30.955978>,  <31.074196, 43.109196, 30.784685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841436, 43.385750, 30.955978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389014, -0.699042, 0.600007,
		0.714188, 0.182554, 0.675729,
		-0.581897, 0.691386, 0.428231,
		30.666868, 43.593166, 31.084448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310759, 43.164551, 31.506372>,  <31.074196, 43.109196, 30.784685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310759, 43.164551, 31.506372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928488, 43.261215, 31.439108>,  <30.699125, 43.319214, 31.398748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928488, 43.261215, 31.439108>,  <31.310759, 43.164551, 31.506372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928488, 43.261215, 31.439108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293668, -0.741876, 0.602809,
		0.020919, 0.625476, 0.779963,
		-0.955679, 0.241660, -0.168163,
		30.641785, 43.333714, 31.388659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866440, 43.120556, 32.104912>,  <31.310759, 43.164551, 31.506372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866440, 43.120556, 32.104912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575722, 43.089756, 31.831902>,  <30.401291, 43.071278, 31.668097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575722, 43.089756, 31.831902>,  <30.866440, 43.120556, 32.104912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575722, 43.089756, 31.831902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533084, -0.563368, 0.631219,
		-0.433113, 0.822610, 0.368408,
		-0.726797, -0.076997, -0.682523,
		30.357683, 43.066658, 31.627144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257664, 43.146309, 32.536678>,  <30.866440, 43.120556, 32.104912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257664, 43.146309, 32.536678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115883, 42.976887, 32.203220>,  <30.030813, 42.875233, 32.003147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115883, 42.976887, 32.203220>,  <30.257664, 43.146309, 32.536678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115883, 42.976887, 32.203220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589816, -0.590527, 0.550813,
		-0.725589, 0.686935, -0.040504,
		-0.354454, -0.423554, -0.833645,
		30.009546, 42.849819, 31.953127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556828, 43.024002, 32.648945>,  <30.257664, 43.146309, 32.536678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556828, 43.024002, 32.648945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623571, 42.767910, 32.349010>,  <29.663618, 42.614254, 32.169048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623571, 42.767910, 32.349010>,  <29.556828, 43.024002, 32.648945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623571, 42.767910, 32.349010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661268, -0.636773, 0.396542,
		-0.731357, 0.429678, -0.529616,
		0.166860, -0.640232, -0.749840,
		29.673630, 42.575840, 32.124058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948261, 42.965324, 32.230804>,  <29.556828, 43.024002, 32.648945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948261, 42.965324, 32.230804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172480, 42.635784, 32.197212>,  <29.307011, 42.438061, 32.177055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172480, 42.635784, 32.197212>,  <28.948261, 42.965324, 32.230804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172480, 42.635784, 32.197212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767663, -0.554981, 0.320452,
		-0.310614, -0.115158, -0.943534,
		0.560547, -0.823853, -0.083982,
		29.340643, 42.388630, 32.172016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434593, 42.427608, 32.155582>,  <28.948261, 42.965324, 32.230804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434593, 42.427608, 32.155582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742445, 42.178677, 32.212673>,  <28.927156, 42.029316, 32.246929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742445, 42.178677, 32.212673>,  <28.434593, 42.427608, 32.155582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742445, 42.178677, 32.212673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635242, -0.723830, 0.269329,
		-0.064303, -0.297950, -0.952413,
		0.769632, -0.622332, 0.142726,
		28.973335, 41.991978, 32.255489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183456, 41.738152, 31.859030>,  <28.434593, 42.427608, 32.155582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183456, 41.738152, 31.859030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493439, 41.658894, 32.099091>,  <28.679428, 41.611340, 32.243126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493439, 41.658894, 32.099091>,  <28.183456, 41.738152, 31.859030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493439, 41.658894, 32.099091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437615, -0.853358, 0.283326,
		0.456005, -0.482200, -0.748026,
		0.774953, -0.198149, 0.600153,
		28.725925, 41.599449, 32.279137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447166, 41.027729, 31.741096>,  <28.183456, 41.738152, 31.859030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447166, 41.027729, 31.741096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594433, 41.118301, 32.101803>,  <28.682793, 41.172646, 32.318226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594433, 41.118301, 32.101803>,  <28.447166, 41.027729, 31.741096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594433, 41.118301, 32.101803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335522, -0.872181, 0.355986,
		0.867108, -0.433625, -0.245137,
		0.368168, 0.226429, 0.901766,
		28.704884, 41.186230, 32.372334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678747, 40.403137, 31.951969>,  <28.447166, 41.027729, 31.741096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678747, 40.403137, 31.951969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653025, 40.622280, 32.285606>,  <28.637590, 40.753765, 32.485790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653025, 40.622280, 32.285606>,  <28.678747, 40.403137, 31.951969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653025, 40.622280, 32.285606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383990, -0.785055, 0.486046,
		0.921095, -0.289028, 0.260858,
		-0.064307, 0.547861, 0.834094,
		28.633732, 40.786640, 32.535835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049435, 40.012455, 32.471581>,  <28.678747, 40.403137, 31.951969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049435, 40.012455, 32.471581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786667, 40.247772, 32.660206>,  <28.629005, 40.388962, 32.773380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786667, 40.247772, 32.660206>,  <29.049435, 40.012455, 32.471581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786667, 40.247772, 32.660206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353437, -0.792749, 0.496620,
		0.665986, 0.159573, 0.728696,
		-0.656921, 0.588290, 0.471561,
		28.589590, 40.424259, 32.801674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996391, 39.661758, 33.072819>,  <29.049435, 40.012455, 32.471581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996391, 39.661758, 33.072819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689470, 39.916916, 33.099155>,  <28.505318, 40.070011, 33.114956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689470, 39.916916, 33.099155>,  <28.996391, 39.661758, 33.072819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689470, 39.916916, 33.099155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464340, -0.623464, 0.629032,
		0.442305, 0.452086, 0.774587,
		-0.767303, 0.637896, 0.065840,
		28.459280, 40.108284, 33.118908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911577, 39.852669, 33.826752>,  <28.996391, 39.661758, 33.072819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911577, 39.852669, 33.826752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555958, 39.889023, 33.647270>,  <28.342587, 39.910835, 33.539581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555958, 39.889023, 33.647270>,  <28.911577, 39.852669, 33.826752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555958, 39.889023, 33.647270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415660, -0.571029, 0.707921,
		-0.191882, 0.815884, 0.545450,
		-0.889049, 0.090884, -0.448701,
		28.289244, 39.916286, 33.512661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425072, 39.866150, 34.388508>,  <28.911577, 39.852669, 33.826752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425072, 39.866150, 34.388508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224630, 39.777874, 34.053799>,  <28.104366, 39.724911, 33.852974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224630, 39.777874, 34.053799>,  <28.425072, 39.866150, 34.388508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224630, 39.777874, 34.053799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566200, -0.647646, 0.509875,
		-0.654456, 0.729283, 0.199585,
		-0.501103, -0.220685, -0.836776,
		28.074299, 39.711670, 33.802765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780602, 39.819107, 34.556927>,  <28.425072, 39.866150, 34.388508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780602, 39.819107, 34.556927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764021, 39.608334, 34.217369>,  <27.754072, 39.481869, 34.013634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764021, 39.608334, 34.217369>,  <27.780602, 39.819107, 34.556927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764021, 39.608334, 34.217369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423939, -0.760079, 0.492499,
		-0.904742, 0.380295, -0.191881,
		-0.041450, -0.526930, -0.848897,
		27.751587, 39.450256, 33.962700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099567, 39.348202, 34.623810>,  <27.780602, 39.819107, 34.556927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099567, 39.348202, 34.623810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327383, 39.171398, 34.346607>,  <27.464073, 39.065315, 34.180286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327383, 39.171398, 34.346607>,  <27.099567, 39.348202, 34.623810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327383, 39.171398, 34.346607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282231, -0.897009, 0.340177,
		-0.771990, 0.001842, -0.635632,
		0.569541, -0.442008, -0.693002,
		27.498245, 39.038795, 34.138706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738659, 38.745628, 34.457523>,  <27.099567, 39.348202, 34.623810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738659, 38.745628, 34.457523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107439, 38.660927, 34.327808>,  <27.328707, 38.610107, 34.249977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107439, 38.660927, 34.327808>,  <26.738659, 38.745628, 34.457523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107439, 38.660927, 34.327808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026720, -0.870084, 0.492179,
		-0.386382, -0.445101, -0.807833,
		0.921952, -0.211754, -0.324292,
		27.384024, 38.597401, 34.230522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.671047, 38.001575, 34.177025>,  <26.738659, 38.745628, 34.457523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.671047, 38.001575, 34.177025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058435, 38.072777, 34.246738>,  <27.290869, 38.115498, 34.288567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058435, 38.072777, 34.246738>,  <26.671047, 38.001575, 34.177025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058435, 38.072777, 34.246738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091876, -0.905495, 0.414292,
		0.231559, -0.385218, -0.893301,
		0.968472, 0.178006, 0.174283,
		27.348978, 38.126179, 34.299023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044731, 37.446236, 33.925007>,  <26.671047, 38.001575, 34.177025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044731, 37.446236, 33.925007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292656, 37.616127, 34.188961>,  <27.441410, 37.718060, 34.347332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292656, 37.616127, 34.188961>,  <27.044731, 37.446236, 33.925007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292656, 37.616127, 34.188961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187705, -0.896710, 0.400847,
		0.761973, -0.124586, -0.635513,
		0.619810, 0.424724, 0.659883,
		27.478600, 37.743546, 34.386925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568287, 36.981224, 33.925697>,  <27.044731, 37.446236, 33.925007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568287, 36.981224, 33.925697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592588, 37.209164, 34.253498>,  <27.607170, 37.345928, 34.450180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.592588, 37.209164, 34.253498>,  <27.568287, 36.981224, 33.925697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592588, 37.209164, 34.253498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133470, -0.818282, 0.559107,
		0.989189, 0.075410, -0.125772,
		0.060755, 0.569849, 0.819501,
		27.610815, 37.380119, 34.499348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998901, 36.619118, 34.324486>,  <27.568287, 36.981224, 33.925697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998901, 36.619118, 34.324486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877295, 36.861233, 34.618748>,  <27.804331, 37.006504, 34.795307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877295, 36.861233, 34.618748>,  <27.998901, 36.619118, 34.324486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877295, 36.861233, 34.618748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134131, -0.737323, 0.662091,
		0.943176, 0.299963, 0.142971,
		-0.304019, 0.605291, 0.735659,
		27.786089, 37.042820, 34.839447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387634, 36.494850, 34.847668>,  <27.998901, 36.619118, 34.324486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387634, 36.494850, 34.847668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076717, 36.678822, 35.019379>,  <27.890167, 36.789204, 35.122406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076717, 36.678822, 35.019379>,  <28.387634, 36.494850, 34.847668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076717, 36.678822, 35.019379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061903, -0.734933, 0.675308,
		0.626085, 0.498339, 0.599730,
		-0.777294, 0.459925, 0.429282,
		27.843529, 36.816799, 35.148163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528414, 36.682098, 35.570747>,  <28.387634, 36.494850, 34.847668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528414, 36.682098, 35.570747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134460, 36.627167, 35.528519>,  <27.898088, 36.594208, 35.503181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134460, 36.627167, 35.528519>,  <28.528414, 36.682098, 35.570747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134460, 36.627167, 35.528519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031980, -0.743149, 0.668361,
		-0.170246, 0.654881, 0.736307,
		-0.984882, -0.137333, -0.105576,
		27.838995, 36.585968, 35.496845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241894, 36.629684, 36.298817>,  <28.528414, 36.682098, 35.570747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241894, 36.629684, 36.298817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975636, 36.464329, 36.050293>,  <27.815882, 36.365116, 35.901180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975636, 36.464329, 36.050293>,  <28.241894, 36.629684, 36.298817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975636, 36.464329, 36.050293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088481, -0.782963, 0.615744,
		-0.741005, 0.464840, 0.484597,
		-0.665644, -0.413392, -0.621309,
		27.775942, 36.340313, 35.863899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839190, 37.064365, 36.303204>,  <28.241894, 36.629684, 36.298817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839190, 37.064365, 36.303204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792065, 37.047768, 36.700069>,  <28.763790, 37.037807, 36.938190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792065, 37.047768, 36.700069>,  <28.839190, 37.064365, 36.303204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792065, 37.047768, 36.700069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777171, 0.625807, -0.066108,
		-0.618163, -0.778873, -0.105974,
		-0.117809, -0.041494, 0.992169,
		28.756721, 37.035320, 36.997719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969296, 37.733620, 36.512966>,  <28.839190, 37.064365, 36.303204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969296, 37.733620, 36.512966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196125, 38.013069, 36.338448>,  <29.332224, 38.180737, 36.233738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196125, 38.013069, 36.338448>,  <28.969296, 37.733620, 36.512966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196125, 38.013069, 36.338448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717368, -0.158630, 0.678395,
		0.404732, -0.697685, -0.591125,
		0.567076, 0.698622, -0.436294,
		29.366247, 38.222656, 36.207558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645409, 37.506805, 36.326904>,  <28.969296, 37.733620, 36.512966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645409, 37.506805, 36.326904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643528, 37.898170, 36.409546>,  <29.642399, 38.132988, 36.459129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643528, 37.898170, 36.409546>,  <29.645409, 37.506805, 36.326904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643528, 37.898170, 36.409546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832889, -0.110509, 0.542295,
		0.553420, 0.174627, -0.814390,
		-0.004702, 0.978414, 0.206603,
		29.642117, 38.191696, 36.471527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353203, 37.743992, 36.315228>,  <29.645409, 37.506805, 36.326904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353203, 37.743992, 36.315228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114019, 37.974972, 36.537575>,  <29.970509, 38.113560, 36.670982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114019, 37.974972, 36.537575>,  <30.353203, 37.743992, 36.315228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114019, 37.974972, 36.537575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661126, -0.036761, 0.749374,
		0.453162, 0.815596, -0.359787,
		-0.597961, 0.577453, 0.555870,
		29.934631, 38.148209, 36.704334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615055, 38.455708, 36.442211>,  <30.353203, 37.743992, 36.315228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615055, 38.455708, 36.442211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377161, 38.308933, 36.728329>,  <30.234425, 38.220867, 36.900002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.377161, 38.308933, 36.728329>,  <30.615055, 38.455708, 36.442211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377161, 38.308933, 36.728329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687899, 0.228179, 0.689006,
		-0.416036, 0.901828, 0.116709,
		-0.594734, -0.366935, 0.715297,
		30.198740, 38.198853, 36.942917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449890, 38.956474, 37.048985>,  <30.615055, 38.455708, 36.442211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449890, 38.956474, 37.048985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414673, 38.582523, 37.186535>,  <30.393543, 38.358150, 37.269066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414673, 38.582523, 37.186535>,  <30.449890, 38.956474, 37.048985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414673, 38.582523, 37.186535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436881, 0.273999, 0.856772,
		-0.895200, 0.225664, 0.384308,
		-0.088042, -0.934880, 0.343872,
		30.388260, 38.302059, 37.289696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304586, 39.023411, 37.789795>,  <30.449890, 38.956474, 37.048985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304586, 39.023411, 37.789795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439930, 38.648979, 37.751266>,  <30.521135, 38.424320, 37.728149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439930, 38.648979, 37.751266>,  <30.304586, 39.023411, 37.789795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439930, 38.648979, 37.751266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537514, 0.108236, 0.836280,
		-0.772394, -0.334737, 0.539776,
		0.338357, -0.936075, -0.096325,
		30.541437, 38.368156, 37.722370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284754, 38.742367, 38.457603>,  <30.304586, 39.023411, 37.789795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284754, 38.742367, 38.457603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530756, 38.507851, 38.246685>,  <30.678356, 38.367142, 38.120136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.530756, 38.507851, 38.246685>,  <30.284754, 38.742367, 38.457603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530756, 38.507851, 38.246685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677079, 0.049906, 0.734216,
		-0.404146, -0.808565, 0.427655,
		0.615004, -0.586287, -0.527293,
		30.715258, 38.331966, 38.088497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509111, 38.125164, 38.955681>,  <30.284754, 38.742367, 38.457603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509111, 38.125164, 38.955681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781311, 38.164387, 38.665218>,  <30.944632, 38.187920, 38.490940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781311, 38.164387, 38.665218>,  <30.509111, 38.125164, 38.955681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781311, 38.164387, 38.665218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732005, -0.046392, 0.679718,
		0.032966, -0.994098, -0.103350,
		0.680501, 0.098060, -0.726156,
		30.985462, 38.193806, 38.447372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046150, 37.762913, 39.229980>,  <30.509111, 38.125164, 38.955681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046150, 37.762913, 39.229980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251867, 37.950771, 38.942944>,  <31.375298, 38.063488, 38.770721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251867, 37.950771, 38.942944>,  <31.046150, 37.762913, 39.229980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251867, 37.950771, 38.942944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738199, 0.183486, 0.649149,
		0.436538, -0.863577, -0.252327,
		0.514292, 0.469646, -0.717591,
		31.406155, 38.091663, 38.727665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732580, 37.500759, 39.242645>,  <31.046150, 37.762913, 39.229980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732580, 37.500759, 39.242645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737015, 37.858513, 39.063782>,  <31.739676, 38.073166, 38.956463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737015, 37.858513, 39.063782>,  <31.732580, 37.500759, 39.242645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737015, 37.858513, 39.063782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796247, 0.262612, 0.545001,
		0.604870, -0.362092, -0.709240,
		0.011086, 0.894385, -0.447161,
		31.740341, 38.126827, 38.929634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396927, 37.591148, 38.950321>,  <31.732580, 37.500759, 39.242645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396927, 37.591148, 38.950321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238449, 37.952850, 39.014019>,  <32.143364, 38.169872, 39.052238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238449, 37.952850, 39.014019>,  <32.396927, 37.591148, 38.950321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238449, 37.952850, 39.014019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647908, 0.152446, 0.746307,
		0.650575, 0.398856, -0.646271,
		-0.396191, 0.904253, 0.159245,
		32.119591, 38.224125, 39.061794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901051, 38.059589, 38.979637>,  <32.396927, 37.591148, 38.950321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901051, 38.059589, 38.979637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606224, 38.253498, 39.167988>,  <32.429329, 38.369843, 39.280998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606224, 38.253498, 39.167988>,  <32.901051, 38.059589, 38.979637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606224, 38.253498, 39.167988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643221, 0.289422, 0.708874,
		0.207360, 0.825367, -0.525139,
		-0.737068, 0.484772, 0.470879,
		32.385105, 38.398930, 39.309250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305222, 38.499336, 39.329765>,  <32.901051, 38.059589, 38.979637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305222, 38.499336, 39.329765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951843, 38.511448, 39.516788>,  <32.739815, 38.518715, 39.629002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951843, 38.511448, 39.516788>,  <33.305222, 38.499336, 39.329765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951843, 38.511448, 39.516788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456856, 0.277094, 0.845282,
		-0.103962, 0.960366, -0.258631,
		-0.883445, 0.030280, 0.467556,
		32.686810, 38.520531, 39.657055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191078, 39.177017, 39.650558>,  <33.305222, 38.499336, 39.329765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191078, 39.177017, 39.650558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922958, 38.960659, 39.853786>,  <32.762085, 38.830845, 39.975723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922958, 38.960659, 39.853786>,  <33.191078, 39.177017, 39.650558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922958, 38.960659, 39.853786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402040, 0.310772, 0.861269,
		-0.623746, 0.781574, 0.009149,
		-0.670302, -0.540891, 0.508066,
		32.721867, 38.798393, 40.006207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965359, 39.628979, 40.168636>,  <33.191078, 39.177017, 39.650558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965359, 39.628979, 40.168636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869888, 39.258392, 40.285042>,  <32.812607, 39.036041, 40.354885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869888, 39.258392, 40.285042>,  <32.965359, 39.628979, 40.168636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869888, 39.258392, 40.285042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415624, 0.173383, 0.892858,
		-0.877663, 0.334053, 0.343681,
		-0.238674, -0.926470, 0.291012,
		32.798286, 38.980450, 40.372345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500950, 39.553955, 40.882713>,  <32.965359, 39.628979, 40.168636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500950, 39.553955, 40.882713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693844, 39.204853, 40.852383>,  <32.809582, 38.995392, 40.834187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693844, 39.204853, 40.852383>,  <32.500950, 39.553955, 40.882713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693844, 39.204853, 40.852383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396544, 0.140292, 0.907233,
		-0.781153, -0.467568, 0.413739,
		0.482237, -0.872754, -0.075822,
		32.838516, 38.943027, 40.829636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548210, 39.387993, 41.633106>,  <32.500950, 39.553955, 40.882713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548210, 39.387993, 41.633106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780617, 39.133656, 41.429886>,  <32.920059, 38.981052, 41.307953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780617, 39.133656, 41.429886>,  <32.548210, 39.387993, 41.633106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780617, 39.133656, 41.429886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613212, -0.068456, 0.786947,
		-0.535157, -0.768773, 0.350136,
		0.581015, -0.635848, -0.508055,
		32.954922, 38.942902, 41.277470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666264, 38.851929, 42.080692>,  <32.548210, 39.387993, 41.633106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666264, 38.851929, 42.080692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977493, 38.849106, 41.829437>,  <33.164230, 38.847412, 41.678684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977493, 38.849106, 41.829437>,  <32.666264, 38.851929, 42.080692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977493, 38.849106, 41.829437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615142, -0.194083, 0.764154,
		-0.127302, -0.980959, -0.146670,
		0.778071, -0.007055, -0.628136,
		33.210915, 38.846989, 41.640995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953838, 38.184303, 42.003822>,  <32.666264, 38.851929, 42.080692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953838, 38.184303, 42.003822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196194, 38.500187, 41.965343>,  <33.341606, 38.689716, 41.942257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196194, 38.500187, 41.965343>,  <32.953838, 38.184303, 42.003822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196194, 38.500187, 41.965343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379346, -0.180509, 0.907476,
		0.699280, -0.586322, -0.408943,
		0.605891, 0.789711, -0.096192,
		33.377960, 38.737099, 41.936485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635258, 37.944317, 42.186707>,  <32.953838, 38.184303, 42.003822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635258, 37.944317, 42.186707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671093, 38.339771, 42.234985>,  <33.692593, 38.577045, 42.263954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671093, 38.339771, 42.234985>,  <33.635258, 37.944317, 42.186707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671093, 38.339771, 42.234985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348080, -0.144622, 0.926242,
		0.933175, -0.040965, -0.357081,
		0.089585, 0.988639, 0.120698,
		33.697968, 38.636364, 42.271194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253891, 37.913246, 42.499657>,  <33.635258, 37.944317, 42.186707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253891, 37.913246, 42.499657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064320, 38.251465, 42.597996>,  <33.950577, 38.454395, 42.656998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064320, 38.251465, 42.597996>,  <34.253891, 37.913246, 42.499657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064320, 38.251465, 42.597996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156717, -0.193744, 0.968454,
		0.866506, 0.497505, -0.040692,
		-0.473927, 0.845548, 0.245848,
		33.922142, 38.505131, 42.671749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674934, 38.386856, 42.932316>,  <34.253891, 37.913246, 42.499657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674934, 38.386856, 42.932316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294155, 38.486187, 43.004025>,  <34.065689, 38.545784, 43.047050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294155, 38.486187, 43.004025>,  <34.674934, 38.386856, 42.932316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294155, 38.486187, 43.004025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185483, 0.001661, 0.982646,
		0.243718, 0.968675, -0.047642,
		-0.951944, 0.248326, 0.179268,
		34.008572, 38.560684, 43.057804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749973, 38.667919, 43.588940>,  <34.674934, 38.386856, 42.932316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749973, 38.667919, 43.588940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354027, 38.618240, 43.561398>,  <34.116459, 38.588432, 43.544872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354027, 38.618240, 43.561398>,  <34.749973, 38.667919, 43.588940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354027, 38.618240, 43.561398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061345, -0.063319, 0.996106,
		-0.128077, 0.990235, 0.055058,
		-0.989865, -0.124201, -0.068856,
		34.057068, 38.580978, 43.540741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517273, 39.036469, 44.141102>,  <34.749973, 38.667919, 43.588940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517273, 39.036469, 44.141102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205074, 38.804379, 44.048016>,  <34.017754, 38.665123, 43.992165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205074, 38.804379, 44.048016>,  <34.517273, 39.036469, 44.141102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205074, 38.804379, 44.048016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165258, -0.167510, 0.971921,
		-0.602916, 0.797043, 0.034855,
		-0.780501, -0.580227, -0.232712,
		33.970924, 38.630310, 43.978203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954212, 39.254898, 44.535118>,  <34.517273, 39.036469, 44.141102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954212, 39.254898, 44.535118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869465, 38.879482, 44.426117>,  <33.818615, 38.654232, 44.360718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869465, 38.879482, 44.426117>,  <33.954212, 39.254898, 44.535118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869465, 38.879482, 44.426117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186922, -0.234769, 0.953910,
		-0.959255, 0.253043, -0.125693,
		-0.211872, -0.938537, -0.272503,
		33.805904, 38.597919, 44.344368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319706, 39.253170, 44.820583>,  <33.954212, 39.254898, 44.535118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319706, 39.253170, 44.820583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438332, 38.876892, 44.754677>,  <33.509506, 38.651127, 44.715134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438332, 38.876892, 44.754677>,  <33.319706, 39.253170, 44.820583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438332, 38.876892, 44.754677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072038, -0.194069, 0.978339,
		-0.952291, -0.278274, -0.125320,
		0.296567, -0.940692, -0.164764,
		33.527302, 38.594685, 44.705246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877281, 38.835079, 45.309666>,  <33.319706, 39.253170, 44.820583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877281, 38.835079, 45.309666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172588, 38.581501, 45.217510>,  <33.349773, 38.429356, 45.162216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172588, 38.581501, 45.217510>,  <32.877281, 38.835079, 45.309666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172588, 38.581501, 45.217510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085949, -0.250358, 0.964330,
		-0.669013, -0.731732, -0.130343,
		0.738264, -0.633947, -0.230385,
		33.394066, 38.391315, 45.148396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763111, 38.329556, 45.748707>,  <32.877281, 38.835079, 45.309666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763111, 38.329556, 45.748707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153191, 38.292122, 45.668488>,  <33.387238, 38.269661, 45.620358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153191, 38.292122, 45.668488>,  <32.763111, 38.329556, 45.748707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153191, 38.292122, 45.668488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180905, -0.184898, 0.965964,
		-0.127481, -0.978292, -0.163384,
		0.975204, -0.093585, -0.200549,
		33.445751, 38.264046, 45.608322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008442, 37.766830, 46.227577>,  <32.763111, 38.329556, 45.748707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008442, 37.766830, 46.227577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347240, 37.954639, 46.127861>,  <33.550522, 38.067326, 46.068031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347240, 37.954639, 46.127861>,  <33.008442, 37.766830, 46.227577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347240, 37.954639, 46.127861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310753, -0.056840, 0.948790,
		0.431306, -0.881091, -0.194048,
		0.847000, 0.469519, -0.249286,
		33.601341, 38.095493, 46.053074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495773, 37.529964, 46.727436>,  <33.008442, 37.766830, 46.227577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495773, 37.529964, 46.727436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675098, 37.847485, 46.563046>,  <33.782692, 38.037994, 46.464409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675098, 37.847485, 46.563046>,  <33.495773, 37.529964, 46.727436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675098, 37.847485, 46.563046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345701, 0.270027, 0.898653,
		0.824323, -0.544951, -0.153360,
		0.448310, 0.793797, -0.410980,
		33.809593, 38.085625, 46.439751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221363, 37.567711, 46.940220>,  <33.495773, 37.529964, 46.727436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221363, 37.567711, 46.940220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150822, 37.944302, 46.825310>,  <34.108498, 38.170254, 46.756363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150822, 37.944302, 46.825310>,  <34.221363, 37.567711, 46.940220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150822, 37.944302, 46.825310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394462, 0.334986, 0.855677,
		0.901830, 0.037585, -0.430452,
		-0.176356, 0.941473, -0.287275,
		34.097916, 38.226742, 46.739128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907467, 37.926773, 46.929600>,  <34.221363, 37.567711, 46.940220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907467, 37.926773, 46.929600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626305, 38.208515, 46.969200>,  <34.457607, 38.377560, 46.992958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626305, 38.208515, 46.969200>,  <34.907467, 37.926773, 46.929600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626305, 38.208515, 46.969200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338082, 0.208393, 0.917754,
		0.625799, 0.678564, -0.384612,
		-0.702906, 0.704360, 0.098998,
		34.415432, 38.419823, 46.998901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275642, 38.413387, 47.332943>,  <34.907467, 37.926773, 46.929600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275642, 38.413387, 47.332943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886520, 38.500847, 47.363518>,  <34.653046, 38.553322, 47.381863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886520, 38.500847, 47.363518>,  <35.275642, 38.413387, 47.332943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886520, 38.500847, 47.363518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132409, 0.254203, 0.958044,
		0.190045, 0.942111, -0.276241,
		-0.972806, 0.218648, 0.076434,
		34.594677, 38.566441, 47.386448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240719, 39.105995, 47.618813>,  <35.275642, 38.413387, 47.332943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240719, 39.105995, 47.618813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900845, 38.913116, 47.704155>,  <34.696918, 38.797390, 47.755360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900845, 38.913116, 47.704155>,  <35.240719, 39.105995, 47.618813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900845, 38.913116, 47.704155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097266, 0.254355, 0.962207,
		-0.518239, 0.838327, -0.169221,
		-0.849687, -0.482194, 0.213357,
		34.645939, 38.768459, 47.768162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856205, 39.478214, 48.107857>,  <35.240719, 39.105995, 47.618813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856205, 39.478214, 48.107857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631229, 39.148396, 48.132492>,  <34.496246, 38.950504, 48.147274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631229, 39.148396, 48.132492>,  <34.856205, 39.478214, 48.107857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631229, 39.148396, 48.132492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203504, 0.210244, 0.956234,
		-0.801405, 0.525288, -0.286047,
		-0.562437, -0.824543, 0.061592,
		34.462498, 38.901031, 48.150970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209209, 39.715435, 48.437363>,  <34.856205, 39.478214, 48.107857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209209, 39.715435, 48.437363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256783, 39.320633, 48.480595>,  <34.285324, 39.083752, 48.506535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256783, 39.320633, 48.480595>,  <34.209209, 39.715435, 48.437363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256783, 39.320633, 48.480595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029168, 0.112277, 0.993249,
		-0.992474, -0.114975, 0.042142,
		0.118930, -0.987003, 0.108079,
		34.292461, 39.024532, 48.513020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776623, 39.438343, 48.972050>,  <34.209209, 39.715435, 48.437363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776623, 39.438343, 48.972050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077503, 39.175247, 48.956181>,  <34.258030, 39.017387, 48.946659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077503, 39.175247, 48.956181>,  <33.776623, 39.438343, 48.972050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077503, 39.175247, 48.956181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114775, 0.071489, 0.990816,
		-0.648864, -0.749844, 0.129266,
		0.752198, -0.657741, -0.039677,
		34.303162, 38.977924, 48.944279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701092, 38.970840, 49.621521>,  <33.776623, 39.438343, 48.972050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701092, 38.970840, 49.621521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075935, 38.900940, 49.500668>,  <34.300842, 38.859001, 49.428158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075935, 38.900940, 49.500668>,  <33.701092, 38.970840, 49.621521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075935, 38.900940, 49.500668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297593, -0.052254, 0.953262,
		-0.182373, -0.983225, 0.003037,
		0.937112, -0.174753, -0.302131,
		34.357067, 38.848515, 49.410027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993221, 38.385067, 49.966915>,  <33.701092, 38.970840, 49.621521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993221, 38.385067, 49.966915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306641, 38.605595, 49.852299>,  <34.494690, 38.737911, 49.783527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306641, 38.605595, 49.852299>,  <33.993221, 38.385067, 49.966915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306641, 38.605595, 49.852299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346238, -0.004498, 0.938136,
		0.515923, -0.834283, -0.194411,
		0.783545, 0.551318, -0.286540,
		34.541706, 38.770988, 49.766338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570911, 38.013786, 50.143223>,  <33.993221, 38.385067, 49.966915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570911, 38.013786, 50.143223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679096, 38.397362, 50.109085>,  <34.744007, 38.627506, 50.088604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679096, 38.397362, 50.109085>,  <34.570911, 38.013786, 50.143223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679096, 38.397362, 50.109085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294454, 0.002005, 0.955664,
		0.916595, -0.283601, -0.281822,
		0.270462, 0.958940, -0.085345,
		34.760235, 38.685043, 50.083481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128502, 37.825920, 50.486595>,  <34.570911, 38.013786, 50.143223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128502, 37.825920, 50.486595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086842, 38.223724, 50.490490>,  <35.061844, 38.462406, 50.492825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086842, 38.223724, 50.490490>,  <35.128502, 37.825920, 50.486595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086842, 38.223724, 50.490490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274280, 0.019315, 0.961456,
		0.955993, 0.102807, -0.274787,
		-0.104152, 0.994514, 0.009733,
		35.055595, 38.522079, 50.493408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634010, 38.033623, 50.922325>,  <35.128502, 37.825920, 50.486595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634010, 38.033623, 50.922325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406052, 38.360142, 50.884636>,  <35.269276, 38.556053, 50.862022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406052, 38.360142, 50.884636>,  <35.634010, 38.033623, 50.922325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406052, 38.360142, 50.884636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125529, 0.199805, 0.971762,
		0.812071, 0.541977, -0.216337,
		-0.569898, 0.816296, -0.094222,
		35.235081, 38.605030, 50.856369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891697, 38.453709, 51.391991>,  <35.634010, 38.033623, 50.922325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891697, 38.453709, 51.391991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560047, 38.669388, 51.332893>,  <35.361057, 38.798794, 51.297436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560047, 38.669388, 51.332893>,  <35.891697, 38.453709, 51.391991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560047, 38.669388, 51.332893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017100, 0.288603, 0.957296,
		0.558808, 0.791187, -0.248507,
		-0.829121, 0.539194, -0.147744,
		35.311310, 38.831146, 51.288570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051918, 39.218456, 51.542458>,  <35.891697, 38.453709, 51.391991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051918, 39.218456, 51.542458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662830, 39.141220, 51.593876>,  <35.429379, 39.094879, 51.624729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662830, 39.141220, 51.593876>,  <36.051918, 39.218456, 51.542458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662830, 39.141220, 51.593876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053741, 0.351507, 0.934641,
		-0.225659, 0.916055, -0.331542,
		-0.972723, -0.193093, 0.128550,
		35.371014, 39.083294, 51.632442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031059, 39.699364, 52.013878>,  <36.051918, 39.218456, 51.542458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031059, 39.699364, 52.013878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713203, 39.458149, 52.041885>,  <35.522491, 39.313419, 52.058689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713203, 39.458149, 52.041885>,  <36.031059, 39.699364, 52.013878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713203, 39.458149, 52.041885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000261, 0.115673, 0.993287,
		-0.607087, 0.789283, -0.092076,
		-0.794635, -0.603036, 0.070017,
		35.474812, 39.277237, 52.062889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642159, 40.078205, 52.395130>,  <36.031059, 39.699364, 52.013878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642159, 40.078205, 52.395130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503059, 39.705021, 52.432354>,  <35.419598, 39.481110, 52.454689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.503059, 39.705021, 52.432354>,  <35.642159, 40.078205, 52.395130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503059, 39.705021, 52.432354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163029, 0.157910, 0.973902,
		-0.923304, 0.323505, -0.207012,
		-0.347752, -0.932957, 0.093059,
		35.398735, 39.425133, 52.460270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996197, 40.177757, 52.787479>,  <35.642159, 40.078205, 52.395130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996197, 40.177757, 52.787479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132484, 39.802517, 52.812389>,  <35.214256, 39.577374, 52.827335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132484, 39.802517, 52.812389>,  <34.996197, 40.177757, 52.787479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132484, 39.802517, 52.812389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036955, 0.052828, 0.997920,
		-0.939438, -0.342313, -0.016668,
		0.340720, -0.938100, 0.062279,
		35.234699, 39.521088, 52.831074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635365, 39.784771, 53.310055>,  <34.996197, 40.177757, 52.787479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635365, 39.784771, 53.310055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988293, 39.598621, 53.281956>,  <35.200050, 39.486931, 53.265099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988293, 39.598621, 53.281956>,  <34.635365, 39.784771, 53.310055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988293, 39.598621, 53.281956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141472, 0.119899, 0.982655,
		-0.448881, -0.876955, 0.171627,
		0.882322, -0.465375, -0.070244,
		35.252991, 39.459007, 53.260883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618824, 39.470947, 53.983185>,  <34.635365, 39.784771, 53.310055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618824, 39.470947, 53.983185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982723, 39.448418, 53.818657>,  <35.201061, 39.434898, 53.719940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982723, 39.448418, 53.818657>,  <34.618824, 39.470947, 53.983185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982723, 39.448418, 53.818657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404795, -0.099667, 0.908960,
		-0.092167, -0.993427, -0.067884,
		0.909751, -0.056297, -0.411320,
		35.255646, 39.431519, 53.695259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923328, 38.780640, 54.132809>,  <34.618824, 39.470947, 53.983185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923328, 38.780640, 54.132809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222664, 39.039383, 54.074078>,  <35.402264, 39.194630, 54.038837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222664, 39.039383, 54.074078>,  <34.923328, 38.780640, 54.132809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222664, 39.039383, 54.074078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390736, -0.251013, 0.885617,
		0.536017, -0.720112, -0.440595,
		0.748339, 0.646862, -0.146827,
		35.447166, 39.233440, 54.030029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574924, 38.453697, 54.127701>,  <34.923328, 38.780640, 54.132809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574924, 38.453697, 54.127701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632900, 38.835548, 54.231754>,  <35.667686, 39.064659, 54.294189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632900, 38.835548, 54.231754>,  <35.574924, 38.453697, 54.127701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632900, 38.835548, 54.231754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559108, -0.295937, 0.774480,
		0.816327, 0.033191, -0.576635,
		0.144941, 0.954631, 0.260139,
		35.676384, 39.121937, 54.309795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267536, 38.576157, 54.279186>,  <35.574924, 38.453697, 54.127701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267536, 38.576157, 54.279186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031754, 38.800858, 54.511387>,  <35.890285, 38.935677, 54.650707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031754, 38.800858, 54.511387>,  <36.267536, 38.576157, 54.279186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031754, 38.800858, 54.511387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509682, -0.298891, 0.806776,
		0.626713, 0.771428, -0.110131,
		-0.589453, 0.561749, 0.580503,
		35.854919, 38.969383, 54.685539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994835, 38.368366, 53.553295>,  <36.267536, 38.576157, 54.279186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994835, 38.368366, 53.553295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118919, 38.026592, 53.720009>,  <36.193371, 37.821529, 53.820038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118919, 38.026592, 53.720009>,  <35.994835, 38.368366, 53.553295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118919, 38.026592, 53.720009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239412, -0.494497, -0.835556,
		0.920028, 0.159413, -0.357960,
		0.310209, -0.854435, 0.416786,
		36.211983, 37.770260, 53.845043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547813, 37.928490, 53.041492>,  <35.994835, 38.368366, 53.553295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547813, 37.928490, 53.041492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369038, 37.674469, 53.293510>,  <36.261772, 37.522057, 53.444721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369038, 37.674469, 53.293510>,  <36.547813, 37.928490, 53.041492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369038, 37.674469, 53.293510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068558, -0.677917, -0.731935,
		0.891932, -0.370327, 0.259452,
		-0.446942, -0.635049, 0.630044,
		36.234955, 37.483955, 53.482525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845371, 37.284817, 52.990810>,  <36.547813, 37.928490, 53.041492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845371, 37.284817, 52.990810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477341, 37.213799, 53.130486>,  <36.256523, 37.171188, 53.214291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477341, 37.213799, 53.130486>,  <36.845371, 37.284817, 52.990810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477341, 37.213799, 53.130486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177736, -0.605155, -0.776014,
		0.349091, -0.776057, 0.525234,
		-0.920079, -0.177547, 0.349187,
		36.201317, 37.160534, 53.235241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829845, 36.619167, 52.932190>,  <36.845371, 37.284817, 52.990810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829845, 36.619167, 52.932190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454887, 36.757496, 52.915695>,  <36.229912, 36.840492, 52.905796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454887, 36.757496, 52.915695>,  <36.829845, 36.619167, 52.932190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454887, 36.757496, 52.915695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169280, -0.555903, -0.813828,
		-0.304365, -0.755896, 0.579640,
		-0.937393, 0.345822, -0.041239,
		36.173668, 36.861244, 52.903324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369713, 36.069664, 52.886658>,  <36.829845, 36.619167, 52.932190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369713, 36.069664, 52.886658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121441, 36.354267, 52.754894>,  <35.972477, 36.525028, 52.675838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121441, 36.354267, 52.754894>,  <36.369713, 36.069664, 52.886658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121441, 36.354267, 52.754894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311346, -0.609247, -0.729302,
		-0.719594, -0.350107, 0.599675,
		-0.620684, 0.711507, -0.329406,
		35.935234, 36.567719, 52.656071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703491, 35.726616, 52.754463>,  <36.369713, 36.069664, 52.886658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703491, 35.726616, 52.754463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704464, 36.064934, 52.541061>,  <35.705048, 36.267925, 52.413021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704464, 36.064934, 52.541061>,  <35.703491, 35.726616, 52.754463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704464, 36.064934, 52.541061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534976, -0.449639, -0.715280,
		-0.844864, 0.287152, 0.451386,
		0.002433, 0.845795, -0.533502,
		35.705193, 36.318672, 52.381012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022694, 35.837879, 52.529564>,  <35.703491, 35.726616, 52.754463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022694, 35.837879, 52.529564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270634, 36.033379, 52.283993>,  <35.419399, 36.150677, 52.136650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270634, 36.033379, 52.283993>,  <35.022694, 35.837879, 52.529564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270634, 36.033379, 52.283993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392657, -0.484192, -0.781907,
		-0.679413, 0.725731, -0.108219,
		0.619854, 0.488745, -0.613930,
		35.456589, 36.180004, 52.099815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619038, 36.001602, 51.951504>,  <35.022694, 35.837879, 52.529564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619038, 36.001602, 51.951504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982792, 36.072514, 51.800983>,  <35.201042, 36.115059, 51.710670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982792, 36.072514, 51.800983>,  <34.619038, 36.001602, 51.951504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982792, 36.072514, 51.800983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312933, -0.304421, -0.899667,
		-0.274041, 0.935896, -0.221360,
		0.909381, 0.177275, -0.376297,
		35.255608, 36.125694, 51.688095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589912, 36.394657, 51.374001>,  <34.619038, 36.001602, 51.951504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589912, 36.394657, 51.374001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939598, 36.204021, 51.336880>,  <35.149410, 36.089642, 51.314606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939598, 36.204021, 51.336880>,  <34.589912, 36.394657, 51.374001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939598, 36.204021, 51.336880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231355, -0.240828, -0.942590,
		0.426879, 0.845496, -0.320797,
		0.874213, -0.476590, -0.092806,
		35.201862, 36.061043, 51.309036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880695, 36.539963, 50.693535>,  <34.589912, 36.394657, 51.374001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880695, 36.539963, 50.693535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105591, 36.232254, 50.814926>,  <35.240528, 36.047626, 50.887760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105591, 36.232254, 50.814926>,  <34.880695, 36.539963, 50.693535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105591, 36.232254, 50.814926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075336, -0.317808, -0.945157,
		0.823536, 0.554267, -0.120730,
		0.562239, -0.769276, 0.303482,
		35.274261, 36.001472, 50.905972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337936, 36.455193, 50.174805>,  <34.880695, 36.539963, 50.693535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337936, 36.455193, 50.174805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400314, 36.117451, 50.379841>,  <35.437740, 35.914806, 50.502861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400314, 36.117451, 50.379841>,  <35.337936, 36.455193, 50.174805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400314, 36.117451, 50.379841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339909, -0.441370, -0.830454,
		0.927440, 0.303734, 0.218177,
		0.155941, -0.844357, 0.512586,
		35.447098, 35.864143, 50.533615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082069, 36.183155, 50.066566>,  <35.337936, 36.455193, 50.174805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082069, 36.183155, 50.066566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817005, 35.894615, 50.147106>,  <35.657967, 35.721493, 50.195431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817005, 35.894615, 50.147106>,  <36.082069, 36.183155, 50.066566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817005, 35.894615, 50.147106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289769, -0.494864, -0.819233,
		0.690594, -0.484525, 0.536950,
		-0.662656, -0.721349, 0.201350,
		35.618210, 35.678211, 50.207512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500626, 35.569134, 50.001431>,  <36.082069, 36.183155, 50.066566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500626, 35.569134, 50.001431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115150, 35.465855, 49.974174>,  <35.883865, 35.403889, 49.957821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115150, 35.465855, 49.974174>,  <36.500626, 35.569134, 50.001431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115150, 35.465855, 49.974174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187391, -0.472095, -0.861401,
		0.190241, -0.842889, 0.503335,
		-0.963687, -0.258194, -0.068138,
		35.826046, 35.388397, 49.953732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482750, 34.851967, 49.804111>,  <36.500626, 35.569134, 50.001431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482750, 34.851967, 49.804111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115459, 34.969711, 49.698120>,  <35.895084, 35.040359, 49.634525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115459, 34.969711, 49.698120>,  <36.482750, 34.851967, 49.804111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115459, 34.969711, 49.698120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054293, -0.569169, -0.820426,
		-0.392321, -0.767722, 0.506643,
		-0.918225, 0.294363, -0.264979,
		35.839993, 35.058022, 49.618626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140678, 34.224533, 49.452751>,  <36.482750, 34.851967, 49.804111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140678, 34.224533, 49.452751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953087, 34.557217, 49.333878>,  <35.840530, 34.756828, 49.262554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953087, 34.557217, 49.333878>,  <36.140678, 34.224533, 49.452751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953087, 34.557217, 49.333878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057997, -0.364755, -0.929295,
		-0.881302, -0.418587, 0.219300,
		-0.468981, 0.831708, -0.297183,
		35.812393, 34.806728, 49.244724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590481, 34.008980, 49.191490>,  <36.140678, 34.224533, 49.452751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590481, 34.008980, 49.191490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622070, 34.367012, 49.015949>,  <35.641022, 34.581833, 48.910625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622070, 34.367012, 49.015949>,  <35.590481, 34.008980, 49.191490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622070, 34.367012, 49.015949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109669, -0.429757, -0.896260,
		-0.990826, 0.118907, 0.064224,
		0.078971, 0.895081, -0.438855,
		35.645763, 34.635536, 48.884293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094723, 33.978165, 48.593895>,  <35.590481, 34.008980, 49.191490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094723, 33.978165, 48.593895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298008, 34.307629, 48.493256>,  <35.419979, 34.505306, 48.432873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298008, 34.307629, 48.493256>,  <35.094723, 33.978165, 48.593895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298008, 34.307629, 48.493256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296999, -0.106599, -0.948909,
		-0.808401, 0.556970, 0.190453,
		0.508212, 0.823663, -0.251594,
		35.450470, 34.554729, 48.417778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566956, 34.343006, 48.325863>,  <35.094723, 33.978165, 48.593895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566956, 34.343006, 48.325863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900845, 34.502090, 48.173515>,  <35.101177, 34.597542, 48.082108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900845, 34.502090, 48.173515>,  <34.566956, 34.343006, 48.325863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900845, 34.502090, 48.173515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324399, -0.203737, -0.923719,
		-0.444968, 0.894605, -0.041048,
		0.834727, 0.397709, -0.380865,
		35.151264, 34.621403, 48.059258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432854, 34.776390, 47.850735>,  <34.566956, 34.343006, 48.325863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432854, 34.776390, 47.850735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802814, 34.694565, 47.722538>,  <35.024792, 34.645470, 47.645618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802814, 34.694565, 47.722538>,  <34.432854, 34.776390, 47.850735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802814, 34.694565, 47.722538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344675, -0.095268, -0.933875,
		0.160505, 0.974206, -0.158621,
		0.924899, -0.204564, -0.320494,
		35.080284, 34.633194, 47.626389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483871, 35.195339, 47.250374>,  <34.432854, 34.776390, 47.850735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483871, 35.195339, 47.250374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767178, 34.913803, 47.228554>,  <34.937160, 34.744881, 47.215462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767178, 34.913803, 47.228554>,  <34.483871, 35.195339, 47.250374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767178, 34.913803, 47.228554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222871, -0.149614, -0.963299,
		0.669843, 0.694428, -0.262831,
		0.708265, -0.703836, -0.054550,
		34.979656, 34.702652, 47.212189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868198, 35.360863, 46.644012>,  <34.483871, 35.195339, 47.250374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868198, 35.360863, 46.644012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959473, 34.976101, 46.704227>,  <35.014236, 34.745243, 46.740356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959473, 34.976101, 46.704227>,  <34.868198, 35.360863, 46.644012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959473, 34.976101, 46.704227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189028, -0.195441, -0.962326,
		0.955091, 0.191137, -0.226425,
		0.228189, -0.961909, 0.150534,
		35.027927, 34.687527, 46.749386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259628, 35.019516, 46.023003>,  <34.868198, 35.360863, 46.644012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259628, 35.019516, 46.023003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115696, 34.685894, 46.190277>,  <35.029335, 34.485722, 46.290642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115696, 34.685894, 46.190277>,  <35.259628, 35.019516, 46.023003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115696, 34.685894, 46.190277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266730, -0.337543, -0.902729,
		0.894078, -0.436373, -0.101009,
		-0.359831, -0.834053, 0.418184,
		35.007748, 34.435677, 46.315731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492119, 34.452484, 45.569912>,  <35.259628, 35.019516, 46.023003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492119, 34.452484, 45.569912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163811, 34.338814, 45.768135>,  <34.966824, 34.270611, 45.887070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163811, 34.338814, 45.768135>,  <35.492119, 34.452484, 45.569912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163811, 34.338814, 45.768135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493358, -0.084677, -0.865695,
		0.287977, -0.955024, -0.070703,
		-0.820773, -0.284182, 0.495554,
		34.917580, 34.253559, 45.916801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118786, 33.992466, 45.136776>,  <35.492119, 34.452484, 45.569912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118786, 33.992466, 45.136776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837349, 34.031788, 45.418285>,  <34.668488, 34.055382, 45.587193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837349, 34.031788, 45.418285>,  <35.118786, 33.992466, 45.136776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837349, 34.031788, 45.418285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698480, -0.277867, -0.659482,
		0.130726, -0.955576, 0.264168,
		-0.703589, 0.098304, 0.703775,
		34.626274, 34.061279, 45.629417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734398, 33.370441, 45.156033>,  <35.118786, 33.992466, 45.136776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734398, 33.370441, 45.156033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519329, 33.690617, 45.262016>,  <34.390289, 33.882721, 45.325607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519329, 33.690617, 45.262016>,  <34.734398, 33.370441, 45.156033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519329, 33.690617, 45.262016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620903, -0.163283, -0.766693,
		-0.570429, -0.576743, 0.584789,
		-0.537671, 0.800441, 0.264960,
		34.358028, 33.930748, 45.341503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066196, 33.191628, 44.822617>,  <34.734398, 33.370441, 45.156033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066196, 33.191628, 44.822617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985512, 33.562958, 44.947529>,  <33.937103, 33.785755, 45.022476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985512, 33.562958, 44.947529>,  <34.066196, 33.191628, 44.822617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985512, 33.562958, 44.947529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701493, 0.085579, -0.707520,
		-0.683536, -0.361773, 0.633955,
		-0.201708, 0.928330, 0.312277,
		33.924999, 33.841457, 45.041210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378395, 33.256142, 44.944744>,  <34.066196, 33.191628, 44.822617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378395, 33.256142, 44.944744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490795, 33.638718, 44.913074>,  <33.558235, 33.868263, 44.894073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490795, 33.638718, 44.913074>,  <33.378395, 33.256142, 44.944744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490795, 33.638718, 44.913074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761471, 0.171991, -0.624965,
		-0.584122, 0.235904, 0.776628,
		0.281005, 0.956435, -0.079170,
		33.575096, 33.925648, 44.889324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706303, 33.713898, 44.967770>,  <33.378395, 33.256142, 44.944744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706303, 33.713898, 44.967770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992867, 33.921955, 44.781776>,  <33.164803, 34.046791, 44.670181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992867, 33.921955, 44.781776>,  <32.706303, 33.713898, 44.967770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992867, 33.921955, 44.781776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665327, 0.308724, -0.679728,
		-0.210003, 0.796330, 0.567237,
		0.716407, 0.520142, -0.464987,
		33.207790, 34.077999, 44.642281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394787, 34.261436, 44.790455>,  <32.706303, 33.713898, 44.967770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394787, 34.261436, 44.790455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722363, 34.294685, 44.563320>,  <32.918907, 34.314636, 44.427040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722363, 34.294685, 44.563320>,  <32.394787, 34.261436, 44.790455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722363, 34.294685, 44.563320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540725, 0.443230, -0.714958,
		0.192250, 0.892546, 0.407924,
		0.818936, 0.083124, -0.567832,
		32.968044, 34.319622, 44.392971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446270, 35.005836, 44.558792>,  <32.394787, 34.261436, 44.790455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446270, 35.005836, 44.558792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642017, 34.786812, 44.287296>,  <32.759468, 34.655396, 44.124397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.642017, 34.786812, 44.287296>,  <32.446270, 35.005836, 44.558792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642017, 34.786812, 44.287296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462012, 0.497319, -0.734315,
		0.739636, 0.672939, -0.009608,
		0.489371, -0.547565, -0.678741,
		32.788830, 34.622543, 44.083675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609119, 35.448849, 43.888588>,  <32.446270, 35.005836, 44.558792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609119, 35.448849, 43.888588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684631, 35.092960, 43.722328>,  <32.729939, 34.879429, 43.622570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684631, 35.092960, 43.722328>,  <32.609119, 35.448849, 43.888588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684631, 35.092960, 43.722328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595554, 0.232820, -0.768837,
		0.780820, 0.392681, -0.485923,
		0.188776, -0.889717, -0.415653,
		32.741264, 34.826046, 43.597633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863720, 35.549480, 43.163818>,  <32.609119, 35.448849, 43.888588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863720, 35.549480, 43.163818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707188, 35.181908, 43.183552>,  <32.613270, 34.961365, 43.195393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707188, 35.181908, 43.183552>,  <32.863720, 35.549480, 43.163818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707188, 35.181908, 43.183552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499527, 0.167090, -0.850031,
		0.772874, -0.357285, -0.524416,
		-0.391328, -0.918928, 0.049334,
		32.589790, 34.906231, 43.198353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908909, 35.424580, 42.493271>,  <32.863720, 35.549480, 43.163818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908909, 35.424580, 42.493271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655788, 35.166531, 42.664562>,  <32.503918, 35.011700, 42.767338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655788, 35.166531, 42.664562>,  <32.908909, 35.424580, 42.493271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655788, 35.166531, 42.664562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523628, -0.050888, -0.850426,
		0.570421, -0.762383, -0.305602,
		-0.632799, -0.645123, 0.428232,
		32.465950, 34.972996, 42.793034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950531, 34.796787, 42.156742>,  <32.908909, 35.424580, 42.493271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950531, 34.796787, 42.156742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584160, 34.837555, 42.312016>,  <32.364338, 34.862015, 42.405178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584160, 34.837555, 42.312016>,  <32.950531, 34.796787, 42.156742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584160, 34.837555, 42.312016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399255, -0.329808, -0.855466,
		0.040843, -0.938531, 0.342771,
		-0.915930, 0.101913, 0.388184,
		32.309380, 34.868130, 42.428471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524426, 34.424309, 41.698132>,  <32.950531, 34.796787, 42.156742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524426, 34.424309, 41.698132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251141, 34.638538, 41.896679>,  <32.087170, 34.767075, 42.015808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251141, 34.638538, 41.896679>,  <32.524426, 34.424309, 41.698132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251141, 34.638538, 41.896679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602673, -0.029750, -0.797434,
		-0.412315, -0.843966, 0.343099,
		-0.683214, 0.535570, 0.496370,
		32.046177, 34.799210, 42.045589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879066, 34.031967, 41.606216>,  <32.524426, 34.424309, 41.698132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879066, 34.031967, 41.606216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751511, 34.379890, 41.756813>,  <31.674978, 34.588646, 41.847172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751511, 34.379890, 41.756813>,  <31.879066, 34.031967, 41.606216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751511, 34.379890, 41.756813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414999, 0.228990, -0.880534,
		-0.852107, -0.437035, 0.287946,
		-0.318888, 0.869807, 0.376493,
		31.655844, 34.640831, 41.869762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158466, 34.039417, 41.423904>,  <31.879066, 34.031967, 41.606216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158466, 34.039417, 41.423904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270067, 34.416100, 41.499107>,  <31.337027, 34.642109, 41.544231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270067, 34.416100, 41.499107>,  <31.158466, 34.039417, 41.423904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270067, 34.416100, 41.499107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557562, 0.318262, -0.766703,
		-0.781846, 0.109084, 0.613855,
		0.279002, 0.941706, 0.188011,
		31.353767, 34.698612, 41.555511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559282, 34.429317, 41.378719>,  <31.158466, 34.039417, 41.423904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559282, 34.429317, 41.378719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850464, 34.700462, 41.337570>,  <31.025173, 34.863152, 41.312881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850464, 34.700462, 41.337570>,  <30.559282, 34.429317, 41.378719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850464, 34.700462, 41.337570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428261, 0.332381, -0.840306,
		-0.535420, 0.655761, 0.532261,
		0.727954, 0.677864, -0.102874,
		31.068850, 34.903820, 41.306709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309292, 34.996845, 41.155182>,  <30.559282, 34.429317, 41.378719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309292, 34.996845, 41.155182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678375, 35.099045, 41.039711>,  <30.899824, 35.160362, 40.970428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678375, 35.099045, 41.039711>,  <30.309292, 34.996845, 41.155182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678375, 35.099045, 41.039711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375634, 0.427541, -0.822258,
		-0.086664, 0.867139, 0.490469,
		0.922707, 0.255497, -0.288674,
		30.955187, 35.175694, 40.953110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267534, 35.709309, 40.936226>,  <30.309292, 34.996845, 41.155182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267534, 35.709309, 40.936226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598316, 35.560223, 40.767830>,  <30.796785, 35.470772, 40.666794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598316, 35.560223, 40.767830>,  <30.267534, 35.709309, 40.936226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598316, 35.560223, 40.767830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249422, 0.427862, -0.868748,
		0.503920, 0.823418, 0.260859,
		0.826954, -0.372715, -0.420987,
		30.846403, 35.448406, 40.641533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653831, 36.269131, 40.567719>,  <30.267534, 35.709309, 40.936226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653831, 36.269131, 40.567719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743713, 35.919762, 40.394909>,  <30.797642, 35.710140, 40.291222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743713, 35.919762, 40.394909>,  <30.653831, 36.269131, 40.567719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743713, 35.919762, 40.394909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104069, 0.419316, -0.901856,
		0.968854, 0.247610, 0.003325,
		0.224703, -0.873421, -0.432024,
		30.811125, 35.657734, 40.265301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209919, 36.490105, 40.094761>,  <30.653831, 36.269131, 40.567719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209919, 36.490105, 40.094761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101044, 36.131382, 39.955242>,  <31.035719, 35.916149, 39.871532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101044, 36.131382, 39.955242>,  <31.209919, 36.490105, 40.094761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101044, 36.131382, 39.955242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093394, 0.385392, -0.918015,
		0.957702, -0.217295, -0.188654,
		-0.272186, -0.896803, -0.348796,
		31.019388, 35.862343, 39.850605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657423, 36.260880, 39.489986>,  <31.209919, 36.490105, 40.094761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657423, 36.260880, 39.489986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315956, 36.053341, 39.471882>,  <31.111076, 35.928818, 39.461021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315956, 36.053341, 39.471882>,  <31.657423, 36.260880, 39.489986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315956, 36.053341, 39.471882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046745, 0.162874, -0.985539,
		0.518718, -0.839206, -0.163294,
		-0.853666, -0.518850, -0.045257,
		31.059856, 35.897686, 39.458305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714155, 36.010639, 38.804752>,  <31.657423, 36.260880, 39.489986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714155, 36.010639, 38.804752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331743, 35.972961, 38.915844>,  <31.102297, 35.950356, 38.982498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331743, 35.972961, 38.915844>,  <31.714155, 36.010639, 38.804752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331743, 35.972961, 38.915844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288390, 0.129954, -0.948653,
		0.053260, -0.987036, -0.151403,
		-0.956031, -0.094188, 0.277730,
		31.044933, 35.944702, 38.999165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975163, 35.445423, 39.190170>,  <31.714155, 36.010639, 38.804752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975163, 35.445423, 39.190170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031315, 35.614799, 38.832180>,  <32.065006, 35.716427, 38.617386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031315, 35.614799, 38.832180>,  <31.975163, 35.445423, 39.190170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031315, 35.614799, 38.832180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867437, -0.383193, -0.317360,
		-0.477334, 0.820889, 0.313518,
		0.140379, 0.423444, -0.894980,
		32.073429, 35.741833, 38.563686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576225, 35.808186, 39.409039>,  <31.975163, 35.445423, 39.190170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576225, 35.808186, 39.409039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859455, 35.864300, 39.132214>,  <33.029392, 35.897968, 38.966118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859455, 35.864300, 39.132214>,  <32.576225, 35.808186, 39.409039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859455, 35.864300, 39.132214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706138, -0.140714, 0.693951,
		-0.000030, -0.980061, -0.198699,
		0.708074, 0.140288, -0.692063,
		33.071877, 35.906387, 38.924595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071651, 35.206493, 39.425938>,  <32.576225, 35.808186, 39.409039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071651, 35.206493, 39.425938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264561, 35.521130, 39.271702>,  <33.380306, 35.709911, 39.179161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264561, 35.521130, 39.271702>,  <33.071651, 35.206493, 39.425938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264561, 35.521130, 39.271702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759492, -0.156089, 0.631513,
		0.436557, -0.597418, -0.672688,
		0.482276, 0.786593, -0.385592,
		33.409245, 35.757107, 39.156025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713863, 34.979130, 39.360905>,  <33.071651, 35.206493, 39.425938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713863, 34.979130, 39.360905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738899, 35.378231, 39.370537>,  <33.753922, 35.617691, 39.376316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738899, 35.378231, 39.370537>,  <33.713863, 34.979130, 39.360905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738899, 35.378231, 39.370537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812769, -0.064963, 0.578954,
		0.579214, -0.016667, -0.815005,
		0.062594, 0.997748, 0.024081,
		33.757679, 35.677555, 39.377762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464470, 35.099525, 39.319790>,  <33.713863, 34.979130, 39.360905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464470, 35.099525, 39.319790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308311, 35.439655, 39.460949>,  <34.214619, 35.643734, 39.545643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308311, 35.439655, 39.460949>,  <34.464470, 35.099525, 39.319790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308311, 35.439655, 39.460949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744192, 0.065799, 0.664717,
		0.542006, 0.522126, -0.658494,
		-0.390394, 0.850326, 0.352899,
		34.191193, 35.694752, 39.566818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025108, 35.376480, 39.566814>,  <34.464470, 35.099525, 39.319790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025108, 35.376480, 39.566814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735344, 35.583622, 39.748825>,  <34.561485, 35.707909, 39.858032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735344, 35.583622, 39.748825>,  <35.025108, 35.376480, 39.566814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735344, 35.583622, 39.748825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645116, 0.276565, 0.712276,
		0.243013, 0.809527, -0.534425,
		-0.724410, 0.517859, 0.455031,
		34.518021, 35.738979, 39.885334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311951, 36.004795, 39.775787>,  <35.025108, 35.376480, 39.566814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311951, 36.004795, 39.775787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000549, 35.942009, 40.018867>,  <34.813709, 35.904339, 40.164715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000549, 35.942009, 40.018867>,  <35.311951, 36.004795, 39.775787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000549, 35.942009, 40.018867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584291, 0.172352, 0.793032,
		-0.229215, 0.972449, -0.042465,
		-0.778502, -0.156963, 0.607699,
		34.766998, 35.894920, 40.201176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471531, 36.515900, 40.205093>,  <35.311951, 36.004795, 39.775787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471531, 36.515900, 40.205093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218647, 36.254932, 40.372265>,  <35.066917, 36.098354, 40.472569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218647, 36.254932, 40.372265>,  <35.471531, 36.515900, 40.205093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218647, 36.254932, 40.372265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566347, -0.021035, 0.823899,
		-0.528732, 0.757571, 0.382791,
		-0.632213, -0.652414, 0.417926,
		35.028984, 36.059208, 40.497643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600700, 36.610703, 40.944901>,  <35.471531, 36.515900, 40.205093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600700, 36.610703, 40.944901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376038, 36.280148, 40.928768>,  <35.241238, 36.081814, 40.919090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376038, 36.280148, 40.928768>,  <35.600700, 36.610703, 40.944901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376038, 36.280148, 40.928768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383348, -0.303123, 0.872446,
		-0.733199, 0.474559, 0.487044,
		-0.561661, -0.826384, -0.040328,
		35.207539, 36.032234, 40.916668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336590, 36.502941, 41.560329>,  <35.600700, 36.610703, 40.944901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336590, 36.502941, 41.560329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365692, 36.138466, 41.398125>,  <35.383152, 35.919781, 41.300804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365692, 36.138466, 41.398125>,  <35.336590, 36.502941, 41.560329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365692, 36.138466, 41.398125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244982, -0.377801, 0.892889,
		-0.966794, -0.164306, 0.195738,
		0.072757, -0.911192, -0.405507,
		35.387520, 35.865108, 41.276474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169033, 36.076519, 42.089783>,  <35.336590, 36.502941, 41.560329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169033, 36.076519, 42.089783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344688, 35.808357, 41.850544>,  <35.450081, 35.647461, 41.707001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344688, 35.808357, 41.850544>,  <35.169033, 36.076519, 42.089783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344688, 35.808357, 41.850544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410564, -0.442397, 0.797322,
		-0.799122, -0.595691, 0.080969,
		0.439137, -0.670401, -0.598098,
		35.476429, 35.607239, 41.671116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975616, 35.348545, 42.351112>,  <35.169033, 36.076519, 42.089783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975616, 35.348545, 42.351112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315083, 35.311863, 42.142746>,  <35.518764, 35.289852, 42.017727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315083, 35.311863, 42.142746>,  <34.975616, 35.348545, 42.351112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315083, 35.311863, 42.142746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426026, -0.465157, 0.775971,
		-0.313469, -0.880465, -0.355694,
		0.848669, -0.091708, -0.520914,
		35.569683, 35.284351, 41.986473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192867, 34.634384, 42.510784>,  <34.975616, 35.348545, 42.351112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192867, 34.634384, 42.510784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496792, 34.859467, 42.380527>,  <35.679146, 34.994514, 42.302376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496792, 34.859467, 42.380527>,  <35.192867, 34.634384, 42.510784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496792, 34.859467, 42.380527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582901, -0.367794, 0.724537,
		0.287934, -0.740330, -0.607458,
		0.759816, 0.562707, -0.325639,
		35.724735, 35.028278, 42.282837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719189, 34.170757, 42.336143>,  <35.192867, 34.634384, 42.510784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719189, 34.170757, 42.336143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866257, 34.531754, 42.425880>,  <35.954498, 34.748352, 42.479725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866257, 34.531754, 42.425880>,  <35.719189, 34.170757, 42.336143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866257, 34.531754, 42.425880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573804, -0.410007, 0.708973,
		0.731823, -0.131940, -0.668600,
		0.367673, 0.902489, 0.224345,
		35.976559, 34.802502, 42.493183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485081, 34.127583, 42.288929>,  <35.719189, 34.170757, 42.336143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485081, 34.127583, 42.288929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392059, 34.437950, 42.523491>,  <36.336246, 34.624172, 42.664227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392059, 34.437950, 42.523491>,  <36.485081, 34.127583, 42.288929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392059, 34.437950, 42.523491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588660, -0.367662, 0.719934,
		0.774209, 0.512613, -0.371253,
		-0.232552, 0.775921, 0.586401,
		36.322292, 34.670727, 42.699409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171291, 34.293224, 42.605793>,  <36.485081, 34.127583, 42.288929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171291, 34.293224, 42.605793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884201, 34.438686, 42.843323>,  <36.711948, 34.525963, 42.985840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884201, 34.438686, 42.843323>,  <37.171291, 34.293224, 42.605793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884201, 34.438686, 42.843323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458588, -0.394878, 0.796096,
		0.523993, 0.843698, 0.116645,
		-0.717725, 0.363656, 0.593823,
		36.668884, 34.547783, 43.021469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587685, 34.542435, 43.192818>,  <37.171291, 34.293224, 42.605793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587685, 34.542435, 43.192818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215481, 34.527225, 43.338531>,  <36.992157, 34.518101, 43.425961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215481, 34.527225, 43.338531>,  <37.587685, 34.542435, 43.192818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215481, 34.527225, 43.338531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362295, -0.241594, 0.900208,
		0.053780, 0.969632, 0.238582,
		-0.930511, -0.038023, 0.364286,
		36.936329, 34.515820, 43.447819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620770, 34.820305, 43.866692>,  <37.587685, 34.542435, 43.192818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620770, 34.820305, 43.866692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274300, 34.620770, 43.878719>,  <37.066418, 34.501049, 43.885937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274300, 34.620770, 43.878719>,  <37.620770, 34.820305, 43.866692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274300, 34.620770, 43.878719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257342, -0.393650, 0.882505,
		-0.428395, 0.772138, 0.469341,
		-0.866172, -0.498841, 0.030066,
		37.014446, 34.471119, 43.887737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353100, 34.923870, 44.631290>,  <37.620770, 34.820305, 43.866692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353100, 34.923870, 44.631290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145988, 34.614822, 44.484337>,  <37.021721, 34.429394, 44.396164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145988, 34.614822, 44.484337>,  <37.353100, 34.923870, 44.631290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145988, 34.614822, 44.484337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154286, -0.338054, 0.928394,
		-0.841490, 0.537381, 0.055832,
		-0.517775, -0.772620, -0.367380,
		36.990658, 34.383038, 44.374123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612442, 35.007469, 44.806992>,  <37.353100, 34.923870, 44.631290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612442, 35.007469, 44.806992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689007, 34.623272, 44.726189>,  <36.734947, 34.392754, 44.677708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689007, 34.623272, 44.726189>,  <36.612442, 35.007469, 44.806992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689007, 34.623272, 44.726189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284217, -0.251233, 0.925258,
		-0.939458, -0.119693, -0.321079,
		0.191413, -0.960498, -0.202004,
		36.746429, 34.335121, 44.665588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289082, 34.657875, 45.324825>,  <36.612442, 35.007469, 44.806992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289082, 34.657875, 45.324825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527317, 34.362427, 45.198521>,  <36.670258, 34.185158, 45.122738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527317, 34.362427, 45.198521>,  <36.289082, 34.657875, 45.324825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527317, 34.362427, 45.198521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070905, -0.343210, 0.936578,
		-0.800151, -0.580208, -0.152042,
		0.595593, -0.738624, -0.315759,
		36.705994, 34.140839, 45.103794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147327, 33.959270, 45.590401>,  <36.289082, 34.657875, 45.324825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147327, 33.959270, 45.590401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538879, 33.990566, 45.514858>,  <36.773811, 34.009342, 45.469532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538879, 33.990566, 45.514858>,  <36.147327, 33.959270, 45.590401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538879, 33.990566, 45.514858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196964, -0.113654, 0.973801,
		0.054726, -0.990435, -0.126664,
		0.978882, 0.078240, -0.188861,
		36.832542, 34.014038, 45.458199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476337, 33.642483, 46.114113>,  <36.147327, 33.959270, 45.590401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476337, 33.642483, 46.114113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789799, 33.856026, 45.987064>,  <36.977875, 33.984150, 45.910835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789799, 33.856026, 45.987064>,  <36.476337, 33.642483, 46.114113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789799, 33.856026, 45.987064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276182, 0.158569, 0.947934,
		0.556426, -0.830574, -0.023179,
		0.783654, 0.533857, -0.317622,
		37.024895, 34.016182, 45.891777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011242, 33.399956, 46.520645>,  <36.476337, 33.642483, 46.114113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011242, 33.399956, 46.520645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147865, 33.749809, 46.383038>,  <37.229839, 33.959721, 46.300472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147865, 33.749809, 46.383038>,  <37.011242, 33.399956, 46.520645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147865, 33.749809, 46.383038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287444, 0.251281, 0.924248,
		0.894825, -0.414574, -0.165580,
		0.341562, 0.874635, -0.344019,
		37.250336, 34.012199, 46.279831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747440, 33.535286, 46.664833>,  <37.011242, 33.399956, 46.520645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747440, 33.535286, 46.664833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593487, 33.898472, 46.598537>,  <37.501114, 34.116383, 46.558762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593487, 33.898472, 46.598537>,  <37.747440, 33.535286, 46.664833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593487, 33.898472, 46.598537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364151, 0.314388, 0.876672,
		0.848090, 0.277067, -0.451639,
		-0.384887, 0.907962, -0.165735,
		37.478020, 34.170860, 46.548817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244904, 34.062386, 46.905991>,  <37.747440, 33.535286, 46.664833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244904, 34.062386, 46.905991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885265, 34.237343, 46.913166>,  <37.669483, 34.342316, 46.917469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885265, 34.237343, 46.913166>,  <38.244904, 34.062386, 46.905991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885265, 34.237343, 46.913166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305214, 0.596968, 0.741940,
		0.313810, 0.672547, -0.670227,
		-0.899093, 0.437391, 0.017936,
		37.615536, 34.368561, 46.918549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281521, 34.844543, 46.855042>,  <38.244904, 34.062386, 46.905991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281521, 34.844543, 46.855042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951641, 34.735367, 47.053181>,  <37.753712, 34.669861, 47.172066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951641, 34.735367, 47.053181>,  <38.281521, 34.844543, 46.855042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951641, 34.735367, 47.053181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298489, 0.533880, 0.791124,
		-0.480390, 0.800296, -0.358820,
		-0.824700, -0.272944, 0.495350,
		37.704231, 34.653484, 47.201786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870777, 35.457470, 47.119892>,  <38.281521, 34.844543, 46.855042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870777, 35.457470, 47.119892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732338, 35.156731, 47.344368>,  <37.649273, 34.976288, 47.479053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732338, 35.156731, 47.344368>,  <37.870777, 35.457470, 47.119892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732338, 35.156731, 47.344368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258195, 0.498732, 0.827406,
		-0.901970, 0.431264, 0.021512,
		-0.346102, -0.751850, 0.561191,
		37.628506, 34.931175, 47.512726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478119, 35.798019, 47.606274>,  <37.870777, 35.457470, 47.119892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478119, 35.798019, 47.606274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579304, 35.443409, 47.761230>,  <37.640015, 35.230640, 47.854206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579304, 35.443409, 47.761230>,  <37.478119, 35.798019, 47.606274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579304, 35.443409, 47.761230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315254, 0.454094, 0.833315,
		-0.914671, -0.088673, 0.394352,
		0.252965, -0.886530, 0.387392,
		37.655193, 35.177448, 47.877449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167023, 35.745552, 48.288265>,  <37.478119, 35.798019, 47.606274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167023, 35.745552, 48.288265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447235, 35.461647, 48.317894>,  <37.615364, 35.291302, 48.335670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447235, 35.461647, 48.317894>,  <37.167023, 35.745552, 48.288265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447235, 35.461647, 48.317894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140051, 0.238524, 0.960985,
		-0.699744, -0.662826, 0.266497,
		0.700531, -0.709766, 0.074076,
		37.657394, 35.248718, 48.340118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230900, 35.579384, 49.009968>,  <37.167023, 35.745552, 48.288265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230900, 35.579384, 49.009968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562405, 35.388000, 48.893875>,  <37.761307, 35.273170, 48.824219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562405, 35.388000, 48.893875>,  <37.230900, 35.579384, 49.009968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562405, 35.388000, 48.893875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424811, 0.200314, 0.882842,
		-0.364264, -0.854959, 0.369266,
		0.828763, -0.478456, -0.290229,
		37.811035, 35.244465, 48.806805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498238, 34.990784, 49.503544>,  <37.230900, 35.579384, 49.009968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498238, 34.990784, 49.503544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822945, 35.120422, 49.309227>,  <38.017769, 35.198204, 49.192638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822945, 35.120422, 49.309227>,  <37.498238, 34.990784, 49.503544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822945, 35.120422, 49.309227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454367, 0.172042, 0.874044,
		0.366850, -0.930249, -0.007600,
		0.811771, 0.324096, -0.485788,
		38.066475, 35.217651, 49.163490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106422, 34.888557, 49.996330>,  <37.498238, 34.990784, 49.503544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106422, 34.888557, 49.996330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257526, 35.153324, 49.737358>,  <38.348186, 35.312183, 49.581974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257526, 35.153324, 49.737358>,  <38.106422, 34.888557, 49.996330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257526, 35.153324, 49.737358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461683, 0.471457, 0.751383,
		0.802589, -0.582747, -0.127501,
		0.377755, 0.661917, -0.647431,
		38.370853, 35.351898, 49.543129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832119, 34.877670, 49.964806>,  <38.106422, 34.888557, 49.996330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832119, 34.877670, 49.964806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749554, 35.258480, 49.874435>,  <38.700012, 35.486965, 49.820213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749554, 35.258480, 49.874435>,  <38.832119, 34.877670, 49.964806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749554, 35.258480, 49.874435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494154, 0.300714, 0.815710,
		0.844514, 0.056736, -0.532519,
		-0.206416, 0.952025, -0.225921,
		38.687630, 35.544086, 49.806660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343170, 35.249969, 50.321758>,  <38.832119, 34.877670, 49.964806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343170, 35.249969, 50.321758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145393, 35.573093, 50.193405>,  <39.026726, 35.766968, 50.116394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145393, 35.573093, 50.193405>,  <39.343170, 35.249969, 50.321758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145393, 35.573093, 50.193405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244317, 0.483450, 0.840586,
		0.834165, 0.337227, -0.436401,
		-0.494447, 0.807808, -0.320888,
		38.997059, 35.815437, 50.097137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801208, 35.918175, 50.425198>,  <39.343170, 35.249969, 50.321758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801208, 35.918175, 50.425198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427673, 36.057106, 50.391022>,  <39.203552, 36.140465, 50.370514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427673, 36.057106, 50.391022>,  <39.801208, 35.918175, 50.425198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427673, 36.057106, 50.391022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106823, 0.498794, 0.860113,
		0.341364, 0.794081, -0.502897,
		-0.933841, 0.347332, -0.085444,
		39.147522, 36.161304, 50.365387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789043, 36.684021, 50.473114>,  <39.801208, 35.918175, 50.425198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789043, 36.684021, 50.473114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432880, 36.530380, 50.570805>,  <39.219185, 36.438194, 50.629417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432880, 36.530380, 50.570805>,  <39.789043, 36.684021, 50.473114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432880, 36.530380, 50.570805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082131, 0.392168, 0.916220,
		-0.447702, 0.835863, -0.317641,
		-0.890403, -0.384105, 0.244225,
		39.165760, 36.415150, 50.644073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340130, 37.279842, 50.738258>,  <39.789043, 36.684021, 50.473114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340130, 37.279842, 50.738258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250866, 36.920441, 50.889458>,  <39.197308, 36.704800, 50.980179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250866, 36.920441, 50.889458>,  <39.340130, 37.279842, 50.738258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250866, 36.920441, 50.889458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166354, 0.346987, 0.922999,
		-0.960481, 0.268862, 0.072035,
		-0.223164, -0.898506, 0.378001,
		39.183918, 36.650890, 51.002857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201485, 37.833443, 51.224922>,  <39.340130, 37.279842, 50.738258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201485, 37.833443, 51.224922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240463, 38.230865, 51.201805>,  <39.263851, 38.469322, 51.187935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240463, 38.230865, 51.201805>,  <39.201485, 37.833443, 51.224922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240463, 38.230865, 51.201805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155023, -0.042208, -0.987009,
		-0.983094, 0.105136, 0.149912,
		0.097443, 0.993562, -0.057792,
		39.269695, 38.528934, 51.184467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583412, 38.012241, 50.831203>,  <39.201485, 37.833443, 51.224922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583412, 38.012241, 50.831203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853588, 38.306797, 50.815632>,  <39.015694, 38.483528, 50.806290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853588, 38.306797, 50.815632>,  <38.583412, 38.012241, 50.831203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853588, 38.306797, 50.815632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163513, -0.201034, -0.965841,
		-0.719058, 0.646002, -0.256196,
		0.675440, 0.736387, -0.038925,
		39.056221, 38.527714, 50.803955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453972, 38.643467, 50.362640>,  <38.583412, 38.012241, 50.831203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453972, 38.643467, 50.362640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849655, 38.592819, 50.392109>,  <39.087067, 38.562431, 50.409790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849655, 38.592819, 50.392109>,  <38.453972, 38.643467, 50.362640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849655, 38.592819, 50.392109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064576, -0.074481, -0.995129,
		0.131491, 0.989151, -0.065501,
		0.989212, -0.126620, 0.073669,
		39.146420, 38.554832, 50.414211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703762, 39.083916, 49.892353>,  <38.453972, 38.643467, 50.362640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703762, 39.083916, 49.892353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033146, 38.860935, 49.934601>,  <39.230778, 38.727146, 49.959949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033146, 38.860935, 49.934601>,  <38.703762, 39.083916, 49.892353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033146, 38.860935, 49.934601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025248, -0.149971, -0.988368,
		0.566811, 0.816549, -0.109420,
		0.823461, -0.557455, 0.105621,
		39.280186, 38.693699, 49.966286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234119, 39.253735, 49.373081>,  <38.703762, 39.083916, 49.892353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234119, 39.253735, 49.373081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328915, 38.879612, 49.478188>,  <39.385792, 38.655140, 49.541252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328915, 38.879612, 49.478188>,  <39.234119, 39.253735, 49.373081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328915, 38.879612, 49.478188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087604, -0.248795, -0.964586,
		0.967554, 0.251617, 0.022975,
		0.236990, -0.935302, 0.262765,
		39.400013, 38.599022, 49.557018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726883, 39.078606, 48.956837>,  <39.234119, 39.253735, 49.373081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726883, 39.078606, 48.956837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585468, 38.719048, 49.060383>,  <39.500622, 38.503315, 49.122509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585468, 38.719048, 49.060383>,  <39.726883, 39.078606, 48.956837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585468, 38.719048, 49.060383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031879, -0.288150, -0.957055,
		0.934879, -0.330098, 0.130526,
		-0.353533, -0.898891, 0.258862,
		39.479408, 38.449379, 49.138042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189331, 38.552464, 48.609295>,  <39.726883, 39.078606, 48.956837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189331, 38.552464, 48.609295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829029, 38.420662, 48.722481>,  <39.612850, 38.341579, 48.790394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829029, 38.420662, 48.722481>,  <40.189331, 38.552464, 48.609295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829029, 38.420662, 48.722481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226673, -0.199105, -0.953403,
		0.370494, -0.922920, 0.104653,
		-0.900752, -0.329508, 0.282969,
		39.558804, 38.321808, 48.807373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133808, 38.090012, 48.189590>,  <40.189331, 38.552464, 48.609295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133808, 38.090012, 48.189590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746994, 38.117157, 48.287766>,  <39.514908, 38.133446, 48.346672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746994, 38.117157, 48.287766>,  <40.133808, 38.090012, 48.189590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746994, 38.117157, 48.287766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254630, -0.246124, -0.935193,
		-0.003059, -0.966860, 0.255291,
		-0.967034, 0.067866, 0.245439,
		39.456882, 38.137516, 48.361397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802807, 37.643536, 47.736176>,  <40.133808, 38.090012, 48.189590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802807, 37.643536, 47.736176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491444, 37.854717, 47.872021>,  <39.304626, 37.981426, 47.953529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491444, 37.854717, 47.872021>,  <39.802807, 37.643536, 47.736176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491444, 37.854717, 47.872021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520964, -0.241443, -0.818720,
		-0.350250, -0.814228, 0.462988,
		-0.778409, 0.527957, 0.339617,
		39.257919, 38.013103, 47.973907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216133, 37.195232, 47.683018>,  <39.802807, 37.643536, 47.736176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216133, 37.195232, 47.683018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093494, 37.575905, 47.676067>,  <39.019909, 37.804310, 47.671898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093494, 37.575905, 47.676067>,  <39.216133, 37.195232, 47.683018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093494, 37.575905, 47.676067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621348, -0.213942, -0.753761,
		-0.721057, -0.220304, 0.656919,
		-0.306599, 0.951680, -0.017379,
		39.001514, 37.861408, 47.670853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469135, 37.139668, 47.645912>,  <39.216133, 37.195232, 47.683018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469135, 37.139668, 47.645912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551910, 37.518173, 47.546509>,  <38.601578, 37.745277, 47.486866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551910, 37.518173, 47.546509>,  <38.469135, 37.139668, 47.645912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551910, 37.518173, 47.546509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639694, -0.061323, -0.766179,
		-0.740248, 0.317525, 0.592630,
		0.206940, 0.946265, -0.248513,
		38.613991, 37.802052, 47.471954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828915, 37.572716, 47.564346>,  <38.469135, 37.139668, 47.645912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828915, 37.572716, 47.564346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124184, 37.701756, 47.327354>,  <38.301346, 37.779179, 47.185158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.124184, 37.701756, 47.327354>,  <37.828915, 37.572716, 47.564346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124184, 37.701756, 47.327354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643559, 0.073350, -0.761873,
		-0.202320, 0.943690, 0.261755,
		0.738172, 0.322597, -0.592481,
		38.345634, 37.798534, 47.149609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535187, 38.088829, 47.208729>,  <37.828915, 37.572716, 47.564346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535187, 38.088829, 47.208729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873569, 38.011402, 47.009975>,  <38.076599, 37.964947, 46.890724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873569, 38.011402, 47.009975>,  <37.535187, 38.088829, 47.208729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873569, 38.011402, 47.009975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523664, -0.125644, -0.842609,
		0.100674, 0.973008, -0.207655,
		0.845956, -0.193570, -0.496880,
		38.127357, 37.953331, 46.860912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478062, 38.502243, 46.609554>,  <37.535187, 38.088829, 47.208729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478062, 38.502243, 46.609554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744465, 38.227737, 46.492611>,  <37.904308, 38.063034, 46.422447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744465, 38.227737, 46.492611>,  <37.478062, 38.502243, 46.609554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744465, 38.227737, 46.492611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492713, -0.110460, -0.863153,
		0.560056, 0.718918, -0.411698,
		0.666012, -0.686262, -0.292357,
		37.944267, 38.021858, 46.404903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633911, 38.750706, 45.878330>,  <37.478062, 38.502243, 46.609554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633911, 38.750706, 45.878330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769253, 38.376995, 45.923290>,  <37.850460, 38.152767, 45.950264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769253, 38.376995, 45.923290>,  <37.633911, 38.750706, 45.878330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769253, 38.376995, 45.923290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232938, -0.198880, -0.951938,
		0.911731, 0.295915, -0.284922,
		0.338358, -0.934281, 0.112395,
		37.870762, 38.096710, 45.957008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039734, 38.634850, 45.314205>,  <37.633911, 38.750706, 45.878330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039734, 38.634850, 45.314205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922840, 38.279140, 45.454937>,  <37.852703, 38.065716, 45.539375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922840, 38.279140, 45.454937>,  <38.039734, 38.634850, 45.314205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922840, 38.279140, 45.454937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076136, -0.388360, -0.918357,
		0.953311, -0.241589, 0.181199,
		-0.292235, -0.889276, 0.351834,
		37.835171, 38.012360, 45.560486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379719, 38.105625, 45.016895>,  <38.039734, 38.634850, 45.314205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379719, 38.105625, 45.016895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063316, 37.905033, 45.157089>,  <37.873474, 37.784679, 45.241203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.063316, 37.905033, 45.157089>,  <38.379719, 38.105625, 45.016895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.063316, 37.905033, 45.157089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037191, -0.532386, -0.845685,
		0.610681, -0.681973, 0.402468,
		-0.791003, -0.501476, 0.350481,
		37.826015, 37.754589, 45.262234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503334, 37.488262, 44.773399>,  <38.379719, 38.105625, 45.016895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503334, 37.488262, 44.773399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122051, 37.434799, 44.881870>,  <37.893284, 37.402721, 44.946953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122051, 37.434799, 44.881870>,  <38.503334, 37.488262, 44.773399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122051, 37.434799, 44.881870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136772, -0.609286, -0.781066,
		0.269624, -0.781604, 0.562493,
		-0.953203, -0.133660, 0.271179,
		37.836090, 37.394703, 44.963223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346916, 36.783020, 44.549252>,  <38.503334, 37.488262, 44.773399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346916, 36.783020, 44.549252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999031, 36.980042, 44.561813>,  <37.790298, 37.098255, 44.569351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999031, 36.980042, 44.561813>,  <38.346916, 36.783020, 44.549252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999031, 36.980042, 44.561813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272946, -0.426981, -0.862083,
		-0.411202, -0.758345, 0.505792,
		-0.869720, 0.492545, 0.031412,
		37.738117, 37.127808, 44.571236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868717, 36.206444, 44.291744>,  <38.346916, 36.783020, 44.549252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868717, 36.206444, 44.291744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714241, 36.574463, 44.265293>,  <37.621555, 36.795273, 44.249420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714241, 36.574463, 44.265293>,  <37.868717, 36.206444, 44.291744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714241, 36.574463, 44.265293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127091, -0.124080, -0.984099,
		-0.913622, -0.371646, 0.164849,
		-0.386191, 0.920045, -0.066129,
		37.598385, 36.850475, 44.245453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284092, 36.132812, 43.949612>,  <37.868717, 36.206444, 44.291744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284092, 36.132812, 43.949612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353916, 36.517975, 43.867302>,  <37.395809, 36.749073, 43.817917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353916, 36.517975, 43.867302>,  <37.284092, 36.132812, 43.949612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353916, 36.517975, 43.867302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119087, -0.186803, -0.975153,
		-0.977419, 0.194725, 0.082062,
		0.174557, 0.962905, -0.205774,
		37.406284, 36.806847, 43.805569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718296, 36.437103, 43.564678>,  <37.284092, 36.132812, 43.949612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718296, 36.437103, 43.564678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038113, 36.665619, 43.490536>,  <37.230003, 36.802727, 43.446049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038113, 36.665619, 43.490536>,  <36.718296, 36.437103, 43.564678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038113, 36.665619, 43.490536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035839, -0.262688, -0.964215,
		-0.599536, 0.777576, -0.189557,
		0.799545, 0.571288, -0.185358,
		37.277977, 36.837006, 43.434929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484730, 36.757084, 42.887638>,  <36.718296, 36.437103, 43.564678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484730, 36.757084, 42.887638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876602, 36.785152, 42.962803>,  <37.111725, 36.801994, 43.007900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876602, 36.785152, 42.962803>,  <36.484730, 36.757084, 42.887638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876602, 36.785152, 42.962803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199359, -0.237247, -0.950773,
		-0.022132, 0.968912, -0.246414,
		0.979677, 0.070167, 0.187911,
		37.170506, 36.806202, 43.019176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766689, 37.211029, 42.290855>,  <36.484730, 36.757084, 42.887638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766689, 37.211029, 42.290855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064816, 36.998745, 42.452278>,  <37.243690, 36.871376, 42.549129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064816, 36.998745, 42.452278>,  <36.766689, 37.211029, 42.290855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064816, 36.998745, 42.452278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316201, -0.251514, -0.914744,
		0.586963, 0.809375, -0.019646,
		0.745313, -0.530709, 0.403555,
		37.288410, 36.839531, 42.573345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278030, 37.453190, 41.912533>,  <36.766689, 37.211029, 42.290855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278030, 37.453190, 41.912533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406986, 37.113781, 42.080376>,  <37.484360, 36.910133, 42.181080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406986, 37.113781, 42.080376>,  <37.278030, 37.453190, 41.912533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406986, 37.113781, 42.080376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642622, -0.129294, -0.755196,
		0.695055, 0.513115, 0.503598,
		0.322390, -0.848526, 0.419605,
		37.503704, 36.859222, 42.206257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158897, 37.503166, 41.895199>,  <37.278030, 37.453190, 41.912533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158897, 37.503166, 41.895199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028645, 37.125561, 41.916370>,  <37.950493, 36.898998, 41.929073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028645, 37.125561, 41.916370>,  <38.158897, 37.503166, 41.895199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028645, 37.125561, 41.916370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515736, -0.224260, -0.826876,
		0.792451, -0.241962, 0.559889,
		-0.325633, -0.944014, 0.052927,
		37.930954, 36.842358, 41.932247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766865, 37.130119, 41.632183>,  <38.158897, 37.503166, 41.895199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766865, 37.130119, 41.632183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485241, 36.846878, 41.610703>,  <38.316265, 36.676933, 41.597813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485241, 36.846878, 41.610703>,  <38.766865, 37.130119, 41.632183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485241, 36.846878, 41.610703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488063, -0.427574, -0.760904,
		0.515838, -0.561934, 0.646638,
		-0.704064, -0.708103, -0.053700,
		38.274021, 36.634449, 41.594593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118546, 36.375244, 41.649075>,  <38.766865, 37.130119, 41.632183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118546, 36.375244, 41.649075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767345, 36.362831, 41.458012>,  <38.556625, 36.355385, 41.343372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767345, 36.362831, 41.458012>,  <39.118546, 36.375244, 41.649075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767345, 36.362831, 41.458012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449585, -0.395996, -0.800662,
		-0.164306, -0.917728, 0.361634,
		-0.877996, -0.031032, -0.477661,
		38.503948, 36.353523, 41.314713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075390, 35.701260, 41.275101>,  <39.118546, 36.375244, 41.649075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075390, 35.701260, 41.275101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811623, 35.943954, 41.097542>,  <38.653362, 36.089569, 40.991005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811623, 35.943954, 41.097542>,  <39.075390, 35.701260, 41.275101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811623, 35.943954, 41.097542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392232, -0.226062, -0.891656,
		-0.641346, -0.762083, -0.088911,
		-0.659416, 0.606734, -0.443897,
		38.613796, 36.125977, 40.964371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753567, 35.369701, 40.662849>,  <39.075390, 35.701260, 41.275101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753567, 35.369701, 40.662849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714298, 35.764042, 40.608505>,  <38.690739, 36.000645, 40.575897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714298, 35.764042, 40.608505>,  <38.753567, 35.369701, 40.662849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714298, 35.764042, 40.608505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160810, -0.119012, -0.979784,
		-0.982091, -0.118033, -0.146852,
		-0.098170, 0.985852, -0.135861,
		38.684849, 36.059799, 40.567745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408619, 35.411064, 39.967228>,  <38.753567, 35.369701, 40.662849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408619, 35.411064, 39.967228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517548, 35.791428, 40.026043>,  <38.582905, 36.019646, 40.061333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.517548, 35.791428, 40.026043>,  <38.408619, 35.411064, 39.967228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517548, 35.791428, 40.026043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310831, 0.057683, -0.948713,
		-0.910617, 0.304063, -0.279861,
		0.272325, 0.950904, 0.147039,
		38.599247, 36.076698, 40.070156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163876, 35.797459, 39.400326>,  <38.408619, 35.411064, 39.967228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163876, 35.797459, 39.400326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455650, 36.019875, 39.559692>,  <38.630714, 36.153324, 39.655312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455650, 36.019875, 39.559692>,  <38.163876, 35.797459, 39.400326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455650, 36.019875, 39.559692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351168, 0.195439, -0.915688,
		-0.587028, 0.807849, -0.052704,
		0.729438, 0.556043, 0.398419,
		38.674480, 36.186687, 39.679218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259022, 36.331142, 38.912815>,  <38.163876, 35.797459, 39.400326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259022, 36.331142, 38.912815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602184, 36.326351, 39.118286>,  <38.808083, 36.323475, 39.241570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602184, 36.326351, 39.118286>,  <38.259022, 36.331142, 38.912815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602184, 36.326351, 39.118286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508954, 0.156973, -0.846360,
		-0.070495, 0.987530, 0.140764,
		0.857902, -0.011979, 0.513673,
		38.859554, 36.322758, 39.272388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529976, 36.809547, 38.682877>,  <38.259022, 36.331142, 38.912815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529976, 36.809547, 38.682877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851994, 36.648399, 38.857048>,  <39.045204, 36.551708, 38.961552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851994, 36.648399, 38.857048>,  <38.529976, 36.809547, 38.682877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851994, 36.648399, 38.857048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547129, 0.220585, -0.807460,
		0.229255, 0.888276, 0.398004,
		0.805042, -0.402874, 0.435432,
		39.093506, 36.527538, 38.987679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009182, 37.276833, 38.538811>,  <38.529976, 36.809547, 38.682877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009182, 37.276833, 38.538811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208057, 36.943558, 38.635647>,  <39.327381, 36.743595, 38.693748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208057, 36.943558, 38.635647>,  <39.009182, 37.276833, 38.538811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208057, 36.943558, 38.635647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545991, 0.083595, -0.833610,
		0.674312, 0.546641, 0.496473,
		0.497188, -0.833184, 0.242093,
		39.357212, 36.693604, 38.708275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792557, 37.413830, 38.444031>,  <39.009182, 37.276833, 38.538811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792557, 37.413830, 38.444031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766846, 37.014946, 38.459240>,  <39.751419, 36.775616, 38.468365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766846, 37.014946, 38.459240>,  <39.792557, 37.413830, 38.444031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766846, 37.014946, 38.459240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622159, -0.069835, -0.779770,
		0.780248, -0.026464, 0.624911,
		-0.064277, -0.997207, 0.038024,
		39.747562, 36.715782, 38.470646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474113, 37.130428, 38.460903>,  <39.792557, 37.413830, 38.444031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474113, 37.130428, 38.460903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251839, 36.834820, 38.308559>,  <40.118473, 36.657455, 38.217155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251839, 36.834820, 38.308559>,  <40.474113, 37.130428, 38.460903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251839, 36.834820, 38.308559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568190, -0.003159, -0.822891,
		0.606933, -0.673673, 0.421661,
		-0.555692, -0.739023, -0.380856,
		40.085133, 36.613113, 38.194302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002052, 36.703045, 38.258492>,  <40.474113, 37.130428, 38.460903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002052, 36.703045, 38.258492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680912, 36.634689, 38.030025>,  <40.488228, 36.593678, 37.892944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680912, 36.634689, 38.030025>,  <41.002052, 36.703045, 38.258492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680912, 36.634689, 38.030025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592172, -0.339482, -0.730811,
		-0.069015, -0.924959, 0.373748,
		-0.802851, -0.170886, -0.571164,
		40.440056, 36.583424, 37.858677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213375, 36.149426, 37.855469>,  <41.002052, 36.703045, 38.258492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213375, 36.149426, 37.855469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897774, 36.292919, 37.655956>,  <40.708412, 36.379013, 37.536247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897774, 36.292919, 37.655956>,  <41.213375, 36.149426, 37.855469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897774, 36.292919, 37.655956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415737, -0.286007, -0.863344,
		-0.452363, -0.888544, 0.076524,
		-0.789006, 0.358731, -0.498780,
		40.661072, 36.400539, 37.506321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060970, 35.642567, 37.400387>,  <41.213375, 36.149426, 37.855469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060970, 35.642567, 37.400387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920704, 35.991413, 37.263885>,  <40.836544, 36.200722, 37.181984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920704, 35.991413, 37.263885>,  <41.060970, 35.642567, 37.400387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920704, 35.991413, 37.263885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606032, -0.066486, -0.792657,
		-0.713975, -0.484766, -0.505214,
		-0.350664, 0.872113, -0.341253,
		40.815506, 36.253048, 37.161510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907452, 35.545807, 36.709057>,  <41.060970, 35.642567, 37.400387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907452, 35.545807, 36.709057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987385, 35.930222, 36.785450>,  <41.035343, 36.160870, 36.831284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987385, 35.930222, 36.785450>,  <40.907452, 35.545807, 36.709057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987385, 35.930222, 36.785450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509110, 0.064696, -0.858267,
		-0.837183, 0.268735, -0.476346,
		0.199829, 0.961039, 0.190978,
		41.047333, 36.218533, 36.842743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836174, 35.962780, 36.087570>,  <40.907452, 35.545807, 36.709057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836174, 35.962780, 36.087570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081314, 36.176044, 36.320858>,  <41.228397, 36.304005, 36.460831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.081314, 36.176044, 36.320858>,  <40.836174, 35.962780, 36.087570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.081314, 36.176044, 36.320858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613064, 0.144862, -0.776638,
		-0.498560, 0.833519, -0.238083,
		0.612854, 0.533161, 0.583223,
		41.265171, 36.335995, 36.495827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508045, 36.149807, 35.708153>,  <40.836174, 35.962780, 36.087570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508045, 36.149807, 35.708153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613636, 35.851616, 35.952965>,  <41.676991, 35.672699, 36.099850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613636, 35.851616, 35.952965>,  <41.508045, 36.149807, 35.708153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613636, 35.851616, 35.952965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258720, -0.556554, -0.789501,
		0.929183, 0.366752, 0.045955,
		0.263975, -0.745480, 0.612027,
		41.692829, 35.627972, 36.136574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266857, 36.056347, 35.701477>,  <41.508045, 36.149807, 35.708153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266857, 36.056347, 35.701477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052170, 35.725323, 35.767296>,  <41.923355, 35.526707, 35.806786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052170, 35.725323, 35.767296>,  <42.266857, 36.056347, 35.701477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052170, 35.725323, 35.767296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390475, -0.416489, -0.821015,
		0.747969, -0.376408, 0.546680,
		-0.536723, -0.827559, 0.164544,
		41.891151, 35.477055, 35.816658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754532, 35.591370, 35.677208>,  <42.266857, 36.056347, 35.701477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754532, 35.591370, 35.677208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400490, 35.436710, 35.573605>,  <42.188065, 35.343914, 35.511444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400490, 35.436710, 35.573605>,  <42.754532, 35.591370, 35.677208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400490, 35.436710, 35.573605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429602, -0.464821, -0.774199,
		0.178955, -0.796519, 0.577523,
		-0.885109, -0.386652, -0.259004,
		42.134956, 35.320713, 35.495903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676273, 34.837700, 35.606689>,  <42.754532, 35.591370, 35.677208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676273, 34.837700, 35.606689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394966, 34.996502, 35.370792>,  <42.226181, 35.091785, 35.229256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394966, 34.996502, 35.370792>,  <42.676273, 34.837700, 35.606689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394966, 34.996502, 35.370792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412454, -0.447811, -0.793314,
		-0.579046, -0.801155, 0.151184,
		-0.703269, 0.397009, -0.589743,
		42.183987, 35.115604, 35.193871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304085, 34.338516, 35.224144>,  <42.676273, 34.837700, 35.606689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304085, 34.338516, 35.224144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291817, 34.677677, 35.012440>,  <42.284454, 34.881172, 34.885418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291817, 34.677677, 35.012440>,  <42.304085, 34.338516, 35.224144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291817, 34.677677, 35.012440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334352, -0.490306, -0.804865,
		-0.941949, -0.201648, -0.268459,
		-0.030672, 0.847902, -0.529264,
		42.282616, 34.932049, 34.853661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742558, 34.437592, 34.737469>,  <42.304085, 34.338516, 35.224144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742558, 34.437592, 34.737469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093704, 34.597084, 34.631363>,  <42.304394, 34.692780, 34.567699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093704, 34.597084, 34.631363>,  <41.742558, 34.437592, 34.737469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093704, 34.597084, 34.631363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020375, -0.584490, -0.811145,
		-0.478469, 0.706673, -0.521230,
		0.877868, 0.398728, -0.265262,
		42.357063, 34.716702, 34.551785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794453, 34.597694, 34.059673>,  <41.742558, 34.437592, 34.737469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794453, 34.597694, 34.059673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170937, 34.493530, 34.145756>,  <42.396828, 34.431030, 34.197407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170937, 34.493530, 34.145756>,  <41.794453, 34.597694, 34.059673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170937, 34.493530, 34.145756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036257, -0.555484, -0.830736,
		0.335881, 0.789697, -0.513383,
		0.941206, -0.260415, 0.215208,
		42.453297, 34.415405, 34.210320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195396, 34.731476, 33.510361>,  <41.794453, 34.597694, 34.059673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195396, 34.731476, 33.510361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380909, 34.442337, 33.715260>,  <42.492214, 34.268852, 33.838200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380909, 34.442337, 33.715260>,  <42.195396, 34.731476, 33.510361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380909, 34.442337, 33.715260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119399, -0.521923, -0.844595,
		0.877869, 0.452868, -0.155749,
		0.463779, -0.722847, 0.512251,
		42.520042, 34.225483, 33.868935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792511, 34.515564, 33.119797>,  <42.195396, 34.731476, 33.510361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792511, 34.515564, 33.119797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.718227, 34.223267, 33.382561>,  <42.673656, 34.047890, 33.540218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.718227, 34.223267, 33.382561>,  <42.792511, 34.515564, 33.119797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718227, 34.223267, 33.382561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175248, -0.682453, -0.709610,
		0.966851, -0.016657, 0.254797,
		-0.185707, -0.730739, 0.656911,
		42.662514, 34.004044, 33.579636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254440, 33.950607, 32.941841>,  <42.792511, 34.515564, 33.119797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254440, 33.950607, 32.941841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983620, 33.780651, 33.182198>,  <42.821129, 33.678677, 33.326412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983620, 33.780651, 33.182198>,  <43.254440, 33.950607, 32.941841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983620, 33.780651, 33.182198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004387, -0.818813, -0.574043,
		0.735925, -0.386019, 0.556240,
		-0.677048, -0.424893, 0.600892,
		42.780506, 33.653183, 33.362465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475212, 33.283772, 32.982620>,  <43.254440, 33.950607, 32.941841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475212, 33.283772, 32.982620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095585, 33.283325, 33.108646>,  <42.867809, 33.283058, 33.184261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.095585, 33.283325, 33.108646>,  <43.475212, 33.283772, 32.982620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095585, 33.283325, 33.108646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161512, -0.856875, -0.489570,
		0.270518, -0.515523, 0.813053,
		-0.949070, -0.001120, 0.315063,
		42.810863, 33.282990, 33.203167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339760, 32.572128, 33.331917>,  <43.475212, 33.283772, 32.982620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339760, 32.572128, 33.331917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980453, 32.696251, 33.207455>,  <42.764870, 32.770725, 33.132778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980453, 32.696251, 33.207455>,  <43.339760, 32.572128, 33.331917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980453, 32.696251, 33.207455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021583, -0.738371, -0.674050,
		-0.438914, -0.598763, 0.669953,
		-0.898270, 0.310309, -0.311158,
		42.710972, 32.789345, 33.114109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936554, 31.908569, 33.268600>,  <43.339760, 32.572128, 33.331917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936554, 31.908569, 33.268600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764736, 32.200020, 33.055210>,  <42.661644, 32.374889, 32.927174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764736, 32.200020, 33.055210>,  <42.936554, 31.908569, 33.268600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764736, 32.200020, 33.055210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060627, -0.612688, -0.787996,
		-0.901009, -0.306134, 0.307350,
		-0.429543, 0.728625, -0.533478,
		42.635872, 32.418606, 32.895168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458946, 31.614971, 32.926685>,  <42.936554, 31.908569, 33.268600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458946, 31.614971, 32.926685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475414, 31.943207, 32.698669>,  <42.485294, 32.140148, 32.561859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475414, 31.943207, 32.698669>,  <42.458946, 31.614971, 32.926685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475414, 31.943207, 32.698669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194926, -0.552960, -0.810086,
		-0.979954, 0.144466, 0.137188,
		0.041171, 0.820588, -0.570036,
		42.487766, 32.189384, 32.527660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976780, 31.553459, 32.383762>,  <42.458946, 31.614971, 32.926685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976780, 31.553459, 32.383762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203671, 31.839813, 32.220905>,  <42.339806, 32.011627, 32.123192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203671, 31.839813, 32.220905>,  <41.976780, 31.553459, 32.383762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203671, 31.839813, 32.220905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154093, -0.393381, -0.906370,
		-0.809017, 0.576855, -0.112824,
		0.567227, 0.715883, -0.407141,
		42.373840, 32.054577, 32.098763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568710, 31.836340, 31.780745>,  <41.976780, 31.553459, 32.383762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568710, 31.836340, 31.780745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954269, 31.925154, 31.721949>,  <42.185604, 31.978441, 31.686670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954269, 31.925154, 31.721949>,  <41.568710, 31.836340, 31.780745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954269, 31.925154, 31.721949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081439, -0.279747, -0.956614,
		-0.253519, 0.934047, -0.251564,
		0.963896, 0.222033, -0.146989,
		42.243439, 31.991764, 31.677853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567047, 32.141659, 31.074774>,  <41.568710, 31.836340, 31.780745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567047, 32.141659, 31.074774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943054, 32.032623, 31.156815>,  <42.168659, 31.967203, 31.206039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.943054, 32.032623, 31.156815>,  <41.567047, 32.141659, 31.074774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943054, 32.032623, 31.156815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099059, -0.357217, -0.928754,
		0.326432, 0.893360, -0.308787,
		0.940016, -0.272587, 0.205102,
		42.225060, 31.950848, 31.218346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015182, 32.345440, 30.463043>,  <41.567047, 32.141659, 31.074774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015182, 32.345440, 30.463043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230865, 32.075382, 30.664415>,  <42.360275, 31.913349, 30.785238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230865, 32.075382, 30.664415>,  <42.015182, 32.345440, 30.463043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230865, 32.075382, 30.664415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374737, -0.342996, -0.861351,
		0.754209, 0.653099, 0.068055,
		0.539205, -0.675141, 0.503431,
		42.392628, 31.872839, 30.815445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729797, 32.409367, 30.258478>,  <42.015182, 32.345440, 30.463043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729797, 32.409367, 30.258478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680992, 32.035221, 30.391266>,  <42.651707, 31.810734, 30.470940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680992, 32.035221, 30.391266>,  <42.729797, 32.409367, 30.258478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680992, 32.035221, 30.391266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384894, -0.352889, -0.852834,
		0.914860, 0.023714, 0.403074,
		-0.122017, -0.935365, 0.331971,
		42.644386, 31.754612, 30.490858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.324070, 32.013538, 29.882530>,  <42.729797, 32.409367, 30.258478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.324070, 32.013538, 29.882530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084297, 31.741051, 30.050634>,  <42.940434, 31.577559, 30.151497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084297, 31.741051, 30.050634>,  <43.324070, 32.013538, 29.882530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084297, 31.741051, 30.050634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243067, -0.655179, -0.715303,
		0.762623, -0.326627, 0.558319,
		-0.599436, -0.681216, 0.420262,
		42.904465, 31.536686, 30.176714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753994, 31.369314, 30.000736>,  <43.324070, 32.013538, 29.882530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753994, 31.369314, 30.000736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365696, 31.273838, 29.990339>,  <43.132717, 31.216553, 29.984100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365696, 31.273838, 29.990339>,  <43.753994, 31.369314, 30.000736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365696, 31.273838, 29.990339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158152, -0.554204, -0.817218,
		0.180657, -0.797423, 0.575742,
		-0.970748, -0.238691, -0.025993,
		43.074471, 31.202230, 29.982542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776138, 30.721827, 29.895166>,  <43.753994, 31.369314, 30.000736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776138, 30.721827, 29.895166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415493, 30.837683, 29.766668>,  <43.199104, 30.907196, 29.689569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415493, 30.837683, 29.766668>,  <43.776138, 30.721827, 29.895166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415493, 30.837683, 29.766668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108016, -0.568394, -0.815635,
		-0.418833, -0.770089, 0.481188,
		-0.901616, 0.289639, -0.321244,
		43.145008, 30.924574, 29.670296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560501, 30.160200, 29.618576>,  <43.776138, 30.721827, 29.895166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560501, 30.160200, 29.618576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264595, 30.388557, 29.476126>,  <43.087051, 30.525572, 29.390656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.264595, 30.388557, 29.476126>,  <43.560501, 30.160200, 29.618576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264595, 30.388557, 29.476126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146616, -0.653319, -0.742751,
		-0.656733, -0.497219, 0.566987,
		-0.739733, 0.570918, -0.356156,
		43.042667, 30.559826, 29.369287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960800, 29.750673, 29.508854>,  <43.560501, 30.160200, 29.618576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960800, 29.750673, 29.508854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901848, 30.058817, 29.260715>,  <42.866478, 30.243702, 29.111832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901848, 30.058817, 29.260715>,  <42.960800, 29.750673, 29.508854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901848, 30.058817, 29.260715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169452, -0.637587, -0.751511,
		-0.974457, -0.005636, 0.224504,
		-0.147377, 0.770357, -0.620346,
		42.857635, 30.289925, 29.074612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361664, 29.586962, 29.142654>,  <42.960800, 29.750673, 29.508854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361664, 29.586962, 29.142654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576679, 29.853504, 28.935957>,  <42.705688, 30.013430, 28.811939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576679, 29.853504, 28.935957>,  <42.361664, 29.586962, 29.142654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576679, 29.853504, 28.935957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017600, -0.603807, -0.796936,
		-0.843057, 0.437476, -0.312840,
		0.537535, 0.666357, -0.516744,
		42.737942, 30.053411, 28.780933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084141, 29.467409, 28.484529>,  <42.361664, 29.586962, 29.142654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084141, 29.467409, 28.484529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436977, 29.651733, 28.445415>,  <42.648682, 29.762329, 28.421947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436977, 29.651733, 28.445415>,  <42.084141, 29.467409, 28.484529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436977, 29.651733, 28.445415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253267, -0.638943, -0.726366,
		-0.397196, 0.615959, -0.680316,
		0.882095, 0.460812, -0.097784,
		42.701607, 29.789976, 28.416080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128780, 29.035053, 28.028385>,  <42.084141, 29.467409, 28.484529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128780, 29.035053, 28.028385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455658, 29.258852, 28.083755>,  <42.651783, 29.393131, 28.116978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455658, 29.258852, 28.083755>,  <42.128780, 29.035053, 28.028385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455658, 29.258852, 28.083755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490529, -0.549033, -0.676716,
		-0.302622, 0.620907, -0.723115,
		0.817191, 0.559498, 0.138424,
		42.700817, 29.426701, 28.125282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497952, 29.299353, 27.335320>,  <42.128780, 29.035053, 28.028385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497952, 29.299353, 27.335320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795330, 29.324474, 27.601654>,  <42.973759, 29.339548, 27.761456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795330, 29.324474, 27.601654>,  <42.497952, 29.299353, 27.335320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795330, 29.324474, 27.601654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636333, -0.372820, -0.675341,
		0.205821, 0.925776, -0.317138,
		0.743450, 0.062806, 0.665836,
		43.018364, 29.343317, 27.801405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173309, 29.718077, 27.196915>,  <42.497952, 29.299353, 27.335320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173309, 29.718077, 27.196915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213696, 29.377851, 27.403349>,  <43.237926, 29.173716, 27.527210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213696, 29.377851, 27.403349>,  <43.173309, 29.718077, 27.196915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213696, 29.377851, 27.403349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639344, -0.341973, -0.688690,
		0.762263, 0.399492, 0.509276,
		0.100967, -0.850565, 0.516086,
		43.243984, 29.122683, 27.558174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739445, 29.601198, 26.689306>,  <43.173309, 29.718077, 27.196915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739445, 29.601198, 26.689306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593502, 29.877260, 26.439325>,  <42.505936, 30.042898, 26.289337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593502, 29.877260, 26.439325>,  <42.739445, 29.601198, 26.689306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593502, 29.877260, 26.439325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931063, 0.271641, -0.243583,
		0.001653, -0.670743, -0.741688,
		-0.364854, 0.690156, -0.624953,
		42.484047, 30.084307, 26.251839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089470, 29.584549, 25.991629>,  <42.739445, 29.601198, 26.689306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089470, 29.584549, 25.991629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934914, 29.948763, 26.050453>,  <42.842178, 30.167292, 26.085749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934914, 29.948763, 26.050453>,  <43.089470, 29.584549, 25.991629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934914, 29.948763, 26.050453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874285, 0.412367, -0.256084,
		-0.293817, 0.029625, -0.955402,
		-0.386390, 0.910536, 0.147061,
		42.818996, 30.221924, 26.094572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563625, 30.282883, 26.024385>,  <43.089470, 29.584549, 25.991629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563625, 30.282883, 26.024385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.869190, 30.540815, 26.014360>,  <44.052528, 30.695576, 26.008345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.869190, 30.540815, 26.014360>,  <43.563625, 30.282883, 26.024385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869190, 30.540815, 26.014360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635218, 0.744540, -0.205327,
		-0.113742, 0.172772, 0.978372,
		0.763912, 0.644834, -0.025062,
		44.098362, 30.734266, 26.006842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522949, 30.964375, 26.514851>,  <43.563625, 30.282883, 26.024385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522949, 30.964375, 26.514851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705612, 30.961664, 26.159004>,  <43.815212, 30.960039, 25.945498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705612, 30.961664, 26.159004>,  <43.522949, 30.964375, 26.514851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705612, 30.961664, 26.159004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552244, 0.781827, -0.289435,
		0.697486, 0.623458, 0.353289,
		0.456661, -0.006775, -0.889615,
		43.842609, 30.959631, 25.892120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752174, 31.667042, 26.368746>,  <43.522949, 30.964375, 26.514851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752174, 31.667042, 26.368746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707710, 31.456455, 26.031586>,  <43.681030, 31.330103, 25.829290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.707710, 31.456455, 26.031586>,  <43.752174, 31.667042, 26.368746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.707710, 31.456455, 26.031586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575217, 0.725726, -0.377423,
		0.810413, 0.442895, -0.383503,
		-0.111159, -0.526466, -0.842898,
		43.674362, 31.298515, 25.778717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868080, 32.023758, 27.011705>,  <43.752174, 31.667042, 26.368746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868080, 32.023758, 27.011705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872868, 32.381962, 26.833752>,  <43.875740, 32.596886, 26.726980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872868, 32.381962, 26.833752>,  <43.868080, 32.023758, 27.011705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872868, 32.381962, 26.833752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649707, 0.331235, 0.684226,
		0.760091, -0.297234, -0.577853,
		0.011970, 0.895508, -0.444884,
		43.876457, 32.650616, 26.700287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630829, 32.282227, 26.992718>,  <43.868080, 32.023758, 27.011705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630829, 32.282227, 26.992718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384064, 32.594078, 26.949648>,  <44.236004, 32.781189, 26.923805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384064, 32.594078, 26.949648>,  <44.630829, 32.282227, 26.992718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384064, 32.594078, 26.949648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481746, 0.482253, 0.731679,
		0.622365, 0.399512, -0.673092,
		-0.616915, 0.779630, -0.107674,
		44.198990, 32.827969, 26.917345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974312, 32.864269, 26.836912>,  <44.630829, 32.282227, 26.992718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974312, 32.864269, 26.836912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634842, 32.945591, 27.032228>,  <44.431160, 32.994385, 27.149418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.634842, 32.945591, 27.032228>,  <44.974312, 32.864269, 26.836912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.634842, 32.945591, 27.032228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528079, 0.377770, 0.760541,
		-0.029841, 0.903304, -0.427962,
		-0.848671, 0.203302, 0.488289,
		44.380241, 33.006580, 27.178715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185146, 33.388256, 27.253542>,  <44.974312, 32.864269, 26.836912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185146, 33.388256, 27.253542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.841286, 33.266968, 27.418011>,  <44.634972, 33.194195, 27.516691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.841286, 33.266968, 27.418011>,  <45.185146, 33.388256, 27.253542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.841286, 33.266968, 27.418011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319258, 0.309480, 0.895710,
		-0.398850, 0.901264, -0.169237,
		-0.859647, -0.303224, 0.411172,
		44.583393, 33.175999, 27.541363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004593, 33.970863, 27.828316>,  <45.185146, 33.388256, 27.253542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004593, 33.970863, 27.828316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790054, 33.648533, 27.928690>,  <44.661331, 33.455135, 27.988914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.790054, 33.648533, 27.928690>,  <45.004593, 33.970863, 27.828316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790054, 33.648533, 27.928690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308460, 0.089593, 0.947008,
		-0.785609, 0.585331, 0.200513,
		-0.536349, -0.805829, 0.250937,
		44.629150, 33.406784, 28.003971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682472, 34.131401, 28.443668>,  <45.004593, 33.970863, 27.828316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682472, 34.131401, 28.443668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662582, 33.732471, 28.465099>,  <44.650646, 33.493114, 28.477959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662582, 33.732471, 28.465099>,  <44.682472, 34.131401, 28.443668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662582, 33.732471, 28.465099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232871, 0.040589, 0.971660,
		-0.971235, 0.060795, 0.230230,
		-0.049727, -0.997325, 0.053579,
		44.647663, 33.433273, 28.481173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293194, 33.918205, 28.978781>,  <44.682472, 34.131401, 28.443668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293194, 33.918205, 28.978781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550953, 33.617634, 28.922054>,  <44.705608, 33.437290, 28.888018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550953, 33.617634, 28.922054>,  <44.293194, 33.918205, 28.978781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550953, 33.617634, 28.922054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072162, -0.124874, 0.989545,
		-0.761278, -0.647894, -0.026245,
		0.644397, -0.751425, -0.141817,
		44.744274, 33.392208, 28.879509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068192, 33.552746, 29.574722>,  <44.293194, 33.918205, 28.978781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068192, 33.552746, 29.574722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415646, 33.384579, 29.469860>,  <44.624119, 33.283680, 29.406942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415646, 33.384579, 29.469860>,  <44.068192, 33.552746, 29.574722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415646, 33.384579, 29.469860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245378, -0.094624, 0.964798,
		-0.430424, -0.902383, 0.020968,
		0.868634, -0.420418, -0.262153,
		44.676235, 33.258453, 29.391214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101170, 33.002193, 29.988361>,  <44.068192, 33.552746, 29.574722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101170, 33.002193, 29.988361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475700, 33.079647, 29.871201>,  <44.700420, 33.126118, 29.800905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475700, 33.079647, 29.871201>,  <44.101170, 33.002193, 29.988361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475700, 33.079647, 29.871201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301169, -0.014063, 0.953467,
		0.180507, -0.980973, -0.071485,
		0.936330, 0.193636, -0.292900,
		44.756599, 33.137737, 29.783331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398628, 32.554996, 30.377842>,  <44.101170, 33.002193, 29.988361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398628, 32.554996, 30.377842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669147, 32.825157, 30.260229>,  <44.831459, 32.987255, 30.189661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.669147, 32.825157, 30.260229>,  <44.398628, 32.554996, 30.377842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669147, 32.825157, 30.260229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401311, -0.003100, 0.915936,
		0.617712, -0.737445, -0.273143,
		0.676299, 0.675401, -0.294030,
		44.872036, 33.027779, 30.172020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137478, 32.290504, 30.596817>,  <44.398628, 32.554996, 30.377842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137478, 32.290504, 30.596817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127380, 32.687214, 30.546614>,  <45.121323, 32.925240, 30.516491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127380, 32.687214, 30.546614>,  <45.137478, 32.290504, 30.596817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127380, 32.687214, 30.546614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404084, 0.124959, 0.906146,
		0.914373, -0.027839, -0.403914,
		-0.025246, 0.991771, -0.125508,
		45.119808, 32.984745, 30.508961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687389, 32.551983, 30.972660>,  <45.137478, 32.290504, 30.596817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687389, 32.551983, 30.972660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457623, 32.877407, 30.936510>,  <45.319763, 33.072662, 30.914820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457623, 32.877407, 30.936510>,  <45.687389, 32.551983, 30.972660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457623, 32.877407, 30.936510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346823, 0.341900, 0.873395,
		0.741456, 0.470350, -0.478554,
		-0.574419, 0.813557, -0.090376,
		45.285297, 33.121475, 30.909397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101627, 32.985600, 31.278339>,  <45.687389, 32.551983, 30.972660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101627, 32.985600, 31.278339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747917, 33.172302, 31.283909>,  <45.535690, 33.284325, 31.287251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747917, 33.172302, 31.283909>,  <46.101627, 32.985600, 31.278339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747917, 33.172302, 31.283909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197291, 0.346403, 0.917105,
		0.423245, 0.813720, -0.398403,
		-0.884274, 0.466761, 0.013926,
		45.482635, 33.312332, 31.288086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218193, 33.748363, 31.488544>,  <46.101627, 32.985600, 31.278339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218193, 33.748363, 31.488544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830799, 33.673580, 31.554380>,  <45.598362, 33.628712, 31.593882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.830799, 33.673580, 31.554380>,  <46.218193, 33.748363, 31.488544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.830799, 33.673580, 31.554380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053434, 0.489452, 0.870391,
		-0.243285, 0.851753, -0.464036,
		-0.968482, -0.186958, 0.164589,
		45.540253, 33.617493, 31.603758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950512, 34.436714, 31.870071>,  <46.218193, 33.748363, 31.488544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950512, 34.436714, 31.870071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693172, 34.142185, 31.953909>,  <45.538769, 33.965469, 32.004211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693172, 34.142185, 31.953909>,  <45.950512, 34.436714, 31.870071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.693172, 34.142185, 31.953909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116606, 0.364828, 0.923744,
		-0.756639, 0.569851, -0.320572,
		-0.643350, -0.736322, 0.209596,
		45.500168, 33.921288, 32.016788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374916, 34.803299, 32.166454>,  <45.950512, 34.436714, 31.870071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374916, 34.803299, 32.166454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360264, 34.423187, 32.290150>,  <45.351475, 34.195122, 32.364365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360264, 34.423187, 32.290150>,  <45.374916, 34.803299, 32.166454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360264, 34.423187, 32.290150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196474, 0.310252, 0.930130,
		-0.979825, -0.026689, -0.198069,
		-0.036627, -0.950280, 0.309236,
		45.349277, 34.138103, 32.382919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967865, 34.907360, 32.697414>,  <45.374916, 34.803299, 32.166454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967865, 34.907360, 32.697414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129578, 34.544838, 32.746666>,  <45.226604, 34.327324, 32.776218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129578, 34.544838, 32.746666>,  <44.967865, 34.907360, 32.697414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129578, 34.544838, 32.746666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126309, 0.078010, 0.988919,
		-0.905870, -0.415356, -0.082936,
		0.404284, -0.906308, 0.123130,
		45.250862, 34.272945, 32.783604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.526852, 34.617729, 33.149204>,  <44.967865, 34.907360, 32.697414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.526852, 34.617729, 33.149204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872494, 34.417065, 33.165501>,  <45.079880, 34.296665, 33.175278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872494, 34.417065, 33.165501>,  <44.526852, 34.617729, 33.149204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872494, 34.417065, 33.165501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003733, 0.074551, 0.997210,
		-0.503298, -0.861846, 0.062548,
		0.864105, -0.501661, 0.040738,
		45.131725, 34.266567, 33.177723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447475, 33.948250, 33.538136>,  <44.526852, 34.617729, 33.149204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447475, 33.948250, 33.538136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828018, 34.069302, 33.561226>,  <45.056343, 34.141933, 33.575081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828018, 34.069302, 33.561226>,  <44.447475, 33.948250, 33.538136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828018, 34.069302, 33.561226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056609, -0.012476, 0.998318,
		0.302839, -0.953027, 0.005262,
		0.951359, 0.302628, 0.057729,
		45.113426, 34.160091, 33.578545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.773407, 33.514034, 34.003101>,  <44.447475, 33.948250, 33.538136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.773407, 33.514034, 34.003101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971321, 33.861629, 34.000599>,  <45.090069, 34.070187, 33.999096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971321, 33.861629, 34.000599>,  <44.773407, 33.514034, 34.003101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971321, 33.861629, 34.000599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066685, -0.030785, 0.997299,
		0.866451, -0.493870, -0.073181,
		0.494789, 0.868991, -0.006260,
		45.119759, 34.122326, 33.998722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022331, 33.469894, 34.588596>,  <44.773407, 33.514034, 34.003101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022331, 33.469894, 34.588596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147442, 33.841835, 34.511097>,  <45.222507, 34.064999, 34.464600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.147442, 33.841835, 34.511097>,  <45.022331, 33.469894, 34.588596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147442, 33.841835, 34.511097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152851, 0.250598, 0.955948,
		0.937446, -0.269388, 0.220511,
		0.312781, 0.929855, -0.193746,
		45.241276, 34.120792, 34.452972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541115, 33.611519, 35.062660>,  <45.022331, 33.469894, 34.588596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541115, 33.611519, 35.062660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370617, 33.960941, 34.968678>,  <45.268318, 34.170597, 34.912289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.370617, 33.960941, 34.968678>,  <45.541115, 33.611519, 35.062660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370617, 33.960941, 34.968678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077796, 0.223377, 0.971623,
		0.901255, 0.432431, -0.027254,
		-0.426248, 0.873559, -0.234961,
		45.242744, 34.223011, 34.898190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926006, 34.192581, 35.486069>,  <45.541115, 33.611519, 35.062660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926006, 34.192581, 35.486069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559319, 34.315994, 35.384529>,  <45.339306, 34.390041, 35.323605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.559319, 34.315994, 35.384529>,  <45.926006, 34.192581, 35.486069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559319, 34.315994, 35.384529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215787, 0.152378, 0.964478,
		0.336253, 0.938930, -0.073110,
		-0.916717, 0.308532, -0.253846,
		45.284302, 34.408554, 35.308376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074024, 34.376469, 34.711075>,  <45.926006, 34.192581, 35.486069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074024, 34.376469, 34.711075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357208, 34.615078, 34.862309>,  <46.527119, 34.758244, 34.953049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357208, 34.615078, 34.862309>,  <46.074024, 34.376469, 34.711075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357208, 34.615078, 34.862309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442788, -0.791960, 0.420402,
		0.550211, -0.130215, -0.824810,
		0.707960, 0.596525, 0.378088,
		46.569595, 34.794037, 34.975735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697227, 34.085991, 34.505924>,  <46.074024, 34.376469, 34.711075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697227, 34.085991, 34.505924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684608, 34.289589, 34.850002>,  <46.677036, 34.411747, 35.056450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.684608, 34.289589, 34.850002>,  <46.697227, 34.085991, 34.505924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.684608, 34.289589, 34.850002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362465, -0.796211, 0.484425,
		0.931463, 0.327070, -0.159377,
		-0.031544, 0.508993, 0.860193,
		46.675144, 34.442287, 35.108059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.377869, 34.096207, 34.722755>,  <46.697227, 34.085991, 34.505924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.377869, 34.096207, 34.722755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095463, 34.077137, 35.005390>,  <46.926018, 34.065693, 35.174973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095463, 34.077137, 35.005390>,  <47.377869, 34.096207, 34.722755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.095463, 34.077137, 35.005390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409091, -0.841887, 0.351953,
		0.578088, 0.537544, 0.613890,
		-0.706016, -0.047677, 0.706589,
		46.883659, 34.062836, 35.217365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.575951, 34.889469, 34.896046>,  <47.377869, 34.096207, 34.722755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.575951, 34.889469, 34.896046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.930550, 35.057083, 34.974567>,  <48.143307, 35.157654, 35.021679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.930550, 35.057083, 34.974567>,  <47.575951, 34.889469, 34.896046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.930550, 35.057083, 34.974567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440526, 0.634395, 0.635200,
		0.141640, -0.649578, 0.746985,
		0.886496, 0.419037, 0.196300,
		48.196499, 35.182793, 35.033459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.664196, 41.124809, 44.684528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295006, 40.983887, 44.746490>,  <36.073490, 40.899334, 44.783669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295006, 40.983887, 44.746490>,  <36.664196, 41.124809, 44.684528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295006, 40.983887, 44.746490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114783, -0.132197, -0.984555,
		0.367341, -0.926502, 0.081576,
		-0.922977, -0.352304, 0.154908,
		36.018112, 40.878197, 44.792961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669647, 40.479279, 44.333126>,  <36.664196, 41.124809, 44.684528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669647, 40.479279, 44.333126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282707, 40.570320, 44.377720>,  <36.050545, 40.624947, 44.404476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282707, 40.570320, 44.377720>,  <36.669647, 40.479279, 44.333126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282707, 40.570320, 44.377720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159422, -0.204500, -0.965797,
		-0.197010, -0.952041, 0.234107,
		-0.967353, 0.227593, 0.111488,
		35.992500, 40.638599, 44.411167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180328, 39.948917, 44.037086>,  <36.669647, 40.479279, 44.333126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180328, 39.948917, 44.037086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953297, 40.277420, 44.060398>,  <35.817078, 40.474522, 44.074387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.953297, 40.277420, 44.060398>,  <36.180328, 39.948917, 44.037086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953297, 40.277420, 44.060398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391111, -0.206660, -0.896841,
		-0.724490, -0.531822, 0.438497,
		-0.567580, 0.821253, 0.058278,
		35.783024, 40.523796, 44.077881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403969, 39.739708, 43.847557>,  <36.180328, 39.948917, 44.037086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403969, 39.739708, 43.847557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.444935, 40.131546, 43.778374>,  <35.469517, 40.366650, 43.736866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.444935, 40.131546, 43.778374>,  <35.403969, 39.739708, 43.847557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444935, 40.131546, 43.778374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333511, -0.129991, -0.933741,
		-0.937166, 0.153313, 0.313391,
		0.102417, 0.979590, -0.172955,
		35.475658, 40.425423, 43.726486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836460, 39.942673, 43.466290>,  <35.403969, 39.739708, 43.847557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836460, 39.942673, 43.466290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.083614, 40.243389, 43.374172>,  <35.231907, 40.423820, 43.318901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.083614, 40.243389, 43.374172>,  <34.836460, 39.942673, 43.466290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083614, 40.243389, 43.374172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437539, 0.085404, -0.895134,
		-0.653285, 0.653849, 0.381707,
		0.617882, 0.751790, -0.230291,
		35.268978, 40.468925, 43.305084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448593, 40.482258, 43.029884>,  <34.836460, 39.942673, 43.466290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448593, 40.482258, 43.029884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.839199, 40.483852, 42.943714>,  <35.073563, 40.484810, 42.892014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.839199, 40.483852, 42.943714>,  <34.448593, 40.482258, 43.029884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839199, 40.483852, 42.943714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211214, -0.179769, -0.960766,
		-0.042560, 0.983701, -0.174704,
		0.976513, 0.003990, -0.215422,
		35.132153, 40.485050, 42.879089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416840, 40.570736, 42.381214>,  <34.448593, 40.482258, 43.029884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416840, 40.570736, 42.381214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812630, 40.519318, 42.407764>,  <35.050106, 40.488468, 42.423695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.812630, 40.519318, 42.407764>,  <34.416840, 40.570736, 42.381214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812630, 40.519318, 42.407764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035158, -0.231420, -0.972218,
		0.140333, 0.964324, -0.224466,
		0.989480, -0.128543, 0.066379,
		35.109474, 40.480755, 42.427677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695057, 40.967060, 41.834106>,  <34.416840, 40.570736, 42.381214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695057, 40.967060, 41.834106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984528, 40.711506, 41.938507>,  <35.158211, 40.558174, 42.001148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984528, 40.711506, 41.938507>,  <34.695057, 40.967060, 41.834106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984528, 40.711506, 41.938507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202079, -0.165444, -0.965294,
		0.659889, 0.751305, 0.009376,
		0.723679, -0.638882, 0.260997,
		35.201630, 40.519840, 42.016808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307415, 41.103123, 41.342873>,  <34.695057, 40.967060, 41.834106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307415, 41.103123, 41.342873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329060, 40.739983, 41.509186>,  <35.342045, 40.522099, 41.608974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329060, 40.739983, 41.509186>,  <35.307415, 41.103123, 41.342873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329060, 40.739983, 41.509186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284016, -0.385203, -0.878039,
		0.957291, 0.165603, 0.237000,
		0.054113, -0.907851, 0.415786,
		35.345295, 40.467628, 41.633923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914997, 40.806522, 41.089588>,  <35.307415, 41.103123, 41.342873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914997, 40.806522, 41.089588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664566, 40.513763, 41.197178>,  <35.514305, 40.338108, 41.261730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664566, 40.513763, 41.197178>,  <35.914997, 40.806522, 41.089588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664566, 40.513763, 41.197178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324444, -0.558179, -0.763657,
		0.709055, -0.390844, 0.586926,
		-0.626081, -0.731899, 0.268973,
		35.476742, 40.294193, 41.277870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258411, 40.175007, 41.297295>,  <35.914997, 40.806522, 41.089588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258411, 40.175007, 41.297295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889938, 40.045547, 41.210873>,  <35.668854, 39.967873, 41.159019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889938, 40.045547, 41.210873>,  <36.258411, 40.175007, 41.297295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889938, 40.045547, 41.210873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380781, -0.635272, -0.671890,
		0.080204, -0.701200, 0.708439,
		-0.921181, -0.323648, -0.216052,
		35.613583, 39.948452, 41.146057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374561, 39.511425, 41.175789>,  <36.258411, 40.175007, 41.297295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374561, 39.511425, 41.175789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034370, 39.612514, 40.991257>,  <35.830257, 39.673168, 40.880539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.034370, 39.612514, 40.991257>,  <36.374561, 39.511425, 41.175789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034370, 39.612514, 40.991257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309039, -0.469637, -0.827004,
		-0.425662, -0.845914, 0.321312,
		-0.850475, 0.252726, -0.461328,
		35.779228, 39.688332, 40.852859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120956, 38.847294, 40.832336>,  <36.374561, 39.511425, 41.175789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120956, 38.847294, 40.832336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891418, 39.123085, 40.655556>,  <35.753696, 39.288559, 40.549488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.891418, 39.123085, 40.655556>,  <36.120956, 38.847294, 40.832336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891418, 39.123085, 40.655556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156780, -0.437176, -0.885606,
		-0.803817, -0.577489, 0.142775,
		-0.573846, 0.689480, -0.441948,
		35.719265, 39.329929, 40.522972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733757, 38.428791, 40.355179>,  <36.120956, 38.847294, 40.832336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733757, 38.428791, 40.355179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732410, 38.796013, 40.196602>,  <35.731602, 39.016346, 40.101456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732410, 38.796013, 40.196602>,  <35.733757, 38.428791, 40.355179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732410, 38.796013, 40.196602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217335, -0.386294, -0.896405,
		-0.976091, -0.089177, -0.198225,
		-0.003366, 0.918055, -0.396440,
		35.731400, 39.071430, 40.077671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426895, 38.406422, 39.723030>,  <35.733757, 38.428791, 40.355179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426895, 38.406422, 39.723030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674072, 38.720882, 39.718796>,  <35.822376, 38.909561, 39.716255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674072, 38.720882, 39.718796>,  <35.426895, 38.406422, 39.723030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674072, 38.720882, 39.718796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264877, -0.220839, -0.938653,
		-0.740265, 0.577226, -0.344700,
		0.617939, 0.786155, -0.010585,
		35.859455, 38.956730, 39.715622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358967, 38.784134, 39.003132>,  <35.426895, 38.406422, 39.723030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358967, 38.784134, 39.003132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714233, 38.885071, 39.156746>,  <35.927395, 38.945633, 39.248913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714233, 38.885071, 39.156746>,  <35.358967, 38.784134, 39.003132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714233, 38.885071, 39.156746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364772, 0.121104, -0.923188,
		-0.279465, 0.960030, 0.015514,
		0.888167, 0.252340, 0.384036,
		35.980682, 38.960773, 39.271957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581230, 39.382969, 38.649036>,  <35.358967, 38.784134, 39.003132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581230, 39.382969, 38.649036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.926849, 39.245693, 38.796352>,  <36.134220, 39.163330, 38.884743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.926849, 39.245693, 38.796352>,  <35.581230, 39.382969, 38.649036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926849, 39.245693, 38.796352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381165, -0.031879, -0.923957,
		0.328829, 0.938727, 0.103265,
		0.864051, -0.343185, 0.368293,
		36.186066, 39.142738, 38.906841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043201, 39.873466, 38.332527>,  <35.581230, 39.382969, 38.649036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043201, 39.873466, 38.332527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275032, 39.570812, 38.453583>,  <36.414131, 39.389221, 38.526218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275032, 39.570812, 38.453583>,  <36.043201, 39.873466, 38.332527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275032, 39.570812, 38.453583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505634, 0.042649, -0.861693,
		0.639079, 0.652447, 0.407298,
		0.579580, -0.756634, 0.302643,
		36.448906, 39.343822, 38.544376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783047, 40.044384, 38.184879>,  <36.043201, 39.873466, 38.332527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783047, 40.044384, 38.184879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751465, 39.645672, 38.190369>,  <36.732517, 39.406445, 38.193661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.751465, 39.645672, 38.190369>,  <36.783047, 40.044384, 38.184879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751465, 39.645672, 38.190369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411360, -0.045114, -0.910356,
		0.908047, -0.066232, 0.413599,
		-0.078954, -0.996784, 0.013720,
		36.727779, 39.346638, 38.194485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457993, 39.850784, 37.927654>,  <36.783047, 40.044384, 38.184879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457993, 39.850784, 37.927654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.226772, 39.527576, 37.882126>,  <37.088039, 39.333652, 37.854809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.226772, 39.527576, 37.882126>,  <37.457993, 39.850784, 37.927654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226772, 39.527576, 37.882126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393069, -0.153494, -0.906607,
		0.715087, -0.568807, 0.406336,
		-0.578055, -0.808021, -0.113818,
		37.053356, 39.285172, 37.847980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964249, 39.377396, 37.647045>,  <37.457993, 39.850784, 37.927654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964249, 39.377396, 37.647045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.600151, 39.232521, 37.566776>,  <37.381691, 39.145596, 37.518616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.600151, 39.232521, 37.566776>,  <37.964249, 39.377396, 37.647045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600151, 39.232521, 37.566776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274931, -0.166275, -0.946977,
		0.309618, -0.917154, 0.250929,
		-0.910247, -0.362189, -0.200673,
		37.327076, 39.123863, 37.506573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066799, 38.796875, 37.248936>,  <37.964249, 39.377396, 37.647045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066799, 38.796875, 37.248936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684986, 38.896233, 37.183002>,  <37.455898, 38.955849, 37.143444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684986, 38.896233, 37.183002>,  <38.066799, 38.796875, 37.248936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684986, 38.896233, 37.183002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046678, -0.421571, -0.905593,
		-0.294431, -0.872112, 0.390809,
		-0.954532, 0.248393, -0.164832,
		37.398628, 38.970753, 37.133553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693089, 38.923367, 36.786846>,  <38.066799, 38.796875, 37.248936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693089, 38.923367, 36.786846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.089275, 38.940849, 36.839108>,  <39.326988, 38.951340, 36.870464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.089275, 38.940849, 36.839108>,  <38.693089, 38.923367, 36.786846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089275, 38.940849, 36.839108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136371, 0.176011, 0.974896,
		0.019611, -0.983418, 0.180292,
		0.990464, 0.043705, 0.130658,
		39.386414, 38.953960, 36.878304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855354, 38.462116, 37.284882>,  <38.693089, 38.923367, 36.786846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855354, 38.462116, 37.284882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138107, 38.744213, 37.263161>,  <39.307758, 38.913471, 37.250126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.138107, 38.744213, 37.263161>,  <38.855354, 38.462116, 37.284882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138107, 38.744213, 37.263161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224490, 0.296494, 0.928276,
		0.670759, -0.643993, 0.367907,
		0.706885, 0.705240, -0.054306,
		39.350174, 38.955784, 37.246868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163063, 38.347397, 37.850384>,  <38.855354, 38.462116, 37.284882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163063, 38.347397, 37.850384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285347, 38.715637, 37.753193>,  <39.358719, 38.936581, 37.694878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285347, 38.715637, 37.753193>,  <39.163063, 38.347397, 37.850384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285347, 38.715637, 37.753193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177633, 0.305861, 0.935358,
		0.935408, -0.242786, 0.257034,
		0.305709, 0.920600, -0.242978,
		39.377060, 38.991817, 37.680298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531944, 38.512386, 38.387856>,  <39.163063, 38.347397, 37.850384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531944, 38.512386, 38.387856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.490150, 38.875111, 38.224503>,  <39.465073, 39.092747, 38.126492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.490150, 38.875111, 38.224503>,  <39.531944, 38.512386, 38.387856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490150, 38.875111, 38.224503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129438, 0.394733, 0.909633,
		0.986067, 0.147904, 0.076131,
		-0.104487, 0.906813, -0.408378,
		39.458805, 39.147156, 38.101990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857903, 38.888279, 38.798782>,  <39.531944, 38.512386, 38.387856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857903, 38.888279, 38.798782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.613609, 39.143845, 38.611679>,  <39.467033, 39.297184, 38.499416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.613609, 39.143845, 38.611679>,  <39.857903, 38.888279, 38.798782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613609, 39.143845, 38.611679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324901, 0.336512, 0.883855,
		0.722114, 0.691771, 0.002066,
		-0.610730, 0.638915, -0.467757,
		39.430389, 39.335518, 38.471352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080791, 39.486946, 39.088493>,  <39.857903, 38.888279, 38.798782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080791, 39.486946, 39.088493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711926, 39.536980, 38.942085>,  <39.490608, 39.566998, 38.854240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711926, 39.536980, 38.942085>,  <40.080791, 39.486946, 39.088493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711926, 39.536980, 38.942085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313085, 0.314321, 0.896203,
		0.227148, 0.941040, -0.250693,
		-0.922162, 0.125082, -0.366023,
		39.435276, 39.574505, 38.832279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877201, 40.224640, 39.295860>,  <40.080791, 39.486946, 39.088493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877201, 40.224640, 39.295860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.543415, 40.023556, 39.205574>,  <39.343143, 39.902905, 39.151402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.543415, 40.023556, 39.205574>,  <39.877201, 40.224640, 39.295860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543415, 40.023556, 39.205574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369008, 0.205548, 0.906413,
		-0.409269, 0.839661, -0.357027,
		-0.834465, -0.502712, -0.225717,
		39.293076, 39.872742, 39.137859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320610, 40.602863, 39.491173>,  <39.877201, 40.224640, 39.295860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320610, 40.602863, 39.491173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173882, 40.230747, 39.491234>,  <39.085846, 40.007477, 39.491272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.173882, 40.230747, 39.491234>,  <39.320610, 40.602863, 39.491173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173882, 40.230747, 39.491234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322625, 0.127368, 0.937918,
		-0.872556, 0.344000, -0.346857,
		-0.366822, -0.930291, 0.000153,
		39.063835, 39.951660, 39.491280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699097, 40.702488, 39.811024>,  <39.320610, 40.602863, 39.491173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699097, 40.702488, 39.811024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796951, 40.315853, 39.841633>,  <38.855663, 40.083870, 39.859997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.796951, 40.315853, 39.841633>,  <38.699097, 40.702488, 39.811024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796951, 40.315853, 39.841633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248022, 0.013915, 0.968654,
		-0.937358, -0.255945, -0.236332,
		0.244634, -0.966591, 0.076523,
		38.870342, 40.025875, 39.864590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099754, 40.390213, 40.156559>,  <38.699097, 40.702488, 39.811024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099754, 40.390213, 40.156559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.395741, 40.126015, 40.207451>,  <38.573334, 39.967495, 40.237984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.395741, 40.126015, 40.207451>,  <38.099754, 40.390213, 40.156559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395741, 40.126015, 40.207451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234814, -0.076411, 0.969032,
		-0.630325, -0.746927, -0.211636,
		0.739968, -0.660501, 0.127225,
		38.617729, 39.927864, 40.245617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854759, 39.690514, 40.442593>,  <38.099754, 40.390213, 40.156559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854759, 39.690514, 40.442593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.239502, 39.748795, 40.535202>,  <38.470348, 39.783764, 40.590767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.239502, 39.748795, 40.535202>,  <37.854759, 39.690514, 40.442593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239502, 39.748795, 40.535202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195214, -0.227285, 0.954061,
		0.191626, -0.962867, -0.190173,
		0.961858, 0.145698, 0.231519,
		38.528061, 39.792503, 40.604656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024033, 39.200748, 40.967976>,  <37.854759, 39.690514, 40.442593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024033, 39.200748, 40.967976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.324661, 39.464088, 40.984550>,  <38.505039, 39.622093, 40.994495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.324661, 39.464088, 40.984550>,  <38.024033, 39.200748, 40.967976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324661, 39.464088, 40.984550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005993, -0.069630, 0.997555,
		0.659629, -0.749482, -0.056277,
		0.751568, 0.658353, 0.041438,
		38.550133, 39.661594, 40.996983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443718, 39.020424, 41.536999>,  <38.024033, 39.200748, 40.967976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443718, 39.020424, 41.536999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.558075, 39.400703, 41.488930>,  <38.626690, 39.628872, 41.460087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.558075, 39.400703, 41.488930>,  <38.443718, 39.020424, 41.536999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558075, 39.400703, 41.488930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164215, 0.074950, 0.983573,
		0.944087, -0.300927, -0.134692,
		0.285889, 0.950697, -0.120176,
		38.643841, 39.685913, 41.452877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079742, 39.096172, 41.919220>,  <38.443718, 39.020424, 41.536999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079742, 39.096172, 41.919220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.919407, 39.458649, 41.865353>,  <38.823204, 39.676136, 41.833031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.919407, 39.458649, 41.865353>,  <39.079742, 39.096172, 41.919220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919407, 39.458649, 41.865353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203323, 0.231322, 0.951394,
		0.893301, 0.353977, -0.276973,
		-0.400842, 0.906196, -0.134668,
		38.799156, 39.730507, 41.824951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505085, 39.522778, 42.348717>,  <39.079742, 39.096172, 41.919220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505085, 39.522778, 42.348717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.191551, 39.764301, 42.290718>,  <39.003429, 39.909214, 42.255917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.191551, 39.764301, 42.290718>,  <39.505085, 39.522778, 42.348717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191551, 39.764301, 42.290718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116114, 0.371899, 0.920982,
		0.610019, 0.705060, -0.361617,
		-0.783833, 0.603806, -0.144998,
		38.956402, 39.945442, 42.247219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692024, 40.153694, 42.588001>,  <39.505085, 39.522778, 42.348717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692024, 40.153694, 42.588001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.292110, 40.156151, 42.596001>,  <39.052162, 40.157627, 42.600800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.292110, 40.156151, 42.596001>,  <39.692024, 40.153694, 42.588001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292110, 40.156151, 42.596001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020916, 0.314798, 0.948928,
		-0.000465, 0.949139, -0.314857,
		-0.999781, 0.006144, 0.019999,
		38.992176, 40.157993, 42.602001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598129, 40.756969, 42.915764>,  <39.692024, 40.153694, 42.588001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598129, 40.756969, 42.915764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.238964, 40.581200, 42.926094>,  <39.023464, 40.475739, 42.932293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.238964, 40.581200, 42.926094>,  <39.598129, 40.756969, 42.915764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238964, 40.581200, 42.926094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191608, 0.442995, 0.875809,
		-0.396290, 0.781449, -0.481966,
		-0.897909, -0.439423, 0.025822,
		38.969593, 40.449371, 42.933842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075687, 41.288498, 43.191589>,  <39.598129, 40.756969, 42.915764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075687, 41.288498, 43.191589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936008, 40.919796, 43.259037>,  <38.852200, 40.698574, 43.299507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936008, 40.919796, 43.259037>,  <39.075687, 41.288498, 43.191589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936008, 40.919796, 43.259037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153488, 0.233781, 0.960098,
		-0.924392, 0.309384, -0.223114,
		-0.349199, -0.921753, 0.168618,
		38.831249, 40.643269, 43.309624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.370525, 41.376133, 43.533306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448021, 40.993282, 43.619450>,  <38.494518, 40.763573, 43.671135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.448021, 40.993282, 43.619450>,  <38.370525, 41.376133, 43.533306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448021, 40.993282, 43.619450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156386, 0.246841, 0.956354,
		-0.968508, -0.151604, 0.197504,
		0.193739, -0.957124, 0.215359,
		38.506142, 40.706146, 43.684059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980904, 41.277237, 44.145874>,  <38.370525, 41.376133, 43.533306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980904, 41.277237, 44.145874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229900, 40.965733, 44.176941>,  <38.379299, 40.778828, 44.195583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229900, 40.965733, 44.176941>,  <37.980904, 41.277237, 44.145874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229900, 40.965733, 44.176941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102413, 0.179445, 0.978423,
		-0.775899, -0.601103, 0.191459,
		0.622489, -0.778765, 0.077670,
		38.416649, 40.732101, 44.200241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632259, 40.773514, 44.549561>,  <37.980904, 41.277237, 44.145874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632259, 40.773514, 44.549561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027935, 40.715935, 44.560734>,  <38.265343, 40.681385, 44.567436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027935, 40.715935, 44.560734>,  <37.632259, 40.773514, 44.549561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027935, 40.715935, 44.560734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027135, 0.007487, 0.999604,
		-0.144104, -0.989556, 0.003500,
		0.989191, -0.143952, 0.027931,
		38.324692, 40.672749, 44.569115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722733, 40.268936, 45.036995>,  <37.632259, 40.773514, 44.549561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722733, 40.268936, 45.036995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.084789, 40.438328, 45.022118>,  <38.302025, 40.539963, 45.013191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.084789, 40.438328, 45.022118>,  <37.722733, 40.268936, 45.036995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084789, 40.438328, 45.022118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049640, -0.018402, 0.998598,
		0.422197, -0.905721, -0.037677,
		0.905144, 0.423476, -0.037191,
		38.356331, 40.565369, 45.010960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237812, 39.906448, 45.604053>,  <37.722733, 40.268936, 45.036995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237812, 39.906448, 45.604053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381184, 40.271965, 45.527615>,  <38.467209, 40.491276, 45.481750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.381184, 40.271965, 45.527615>,  <38.237812, 39.906448, 45.604053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381184, 40.271965, 45.527615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164816, 0.139548, 0.976403,
		0.918892, -0.381470, -0.100588,
		0.358431, 0.913787, -0.191102,
		38.488712, 40.546101, 45.470284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881920, 39.903030, 46.021755>,  <38.237812, 39.906448, 45.604053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881920, 39.903030, 46.021755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778831, 40.280018, 45.936584>,  <38.716980, 40.506210, 45.885483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778831, 40.280018, 45.936584>,  <38.881920, 39.903030, 46.021755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778831, 40.280018, 45.936584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112389, 0.248112, 0.962190,
		0.959661, 0.224045, -0.169867,
		-0.257720, 0.942467, -0.212923,
		38.701515, 40.562759, 45.872707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346474, 40.357357, 46.385998>,  <38.881920, 39.903030, 46.021755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346474, 40.357357, 46.385998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.055828, 40.617718, 46.298031>,  <38.881443, 40.773933, 46.245251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.055828, 40.617718, 46.298031>,  <39.346474, 40.357357, 46.385998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055828, 40.617718, 46.298031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037055, 0.282500, 0.958551,
		0.686049, 0.704644, -0.181149,
		-0.726612, 0.650900, -0.219920,
		38.837845, 40.812988, 46.232056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532307, 41.039829, 46.718060>,  <39.346474, 40.357357, 46.385998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532307, 41.039829, 46.718060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140038, 41.055820, 46.641453>,  <38.904675, 41.065414, 46.595490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140038, 41.055820, 46.641453>,  <39.532307, 41.039829, 46.718060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140038, 41.055820, 46.641453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172361, 0.286599, 0.942419,
		0.092566, 0.957216, -0.274169,
		-0.980675, 0.039980, -0.191516,
		38.845837, 41.067814, 46.584000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319706, 41.634247, 46.936493>,  <39.532307, 41.039829, 46.718060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319706, 41.634247, 46.936493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.988838, 41.409622, 46.944859>,  <38.790318, 41.274849, 46.949879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.988838, 41.409622, 46.944859>,  <39.319706, 41.634247, 46.936493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988838, 41.409622, 46.944859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175857, 0.294021, 0.939482,
		-0.533727, 0.773433, -0.341960,
		-0.827170, -0.561563, 0.020913,
		38.740688, 41.241154, 46.951134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900429, 42.104191, 47.227661>,  <39.319706, 41.634247, 46.936493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900429, 42.104191, 47.227661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752804, 41.736546, 47.282825>,  <38.664230, 41.515957, 47.315926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.752804, 41.736546, 47.282825>,  <38.900429, 42.104191, 47.227661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752804, 41.736546, 47.282825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170444, 0.212803, 0.962114,
		-0.913643, 0.331572, -0.235195,
		-0.369061, -0.919116, 0.137911,
		38.642086, 41.460812, 47.324200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453869, 42.205502, 47.725754>,  <38.900429, 42.104191, 47.227661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453869, 42.205502, 47.725754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458897, 41.806068, 47.746418>,  <38.461914, 41.566406, 47.758816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.458897, 41.806068, 47.746418>,  <38.453869, 42.205502, 47.725754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458897, 41.806068, 47.746418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104798, 0.050069, 0.993232,
		-0.994414, -0.017898, -0.104020,
		0.012569, -0.998585, 0.051665,
		38.462666, 41.506493, 47.761917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923946, 42.067348, 48.218864>,  <38.453869, 42.205502, 47.725754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923946, 42.067348, 48.218864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174591, 41.756180, 48.237606>,  <38.324978, 41.569477, 48.248852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174591, 41.756180, 48.237606>,  <37.923946, 42.067348, 48.218864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174591, 41.756180, 48.237606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036750, 0.030561, 0.998857,
		-0.778466, -0.627616, -0.009439,
		0.626610, -0.777923, 0.046856,
		38.362576, 41.522804, 48.251663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676640, 41.817139, 48.772430>,  <37.923946, 42.067348, 48.218864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676640, 41.817139, 48.772430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027714, 41.638821, 48.702065>,  <38.238358, 41.531830, 48.659847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027714, 41.638821, 48.702065>,  <37.676640, 41.817139, 48.772430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027714, 41.638821, 48.702065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155329, -0.082635, 0.984401,
		-0.453374, -0.891314, -0.003283,
		0.877681, -0.445792, -0.175911,
		38.291019, 41.505085, 48.649292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754063, 41.102776, 49.161297>,  <37.676640, 41.817139, 48.772430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754063, 41.102776, 49.161297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114510, 41.258469, 49.084904>,  <38.330780, 41.351887, 49.039066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114510, 41.258469, 49.084904>,  <37.754063, 41.102776, 49.161297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114510, 41.258469, 49.084904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221904, -0.035616, 0.974418,
		0.372477, -0.920449, -0.118467,
		0.901121, 0.389236, -0.190985,
		38.384846, 41.375240, 49.027607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134315, 40.839222, 49.645966>,  <37.754063, 41.102776, 49.161297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134315, 40.839222, 49.645966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393047, 41.122837, 49.533634>,  <38.548286, 41.293007, 49.466236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393047, 41.122837, 49.533634>,  <38.134315, 40.839222, 49.645966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393047, 41.122837, 49.533634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379336, 0.020327, 0.925036,
		0.661598, -0.704873, -0.255817,
		0.646833, 0.709042, -0.280832,
		38.587097, 41.335548, 49.449383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759674, 40.719643, 50.003735>,  <38.134315, 40.839222, 49.645966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759674, 40.719643, 50.003735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.802231, 41.106247, 49.910316>,  <38.827766, 41.338207, 49.854267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.802231, 41.106247, 49.910316>,  <38.759674, 40.719643, 50.003735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802231, 41.106247, 49.910316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383079, 0.176900, 0.906618,
		0.917568, -0.185924, -0.351428,
		0.106394, 0.966509, -0.233541,
		38.834148, 41.396198, 49.840256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436371, 40.889912, 50.303677>,  <38.759674, 40.719643, 50.003735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436371, 40.889912, 50.303677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.237129, 41.231117, 50.241367>,  <39.117584, 41.435841, 50.203983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.237129, 41.231117, 50.241367>,  <39.436371, 40.889912, 50.303677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237129, 41.231117, 50.241367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193547, 0.284484, 0.938940,
		0.845239, 0.437543, -0.306801,
		-0.498106, 0.853010, -0.155772,
		39.087696, 41.487019, 50.194637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826797, 41.361656, 50.697445>,  <39.436371, 40.889912, 50.303677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826797, 41.361656, 50.697445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486897, 41.550388, 50.603378>,  <39.282955, 41.663628, 50.546940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.486897, 41.550388, 50.603378>,  <39.826797, 41.361656, 50.697445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486897, 41.550388, 50.603378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048532, 0.514186, 0.856305,
		0.524951, 0.716230, -0.459827,
		-0.849748, 0.471834, -0.235162,
		39.231972, 41.691940, 50.532829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914349, 42.044430, 50.928871>,  <39.826797, 41.361656, 50.697445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914349, 42.044430, 50.928871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521179, 41.972210, 50.914677>,  <39.285278, 41.928879, 50.906158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.521179, 41.972210, 50.914677>,  <39.914349, 42.044430, 50.928871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521179, 41.972210, 50.914677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113648, 0.444018, 0.888781,
		-0.144716, 0.877638, -0.456956,
		-0.982925, -0.180553, -0.035485,
		39.226303, 41.918045, 50.904030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599285, 42.704544, 51.336994>,  <39.914349, 42.044430, 50.928871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599285, 42.704544, 51.336994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.299408, 42.440636, 51.316383>,  <39.119480, 42.282291, 51.304016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.299408, 42.440636, 51.316383>,  <39.599285, 42.704544, 51.336994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299408, 42.440636, 51.316383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408333, 0.399898, 0.820576,
		-0.520787, 0.636225, -0.569209,
		-0.749697, -0.659772, -0.051530,
		39.074497, 42.242702, 51.300922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903725, 43.023968, 51.249966>,  <39.599285, 42.704544, 51.336994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903725, 43.023968, 51.249966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832397, 42.655724, 51.388916>,  <38.789600, 42.434776, 51.472286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832397, 42.655724, 51.388916>,  <38.903725, 43.023968, 51.249966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832397, 42.655724, 51.388916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433610, 0.390429, 0.812126,
		-0.883281, -0.005811, -0.468807,
		-0.178317, -0.920615, 0.347378,
		38.778904, 42.379539, 51.493130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123177, 42.966045, 51.405182>,  <38.903725, 43.023968, 51.249966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123177, 42.966045, 51.405182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344200, 42.708984, 51.617474>,  <38.476814, 42.554749, 51.744850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344200, 42.708984, 51.617474>,  <38.123177, 42.966045, 51.405182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344200, 42.708984, 51.617474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587817, 0.150957, 0.794785,
		-0.590886, -0.751141, -0.294348,
		0.552561, -0.642650, 0.530732,
		38.509968, 42.516190, 51.776691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696228, 42.538506, 51.659115>,  <38.123177, 42.966045, 51.405182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696228, 42.538506, 51.659115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.008106, 42.578907, 51.906300>,  <38.195232, 42.603146, 52.054611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.008106, 42.578907, 51.906300>,  <37.696228, 42.538506, 51.659115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008106, 42.578907, 51.906300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624614, 0.194789, 0.756250,
		-0.043991, -0.975631, 0.214962,
		0.779694, 0.101000, 0.617961,
		38.242016, 42.609207, 52.091686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613403, 42.163498, 52.286148>,  <37.696228, 42.538506, 51.659115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613403, 42.163498, 52.286148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.831722, 42.486023, 52.377335>,  <37.962715, 42.679539, 52.432045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.831722, 42.486023, 52.377335>,  <37.613403, 42.163498, 52.286148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831722, 42.486023, 52.377335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602205, 0.188296, 0.775818,
		0.582624, -0.560724, 0.588335,
		0.545802, 0.806308, 0.227965,
		37.995464, 42.727917, 52.445724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524067, 41.487686, 52.633259>,  <37.613403, 42.163498, 52.286148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524067, 41.487686, 52.633259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138462, 41.388851, 52.672497>,  <36.907097, 41.329552, 52.696041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138462, 41.388851, 52.672497>,  <37.524067, 41.487686, 52.633259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138462, 41.388851, 52.672497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060035, -0.561800, -0.825092,
		0.258981, -0.789512, 0.556418,
		-0.964015, -0.247087, 0.098097,
		36.849258, 41.314724, 52.701927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449684, 40.810829, 52.482445>,  <37.524067, 41.487686, 52.633259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449684, 40.810829, 52.482445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082169, 40.941315, 52.393528>,  <36.861660, 41.019608, 52.340179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.082169, 40.941315, 52.393528>,  <37.449684, 40.810829, 52.482445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082169, 40.941315, 52.393528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125520, -0.292466, -0.948002,
		-0.374267, -0.898914, 0.227767,
		-0.918786, 0.326217, -0.222292,
		36.806534, 41.039181, 52.326839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238705, 40.380711, 51.976120>,  <37.449684, 40.810829, 52.482445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238705, 40.380711, 51.976120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.962143, 40.668251, 51.947212>,  <36.796207, 40.840775, 51.929867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.962143, 40.668251, 51.947212>,  <37.238705, 40.380711, 51.976120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962143, 40.668251, 51.947212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118555, -0.211558, -0.970148,
		-0.712678, -0.662193, 0.231494,
		-0.691400, 0.718849, -0.072266,
		36.754723, 40.883907, 51.925533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655605, 40.044106, 51.622990>,  <37.238705, 40.380711, 51.976120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655605, 40.044106, 51.622990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626427, 40.441235, 51.585075>,  <36.608921, 40.679512, 51.562325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.626427, 40.441235, 51.585075>,  <36.655605, 40.044106, 51.622990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626427, 40.441235, 51.585075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231209, -0.109289, -0.966746,
		-0.970165, -0.048605, 0.237522,
		-0.072947, 0.992821, -0.094790,
		36.604542, 40.739082, 51.556637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027637, 40.074070, 51.218819>,  <36.655605, 40.044106, 51.622990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027637, 40.074070, 51.218819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244114, 40.409374, 51.192196>,  <36.374001, 40.610558, 51.176220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244114, 40.409374, 51.192196>,  <36.027637, 40.074070, 51.218819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244114, 40.409374, 51.192196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084421, -0.024591, -0.996127,
		-0.836648, 0.544719, 0.057458,
		0.541196, 0.838258, -0.066560,
		36.406471, 40.660851, 51.172230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765732, 40.385780, 50.584927>,  <36.027637, 40.074070, 51.218819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765732, 40.385780, 50.584927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053722, 40.645634, 50.682594>,  <36.226517, 40.801544, 50.741196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.053722, 40.645634, 50.682594>,  <35.765732, 40.385780, 50.584927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053722, 40.645634, 50.682594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068612, 0.283473, -0.956523,
		-0.690603, 0.705422, 0.159520,
		0.719972, 0.649633, 0.244168,
		36.269714, 40.840523, 50.755844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514996, 41.026039, 50.379345>,  <35.765732, 40.385780, 50.584927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514996, 41.026039, 50.379345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912899, 41.056389, 50.351902>,  <36.151642, 41.074596, 50.335438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.912899, 41.056389, 50.351902>,  <35.514996, 41.026039, 50.379345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912899, 41.056389, 50.351902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089719, 0.325072, -0.941424,
		-0.049126, 0.942641, 0.330174,
		0.994755, 0.075872, -0.068603,
		36.211327, 41.079151, 50.331322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771835, 41.808270, 50.194359>,  <35.514996, 41.026039, 50.379345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771835, 41.808270, 50.194359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970924, 41.485126, 50.068096>,  <36.090378, 41.291241, 49.992336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970924, 41.485126, 50.068096>,  <35.771835, 41.808270, 50.194359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970924, 41.485126, 50.068096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269032, 0.202196, -0.941668,
		0.824559, 0.553609, -0.116703,
		0.497719, -0.807858, -0.315661,
		36.120239, 41.242767, 49.973396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876461, 41.921040, 49.458401>,  <35.771835, 41.808270, 50.194359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876461, 41.921040, 49.458401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985844, 41.536716, 49.476589>,  <36.051472, 41.306122, 49.487503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985844, 41.536716, 49.476589>,  <35.876461, 41.921040, 49.458401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985844, 41.536716, 49.476589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105548, -0.076960, -0.991432,
		0.956076, 0.266315, -0.122457,
		0.273457, -0.960809, 0.045471,
		36.067883, 41.248474, 49.490231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442520, 41.911758, 49.061626>,  <35.876461, 41.921040, 49.458401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442520, 41.911758, 49.061626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276745, 41.548538, 49.085926>,  <36.177280, 41.330608, 49.100506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276745, 41.548538, 49.085926>,  <36.442520, 41.911758, 49.061626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276745, 41.548538, 49.085926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110115, -0.116296, -0.987092,
		0.903390, -0.402401, 0.148187,
		-0.414441, -0.908046, 0.060750,
		36.152412, 41.276123, 49.104153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958797, 41.360909, 48.703617>,  <36.442520, 41.911758, 49.061626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958797, 41.360909, 48.703617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.584351, 41.220310, 48.708183>,  <36.359680, 41.135952, 48.710922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.584351, 41.220310, 48.708183>,  <36.958797, 41.360909, 48.703617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584351, 41.220310, 48.708183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132121, -0.381597, -0.914838,
		0.325917, -0.854890, 0.403660,
		-0.936121, -0.351493, 0.011420,
		36.303513, 41.114861, 48.711609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956543, 40.678986, 48.407215>,  <36.958797, 41.360909, 48.703617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956543, 40.678986, 48.407215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567188, 40.764881, 48.375221>,  <36.333572, 40.816418, 48.356026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.567188, 40.764881, 48.375221>,  <36.956543, 40.678986, 48.407215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567188, 40.764881, 48.375221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008944, -0.313177, -0.949653,
		-0.228972, -0.925100, 0.302923,
		-0.973392, 0.214734, -0.079983,
		36.275169, 40.829304, 48.351227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783749, 40.143696, 47.970467>,  <36.956543, 40.678986, 48.407215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783749, 40.143696, 47.970467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479919, 40.403862, 47.969135>,  <36.297623, 40.559963, 47.968338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479919, 40.403862, 47.969135>,  <36.783749, 40.143696, 47.970467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479919, 40.403862, 47.969135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129833, -0.156626, -0.979087,
		-0.637337, -0.743253, 0.203414,
		-0.759569, 0.650418, -0.003325,
		36.252048, 40.598988, 47.968140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235229, 39.781788, 47.519802>,  <36.783749, 40.143696, 47.970467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235229, 39.781788, 47.519802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118813, 40.164345, 47.529648>,  <36.048962, 40.393879, 47.535557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118813, 40.164345, 47.529648>,  <36.235229, 39.781788, 47.519802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118813, 40.164345, 47.529648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173693, -0.027519, -0.984415,
		-0.940812, -0.290780, 0.174129,
		-0.291040, 0.956394, 0.024617,
		36.031502, 40.451263, 47.537033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681335, 39.844376, 47.077606>,  <36.235229, 39.781788, 47.519802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681335, 39.844376, 47.077606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.815254, 40.221272, 47.081562>,  <35.895607, 40.447411, 47.083935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.815254, 40.221272, 47.081562>,  <35.681335, 39.844376, 47.077606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815254, 40.221272, 47.081562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334294, 0.128578, -0.933657,
		-0.880999, 0.309280, 0.358033,
		0.334796, 0.942239, 0.009887,
		35.915691, 40.503944, 47.084530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137848, 40.276485, 46.791908>,  <35.681335, 39.844376, 47.077606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137848, 40.276485, 46.791908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.505035, 40.427322, 46.742695>,  <35.725349, 40.517826, 46.713165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.505035, 40.427322, 46.742695>,  <35.137848, 40.276485, 46.791908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505035, 40.427322, 46.742695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212207, 0.204829, -0.955517,
		-0.335118, 0.903242, 0.268048,
		0.917967, 0.377093, -0.123032,
		35.780426, 40.540451, 46.705784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025475, 40.779861, 46.350769>,  <35.137848, 40.276485, 46.791908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025475, 40.779861, 46.350769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.424160, 40.754498, 46.330574>,  <35.663372, 40.739281, 46.318455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.424160, 40.754498, 46.330574>,  <35.025475, 40.779861, 46.350769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424160, 40.754498, 46.330574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032114, 0.263022, -0.964255,
		0.074422, 0.962704, 0.260120,
		0.996710, -0.063408, -0.050491,
		35.723171, 40.735474, 46.315426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284054, 41.492554, 45.970261>,  <35.025475, 40.779861, 46.350769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284054, 41.492554, 45.970261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541504, 41.187321, 45.946732>,  <35.695972, 41.004181, 45.932613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541504, 41.187321, 45.946732>,  <35.284054, 41.492554, 45.970261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541504, 41.187321, 45.946732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009503, 0.084816, -0.996351,
		0.765284, 0.640716, 0.061842,
		0.643623, -0.763079, -0.058820,
		35.734592, 40.958397, 45.929085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784122, 41.805309, 45.531548>,  <35.284054, 41.492554, 45.970261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784122, 41.805309, 45.531548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809990, 41.406181, 45.526203>,  <35.825508, 41.166706, 45.522995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809990, 41.406181, 45.526203>,  <35.784122, 41.805309, 45.531548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809990, 41.406181, 45.526203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022233, 0.014828, -0.999643,
		0.997659, 0.064345, 0.023144,
		0.064665, -0.997817, -0.013363,
		35.829388, 41.106834, 45.522194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315067, 41.622528, 45.127884>,  <35.784122, 41.805309, 45.531548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315067, 41.622528, 45.127884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099968, 41.286964, 45.161510>,  <35.970909, 41.085629, 45.181686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099968, 41.286964, 45.161510>,  <36.315067, 41.622528, 45.127884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099968, 41.286964, 45.161510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040063, -0.074168, -0.996441,
		0.842154, -0.539200, 0.006274,
		-0.537747, -0.838905, 0.084063,
		35.938644, 41.035294, 45.186729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.787682, 30.482204, 28.229698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.440231, 30.284193, 28.238075>,  <43.231762, 30.165386, 28.243101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.440231, 30.284193, 28.238075>,  <43.787682, 30.482204, 28.229698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440231, 30.284193, 28.238075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373944, 0.682719, 0.627742,
		-0.325049, 0.537441, -0.778139,
		-0.868625, -0.495028, 0.020944,
		43.179646, 30.135685, 28.244358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347198, 30.930431, 28.032072>,  <43.787682, 30.482204, 28.229698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347198, 30.930431, 28.032072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.161228, 30.662863, 28.264069>,  <43.049648, 30.502321, 28.403267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.161228, 30.662863, 28.264069>,  <43.347198, 30.930431, 28.032072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161228, 30.662863, 28.264069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269433, 0.730926, 0.627019,
		-0.843358, 0.135246, -0.520054,
		-0.464923, -0.668921, 0.579993,
		43.021751, 30.462187, 28.438066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781685, 31.220432, 28.168922>,  <43.347198, 30.930431, 28.032072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781685, 31.220432, 28.168922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796341, 30.942049, 28.455782>,  <42.805134, 30.775019, 28.627897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.796341, 30.942049, 28.455782>,  <42.781685, 31.220432, 28.168922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796341, 30.942049, 28.455782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412853, 0.642985, 0.645076,
		-0.910061, -0.319711, -0.263770,
		0.036637, -0.695956, 0.717149,
		42.807331, 30.733263, 28.670927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284039, 31.450424, 28.741598>,  <42.781685, 31.220432, 28.168922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284039, 31.450424, 28.741598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.490646, 31.171892, 28.940931>,  <42.614613, 31.004774, 29.060532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.490646, 31.171892, 28.940931>,  <42.284039, 31.450424, 28.741598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490646, 31.171892, 28.940931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267615, 0.421546, 0.866419,
		-0.813382, -0.580883, 0.031388,
		0.516520, -0.696329, 0.498331,
		42.645603, 30.962994, 29.090431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924000, 31.262241, 29.377581>,  <42.284039, 31.450424, 28.741598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924000, 31.262241, 29.377581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307751, 31.167217, 29.438452>,  <42.538002, 31.110203, 29.474974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307751, 31.167217, 29.438452>,  <41.924000, 31.262241, 29.377581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307751, 31.167217, 29.438452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072538, 0.313552, 0.946796,
		-0.272639, -0.919374, 0.283582,
		0.959378, -0.237563, 0.152176,
		42.595566, 31.095949, 29.484104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853951, 30.971313, 29.919546>,  <41.924000, 31.262241, 29.377581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853951, 30.971313, 29.919546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244373, 31.056709, 29.936209>,  <42.478626, 31.107946, 29.946205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244373, 31.056709, 29.936209>,  <41.853951, 30.971313, 29.919546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244373, 31.056709, 29.936209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106106, 0.300140, 0.947976,
		0.189882, -0.929698, 0.315606,
		0.976057, 0.213491, 0.041655,
		42.537189, 31.120756, 29.948706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013165, 30.676054, 30.529959>,  <41.853951, 30.971313, 29.919546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013165, 30.676054, 30.529959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.304676, 30.935253, 30.441435>,  <42.479584, 31.090773, 30.388321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.304676, 30.935253, 30.441435>,  <42.013165, 30.676054, 30.529959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304676, 30.935253, 30.441435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007782, 0.331012, 0.943594,
		0.684705, -0.685950, 0.246277,
		0.728779, 0.648000, -0.221308,
		42.523312, 31.129654, 30.375042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460918, 30.612453, 31.036470>,  <42.013165, 30.676054, 30.529959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460918, 30.612453, 31.036470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532310, 30.972809, 30.878206>,  <42.575146, 31.189022, 30.783247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532310, 30.972809, 30.878206>,  <42.460918, 30.612453, 31.036470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532310, 30.972809, 30.878206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051971, 0.392926, 0.918100,
		0.982571, -0.184423, 0.023309,
		0.178478, 0.900887, -0.395662,
		42.585854, 31.243074, 30.759508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.033600, 30.937992, 31.397680>,  <42.460918, 30.612453, 31.036470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.033600, 30.937992, 31.397680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833904, 31.240408, 31.228367>,  <42.714088, 31.421858, 31.126780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833904, 31.240408, 31.228367>,  <43.033600, 30.937992, 31.397680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833904, 31.240408, 31.228367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132065, 0.549203, 0.825188,
		0.856343, 0.356061, -0.374027,
		-0.499234, 0.756040, -0.423283,
		42.684135, 31.467220, 31.101381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446323, 31.540464, 31.495569>,  <43.033600, 30.937992, 31.397680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446323, 31.540464, 31.495569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.065811, 31.643980, 31.428532>,  <42.837502, 31.706089, 31.388309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.065811, 31.643980, 31.428532>,  <43.446323, 31.540464, 31.495569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065811, 31.643980, 31.428532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093939, 0.761010, 0.641903,
		0.293656, 0.594888, -0.748247,
		-0.951284, 0.258788, -0.167592,
		42.780426, 31.721617, 31.378254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518810, 32.212795, 31.471415>,  <43.446323, 31.540464, 31.495569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518810, 32.212795, 31.471415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127808, 32.146591, 31.523693>,  <42.893204, 32.106869, 31.555061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127808, 32.146591, 31.523693>,  <43.518810, 32.212795, 31.471415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127808, 32.146591, 31.523693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011616, 0.576532, 0.816992,
		-0.210575, 0.800135, -0.561643,
		-0.977509, -0.165514, 0.130698,
		42.834557, 32.096935, 31.562902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294582, 32.895893, 31.769297>,  <43.518810, 32.212795, 31.471415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294582, 32.895893, 31.769297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991257, 32.647976, 31.850100>,  <42.809261, 32.499226, 31.898582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991257, 32.647976, 31.850100>,  <43.294582, 32.895893, 31.769297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991257, 32.647976, 31.850100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133658, 0.451128, 0.882394,
		-0.638035, 0.642136, -0.424939,
		-0.758318, -0.619795, 0.202009,
		42.763760, 32.462036, 31.910702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618202, 33.289703, 31.911339>,  <43.294582, 32.895893, 31.769297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618202, 33.289703, 31.911339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.579380, 32.943214, 32.107395>,  <42.556087, 32.735321, 32.225029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.579380, 32.943214, 32.107395>,  <42.618202, 33.289703, 31.911339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.579380, 32.943214, 32.107395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158098, 0.499630, 0.851689,
		-0.982642, 0.005171, -0.185441,
		-0.097056, -0.866223, 0.490140,
		42.550262, 32.683346, 32.254436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985806, 33.329311, 32.217537>,  <42.618202, 33.289703, 31.911339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985806, 33.329311, 32.217537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.214420, 33.071415, 32.420578>,  <42.351589, 32.916679, 32.542404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.214420, 33.071415, 32.420578>,  <41.985806, 33.329311, 32.217537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214420, 33.071415, 32.420578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068385, 0.579017, 0.812443,
		-0.817723, -0.499052, 0.286838,
		0.571535, -0.644738, 0.507603,
		42.385880, 32.877995, 32.572861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.547070, 33.200504, 32.866020>,  <41.985806, 33.329311, 32.217537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.547070, 33.200504, 32.866020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929428, 33.104660, 32.933956>,  <42.158844, 33.047153, 32.974716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.929428, 33.104660, 32.933956>,  <41.547070, 33.200504, 32.866020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929428, 33.104660, 32.933956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032209, 0.489262, 0.871542,
		-0.291924, -0.838576, 0.459968,
		0.955899, -0.239609, 0.169837,
		42.216198, 33.032776, 32.984909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553516, 33.117874, 33.522530>,  <41.547070, 33.200504, 32.866020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553516, 33.117874, 33.522530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939457, 33.170753, 33.431683>,  <42.171021, 33.202480, 33.377174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939457, 33.170753, 33.431683>,  <41.553516, 33.117874, 33.522530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939457, 33.170753, 33.431683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125624, 0.527074, 0.840483,
		0.230818, -0.839474, 0.491941,
		0.964853, 0.132199, -0.227116,
		42.228912, 33.210415, 33.363548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957836, 32.987946, 34.121780>,  <41.553516, 33.117874, 33.522530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957836, 32.987946, 34.121780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.199791, 33.211670, 33.895054>,  <42.344963, 33.345905, 33.759018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.199791, 33.211670, 33.895054>,  <41.957836, 32.987946, 34.121780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199791, 33.211670, 33.895054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250797, 0.541769, 0.802239,
		0.755782, -0.627423, 0.187438,
		0.604892, 0.559309, -0.566816,
		42.381260, 33.379463, 33.725010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627041, 33.029442, 34.454021>,  <41.957836, 32.987946, 34.121780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627041, 33.029442, 34.454021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.608482, 33.337654, 34.199738>,  <42.597347, 33.522583, 34.047165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.608482, 33.337654, 34.199738>,  <42.627041, 33.029442, 34.454021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608482, 33.337654, 34.199738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340586, 0.610466, 0.715075,
		0.939068, -0.183338, -0.290755,
		-0.046395, 0.770531, -0.635711,
		42.594563, 33.568813, 34.009026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256393, 33.394886, 34.532974>,  <42.627041, 33.029442, 34.454021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256393, 33.394886, 34.532974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.006428, 33.642868, 34.343178>,  <42.856449, 33.791656, 34.229301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.006428, 33.642868, 34.343178>,  <43.256393, 33.394886, 34.532974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006428, 33.642868, 34.343178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216816, 0.721690, 0.657384,
		0.749980, 0.307934, -0.585411,
		-0.624916, 0.619951, -0.474489,
		42.818954, 33.828854, 34.200832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648842, 33.954575, 34.544842>,  <43.256393, 33.394886, 34.532974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648842, 33.954575, 34.544842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280746, 34.086990, 34.461353>,  <43.059887, 34.166439, 34.411259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280746, 34.086990, 34.461353>,  <43.648842, 33.954575, 34.544842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280746, 34.086990, 34.461353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112862, 0.735177, 0.668414,
		0.374722, 0.591545, -0.713903,
		-0.920242, 0.331042, -0.208724,
		43.004673, 34.186302, 34.398735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701378, 34.614063, 34.613575>,  <43.648842, 33.954575, 34.544842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701378, 34.614063, 34.613575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310474, 34.537247, 34.649536>,  <43.075932, 34.491158, 34.671112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310474, 34.537247, 34.649536>,  <43.701378, 34.614063, 34.613575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310474, 34.537247, 34.649536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090083, 0.759842, 0.643836,
		-0.191954, 0.621097, -0.759863,
		-0.977261, -0.192037, 0.089904,
		43.017296, 34.479637, 34.676506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187763, 34.945118, 34.956902>,  <43.701378, 34.614063, 34.613575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187763, 34.945118, 34.956902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.534927, 34.784035, 35.073212>,  <44.743225, 34.687386, 35.142998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.534927, 34.784035, 35.073212>,  <44.187763, 34.945118, 34.956902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534927, 34.784035, 35.073212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364747, 0.119338, -0.923427,
		0.337172, 0.907515, 0.250462,
		0.867914, -0.402709, 0.290776,
		44.795303, 34.663223, 35.160446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737503, 35.304646, 34.477539>,  <44.187763, 34.945118, 34.956902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737503, 35.304646, 34.477539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.929317, 34.981754, 34.615196>,  <45.044407, 34.788021, 34.697792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.929317, 34.981754, 34.615196>,  <44.737503, 35.304646, 34.477539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929317, 34.981754, 34.615196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436844, -0.120537, -0.891425,
		0.761062, 0.577807, 0.294830,
		0.479533, -0.807224, 0.344148,
		45.073177, 34.739586, 34.718441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496418, 35.359436, 34.221561>,  <44.737503, 35.304646, 34.477539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496418, 35.359436, 34.221561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419758, 34.974957, 34.300934>,  <45.373760, 34.744270, 34.348557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419758, 34.974957, 34.300934>,  <45.496418, 35.359436, 34.221561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419758, 34.974957, 34.300934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346385, -0.255406, -0.902654,
		0.918307, -0.104262, 0.381893,
		-0.191650, -0.961196, 0.198427,
		45.362263, 34.686596, 34.360462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087528, 34.984322, 33.912647>,  <45.496418, 35.359436, 34.221561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087528, 34.984322, 33.912647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.801586, 34.705791, 33.938305>,  <45.630020, 34.538673, 33.953697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.801586, 34.705791, 33.938305>,  <46.087528, 34.984322, 33.912647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801586, 34.705791, 33.938305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193901, -0.285515, -0.938554,
		0.671850, -0.658494, 0.339120,
		-0.714856, -0.696324, 0.064140,
		45.587128, 34.496895, 33.957546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361191, 34.427494, 33.623913>,  <46.087528, 34.984322, 33.912647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361191, 34.427494, 33.623913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.968887, 34.349445, 33.621284>,  <45.733505, 34.302616, 33.619709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.968887, 34.349445, 33.621284>,  <46.361191, 34.427494, 33.623913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.968887, 34.349445, 33.621284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105385, -0.500776, -0.859138,
		0.164348, -0.843297, 0.511702,
		-0.980757, -0.195123, -0.006569,
		45.674660, 34.290909, 33.619312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355263, 33.811588, 33.323250>,  <46.361191, 34.427494, 33.623913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355263, 33.811588, 33.323250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977692, 33.940014, 33.292492>,  <45.751148, 34.017067, 33.274036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977692, 33.940014, 33.292492>,  <46.355263, 33.811588, 33.323250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977692, 33.940014, 33.292492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065836, -0.411292, -0.909123,
		-0.323507, -0.853088, 0.409370,
		-0.943933, 0.321059, -0.076892,
		45.694511, 34.036331, 33.269424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010296, 33.271999, 33.051914>,  <46.355263, 33.811588, 33.323250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010296, 33.271999, 33.051914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.765903, 33.576324, 32.964405>,  <45.619267, 33.758919, 32.911900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.765903, 33.576324, 32.964405>,  <46.010296, 33.271999, 33.051914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.765903, 33.576324, 32.964405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041102, -0.306467, -0.950994,
		-0.790577, -0.572048, 0.218516,
		-0.610982, 0.760815, -0.218773,
		45.582607, 33.804569, 32.898773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344139, 32.923000, 32.845615>,  <46.010296, 33.271999, 33.051914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344139, 32.923000, 32.845615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322990, 33.290970, 32.690208>,  <45.310303, 33.511749, 32.596962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322990, 33.290970, 32.690208>,  <45.344139, 32.923000, 32.845615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322990, 33.290970, 32.690208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097425, -0.391960, -0.914809,
		-0.993838, -0.010513, 0.110346,
		-0.052868, 0.919922, -0.388520,
		45.307129, 33.566948, 32.573654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712368, 32.916046, 32.283714>,  <45.344139, 32.923000, 32.845615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712368, 32.916046, 32.283714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.956013, 33.218887, 32.189243>,  <45.102200, 33.400593, 32.132561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.956013, 33.218887, 32.189243>,  <44.712368, 32.916046, 32.283714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956013, 33.218887, 32.189243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224134, -0.121319, -0.966978,
		-0.760752, 0.641934, 0.095796,
		0.609114, 0.757101, -0.236173,
		45.138748, 33.446018, 32.118393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300842, 33.408257, 31.820189>,  <44.712368, 32.916046, 32.283714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300842, 33.408257, 31.820189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688950, 33.482849, 31.758480>,  <44.921814, 33.527607, 31.721455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688950, 33.482849, 31.758480>,  <44.300842, 33.408257, 31.820189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688950, 33.482849, 31.758480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141786, -0.078614, -0.986771,
		-0.196147, 0.979307, -0.049836,
		0.970270, 0.186486, -0.154272,
		44.980030, 33.538795, 31.712198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310268, 33.896275, 31.328869>,  <44.300842, 33.408257, 31.820189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310268, 33.896275, 31.328869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671387, 33.725082, 31.311890>,  <44.888058, 33.622368, 31.301702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671387, 33.725082, 31.311890>,  <44.310268, 33.896275, 31.328869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671387, 33.725082, 31.311890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074298, -0.057987, -0.995549,
		0.423611, 0.901927, -0.084148,
		0.902792, -0.427977, -0.042447,
		44.942223, 33.596687, 31.299156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677319, 34.218056, 30.745974>,  <44.310268, 33.896275, 31.328869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677319, 34.218056, 30.745974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834408, 33.856300, 30.812723>,  <44.928661, 33.639248, 30.852774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834408, 33.856300, 30.812723>,  <44.677319, 34.218056, 30.745974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834408, 33.856300, 30.812723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038959, -0.164931, -0.985535,
		0.918831, 0.393544, -0.029538,
		0.392723, -0.904390, 0.166876,
		44.952225, 33.584984, 30.862785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237335, 34.225349, 30.342033>,  <44.677319, 34.218056, 30.745974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237335, 34.225349, 30.342033> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171772, 33.835327, 30.401899>,  <45.132435, 33.601315, 30.437819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171772, 33.835327, 30.401899>,  <45.237335, 34.225349, 30.342033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171772, 33.835327, 30.401899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050011, -0.159736, -0.985892,
		0.985207, -0.154110, 0.074946,
		-0.163907, -0.975056, 0.149666,
		45.122601, 33.542809, 30.446798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668739, 33.992298, 29.811148>,  <45.237335, 34.225349, 30.342033>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668739, 33.992298, 29.811148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426235, 33.694782, 29.923729>,  <45.280731, 33.516273, 29.991278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426235, 33.694782, 29.923729>,  <45.668739, 33.992298, 29.811148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426235, 33.694782, 29.923729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099077, -0.280514, -0.954723,
		0.789068, -0.606699, 0.096373,
		-0.606263, -0.743793, 0.281455,
		45.244358, 33.471645, 30.008165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978241, 33.417507, 29.488695>,  <45.668739, 33.992298, 29.811148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978241, 33.417507, 29.488695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.595570, 33.333679, 29.569544>,  <45.365967, 33.283382, 29.618053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.595570, 33.333679, 29.569544>,  <45.978241, 33.417507, 29.488695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595570, 33.333679, 29.569544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151986, -0.232654, -0.960610,
		0.248336, -0.949713, 0.190724,
		-0.956676, -0.209567, 0.202120,
		45.308567, 33.270809, 29.630180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801945, 32.712063, 29.060320>,  <45.978241, 33.417507, 29.488695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801945, 32.712063, 29.060320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.462307, 32.907475, 29.140705>,  <45.258526, 33.024723, 29.188936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.462307, 32.907475, 29.140705>,  <45.801945, 32.712063, 29.060320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462307, 32.907475, 29.140705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314103, -0.161043, -0.935630,
		-0.424720, -0.857557, 0.290189,
		-0.849089, 0.488530, 0.200963,
		45.207581, 33.054031, 29.200994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400455, 32.303707, 28.698456>,  <45.801945, 32.712063, 29.060320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400455, 32.303707, 28.698456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188770, 32.639080, 28.750542>,  <45.061760, 32.840305, 28.781794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.188770, 32.639080, 28.750542>,  <45.400455, 32.303707, 28.698456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188770, 32.639080, 28.750542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417979, -0.124057, -0.899946,
		-0.738393, -0.530694, 0.416101,
		-0.529216, 0.838435, 0.130216,
		45.030006, 32.890610, 28.789606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672962, 32.177528, 28.462173>,  <45.400455, 32.303707, 28.698456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672962, 32.177528, 28.462173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642761, 32.575562, 28.487841>,  <44.624641, 32.814381, 28.503241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.642761, 32.575562, 28.487841>,  <44.672962, 32.177528, 28.462173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.642761, 32.575562, 28.487841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568398, 0.009923, -0.822694,
		-0.819282, -0.098587, 0.564852,
		-0.075501, 0.995079, 0.064166,
		44.620110, 32.874084, 28.507090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892345, 32.331612, 28.304680>,  <44.672962, 32.177528, 28.462173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892345, 32.331612, 28.304680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126743, 32.640316, 28.205891>,  <44.267384, 32.825539, 28.146618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.126743, 32.640316, 28.205891>,  <43.892345, 32.331612, 28.304680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.126743, 32.640316, 28.205891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425801, 0.033961, -0.904179,
		-0.689421, 0.635007, 0.348516,
		0.585996, 0.771759, -0.246973,
		44.302544, 32.871845, 28.131798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475399, 32.913258, 28.134501>,  <43.892345, 32.331612, 28.304680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475399, 32.913258, 28.134501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821976, 32.967392, 27.942266>,  <44.029922, 32.999870, 27.826925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.821976, 32.967392, 27.942266>,  <43.475399, 32.913258, 28.134501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821976, 32.967392, 27.942266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491979, 0.067429, -0.867992,
		-0.085061, 0.988503, 0.125003,
		0.866442, 0.135331, -0.480587,
		44.081909, 33.007992, 27.798090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286015, 33.349751, 27.668444>,  <43.475399, 32.913258, 28.134501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286015, 33.349751, 27.668444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.621208, 33.179058, 27.532396>,  <43.822327, 33.076645, 27.450768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.621208, 33.179058, 27.532396>,  <43.286015, 33.349751, 27.668444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621208, 33.179058, 27.532396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327353, 0.105570, -0.938986,
		0.436598, 0.898197, -0.051225,
		0.837987, -0.426728, -0.340119,
		43.872604, 33.051041, 27.430361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.603657, 40.427029, 41.078716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281715, 40.192348, 41.042942>,  <39.088551, 40.051540, 41.021477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281715, 40.192348, 41.042942>,  <39.603657, 40.427029, 41.078716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281715, 40.192348, 41.042942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243045, -0.188368, -0.951550,
		0.541426, -0.787593, 0.294203,
		-0.804852, -0.586698, -0.089433,
		39.040260, 40.016338, 41.016113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840992, 39.712994, 40.767105>,  <39.603657, 40.427029, 41.078716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840992, 39.712994, 40.767105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442825, 39.729855, 40.732773>,  <39.203926, 39.739971, 40.712173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442825, 39.729855, 40.732773>,  <39.840992, 39.712994, 40.767105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442825, 39.729855, 40.732773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070867, -0.277487, -0.958112,
		-0.064200, -0.959804, 0.273228,
		-0.995418, 0.042148, -0.085833,
		39.144199, 39.742500, 40.707024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643406, 39.065121, 40.385017>,  <39.840992, 39.712994, 40.767105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643406, 39.065121, 40.385017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337776, 39.319614, 40.342331>,  <39.154396, 39.472313, 40.316719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337776, 39.319614, 40.342331>,  <39.643406, 39.065121, 40.385017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337776, 39.319614, 40.342331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081054, -0.258780, -0.962529,
		-0.640012, -0.726798, 0.249298,
		-0.764078, 0.636237, -0.106712,
		39.108551, 39.510487, 40.310318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998489, 38.738071, 40.066574>,  <39.643406, 39.065121, 40.385017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998489, 38.738071, 40.066574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959034, 39.130539, 40.000156>,  <38.935360, 39.366020, 39.960308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959034, 39.130539, 40.000156>,  <38.998489, 38.738071, 40.066574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959034, 39.130539, 40.000156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107648, -0.176397, -0.978415,
		-0.989284, -0.078634, 0.123021,
		-0.098637, 0.981173, -0.166042,
		38.929443, 39.424892, 39.950344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431137, 38.878662, 39.631233>,  <38.998489, 38.738071, 40.066574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431137, 38.878662, 39.631233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667042, 39.198578, 39.586487>,  <38.808582, 39.390530, 39.559639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667042, 39.198578, 39.586487>,  <38.431137, 38.878662, 39.631233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667042, 39.198578, 39.586487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019038, -0.152245, -0.988159,
		-0.807354, 0.580647, -0.105015,
		0.589760, 0.799794, -0.111862,
		38.843971, 39.438515, 39.552929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157757, 39.253910, 39.054729>,  <38.431137, 38.878662, 39.631233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157757, 39.253910, 39.054729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522587, 39.417450, 39.067165>,  <38.741486, 39.515575, 39.074627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522587, 39.417450, 39.067165>,  <38.157757, 39.253910, 39.054729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522587, 39.417450, 39.067165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083023, -0.109895, -0.990470,
		-0.401537, 0.905961, -0.134176,
		0.912072, 0.408850, 0.031089,
		38.796207, 39.540104, 39.076492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165291, 39.771877, 38.471558>,  <38.157757, 39.253910, 39.054729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165291, 39.771877, 38.471558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548817, 39.701496, 38.560738>,  <38.778934, 39.659267, 38.614246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548817, 39.701496, 38.560738>,  <38.165291, 39.771877, 38.471558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548817, 39.701496, 38.560738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203262, -0.123177, -0.971345,
		0.198372, 0.976662, -0.082341,
		0.958819, -0.175951, 0.222953,
		38.836464, 39.648712, 38.627625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554977, 40.112316, 37.973419>,  <38.165291, 39.771877, 38.471558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554977, 40.112316, 37.973419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846401, 39.885727, 38.127460>,  <39.021255, 39.749775, 38.219887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846401, 39.885727, 38.127460>,  <38.554977, 40.112316, 37.973419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846401, 39.885727, 38.127460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367098, -0.151750, -0.917721,
		0.578303, 0.809988, 0.097391,
		0.728564, -0.566472, 0.385103,
		39.064972, 39.715786, 38.242992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197815, 40.335602, 37.724010>,  <38.554977, 40.112316, 37.973419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197815, 40.335602, 37.724010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254215, 39.953659, 37.828606>,  <39.288055, 39.724495, 37.891361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254215, 39.953659, 37.828606>,  <39.197815, 40.335602, 37.724010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254215, 39.953659, 37.828606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452174, -0.172852, -0.875021,
		0.880714, 0.241615, 0.407388,
		0.141000, -0.954853, 0.261485,
		39.296516, 39.667202, 37.907051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879463, 40.149109, 37.502773>,  <39.197815, 40.335602, 37.724010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879463, 40.149109, 37.502773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684982, 39.800903, 37.533253>,  <39.568295, 39.591980, 37.551540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684982, 39.800903, 37.533253>,  <39.879463, 40.149109, 37.502773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684982, 39.800903, 37.533253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408682, -0.303599, -0.860701,
		0.772391, -0.387331, 0.503375,
		-0.486200, -0.870518, 0.076202,
		39.539124, 39.539749, 37.556114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288364, 39.861763, 37.088543>,  <39.879463, 40.149109, 37.502773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288364, 39.861763, 37.088543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004250, 39.583447, 37.131203>,  <39.833782, 39.416458, 37.156799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004250, 39.583447, 37.131203>,  <40.288364, 39.861763, 37.088543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004250, 39.583447, 37.131203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381283, -0.507651, -0.772602,
		0.591711, -0.508100, 0.625869,
		-0.710282, -0.695790, 0.106653,
		39.791164, 39.374710, 37.163197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670937, 39.128269, 37.051880>,  <40.288364, 39.861763, 37.088543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670937, 39.128269, 37.051880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283230, 39.093456, 36.959839>,  <40.050606, 39.072571, 36.904613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283230, 39.093456, 36.959839>,  <40.670937, 39.128269, 37.051880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283230, 39.093456, 36.959839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233788, -0.617002, -0.751434,
		-0.076575, -0.782135, 0.618386,
		-0.969268, -0.087030, -0.230101,
		39.992451, 39.067348, 36.890808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599365, 38.428589, 36.898975>,  <40.670937, 39.128269, 37.051880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599365, 38.428589, 36.898975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328072, 38.660599, 36.718498>,  <40.165295, 38.799805, 36.610210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328072, 38.660599, 36.718498>,  <40.599365, 38.428589, 36.898975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328072, 38.660599, 36.718498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267167, -0.377350, -0.886696,
		-0.684560, -0.721930, 0.100969,
		-0.678233, 0.580021, -0.451194,
		40.124603, 38.834606, 36.583141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132607, 38.073780, 36.542011>,  <40.599365, 38.428589, 36.898975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132607, 38.073780, 36.542011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242329, 38.433285, 36.405193>,  <40.308163, 38.648987, 36.323105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242329, 38.433285, 36.405193>,  <40.132607, 38.073780, 36.542011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242329, 38.433285, 36.405193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557211, -0.438437, -0.705187,
		-0.783756, 0.002846, -0.621063,
		0.274304, 0.898758, -0.342041,
		40.324619, 38.702911, 36.302582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244331, 37.359753, 36.825268>,  <40.132607, 38.073780, 36.542011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244331, 37.359753, 36.825268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407906, 37.002224, 36.898857>,  <40.506050, 36.787704, 36.943012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407906, 37.002224, 36.898857>,  <40.244331, 37.359753, 36.825268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407906, 37.002224, 36.898857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766716, -0.227193, 0.600441,
		-0.494892, -0.386598, -0.778218,
		0.408935, -0.893826, 0.183975,
		40.530586, 36.734077, 36.954048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657902, 36.914024, 36.789768>,  <40.244331, 37.359753, 36.825268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657902, 36.914024, 36.789768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940735, 36.731785, 37.006088>,  <40.110435, 36.622440, 37.135880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940735, 36.731785, 37.006088>,  <39.657902, 36.914024, 36.789768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940735, 36.731785, 37.006088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664718, -0.167378, 0.728103,
		-0.241206, -0.874307, -0.421196,
		0.707085, -0.455600, 0.540795,
		40.152863, 36.595108, 37.168327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337799, 36.429218, 37.150955>,  <39.657902, 36.914024, 36.789768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337799, 36.429218, 37.150955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672661, 36.439209, 37.369514>,  <39.873577, 36.445202, 37.500648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672661, 36.439209, 37.369514>,  <39.337799, 36.429218, 37.150955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672661, 36.439209, 37.369514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538778, -0.134529, 0.831637,
		0.094279, -0.990595, -0.099164,
		0.837156, 0.024979, 0.546394,
		39.923809, 36.446701, 37.533432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397034, 35.764904, 37.573803>,  <39.337799, 36.429218, 37.150955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397034, 35.764904, 37.573803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603436, 36.042496, 37.774658>,  <39.727276, 36.209049, 37.895172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603436, 36.042496, 37.774658>,  <39.397034, 35.764904, 37.573803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603436, 36.042496, 37.774658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448005, -0.280995, 0.848724,
		0.730092, -0.662902, 0.165911,
		0.516000, 0.693976, 0.502136,
		39.758236, 36.250690, 37.925301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611729, 35.410061, 38.262974>,  <39.397034, 35.764904, 37.573803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611729, 35.410061, 38.262974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645973, 35.806339, 38.305290>,  <39.666519, 36.044106, 38.330681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645973, 35.806339, 38.305290>,  <39.611729, 35.410061, 38.262974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645973, 35.806339, 38.305290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429534, -0.059109, 0.901114,
		0.898983, -0.122591, 0.420477,
		0.085615, 0.990695, 0.105795,
		39.671658, 36.103546, 38.337029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785240, 35.434227, 38.910564>,  <39.611729, 35.410061, 38.262974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785240, 35.434227, 38.910564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668270, 35.811249, 38.845970>,  <39.598091, 36.037464, 38.807213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668270, 35.811249, 38.845970>,  <39.785240, 35.434227, 38.910564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668270, 35.811249, 38.845970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161747, 0.117680, 0.979790,
		0.942512, 0.312630, 0.118044,
		-0.292421, 0.942557, -0.161481,
		39.580544, 36.094017, 38.797527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948654, 35.683662, 39.576893>,  <39.785240, 35.434227, 38.910564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948654, 35.683662, 39.576893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726585, 35.960518, 39.392403>,  <39.593342, 36.126633, 39.281708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726585, 35.960518, 39.392403>,  <39.948654, 35.683662, 39.576893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726585, 35.960518, 39.392403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473283, 0.193109, 0.859483,
		0.683947, 0.695452, 0.220368,
		-0.555175, 0.692138, -0.461222,
		39.560032, 36.168159, 39.254036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903973, 36.312637, 40.028221>,  <39.948654, 35.683662, 39.576893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903973, 36.312637, 40.028221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592495, 36.325874, 39.777611>,  <39.405609, 36.333817, 39.627243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592495, 36.325874, 39.777611>,  <39.903973, 36.312637, 40.028221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592495, 36.325874, 39.777611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606757, 0.214338, 0.765444,
		0.159617, 0.976199, -0.146828,
		-0.778697, 0.033089, -0.626528,
		39.358887, 36.335800, 39.589653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569092, 36.952404, 40.167004>,  <39.903973, 36.312637, 40.028221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569092, 36.952404, 40.167004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311703, 36.691841, 40.006203>,  <39.157269, 36.535503, 39.909721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311703, 36.691841, 40.006203>,  <39.569092, 36.952404, 40.167004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311703, 36.691841, 40.006203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628219, 0.149337, 0.763571,
		-0.437364, 0.743883, -0.505323,
		-0.643470, -0.651411, -0.402007,
		39.118660, 36.496418, 39.885601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984905, 37.291367, 40.333717>,  <39.569092, 36.952404, 40.167004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984905, 37.291367, 40.333717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882946, 36.912182, 40.257401>,  <38.821770, 36.684673, 40.211609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882946, 36.912182, 40.257401>,  <38.984905, 37.291367, 40.333717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882946, 36.912182, 40.257401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551329, -0.019625, 0.834057,
		-0.794396, 0.317788, -0.517634,
		-0.254895, -0.947959, -0.190796,
		38.806477, 36.627792, 40.200161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242435, 37.223125, 40.331196>,  <38.984905, 37.291367, 40.333717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242435, 37.223125, 40.331196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409473, 36.873970, 40.432144>,  <38.509697, 36.664478, 40.492714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409473, 36.873970, 40.432144>,  <38.242435, 37.223125, 40.331196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409473, 36.873970, 40.432144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586671, -0.046919, 0.808465,
		-0.693855, -0.485666, -0.531689,
		0.417590, -0.872884, 0.252372,
		38.534752, 36.612106, 40.507854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670128, 36.862507, 40.545547>,  <38.242435, 37.223125, 40.331196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670128, 36.862507, 40.545547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975159, 36.638630, 40.675301>,  <38.158176, 36.504303, 40.753155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975159, 36.638630, 40.675301>,  <37.670128, 36.862507, 40.545547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975159, 36.638630, 40.675301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497447, -0.186781, 0.847148,
		-0.413551, -0.807378, -0.420851,
		0.762575, -0.559690, 0.324384,
		38.203930, 36.470722, 40.772617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326488, 36.262516, 40.718937>,  <37.670128, 36.862507, 40.545547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326488, 36.262516, 40.718937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674397, 36.286263, 40.914886>,  <37.883141, 36.300510, 41.032455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674397, 36.286263, 40.914886>,  <37.326488, 36.262516, 40.718937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674397, 36.286263, 40.914886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493396, 0.088355, 0.865305,
		0.008083, -0.994319, 0.106138,
		0.869767, 0.059362, 0.489879,
		37.935326, 36.304073, 41.061852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214642, 35.907066, 41.359554>,  <37.326488, 36.262516, 40.718937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214642, 35.907066, 41.359554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545898, 36.116096, 41.440636>,  <37.744652, 36.241516, 41.489285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545898, 36.116096, 41.440636>,  <37.214642, 35.907066, 41.359554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545898, 36.116096, 41.440636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371436, 0.240804, 0.896688,
		0.419775, -0.817880, 0.393524,
		0.828145, 0.522575, 0.202706,
		37.794342, 36.272869, 41.501446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634537, 35.315430, 41.261799>,  <37.214642, 35.907066, 41.359554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634537, 35.315430, 41.261799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310230, 35.287888, 41.494324>,  <36.115646, 35.271362, 41.633839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310230, 35.287888, 41.494324>,  <36.634537, 35.315430, 41.261799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310230, 35.287888, 41.494324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584409, 0.152288, -0.797041,
		-0.033646, -0.985935, -0.163709,
		-0.810761, -0.068856, 0.581313,
		36.067001, 35.267231, 41.668716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158691, 34.747753, 40.958950>,  <36.634537, 35.315430, 41.261799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158691, 34.747753, 40.958950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961983, 35.020477, 41.175579>,  <35.843956, 35.184113, 41.305557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961983, 35.020477, 41.175579>,  <36.158691, 34.747753, 40.958950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961983, 35.020477, 41.175579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717998, 0.034332, -0.695198,
		-0.492584, -0.730726, 0.472653,
		-0.491771, 0.681807, 0.541572,
		35.814453, 35.225021, 41.338051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403889, 34.677860, 40.777580>,  <36.158691, 34.747753, 40.958950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403889, 34.677860, 40.777580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389896, 35.040489, 40.945820>,  <35.381500, 35.258064, 41.046764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389896, 35.040489, 40.945820>,  <35.403889, 34.677860, 40.777580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389896, 35.040489, 40.945820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776843, 0.240098, -0.582124,
		-0.628722, -0.347108, 0.695863,
		-0.034984, 0.906570, 0.420603,
		35.379402, 35.312462, 41.072002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762257, 34.869831, 41.105164>,  <35.403889, 34.677860, 40.777580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762257, 34.869831, 41.105164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931862, 35.211922, 40.985962>,  <35.033627, 35.417175, 40.914440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931862, 35.211922, 40.985962>,  <34.762257, 34.869831, 41.105164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931862, 35.211922, 40.985962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782132, 0.179903, -0.596577,
		-0.456594, 0.486035, 0.745179,
		0.424017, 0.855222, -0.298001,
		35.059067, 35.468487, 40.896561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153782, 35.297733, 41.174572>,  <34.762257, 34.869831, 41.105164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153782, 35.297733, 41.174572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408375, 35.529133, 40.970524>,  <34.561131, 35.667973, 40.848095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408375, 35.529133, 40.970524>,  <34.153782, 35.297733, 41.174572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408375, 35.529133, 40.970524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741964, 0.278596, -0.609814,
		-0.210660, 0.766629, 0.606549,
		0.636484, 0.578501, -0.510122,
		34.599319, 35.702682, 40.817486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767494, 35.902966, 40.974411>,  <34.153782, 35.297733, 41.174572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767494, 35.902966, 40.974411> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090427, 35.898911, 40.738411>,  <34.284187, 35.896477, 40.596809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090427, 35.898911, 40.738411>,  <33.767494, 35.902966, 40.974411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090427, 35.898911, 40.738411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563440, 0.283841, -0.775867,
		0.175333, 0.958818, 0.223443,
		0.807337, -0.010139, -0.590003,
		34.332630, 35.895870, 40.561409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563637, 36.380527, 40.498711>,  <33.767494, 35.902966, 40.974411>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563637, 36.380527, 40.498711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862930, 36.186146, 40.318047>,  <34.042507, 36.069515, 40.209648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862930, 36.186146, 40.318047>,  <33.563637, 36.380527, 40.498711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862930, 36.186146, 40.318047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445791, 0.135933, -0.884756,
		0.491348, 0.863347, -0.114926,
		0.748229, -0.485956, -0.451663,
		34.087399, 36.040359, 40.182549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833065, 36.887978, 39.828903>,  <33.563637, 36.380527, 40.498711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833065, 36.887978, 39.828903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939529, 36.510586, 39.749905>,  <34.003407, 36.284149, 39.702503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939529, 36.510586, 39.749905>,  <33.833065, 36.887978, 39.828903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939529, 36.510586, 39.749905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395909, 0.079813, -0.914815,
		0.878871, 0.321680, -0.352289,
		0.266161, -0.943479, -0.197501,
		34.019379, 36.227543, 39.690655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988468, 36.970890, 39.120247>,  <33.833065, 36.887978, 39.828903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988468, 36.970890, 39.120247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934746, 36.584656, 39.209343>,  <33.902512, 36.352917, 39.262802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934746, 36.584656, 39.209343>,  <33.988468, 36.970890, 39.120247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934746, 36.584656, 39.209343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572995, -0.107719, -0.812449,
		0.808479, -0.236748, -0.538806,
		-0.134306, -0.965581, 0.222744,
		33.894455, 36.294983, 39.276165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029415, 36.751709, 38.512600>,  <33.988468, 36.970890, 39.120247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029415, 36.751709, 38.512600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838528, 36.455601, 38.702026>,  <33.723995, 36.277935, 38.815681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838528, 36.455601, 38.702026>,  <34.029415, 36.751709, 38.512600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838528, 36.455601, 38.702026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602485, -0.116696, -0.789553,
		0.639747, -0.662102, -0.390314,
		-0.477217, -0.740273, 0.473562,
		33.695362, 36.233521, 38.844093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979332, 36.169979, 38.021557>,  <34.029415, 36.751709, 38.512600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979332, 36.169979, 38.021557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704033, 36.117207, 38.306908>,  <33.538853, 36.085545, 38.478119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704033, 36.117207, 38.306908>,  <33.979332, 36.169979, 38.021557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704033, 36.117207, 38.306908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714289, -0.048782, -0.698148,
		0.126906, -0.990058, -0.060661,
		-0.688248, -0.131929, 0.713378,
		33.497559, 36.077629, 38.520920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589912, 35.586433, 37.884918>,  <33.979332, 36.169979, 38.021557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589912, 35.586433, 37.884918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374866, 35.840405, 38.106853>,  <33.245838, 35.992786, 38.240013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374866, 35.840405, 38.106853>,  <33.589912, 35.586433, 37.884918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374866, 35.840405, 38.106853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644132, 0.115373, -0.756164,
		-0.544122, -0.763909, 0.346951,
		-0.537611, 0.634927, 0.554835,
		33.213585, 36.030884, 38.273304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.427467, 33.141735, 44.777122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.165821, 33.422482, 44.889915>,  <37.008835, 33.590931, 44.957592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.165821, 33.422482, 44.889915>,  <37.427467, 33.141735, 44.777122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165821, 33.422482, 44.889915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180500, 0.217187, -0.959296,
		-0.734541, -0.678389, -0.015379,
		-0.654117, 0.701867, 0.281982,
		36.969585, 33.633041, 44.974510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994225, 33.070786, 44.206444>,  <37.427467, 33.141735, 44.777122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994225, 33.070786, 44.206444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914608, 33.428101, 44.367645>,  <36.866837, 33.642490, 44.464367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.914608, 33.428101, 44.367645>,  <36.994225, 33.070786, 44.206444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914608, 33.428101, 44.367645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181710, 0.370461, -0.910901,
		-0.962997, -0.254537, 0.088583,
		-0.199041, 0.893291, 0.403005,
		36.854897, 33.696087, 44.488548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344803, 33.285973, 43.982761>,  <36.994225, 33.070786, 44.206444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344803, 33.285973, 43.982761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540527, 33.617016, 44.092770>,  <36.657963, 33.815643, 44.158775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.540527, 33.617016, 44.092770>,  <36.344803, 33.285973, 43.982761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540527, 33.617016, 44.092770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249205, 0.434885, -0.865316,
		-0.835748, 0.354869, 0.419038,
		0.489308, 0.827613, 0.275019,
		36.687321, 33.865299, 44.175274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945278, 33.768841, 43.837193>,  <36.344803, 33.285973, 43.982761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945278, 33.768841, 43.837193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.263920, 34.009941, 43.855583>,  <36.455105, 34.154602, 43.866619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.263920, 34.009941, 43.855583>,  <35.945278, 33.768841, 43.837193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263920, 34.009941, 43.855583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318759, 0.483471, -0.815259,
		-0.513625, 0.634784, 0.577267,
		0.796606, 0.602747, 0.045980,
		36.502903, 34.190765, 43.869377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690876, 34.416561, 43.814114>,  <35.945278, 33.768841, 43.837193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690876, 34.416561, 43.814114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073227, 34.471134, 43.710045>,  <36.302639, 34.503880, 43.647606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073227, 34.471134, 43.710045>,  <35.690876, 34.416561, 43.814114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073227, 34.471134, 43.710045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291188, 0.557219, -0.777635,
		0.038874, 0.819081, 0.572360,
		0.955876, 0.136435, -0.260167,
		36.359989, 34.512066, 43.631996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706455, 35.075748, 43.709599>,  <35.690876, 34.416561, 43.814114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706455, 35.075748, 43.709599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.014458, 34.919704, 43.507648>,  <36.199261, 34.826077, 43.386478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.014458, 34.919704, 43.507648>,  <35.706455, 35.075748, 43.709599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014458, 34.919704, 43.507648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267406, 0.521136, -0.810500,
		0.579294, 0.759099, 0.296962,
		0.770008, -0.390109, -0.504878,
		36.245461, 34.802673, 43.356186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112614, 35.726288, 43.430458>,  <35.706455, 35.075748, 43.709599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112614, 35.726288, 43.430458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181644, 35.394974, 43.217228>,  <36.223061, 35.196186, 43.089291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.181644, 35.394974, 43.217228>,  <36.112614, 35.726288, 43.430458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181644, 35.394974, 43.217228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137664, 0.515601, -0.845697,
		0.975329, 0.219330, -0.025046,
		0.172573, -0.828281, -0.533075,
		36.233418, 35.146488, 43.057304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410675, 36.021305, 42.688396>,  <36.112614, 35.726288, 43.430458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410675, 36.021305, 42.688396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321934, 35.638386, 42.614243>,  <36.268688, 35.408634, 42.569752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321934, 35.638386, 42.614243>,  <36.410675, 36.021305, 42.688396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321934, 35.638386, 42.614243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330413, 0.252680, -0.909385,
		0.917393, -0.140494, -0.372360,
		-0.221851, -0.957295, -0.185386,
		36.255379, 35.351196, 42.558628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793640, 35.728340, 42.017353>,  <36.410675, 36.021305, 42.688396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793640, 35.728340, 42.017353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.468510, 35.505192, 42.084408>,  <36.273434, 35.371304, 42.124641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.468510, 35.505192, 42.084408>,  <36.793640, 35.728340, 42.017353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468510, 35.505192, 42.084408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363312, 0.260563, -0.894490,
		0.455329, -0.787965, -0.414472,
		-0.812822, -0.557870, 0.167635,
		36.224663, 35.337830, 42.134697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545135, 35.638969, 41.997890>,  <36.793640, 35.728340, 42.017353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545135, 35.638969, 41.997890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658257, 36.021816, 41.972740>,  <37.726128, 36.251522, 41.957649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658257, 36.021816, 41.972740>,  <37.545135, 35.638969, 41.997890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658257, 36.021816, 41.972740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246949, 0.135996, 0.959438,
		0.926843, -0.255805, 0.274819,
		0.282804, 0.957115, -0.062876,
		37.743099, 36.308952, 41.953876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898643, 35.711544, 42.642860>,  <37.545135, 35.638969, 41.997890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898643, 35.711544, 42.642860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789055, 36.076405, 42.520927>,  <37.723301, 36.295322, 42.447769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.789055, 36.076405, 42.520927>,  <37.898643, 35.711544, 42.642860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789055, 36.076405, 42.520927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290044, 0.223834, 0.930469,
		0.916959, 0.343336, 0.203240,
		-0.273971, 0.912151, -0.304829,
		37.706863, 36.350048, 42.429478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327160, 36.180645, 43.066292>,  <37.898643, 35.711544, 42.642860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327160, 36.180645, 43.066292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016827, 36.386063, 42.919674>,  <37.830627, 36.509312, 42.831703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.016827, 36.386063, 42.919674>,  <38.327160, 36.180645, 43.066292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016827, 36.386063, 42.919674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157980, 0.404328, 0.900867,
		0.610834, 0.756833, -0.232564,
		-0.775837, 0.513540, -0.366542,
		37.784077, 36.540123, 42.809711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406780, 36.851742, 43.281067>,  <38.327160, 36.180645, 43.066292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406780, 36.851742, 43.281067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.018867, 36.866817, 43.184650>,  <37.786121, 36.875862, 43.126801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.018867, 36.866817, 43.184650>,  <38.406780, 36.851742, 43.281067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018867, 36.866817, 43.184650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198419, 0.453011, 0.869144,
		0.141953, 0.890708, -0.431844,
		-0.969783, 0.037691, -0.241040,
		37.727932, 36.878124, 43.112339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268490, 37.595432, 43.324123>,  <38.406780, 36.851742, 43.281067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268490, 37.595432, 43.324123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945271, 37.361885, 43.355499>,  <37.751339, 37.221756, 43.374325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945271, 37.361885, 43.355499>,  <38.268490, 37.595432, 43.324123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945271, 37.361885, 43.355499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221353, 0.424298, 0.878051,
		-0.545948, 0.692147, -0.472095,
		-0.808049, -0.583870, 0.078436,
		37.702854, 37.186726, 43.379028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795727, 38.011063, 43.574558>,  <38.268490, 37.595432, 43.324123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795727, 38.011063, 43.574558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654797, 37.643986, 43.647999>,  <37.570240, 37.423740, 43.692062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654797, 37.643986, 43.647999>,  <37.795727, 38.011063, 43.574558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654797, 37.643986, 43.647999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292992, 0.294473, 0.909638,
		-0.888833, 0.266694, -0.372627,
		-0.352324, -0.917693, 0.183598,
		37.549099, 37.368679, 43.703079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201801, 38.049725, 44.070904>,  <37.795727, 38.011063, 43.574558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201801, 38.049725, 44.070904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317554, 37.673222, 44.140522>,  <37.387005, 37.447319, 44.182293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317554, 37.673222, 44.140522>,  <37.201801, 38.049725, 44.070904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317554, 37.673222, 44.140522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340612, 0.068670, 0.937693,
		-0.894562, -0.330635, -0.300732,
		0.289383, -0.941257, 0.174048,
		37.404369, 37.390846, 44.192738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612072, 37.731899, 44.542458>,  <37.201801, 38.049725, 44.070904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612072, 37.731899, 44.542458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.970585, 37.555820, 44.563995>,  <37.185692, 37.450172, 44.576920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.970585, 37.555820, 44.563995>,  <36.612072, 37.731899, 44.542458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970585, 37.555820, 44.563995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048897, 0.218772, 0.974550,
		-0.440775, -0.870841, 0.217607,
		0.896285, -0.440198, 0.053848,
		37.239471, 37.423759, 44.580151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610149, 37.546741, 45.175316>,  <36.612072, 37.731899, 44.542458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610149, 37.546741, 45.175316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.996632, 37.478603, 45.097931>,  <37.228523, 37.437721, 45.051502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.996632, 37.478603, 45.097931>,  <36.610149, 37.546741, 45.175316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996632, 37.478603, 45.097931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225634, 0.196047, 0.954283,
		-0.124629, -0.965686, 0.227857,
		0.966208, -0.170343, -0.193458,
		37.286495, 37.427502, 45.039894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826820, 37.034794, 45.653980>,  <36.610149, 37.546741, 45.175316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826820, 37.034794, 45.653980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127377, 37.265495, 45.525757>,  <37.307713, 37.403915, 45.448822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.127377, 37.265495, 45.525757>,  <36.826820, 37.034794, 45.653980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127377, 37.265495, 45.525757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270477, 0.173904, 0.946890,
		0.601873, -0.798190, -0.025330,
		0.751393, 0.576758, -0.320560,
		37.352795, 37.438522, 45.429588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409573, 36.900574, 46.044067>,  <36.826820, 37.034794, 45.653980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409573, 36.900574, 46.044067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.541428, 37.248562, 45.897373>,  <37.620541, 37.457355, 45.809357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.541428, 37.248562, 45.897373>,  <37.409573, 36.900574, 46.044067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541428, 37.248562, 45.897373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485747, 0.176804, 0.856032,
		0.809559, -0.460323, -0.364302,
		0.329641, 0.869967, -0.366734,
		37.640320, 37.509552, 45.787354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076302, 36.881104, 46.228245>,  <37.409573, 36.900574, 46.044067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076302, 36.881104, 46.228245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025139, 37.269070, 46.145390>,  <37.994442, 37.501850, 46.095676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025139, 37.269070, 46.145390>,  <38.076302, 36.881104, 46.228245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025139, 37.269070, 46.145390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698128, 0.236399, 0.675820,
		0.704455, -0.058168, -0.707361,
		-0.127908, 0.969913, -0.207141,
		37.986767, 37.560043, 46.083248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719440, 37.121078, 45.924702>,  <38.076302, 36.881104, 46.228245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719440, 37.121078, 45.924702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.496555, 37.404015, 46.098679>,  <38.362823, 37.573776, 46.203064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.496555, 37.404015, 46.098679>,  <38.719440, 37.121078, 45.924702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496555, 37.404015, 46.098679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732858, 0.172647, 0.658112,
		0.390421, 0.685462, -0.614584,
		-0.557217, 0.707344, 0.434941,
		38.329391, 37.616219, 46.229160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133476, 37.683689, 46.162067>,  <38.719440, 37.121078, 45.924702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133476, 37.683689, 46.162067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.814808, 37.762405, 46.390659>,  <38.623608, 37.809635, 46.527813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.814808, 37.762405, 46.390659>,  <39.133476, 37.683689, 46.162067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814808, 37.762405, 46.390659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598289, 0.390995, 0.699409,
		-0.085809, 0.899109, -0.429232,
		-0.796672, 0.196790, 0.571478,
		38.575806, 37.821442, 46.562103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.487106, 39.307434, 47.092209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770195, 39.025993, 47.066681>,  <33.940048, 38.857128, 47.051365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770195, 39.025993, 47.066681>,  <33.487106, 39.307434, 47.092209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770195, 39.025993, 47.066681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184334, -0.096702, -0.978095,
		0.682018, 0.703984, -0.198136,
		0.707723, -0.703601, -0.063815,
		33.982513, 38.814915, 47.047535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783192, 39.408211, 46.363087>,  <33.487106, 39.307434, 47.092209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783192, 39.408211, 46.363087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.892368, 39.041695, 46.480339>,  <33.957874, 38.821785, 46.550690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.892368, 39.041695, 46.480339>,  <33.783192, 39.408211, 46.363087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892368, 39.041695, 46.480339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046505, -0.316908, -0.947315,
		0.960907, 0.244925, -0.129108,
		0.272937, -0.916286, 0.293129,
		33.974251, 38.766808, 46.568279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357861, 39.200176, 45.969891>,  <33.783192, 39.408211, 46.363087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357861, 39.200176, 45.969891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.177216, 38.866425, 46.096294>,  <34.068829, 38.666176, 46.172138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.177216, 38.866425, 46.096294>,  <34.357861, 39.200176, 45.969891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177216, 38.866425, 46.096294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090445, -0.309551, -0.946572,
		0.887620, -0.456062, 0.064331,
		-0.451609, -0.834378, 0.316012,
		34.041733, 38.616112, 46.191097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735615, 38.682198, 45.635441>,  <34.357861, 39.200176, 45.969891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735615, 38.682198, 45.635441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388706, 38.514023, 45.742077>,  <34.180561, 38.413116, 45.806057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388706, 38.514023, 45.742077>,  <34.735615, 38.682198, 45.635441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388706, 38.514023, 45.742077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112614, -0.355938, -0.927700,
		0.484928, -0.834591, 0.261348,
		-0.867273, -0.420436, 0.266591,
		34.128525, 38.387894, 45.822056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716190, 38.093887, 45.302746>,  <34.735615, 38.682198, 45.635441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716190, 38.093887, 45.302746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.328876, 38.153824, 45.382725>,  <34.096489, 38.189785, 45.430710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.328876, 38.153824, 45.382725>,  <34.716190, 38.093887, 45.302746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328876, 38.153824, 45.382725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202463, -0.001582, -0.979289,
		-0.146427, -0.988708, 0.031871,
		-0.968281, 0.149847, 0.199945,
		34.038391, 38.198776, 45.442707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363949, 37.573746, 44.898331>,  <34.716190, 38.093887, 45.302746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363949, 37.573746, 44.898331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065845, 37.832100, 44.964573>,  <33.886986, 37.987114, 45.004318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.065845, 37.832100, 44.964573>,  <34.363949, 37.573746, 44.898331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065845, 37.832100, 44.964573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289756, -0.090018, -0.952858,
		-0.600530, -0.758107, 0.254236,
		-0.745254, 0.645886, 0.165608,
		33.842270, 38.025867, 45.014256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772949, 37.320667, 44.503929>,  <34.363949, 37.573746, 44.898331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772949, 37.320667, 44.503929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672424, 37.704529, 44.554379>,  <33.612110, 37.934845, 44.584648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.672424, 37.704529, 44.554379>,  <33.772949, 37.320667, 44.503929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672424, 37.704529, 44.554379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102335, 0.103229, -0.989379,
		-0.962480, -0.261553, 0.072263,
		-0.251315, 0.959653, 0.126122,
		33.597031, 37.992424, 44.592216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411934, 37.431080, 43.950382>,  <33.772949, 37.320667, 44.503929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411934, 37.431080, 43.950382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492226, 37.803612, 44.071934>,  <33.540401, 38.027130, 44.144863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492226, 37.803612, 44.071934>,  <33.411934, 37.431080, 43.950382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492226, 37.803612, 44.071934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187882, 0.341029, -0.921086,
		-0.961461, 0.127797, 0.243434,
		0.200730, 0.931325, 0.303875,
		33.552444, 38.083008, 44.163097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929131, 37.854382, 43.684090>,  <33.411934, 37.431080, 43.950382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929131, 37.854382, 43.684090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241600, 38.086613, 43.775913>,  <33.429081, 38.225952, 43.831005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241600, 38.086613, 43.775913>,  <32.929131, 37.854382, 43.684090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241600, 38.086613, 43.775913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076904, 0.454378, -0.887483,
		-0.619556, 0.675627, 0.399598,
		0.781176, 0.580577, 0.229554,
		33.475952, 38.260784, 43.844780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785004, 38.536865, 43.491264>,  <32.929131, 37.854382, 43.684090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785004, 38.536865, 43.491264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.184719, 38.551826, 43.493084>,  <33.424549, 38.560802, 43.494175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.184719, 38.551826, 43.493084>,  <32.785004, 38.536865, 43.491264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184719, 38.551826, 43.493084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012927, 0.453668, -0.891077,
		-0.035393, 0.890386, 0.453829,
		0.999290, 0.037405, 0.004547,
		33.484505, 38.563049, 43.494450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874744, 39.226337, 43.345913>,  <32.785004, 38.536865, 43.491264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874744, 39.226337, 43.345913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.214798, 39.035210, 43.257408>,  <33.418831, 38.920532, 43.204308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.214798, 39.035210, 43.257408>,  <32.874744, 39.226337, 43.345913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214798, 39.035210, 43.257408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022783, 0.453179, -0.891128,
		0.526070, 0.752539, 0.396150,
		0.850136, -0.477821, -0.221259,
		33.469837, 38.891865, 43.191029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300125, 39.671936, 42.956230>,  <32.874744, 39.226337, 43.345913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300125, 39.671936, 42.956230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.490673, 39.329357, 42.876671>,  <33.605003, 39.123810, 42.828938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.490673, 39.329357, 42.876671>,  <33.300125, 39.671936, 42.956230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490673, 39.329357, 42.876671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140916, 0.297657, -0.944215,
		0.867877, 0.421772, 0.262484,
		0.476374, -0.856451, -0.198895,
		33.633587, 39.072422, 42.817001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853401, 39.862907, 42.534088>,  <33.300125, 39.671936, 42.956230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853401, 39.862907, 42.534088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778999, 39.479679, 42.446915>,  <33.734360, 39.249741, 42.394611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778999, 39.479679, 42.446915>,  <33.853401, 39.862907, 42.534088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778999, 39.479679, 42.446915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053145, 0.231292, -0.971432,
		0.981111, -0.169109, -0.093938,
		-0.186005, -0.958074, -0.217935,
		33.723198, 39.192257, 42.381535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234947, 39.690228, 41.926414>,  <33.853401, 39.862907, 42.534088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234947, 39.690228, 41.926414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.950462, 39.409225, 41.936722>,  <33.779770, 39.240623, 41.942905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.950462, 39.409225, 41.936722>,  <34.234947, 39.690228, 41.926414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950462, 39.409225, 41.936722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005725, -0.030869, -0.999507,
		0.702951, -0.711012, 0.017932,
		-0.711215, -0.702502, 0.025770,
		33.737099, 39.198475, 41.944454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761246, 39.309914, 41.770267>,  <34.234947, 39.690228, 41.926414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761246, 39.309914, 41.770267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977177, 39.615192, 41.628216>,  <35.106735, 39.798359, 41.542984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977177, 39.615192, 41.628216>,  <34.761246, 39.309914, 41.770267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977177, 39.615192, 41.628216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329036, 0.197010, 0.923538,
		0.774807, -0.615400, -0.144769,
		0.539824, 0.763198, -0.355133,
		35.139126, 39.844151, 41.521675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594200, 39.249207, 41.922947>,  <34.761246, 39.309914, 41.770267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594200, 39.249207, 41.922947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473076, 39.629906, 41.903015>,  <35.400402, 39.858326, 41.891056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473076, 39.629906, 41.903015>,  <35.594200, 39.249207, 41.922947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473076, 39.629906, 41.903015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407355, 0.176521, 0.896048,
		0.861609, 0.251030, -0.441151,
		-0.302808, 0.951748, -0.049834,
		35.382233, 39.915428, 41.888065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156910, 39.636253, 42.275589>,  <35.594200, 39.249207, 41.922947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156910, 39.636253, 42.275589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875824, 39.906918, 42.187656>,  <35.707172, 40.069317, 42.134895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.875824, 39.906918, 42.187656>,  <36.156910, 39.636253, 42.275589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875824, 39.906918, 42.187656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117725, 0.415311, 0.902030,
		0.701667, 0.607987, -0.371504,
		-0.702712, 0.676659, -0.219835,
		35.665009, 40.109917, 42.121704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451790, 40.280388, 42.447582>,  <36.156910, 39.636253, 42.275589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451790, 40.280388, 42.447582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.055172, 40.332218, 42.450470>,  <35.817200, 40.363316, 42.452202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.055172, 40.332218, 42.450470>,  <36.451790, 40.280388, 42.447582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055172, 40.332218, 42.450470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064082, 0.440514, 0.895456,
		0.112850, 0.888346, -0.445092,
		-0.991543, 0.129575, 0.007215,
		35.757710, 40.371090, 42.452633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374653, 40.953835, 42.733170>,  <36.451790, 40.280388, 42.447582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374653, 40.953835, 42.733170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.004368, 40.808514, 42.775253>,  <35.782196, 40.721321, 42.800503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.004368, 40.808514, 42.775253>,  <36.374653, 40.953835, 42.733170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004368, 40.808514, 42.775253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023724, 0.333384, 0.942492,
		-0.377484, 0.869981, -0.317237,
		-0.925712, -0.363302, 0.105208,
		35.726654, 40.699524, 42.806816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063553, 41.462521, 43.173527>,  <36.374653, 40.953835, 42.733170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063553, 41.462521, 43.173527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.814789, 41.150238, 43.197914>,  <35.665531, 40.962868, 43.212547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.814789, 41.150238, 43.197914>,  <36.063553, 41.462521, 43.173527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814789, 41.150238, 43.197914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164171, 0.206116, 0.964658,
		-0.765684, 0.589923, -0.256356,
		-0.621913, -0.780709, 0.060971,
		35.628216, 40.916027, 43.216206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398628, 41.665222, 43.403439>,  <36.063553, 41.462521, 43.173527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398628, 41.665222, 43.403439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433247, 41.283062, 43.516373>,  <35.454018, 41.053764, 43.584133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433247, 41.283062, 43.516373>,  <35.398628, 41.665222, 43.403439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433247, 41.283062, 43.516373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043511, 0.279507, 0.959157,
		-0.995297, -0.095294, -0.017381,
		0.086544, -0.955403, 0.282339,
		35.459209, 40.996441, 43.601074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016624, 41.565384, 44.053974>,  <35.398628, 41.665222, 43.403439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016624, 41.565384, 44.053974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252121, 41.242332, 44.067299>,  <35.393421, 41.048500, 44.075294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252121, 41.242332, 44.067299>,  <35.016624, 41.565384, 44.053974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252121, 41.242332, 44.067299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062065, -0.004073, 0.998064,
		-0.805933, -0.589673, -0.052523,
		0.588745, -0.807632, 0.033315,
		35.428745, 41.000042, 44.077293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721626, 41.069447, 44.555870>,  <35.016624, 41.565384, 44.053974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721626, 41.069447, 44.555870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.091049, 40.919773, 44.522331>,  <35.312702, 40.829971, 44.502209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.091049, 40.919773, 44.522331>,  <34.721626, 41.069447, 44.555870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091049, 40.919773, 44.522331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025985, -0.157096, 0.987242,
		-0.382579, -0.913953, -0.135364,
		0.923557, -0.374180, -0.083850,
		35.368118, 40.807518, 44.497177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829304, 40.491974, 44.998993>,  <34.721626, 41.069447, 44.555870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829304, 40.491974, 44.998993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209709, 40.590996, 44.924923>,  <35.437954, 40.650410, 44.880482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.209709, 40.590996, 44.924923>,  <34.829304, 40.491974, 44.998993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209709, 40.590996, 44.924923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201143, -0.040629, 0.978719,
		0.234765, -0.968021, -0.088433,
		0.951013, 0.247557, -0.185172,
		35.495014, 40.665264, 44.869370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284515, 39.906784, 45.257420>,  <34.829304, 40.491974, 44.998993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284515, 39.906784, 45.257420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.470718, 40.260208, 45.236946>,  <35.582439, 40.472263, 45.224663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.470718, 40.260208, 45.236946>,  <35.284515, 39.906784, 45.257420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470718, 40.260208, 45.236946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294181, -0.099924, 0.950512,
		0.834724, -0.457524, -0.306443,
		0.465503, 0.883565, -0.051186,
		35.610371, 40.525276, 45.221592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001991, 39.747635, 45.451050>,  <35.284515, 39.906784, 45.257420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001991, 39.747635, 45.451050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.919754, 40.137035, 45.491104>,  <35.870411, 40.370674, 45.515137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.919754, 40.137035, 45.491104>,  <36.001991, 39.747635, 45.451050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919754, 40.137035, 45.491104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446914, 0.002364, 0.894574,
		0.870632, 0.228669, -0.435558,
		-0.205591, 0.973501, 0.100137,
		35.858078, 40.429085, 45.521145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575325, 39.999836, 45.845592>,  <36.001991, 39.747635, 45.451050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575325, 39.999836, 45.845592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333755, 40.317482, 45.872910>,  <36.188812, 40.508068, 45.889297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.333755, 40.317482, 45.872910>,  <36.575325, 39.999836, 45.845592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333755, 40.317482, 45.872910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164658, 0.040472, 0.985520,
		0.779849, 0.606423, -0.155199,
		-0.603924, 0.794111, 0.068290,
		36.152580, 40.555714, 45.893398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990391, 40.513489, 46.167492>,  <36.575325, 39.999836, 45.845592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990391, 40.513489, 46.167492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.603016, 40.598106, 46.220234>,  <36.370590, 40.648876, 46.251881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.603016, 40.598106, 46.220234>,  <36.990391, 40.513489, 46.167492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603016, 40.598106, 46.220234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149960, 0.071879, 0.986076,
		0.199120, 0.974722, -0.101333,
		-0.968434, 0.211543, 0.131857,
		36.312485, 40.661568, 46.259792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580070, 40.968300, 46.388512>,  <36.990391, 40.513489, 46.167492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580070, 40.968300, 46.388512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970009, 41.033737, 46.449051>,  <38.203972, 41.073002, 46.485374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.970009, 41.033737, 46.449051>,  <37.580070, 40.968300, 46.388512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970009, 41.033737, 46.449051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171632, -0.117885, -0.978083,
		-0.142169, 0.979459, -0.142998,
		0.974849, 0.163596, 0.151347,
		38.262463, 41.082817, 46.494453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763771, 41.509285, 45.999783>,  <37.580070, 40.968300, 46.388512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763771, 41.509285, 45.999783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090908, 41.294163, 46.081654>,  <38.287189, 41.165089, 46.130775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.090908, 41.294163, 46.081654>,  <37.763771, 41.509285, 45.999783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090908, 41.294163, 46.081654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135614, -0.165534, -0.976835,
		0.559231, 0.826656, -0.062447,
		0.817844, -0.537808, 0.204678,
		38.336262, 41.132820, 46.143059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306156, 41.833576, 45.541931>,  <37.763771, 41.509285, 45.999783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306156, 41.833576, 45.541931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.449253, 41.470234, 45.628567>,  <38.535110, 41.252228, 45.680550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.449253, 41.470234, 45.628567>,  <38.306156, 41.833576, 45.541931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449253, 41.470234, 45.628567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180815, -0.160168, -0.970388,
		0.916146, 0.386316, 0.106944,
		0.357747, -0.908354, 0.216589,
		38.556576, 41.197727, 45.693542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016342, 41.745190, 45.240898>,  <38.306156, 41.833576, 45.541931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016342, 41.745190, 45.240898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832253, 41.393227, 45.288174>,  <38.721798, 41.182049, 45.316540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832253, 41.393227, 45.288174>,  <39.016342, 41.745190, 45.240898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832253, 41.393227, 45.288174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303320, -0.280949, -0.910530,
		0.834383, -0.383195, 0.396190,
		-0.460220, -0.879903, 0.118189,
		38.694187, 41.129257, 45.323631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535160, 41.132538, 44.978348>,  <39.016342, 41.745190, 45.240898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535160, 41.132538, 44.978348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.162437, 40.987358, 44.979847>,  <38.938805, 40.900249, 44.980747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.162437, 40.987358, 44.979847>,  <39.535160, 41.132538, 44.978348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162437, 40.987358, 44.979847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183485, -0.479926, -0.857907,
		0.313175, -0.798711, 0.513792,
		-0.931802, -0.362948, 0.003749,
		38.882896, 40.878475, 44.980972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592609, 40.547993, 44.510143>,  <39.535160, 41.132538, 44.978348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592609, 40.547993, 44.510143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197441, 40.521000, 44.565952>,  <38.960342, 40.504807, 44.599438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197441, 40.521000, 44.565952>,  <39.592609, 40.547993, 44.510143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197441, 40.521000, 44.565952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099769, -0.412022, -0.905695,
		0.118601, -0.908672, 0.400311,
		-0.987917, -0.067478, 0.139524,
		38.901066, 40.500755, 44.607811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484684, 39.963966, 44.157318>,  <39.592609, 40.547993, 44.510143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484684, 39.963966, 44.157318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.146610, 40.176559, 44.179901>,  <38.943768, 40.304115, 44.193451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.146610, 40.176559, 44.179901>,  <39.484684, 39.963966, 44.157318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146610, 40.176559, 44.179901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103602, -0.059282, -0.992851,
		-0.524340, -0.844989, 0.105167,
		-0.845182, 0.531487, 0.056458,
		38.893055, 40.336006, 44.196838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912281, 39.530910, 43.932442>,  <39.484684, 39.963966, 44.157318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912281, 39.530910, 43.932442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.780151, 39.900852, 43.857044>,  <38.700874, 40.122818, 43.811806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.780151, 39.900852, 43.857044>,  <38.912281, 39.530910, 43.932442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780151, 39.900852, 43.857044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051139, -0.216944, -0.974844,
		-0.942480, -0.312379, 0.118959,
		-0.330328, 0.924854, -0.188491,
		38.681053, 40.178307, 43.800495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372261, 39.443771, 43.568092>,  <38.912281, 39.530910, 43.932442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372261, 39.443771, 43.568092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493504, 39.817215, 43.491665>,  <38.566250, 40.041279, 43.445808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493504, 39.817215, 43.491665>,  <38.372261, 39.443771, 43.568092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493504, 39.817215, 43.491665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182734, -0.139836, -0.973167,
		-0.935273, 0.329886, 0.128217,
		0.303104, 0.933607, -0.191066,
		38.584435, 40.097298, 43.434345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860001, 39.780434, 43.209686>,  <38.372261, 39.443771, 43.568092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860001, 39.780434, 43.209686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.182228, 39.988735, 43.096634>,  <38.375565, 40.113716, 43.028805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.182228, 39.988735, 43.096634>,  <37.860001, 39.780434, 43.209686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182228, 39.988735, 43.096634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223307, -0.174988, -0.958913,
		-0.548810, 0.835583, -0.024678,
		0.805569, 0.520750, -0.282626,
		38.423901, 40.144958, 43.011845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664108, 40.146305, 42.602741>,  <37.860001, 39.780434, 43.209686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664108, 40.146305, 42.602741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.062450, 40.177837, 42.584621>,  <38.301456, 40.196758, 42.573750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.062450, 40.177837, 42.584621>,  <37.664108, 40.146305, 42.602741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062450, 40.177837, 42.584621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033269, -0.147745, -0.988466,
		-0.084617, 0.985879, -0.144511,
		0.995858, 0.078833, -0.045301,
		38.361206, 40.201488, 42.571030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858315, 40.603813, 42.096748>,  <37.664108, 40.146305, 42.602741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858315, 40.603813, 42.096748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212082, 40.420166, 42.130253>,  <38.424343, 40.309978, 42.150356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212082, 40.420166, 42.130253>,  <37.858315, 40.603813, 42.096748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212082, 40.420166, 42.130253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052522, -0.080411, -0.995377,
		0.463729, 0.884729, -0.047003,
		0.884419, -0.459117, 0.083757,
		38.477409, 40.282433, 42.155380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421040, 40.965511, 41.741825>,  <37.858315, 40.603813, 42.096748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421040, 40.965511, 41.741825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.526909, 40.581341, 41.776539>,  <38.590431, 40.350838, 41.797367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.526909, 40.581341, 41.776539>,  <38.421040, 40.965511, 41.741825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526909, 40.581341, 41.776539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126951, -0.054506, -0.990410,
		0.955946, 0.273149, 0.107501,
		0.264671, -0.960426, 0.086781,
		38.606312, 40.293213, 41.802574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035019, 40.887573, 41.330265>,  <38.421040, 40.965511, 41.741825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035019, 40.887573, 41.330265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.914043, 40.507977, 41.365925>,  <38.841457, 40.280220, 41.387321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.914043, 40.507977, 41.365925>,  <39.035019, 40.887573, 41.330265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914043, 40.507977, 41.365925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263118, -0.173020, -0.949122,
		0.916133, -0.263593, 0.302025,
		-0.302438, -0.948990, 0.089154,
		38.823311, 40.223278, 41.392670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.765230, 40.827255, 30.025139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.045628, 40.592514, 29.863045>,  <30.213865, 40.451672, 29.765789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.045628, 40.592514, 29.863045>,  <29.765230, 40.827255, 30.025139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045628, 40.592514, 29.863045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224522, -0.720925, 0.655635,
		-0.676901, -0.368613, -0.637125,
		0.700995, -0.586849, -0.405233,
		30.255926, 40.416458, 29.741474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380016, 40.282188, 29.883947>,  <29.765230, 40.827255, 30.025139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380016, 40.282188, 29.883947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.760145, 40.160183, 29.908794>,  <29.988222, 40.086979, 29.923702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.760145, 40.160183, 29.908794>,  <29.380016, 40.282188, 29.883947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760145, 40.160183, 29.908794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284461, -0.769971, 0.571162,
		-0.126384, -0.560456, -0.818484,
		0.950320, -0.305013, 0.062116,
		30.045240, 40.068680, 29.927429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379505, 39.595062, 29.697315>,  <29.380016, 40.282188, 29.883947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379505, 39.595062, 29.697315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.713385, 39.636215, 29.913719>,  <29.913713, 39.660908, 30.043562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.713385, 39.636215, 29.913719>,  <29.379505, 39.595062, 29.697315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713385, 39.636215, 29.913719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182073, -0.875593, 0.447421,
		0.519734, -0.471966, -0.712127,
		0.834701, 0.102881, 0.541008,
		29.963795, 39.667080, 30.076021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790346, 38.937927, 29.671967>,  <29.379505, 39.595062, 29.697315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790346, 38.937927, 29.671967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876858, 39.131893, 30.010923>,  <29.928764, 39.248272, 30.214298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876858, 39.131893, 30.010923>,  <29.790346, 38.937927, 29.671967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876858, 39.131893, 30.010923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155850, -0.839661, 0.520270,
		0.963812, -0.244590, -0.106028,
		0.216281, 0.484918, 0.847395,
		29.941742, 39.277367, 30.265142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285654, 38.603470, 30.099716>,  <29.790346, 38.937927, 29.671967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285654, 38.603470, 30.099716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066566, 38.829159, 30.346830>,  <29.935114, 38.964573, 30.495100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066566, 38.829159, 30.346830>,  <30.285654, 38.603470, 30.099716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066566, 38.829159, 30.346830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176940, -0.799808, 0.573585,
		0.817739, 0.204852, 0.537902,
		-0.547718, 0.564220, 0.617787,
		29.902250, 38.998425, 30.532167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028076, 38.086201, 30.578842>,  <30.285654, 38.603470, 30.099716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028076, 38.086201, 30.578842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864613, 38.408722, 30.749899>,  <29.766535, 38.602234, 30.852533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864613, 38.408722, 30.749899>,  <30.028076, 38.086201, 30.578842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864613, 38.408722, 30.749899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477381, -0.588183, 0.652800,
		0.777885, 0.062625, 0.625279,
		-0.408660, 0.806300, 0.427642,
		29.742014, 38.650612, 30.878191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080935, 38.028416, 31.379532>,  <30.028076, 38.086201, 30.578842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080935, 38.028416, 31.379532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.765785, 38.257889, 31.289965>,  <29.576694, 38.395573, 31.236225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.765785, 38.257889, 31.289965>,  <30.080935, 38.028416, 31.379532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765785, 38.257889, 31.289965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599082, -0.629751, 0.494485,
		0.142667, 0.523736, 0.839849,
		-0.787875, 0.573685, -0.223916,
		29.529423, 38.429993, 31.222790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760174, 38.150036, 32.018253>,  <30.080935, 38.028416, 31.379532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760174, 38.150036, 32.018253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498880, 38.230293, 31.726217>,  <29.342104, 38.278446, 31.550995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498880, 38.230293, 31.726217>,  <29.760174, 38.150036, 32.018253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498880, 38.230293, 31.726217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703703, -0.516759, 0.487609,
		-0.279447, 0.832289, 0.478754,
		-0.653232, 0.200639, -0.730090,
		29.302912, 38.290485, 31.507191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153469, 38.273205, 32.383900>,  <29.760174, 38.150036, 32.018253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153469, 38.273205, 32.383900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048571, 38.176472, 32.010216>,  <28.985632, 38.118431, 31.786007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048571, 38.176472, 32.010216>,  <29.153469, 38.273205, 32.383900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048571, 38.176472, 32.010216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779626, -0.517414, 0.352797,
		-0.568691, 0.820851, -0.052852,
		-0.262248, -0.241837, -0.934206,
		28.969896, 38.103920, 31.729954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506676, 38.357674, 32.433834>,  <29.153469, 38.273205, 32.383900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506676, 38.357674, 32.433834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557579, 38.114384, 32.120438>,  <28.588121, 37.968410, 31.932400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.557579, 38.114384, 32.120438>,  <28.506676, 38.357674, 32.433834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557579, 38.114384, 32.120438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724117, -0.596793, 0.345677,
		-0.677835, 0.523351, -0.516375,
		0.127258, -0.608228, -0.783495,
		28.595757, 37.931915, 31.885389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831656, 38.193859, 32.125275>,  <28.506676, 38.357674, 32.433834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831656, 38.193859, 32.125275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.045824, 37.883221, 31.992476>,  <28.174326, 37.696838, 31.912796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.045824, 37.883221, 31.992476>,  <27.831656, 38.193859, 32.125275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045824, 37.883221, 31.992476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530900, -0.615191, 0.582825,
		-0.656862, -0.135800, -0.741681,
		0.535423, -0.776594, -0.331999,
		28.206451, 37.650242, 31.892876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364441, 37.730377, 32.017994>,  <27.831656, 38.193859, 32.125275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364441, 37.730377, 32.017994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709948, 37.529755, 32.037407>,  <27.917252, 37.409382, 32.049057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709948, 37.529755, 32.037407>,  <27.364441, 37.730377, 32.017994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709948, 37.529755, 32.037407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420741, -0.664867, 0.617195,
		-0.277287, -0.553532, -0.785312,
		0.863765, -0.501553, 0.048535,
		27.969076, 37.379288, 32.051968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170809, 37.119602, 31.666744>,  <27.364441, 37.730377, 32.017994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170809, 37.119602, 31.666744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499472, 37.063114, 31.887629>,  <27.696671, 37.029221, 32.020157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499472, 37.063114, 31.887629>,  <27.170809, 37.119602, 31.666744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499472, 37.063114, 31.887629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504113, -0.632150, 0.588436,
		0.265983, -0.761869, -0.590600,
		0.821659, -0.141215, 0.552209,
		27.745970, 37.020748, 32.053291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234297, 36.313709, 31.794161>,  <27.170809, 37.119602, 31.666744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234297, 36.313709, 31.794161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452484, 36.505032, 32.069462>,  <27.583397, 36.619823, 32.234642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.452484, 36.505032, 32.069462>,  <27.234297, 36.313709, 31.794161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452484, 36.505032, 32.069462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468563, -0.506832, 0.723582,
		0.694918, -0.717181, -0.052347,
		0.545470, 0.478302, 0.688251,
		27.616125, 36.648521, 32.275936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508852, 35.831535, 32.211582>,  <27.234297, 36.313709, 31.794161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508852, 35.831535, 32.211582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.486170, 36.166016, 32.429775>,  <27.472561, 36.366703, 32.560692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.486170, 36.166016, 32.429775>,  <27.508852, 35.831535, 32.211582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486170, 36.166016, 32.429775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275511, -0.538250, 0.796480,
		0.959624, -0.105121, 0.260906,
		-0.056706, 0.836204, 0.545479,
		27.469158, 36.416878, 32.593418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544123, 35.569157, 32.856331>,  <27.508852, 35.831535, 32.211582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544123, 35.569157, 32.856331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417057, 35.938591, 32.942200>,  <27.340816, 36.160252, 32.993721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417057, 35.938591, 32.942200>,  <27.544123, 35.569157, 32.856331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417057, 35.938591, 32.942200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425306, -0.341129, 0.838299,
		0.847469, 0.174999, 0.501171,
		-0.317665, 0.923583, 0.214668,
		27.321758, 36.215668, 33.006599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528355, 35.505844, 33.619434>,  <27.544123, 35.569157, 32.856331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528355, 35.505844, 33.619434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.348780, 35.856289, 33.549133>,  <27.241035, 36.066555, 33.506954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.348780, 35.856289, 33.549133>,  <27.528355, 35.505844, 33.619434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348780, 35.856289, 33.549133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517445, -0.094541, 0.850478,
		0.728496, 0.472752, 0.495781,
		-0.448937, 0.876109, -0.175751,
		27.214098, 36.119122, 33.496407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355993, 35.773113, 34.277885>,  <27.528355, 35.505844, 33.619434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355993, 35.773113, 34.277885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094917, 35.962547, 34.041340>,  <26.938272, 36.076206, 33.899410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094917, 35.962547, 34.041340>,  <27.355993, 35.773113, 34.277885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094917, 35.962547, 34.041340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700300, -0.079276, 0.709433,
		0.289094, 0.877175, 0.383392,
		-0.652691, 0.473582, -0.591367,
		26.899111, 36.104622, 33.863930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106134, 36.401924, 34.533031>,  <27.355993, 35.773113, 34.277885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106134, 36.401924, 34.533031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843208, 36.243031, 34.276863>,  <26.685453, 36.147694, 34.123161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843208, 36.243031, 34.276863>,  <27.106134, 36.401924, 34.533031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843208, 36.243031, 34.276863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677109, -0.061771, 0.733286,
		-0.330846, 0.915636, -0.228368,
		-0.657316, -0.397235, -0.640422,
		26.646013, 36.123859, 34.084736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448765, 36.755146, 34.651630>,  <27.106134, 36.401924, 34.533031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448765, 36.755146, 34.651630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336166, 36.403179, 34.498528>,  <26.268608, 36.191998, 34.406666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336166, 36.403179, 34.498528>,  <26.448765, 36.755146, 34.651630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336166, 36.403179, 34.498528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625404, -0.134290, 0.768659,
		-0.727758, 0.455752, -0.512502,
		-0.281494, -0.879918, -0.382760,
		26.251719, 36.139202, 34.383701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564537, 36.569996, 35.462513>,  <26.448765, 36.755146, 34.651630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564537, 36.569996, 35.462513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.963791, 36.573822, 35.486645>,  <27.203342, 36.576118, 35.501125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.963791, 36.573822, 35.486645>,  <26.564537, 36.569996, 35.462513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963791, 36.573822, 35.486645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010275, 0.947300, -0.320183,
		-0.060216, 0.320205, 0.945433,
		0.998132, 0.009566, 0.060333,
		27.263231, 36.576691, 35.504745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772270, 37.264580, 35.659496>,  <26.564537, 36.569996, 35.462513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772270, 37.264580, 35.659496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.088703, 37.104290, 35.474621>,  <27.278563, 37.008118, 35.363697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.088703, 37.104290, 35.474621>,  <26.772270, 37.264580, 35.659496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088703, 37.104290, 35.474621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213643, 0.888970, -0.405079,
		0.573192, 0.221707, 0.788858,
		0.791080, -0.400722, -0.462184,
		27.326027, 36.984074, 35.335964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.177521, 37.810032, 35.713245>,  <26.772270, 37.264580, 35.659496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.177521, 37.810032, 35.713245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357555, 37.577831, 35.441822>,  <27.465576, 37.438511, 35.278969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357555, 37.577831, 35.441822>,  <27.177521, 37.810032, 35.713245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357555, 37.577831, 35.441822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267848, 0.812651, -0.517548,
		0.851869, 0.051190, 0.521248,
		0.450086, -0.580498, -0.678561,
		27.492580, 37.403683, 35.238255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837580, 38.036758, 35.671391>,  <27.177521, 37.810032, 35.713245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837580, 38.036758, 35.671391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.768858, 37.844196, 35.327591>,  <27.727625, 37.728661, 35.121311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.768858, 37.844196, 35.327591>,  <27.837580, 38.036758, 35.671391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768858, 37.844196, 35.327591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375628, 0.774544, -0.508906,
		0.910707, -0.410284, 0.047758,
		-0.171805, -0.481403, -0.859497,
		27.717316, 37.699776, 35.069740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343521, 38.182030, 35.224777>,  <27.837580, 38.036758, 35.671391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343521, 38.182030, 35.224777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073526, 38.057964, 34.956989>,  <27.911530, 37.983524, 34.796314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073526, 38.057964, 34.956989>,  <28.343521, 38.182030, 35.224777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073526, 38.057964, 34.956989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071029, 0.875824, -0.477375,
		0.734405, -0.369773, -0.569137,
		-0.674984, -0.310162, -0.669474,
		27.871031, 37.964916, 34.756145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599590, 38.352711, 34.574390>,  <28.343521, 38.182030, 35.224777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599590, 38.352711, 34.574390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.216162, 38.273323, 34.492657>,  <27.986105, 38.225693, 34.443615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.216162, 38.273323, 34.492657>,  <28.599590, 38.352711, 34.574390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216162, 38.273323, 34.492657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022624, 0.768115, -0.639912,
		0.283957, -0.608777, -0.740783,
		-0.958570, -0.198467, -0.204338,
		27.928591, 38.213783, 34.431355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565704, 38.287056, 33.879005>,  <28.599590, 38.352711, 34.574390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565704, 38.287056, 33.879005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186291, 38.380405, 33.964622>,  <27.958643, 38.436417, 34.015991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186291, 38.380405, 33.964622>,  <28.565704, 38.287056, 33.879005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186291, 38.380405, 33.964622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098775, 0.860240, -0.500231,
		-0.300870, -0.453346, -0.839020,
		-0.948536, 0.233378, 0.214041,
		27.901730, 38.450420, 34.028835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246788, 38.354965, 33.284103>,  <28.565704, 38.287056, 33.879005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246788, 38.354965, 33.284103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035429, 38.579556, 33.538830>,  <27.908613, 38.714310, 33.691666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035429, 38.579556, 33.538830>,  <28.246788, 38.354965, 33.284103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035429, 38.579556, 33.538830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096141, 0.784832, -0.612205,
		-0.843537, -0.262262, -0.468684,
		-0.528396, 0.561477, 0.636821,
		27.876909, 38.747997, 33.729877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796246, 38.680588, 32.942039>,  <28.246788, 38.354965, 33.284103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796246, 38.680588, 32.942039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814676, 38.920742, 33.261391>,  <27.825735, 39.064835, 33.453003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814676, 38.920742, 33.261391>,  <27.796246, 38.680588, 32.942039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814676, 38.920742, 33.261391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022851, 0.799656, -0.600024,
		-0.998676, 0.009404, 0.050567,
		0.046079, 0.600385, 0.798383,
		27.828501, 39.100857, 33.500904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481155, 39.385689, 32.659275>,  <27.796246, 38.680588, 32.942039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481155, 39.385689, 32.659275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.668041, 39.472736, 33.002052>,  <27.780172, 39.524967, 33.207718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.668041, 39.472736, 33.002052>,  <27.481155, 39.385689, 32.659275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668041, 39.472736, 33.002052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272875, 0.886426, -0.373883,
		-0.840981, 0.408522, 0.354767,
		0.467214, 0.217622, 0.856943,
		27.808205, 39.538021, 33.259136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257608, 40.122433, 32.714165>,  <27.481155, 39.385689, 32.659275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257608, 40.122433, 32.714165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549164, 40.065197, 32.981968>,  <27.724098, 40.030857, 33.142651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549164, 40.065197, 32.981968>,  <27.257608, 40.122433, 32.714165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549164, 40.065197, 32.981968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416963, 0.868407, -0.268348,
		-0.543012, 0.474758, 0.692635,
		0.728889, -0.143088, 0.669512,
		27.767830, 40.022270, 33.182823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372791, 40.781006, 32.976429>,  <27.257608, 40.122433, 32.714165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372791, 40.781006, 32.976429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.713440, 40.580734, 33.038479>,  <27.917830, 40.460571, 33.075710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.713440, 40.580734, 33.038479>,  <27.372791, 40.781006, 32.976429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713440, 40.580734, 33.038479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523689, 0.800221, -0.292225,
		0.022177, 0.330101, 0.943685,
		0.851621, -0.500678, 0.155124,
		27.968925, 40.430531, 33.085014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773182, 41.303642, 33.304859>,  <27.372791, 40.781006, 32.976429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773182, 41.303642, 33.304859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007677, 41.014904, 33.157742>,  <28.148375, 40.841663, 33.069473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007677, 41.014904, 33.157742>,  <27.773182, 41.303642, 33.304859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007677, 41.014904, 33.157742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723457, 0.670770, -0.163333,
		0.364604, -0.170330, 0.915452,
		0.586236, -0.721842, -0.367792,
		28.183548, 40.798351, 33.047405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480604, 41.534973, 33.593452>,  <27.773182, 41.303642, 33.304859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480604, 41.534973, 33.593452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520527, 41.294792, 33.276089>,  <28.544479, 41.150684, 33.085670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520527, 41.294792, 33.276089>,  <28.480604, 41.534973, 33.593452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520527, 41.294792, 33.276089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728787, 0.586999, -0.352565,
		0.677428, -0.543037, 0.496188,
		0.099806, -0.600452, -0.793408,
		28.550468, 41.114658, 33.038067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270226, 41.339020, 33.525650>,  <28.480604, 41.534973, 33.593452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270226, 41.339020, 33.525650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070702, 41.316235, 33.179714>,  <28.950987, 41.302563, 32.972153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.070702, 41.316235, 33.179714>,  <29.270226, 41.339020, 33.525650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070702, 41.316235, 33.179714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727119, 0.515542, -0.453337,
		0.471683, -0.854969, -0.215740,
		-0.498812, -0.056962, -0.864837,
		28.921059, 41.299145, 32.920261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776743, 41.380070, 33.058887>,  <29.270226, 41.339020, 33.525650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776743, 41.380070, 33.058887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.454981, 41.446903, 32.830849>,  <29.261923, 41.487003, 32.694027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.454981, 41.446903, 32.830849>,  <29.776743, 41.380070, 33.058887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454981, 41.446903, 32.830849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561492, 0.527294, -0.637721,
		0.194054, -0.833092, -0.517977,
		-0.804406, 0.167088, -0.570099,
		29.213659, 41.497028, 32.659821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934954, 41.185837, 32.332775>,  <29.776743, 41.380070, 33.058887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934954, 41.185837, 32.332775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653198, 41.469566, 32.343369>,  <29.484146, 41.639805, 32.349724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653198, 41.469566, 32.343369>,  <29.934954, 41.185837, 32.332775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653198, 41.469566, 32.343369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504990, 0.526994, -0.683567,
		-0.498824, -0.468123, -0.729408,
		-0.704386, 0.709323, 0.026480,
		29.441883, 41.682362, 32.351311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130232, 41.397167, 31.729733>,  <29.934954, 41.185837, 32.332775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130232, 41.397167, 31.729733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888096, 41.685776, 31.864172>,  <29.742813, 41.858940, 31.944836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888096, 41.685776, 31.864172>,  <30.130232, 41.397167, 31.729733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888096, 41.685776, 31.864172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408804, 0.644133, -0.646507,
		-0.682965, -0.253959, -0.684883,
		-0.605342, 0.721524, 0.336101,
		29.706493, 41.902233, 31.965002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041271, 41.802570, 31.148109>,  <30.130232, 41.397167, 31.729733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041271, 41.802570, 31.148109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902018, 42.042000, 31.436695>,  <29.818464, 42.185658, 31.609846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902018, 42.042000, 31.436695>,  <30.041271, 41.802570, 31.148109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902018, 42.042000, 31.436695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335006, 0.798227, -0.500604,
		-0.875541, 0.067418, -0.478417,
		-0.348135, 0.598572, 0.721466,
		29.797577, 42.221573, 31.653135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692703, 42.280598, 30.814648>,  <30.041271, 41.802570, 31.148109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692703, 42.280598, 30.814648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.785616, 42.462902, 31.158350>,  <29.841364, 42.572285, 31.364573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.785616, 42.462902, 31.158350>,  <29.692703, 42.280598, 30.814648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785616, 42.462902, 31.158350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293590, 0.809361, -0.508665,
		-0.927281, 0.370423, 0.054192,
		0.232282, 0.455765, 0.859258,
		29.855301, 42.599632, 31.416128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403404, 42.923382, 30.773390>,  <29.692703, 42.280598, 30.814648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403404, 42.923382, 30.773390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.700993, 42.965439, 31.037346>,  <29.879545, 42.990673, 31.195719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.700993, 42.965439, 31.037346>,  <29.403404, 42.923382, 30.773390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700993, 42.965439, 31.037346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316100, 0.814683, -0.486182,
		-0.588720, 0.570295, 0.572864,
		0.743969, 0.105143, 0.659890,
		29.924183, 42.996983, 31.235313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434587, 43.588642, 30.791372>,  <29.403404, 42.923382, 30.773390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434587, 43.588642, 30.791372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777925, 43.489521, 30.971077>,  <29.983929, 43.430046, 31.078899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777925, 43.489521, 30.971077>,  <29.434587, 43.588642, 30.791372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777925, 43.489521, 30.971077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408339, 0.860107, -0.305738,
		-0.310651, 0.445880, 0.839456,
		0.858344, -0.247805, 0.449264,
		30.035429, 43.415180, 31.105856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.339333, 38.428944, 46.526558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035267, 38.250450, 46.715462>,  <38.852829, 38.143353, 46.828804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035267, 38.250450, 46.715462>,  <39.339333, 38.428944, 46.526558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035267, 38.250450, 46.715462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300101, 0.403532, 0.864350,
		-0.576274, 0.798772, -0.172834,
		-0.760163, -0.446235, 0.472257,
		38.807217, 38.116581, 46.857140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088730, 38.885422, 47.032516>,  <39.339333, 38.428944, 46.526558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088730, 38.885422, 47.032516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.921532, 38.556503, 47.186981>,  <38.821213, 38.359154, 47.279659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.921532, 38.556503, 47.186981>,  <39.088730, 38.885422, 47.032516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921532, 38.556503, 47.186981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345133, 0.249461, 0.904794,
		-0.840337, 0.511472, 0.179528,
		-0.417992, -0.822293, 0.386158,
		38.796135, 38.309814, 47.302830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585949, 39.095226, 47.679188>,  <39.088730, 38.885422, 47.032516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585949, 39.095226, 47.679188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.711430, 38.715534, 47.669727>,  <38.786720, 38.487720, 47.664051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.711430, 38.715534, 47.669727>,  <38.585949, 39.095226, 47.679188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711430, 38.715534, 47.669727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221087, 0.048799, 0.974033,
		-0.923423, -0.310788, 0.225170,
		0.313705, -0.949226, -0.023649,
		38.805542, 38.430767, 47.662632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302387, 38.796608, 48.264023>,  <38.585949, 39.095226, 47.679188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302387, 38.796608, 48.264023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.595360, 38.536045, 48.184807>,  <38.771141, 38.379707, 48.137276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.595360, 38.536045, 48.184807>,  <38.302387, 38.796608, 48.264023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595360, 38.536045, 48.184807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205257, -0.066082, 0.976475,
		-0.649168, -0.755847, 0.085305,
		0.732428, -0.651406, -0.198041,
		38.815086, 38.340622, 48.125393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311287, 38.361702, 48.859909>,  <38.302387, 38.796608, 48.264023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311287, 38.361702, 48.859909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.664955, 38.269684, 48.697273>,  <38.877155, 38.214474, 48.599693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.664955, 38.269684, 48.697273>,  <38.311287, 38.361702, 48.859909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664955, 38.269684, 48.697273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371858, -0.180239, 0.910624,
		-0.282771, -0.956343, -0.073818,
		0.884173, -0.230048, -0.406590,
		38.930206, 38.200668, 48.575294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442657, 37.708977, 49.217190>,  <38.311287, 38.361702, 48.859909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442657, 37.708977, 49.217190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.770508, 37.873291, 49.057457>,  <38.967220, 37.971878, 48.961617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.770508, 37.873291, 49.057457>,  <38.442657, 37.708977, 49.217190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770508, 37.873291, 49.057457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460366, -0.057382, 0.885873,
		0.340988, -0.909925, -0.236143,
		0.819628, 0.410784, -0.399332,
		39.016396, 37.996525, 48.937656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085381, 37.248646, 49.356495>,  <38.442657, 37.708977, 49.217190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085381, 37.248646, 49.356495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.202160, 37.627800, 49.305470>,  <39.272228, 37.855293, 49.274857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.202160, 37.627800, 49.305470>,  <39.085381, 37.248646, 49.356495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202160, 37.627800, 49.305470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243587, 0.055281, 0.968302,
		0.924895, -0.313768, -0.214754,
		0.291951, 0.947889, -0.127559,
		39.289745, 37.912167, 49.267200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539993, 37.363640, 49.914970>,  <39.085381, 37.248646, 49.356495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539993, 37.363640, 49.914970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.514771, 37.743507, 49.792229>,  <39.499638, 37.971428, 49.718582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.514771, 37.743507, 49.792229>,  <39.539993, 37.363640, 49.914970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514771, 37.743507, 49.792229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124696, 0.312554, 0.941680,
		0.990189, 0.021115, -0.138128,
		-0.063056, 0.949665, -0.306855,
		39.495853, 38.028408, 49.700172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017490, 37.673389, 50.392162>,  <39.539993, 37.363640, 49.914970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017490, 37.673389, 50.392162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.808266, 37.976166, 50.235474>,  <39.682732, 38.157833, 50.141460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.808266, 37.976166, 50.235474>,  <40.017490, 37.673389, 50.392162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808266, 37.976166, 50.235474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004634, 0.457075, 0.889416,
		0.852279, 0.467039, -0.235572,
		-0.523066, 0.756940, -0.391720,
		39.651344, 38.203247, 50.117958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407467, 38.237484, 50.378796>,  <40.017490, 37.673389, 50.392162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407467, 38.237484, 50.378796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015942, 38.310596, 50.415707>,  <39.781025, 38.354465, 50.437855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015942, 38.310596, 50.415707>,  <40.407467, 38.237484, 50.378796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015942, 38.310596, 50.415707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154794, 0.365551, 0.917830,
		0.134028, 0.912668, -0.386100,
		-0.978813, 0.182781, 0.092282,
		39.722298, 38.365429, 50.443390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198395, 39.026482, 50.600372>,  <40.407467, 38.237484, 50.378796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198395, 39.026482, 50.600372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.935139, 38.758732, 50.738239>,  <39.777187, 38.598083, 50.820961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.935139, 38.758732, 50.738239>,  <40.198395, 39.026482, 50.600372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935139, 38.758732, 50.738239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019153, 0.472527, 0.881108,
		-0.752654, 0.573289, -0.323808,
		-0.658138, -0.669371, 0.344669,
		39.737698, 38.557922, 50.841640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726250, 39.432777, 51.055485>,  <40.198395, 39.026482, 50.600372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726250, 39.432777, 51.055485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.707310, 39.041183, 51.134838>,  <39.695946, 38.806229, 51.182449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.707310, 39.041183, 51.134838>,  <39.726250, 39.432777, 51.055485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707310, 39.041183, 51.134838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265751, 0.203794, 0.942255,
		-0.962878, -0.008103, -0.269815,
		-0.047352, -0.978980, 0.198382,
		39.693104, 38.747490, 51.194351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901211, 39.867054, 51.595047>,  <39.726250, 39.432777, 51.055485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901211, 39.867054, 51.595047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.528057, 39.841877, 51.736904>,  <39.304165, 39.826771, 51.822018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.528057, 39.841877, 51.736904>,  <39.901211, 39.867054, 51.595047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528057, 39.841877, 51.736904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059441, 0.944208, 0.323941,
		-0.355244, 0.323279, -0.877093,
		-0.932882, -0.062942, 0.354640,
		39.248192, 39.822994, 51.843296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798500, 40.623081, 51.435017>,  <39.901211, 39.867054, 51.595047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798500, 40.623081, 51.435017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.604073, 40.484314, 51.755863>,  <39.487415, 40.401054, 51.948372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.604073, 40.484314, 51.755863>,  <39.798500, 40.623081, 51.435017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604073, 40.484314, 51.755863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312429, 0.926156, 0.211242,
		-0.816165, -0.147925, -0.558563,
		-0.486068, -0.346920, 0.802112,
		39.458252, 40.380238, 51.996498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089390, 40.907612, 51.431999>,  <39.798500, 40.623081, 51.435017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089390, 40.907612, 51.431999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.162483, 40.814495, 51.814083>,  <39.206337, 40.758625, 52.043331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.162483, 40.814495, 51.814083>,  <39.089390, 40.907612, 51.431999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162483, 40.814495, 51.814083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535146, 0.791480, 0.295259,
		-0.824760, -0.565127, 0.020050,
		0.182729, -0.232788, 0.955207,
		39.217300, 40.744659, 52.100647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491665, 41.195683, 51.897610>,  <39.089390, 40.907612, 51.431999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491665, 41.195683, 51.897610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.588516, 41.567062, 51.784927>,  <38.646626, 41.789890, 51.717316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.588516, 41.567062, 51.784927>,  <38.491665, 41.195683, 51.897610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588516, 41.567062, 51.784927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068786, -0.306043, -0.949530,
		-0.967803, 0.210530, -0.137965,
		0.242128, 0.928448, -0.281708,
		38.661156, 41.845596, 51.700417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157406, 41.344761, 51.361828>,  <38.491665, 41.195683, 51.897610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157406, 41.344761, 51.361828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441956, 41.623158, 51.322754>,  <38.612686, 41.790195, 51.299309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441956, 41.623158, 51.322754>,  <38.157406, 41.344761, 51.361828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441956, 41.623158, 51.322754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150485, -0.286611, -0.946154,
		-0.686512, 0.658370, -0.308624,
		0.711375, 0.695990, -0.097687,
		38.655369, 41.831955, 51.293449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918362, 41.838478, 50.927437>,  <38.157406, 41.344761, 51.361828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918362, 41.838478, 50.927437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318104, 41.845600, 50.914963>,  <38.557949, 41.849873, 50.907478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318104, 41.845600, 50.914963>,  <37.918362, 41.838478, 50.927437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318104, 41.845600, 50.914963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027574, -0.175994, -0.984005,
		-0.023009, 0.984230, -0.175390,
		0.999355, 0.017804, -0.031189,
		38.617908, 41.850941, 50.905605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057331, 42.265656, 50.337364>,  <37.918362, 41.838478, 50.927437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057331, 42.265656, 50.337364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427574, 42.120907, 50.381725>,  <38.649719, 42.034058, 50.408340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427574, 42.120907, 50.381725>,  <38.057331, 42.265656, 50.337364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427574, 42.120907, 50.381725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060017, -0.148973, -0.987018,
		0.373698, 0.920246, -0.116171,
		0.925607, -0.361875, 0.110901,
		38.705257, 42.012344, 50.414997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416569, 42.609879, 49.864647>,  <38.057331, 42.265656, 50.337364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416569, 42.609879, 49.864647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.594406, 42.265247, 49.962643>,  <38.701107, 42.058468, 50.021439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.594406, 42.265247, 49.962643>,  <38.416569, 42.609879, 49.864647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594406, 42.265247, 49.962643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135454, -0.205693, -0.969197,
		0.885433, 0.464081, 0.025255,
		0.444591, -0.861579, 0.244989,
		38.727783, 42.006775, 50.036140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002995, 42.638824, 49.538788>,  <38.416569, 42.609879, 49.864647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002995, 42.638824, 49.538788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946423, 42.254326, 49.633453>,  <38.912479, 42.023628, 49.690254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.946423, 42.254326, 49.633453>,  <39.002995, 42.638824, 49.538788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946423, 42.254326, 49.633453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030310, -0.243161, -0.969512,
		0.989484, -0.129947, 0.063526,
		-0.141432, -0.961242, 0.236665,
		38.903992, 41.965954, 49.704453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515800, 42.193035, 49.114193>,  <39.002995, 42.638824, 49.538788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515800, 42.193035, 49.114193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.217262, 41.944931, 49.210720>,  <39.038139, 41.796066, 49.268639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.217262, 41.944931, 49.210720>,  <39.515800, 42.193035, 49.114193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217262, 41.944931, 49.210720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078309, -0.441907, -0.893636,
		0.660933, -0.648066, 0.378388,
		-0.746348, -0.620265, 0.241322,
		38.993359, 41.758850, 49.283115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602192, 41.711445, 48.743389>,  <39.515800, 42.193035, 49.114193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602192, 41.711445, 48.743389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.230770, 41.599304, 48.840706>,  <39.007915, 41.532021, 48.899094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.230770, 41.599304, 48.840706>,  <39.602192, 41.711445, 48.743389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230770, 41.599304, 48.840706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097035, -0.449301, -0.888095,
		0.358287, -0.848253, 0.389997,
		-0.928555, -0.280350, 0.243289,
		38.952202, 41.515198, 48.913692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488766, 41.015377, 48.450008>,  <39.602192, 41.711445, 48.743389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488766, 41.015377, 48.450008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.120537, 41.159988, 48.509125>,  <38.899597, 41.246754, 48.544594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.120537, 41.159988, 48.509125>,  <39.488766, 41.015377, 48.450008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120537, 41.159988, 48.509125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293876, -0.391925, -0.871798,
		-0.257256, -0.845986, 0.467040,
		-0.920574, 0.361527, 0.147790,
		38.844364, 41.268448, 48.553463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028942, 40.415073, 48.355484>,  <39.488766, 41.015377, 48.450008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028942, 40.415073, 48.355484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.850342, 40.767681, 48.294071>,  <38.743183, 40.979244, 48.257221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.850342, 40.767681, 48.294071>,  <39.028942, 40.415073, 48.355484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850342, 40.767681, 48.294071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307386, -0.312255, -0.898894,
		-0.840330, -0.354159, 0.410386,
		-0.446497, 0.881515, -0.153534,
		38.716393, 41.032135, 48.248013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567875, 40.221107, 47.934624>,  <39.028942, 40.415073, 48.355484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567875, 40.221107, 47.934624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576714, 40.618961, 47.894184>,  <38.582016, 40.857674, 47.869919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.576714, 40.618961, 47.894184>,  <38.567875, 40.221107, 47.934624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576714, 40.618961, 47.894184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213395, -0.094105, -0.972423,
		-0.976716, 0.043061, 0.210169,
		0.022096, 0.994631, -0.101103,
		38.583344, 40.917351, 47.863853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993580, 40.298496, 47.540607>,  <38.567875, 40.221107, 47.934624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993580, 40.298496, 47.540607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.210583, 40.630634, 47.489677>,  <38.340786, 40.829918, 47.459118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.210583, 40.630634, 47.489677>,  <37.993580, 40.298496, 47.540607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210583, 40.630634, 47.489677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075215, -0.102948, -0.991839,
		-0.836676, 0.547659, 0.006604,
		0.542509, 0.830344, -0.127326,
		38.373337, 40.879738, 47.451481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595913, 40.648880, 47.031326>,  <37.993580, 40.298496, 47.540607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595913, 40.648880, 47.031326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940620, 40.843590, 46.974197>,  <38.147446, 40.960415, 46.939919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.940620, 40.843590, 46.974197>,  <37.595913, 40.648880, 47.031326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940620, 40.843590, 46.974197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153045, -0.018955, -0.988037,
		-0.483660, 0.873321, 0.058164,
		0.861771, 0.486776, -0.142825,
		38.199150, 40.989624, 46.931351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960842, 41.088219, 46.833000>,  <37.595913, 40.648880, 47.031326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960842, 41.088219, 46.833000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595901, 40.936634, 46.771027>,  <36.376938, 40.845684, 46.733841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.595901, 40.936634, 46.771027>,  <36.960842, 41.088219, 46.833000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595901, 40.936634, 46.771027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165025, -0.005936, 0.986272,
		-0.374681, 0.925393, -0.057123,
		-0.912349, -0.378964, -0.154937,
		36.322197, 40.822945, 46.724545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466000, 41.685997, 47.159332>,  <36.960842, 41.088219, 46.833000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466000, 41.685997, 47.159332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287418, 41.329731, 47.124947>,  <36.180267, 41.115971, 47.104317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.287418, 41.329731, 47.124947>,  <36.466000, 41.685997, 47.159332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287418, 41.329731, 47.124947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094001, -0.048855, 0.994373,
		-0.889854, 0.452025, -0.061912,
		-0.446456, -0.890666, -0.085965,
		36.153481, 41.062531, 47.099155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858097, 41.744175, 47.515003>,  <36.466000, 41.685997, 47.159332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858097, 41.744175, 47.515003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920368, 41.349079, 47.510403>,  <35.957733, 41.112022, 47.507645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920368, 41.349079, 47.510403>,  <35.858097, 41.744175, 47.515003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920368, 41.349079, 47.510403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051067, -0.003576, 0.998689,
		-0.986486, -0.156065, 0.049884,
		0.155682, -0.987740, -0.011498,
		35.967072, 41.052757, 47.506954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274712, 41.449497, 47.874245>,  <35.858097, 41.744175, 47.515003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274712, 41.449497, 47.874245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570694, 41.181347, 47.896347>,  <35.748283, 41.020458, 47.909607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570694, 41.181347, 47.896347>,  <35.274712, 41.449497, 47.874245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570694, 41.181347, 47.896347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083529, -0.010065, 0.996455,
		-0.667444, -0.741953, -0.063444,
		0.739961, -0.670377, 0.055256,
		35.792683, 40.980232, 47.912926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960659, 40.899258, 48.308498>,  <35.274712, 41.449497, 47.874245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960659, 40.899258, 48.308498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360439, 40.896053, 48.321327>,  <35.600307, 40.894131, 48.329025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360439, 40.896053, 48.321327>,  <34.960659, 40.899258, 48.308498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360439, 40.896053, 48.321327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033017, -0.192234, 0.980794,
		-0.001689, -0.981316, -0.192393,
		0.999453, -0.008009, 0.032076,
		35.660275, 40.893650, 48.330952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163757, 40.455044, 48.833492>,  <34.960659, 40.899258, 48.308498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163757, 40.455044, 48.833492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511677, 40.649456, 48.799473>,  <35.720428, 40.766102, 48.779060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511677, 40.649456, 48.799473>,  <35.163757, 40.455044, 48.833492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511677, 40.649456, 48.799473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108570, -0.020371, 0.993880,
		0.481322, -0.873705, -0.070487,
		0.869794, 0.486029, -0.085053,
		35.772614, 40.795265, 48.773956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551353, 40.132812, 49.212944>,  <35.163757, 40.455044, 48.833492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551353, 40.132812, 49.212944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732601, 40.487469, 49.175949>,  <35.841351, 40.700260, 49.153751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.732601, 40.487469, 49.175949>,  <35.551353, 40.132812, 49.212944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732601, 40.487469, 49.175949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331944, -0.071523, 0.940584,
		0.827343, -0.456899, -0.326723,
		0.453120, 0.886639, -0.092490,
		35.868538, 40.753460, 49.148201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642914, 39.258747, 49.285355>,  <35.551353, 40.132812, 49.212944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642914, 39.258747, 49.285355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.301849, 39.111176, 49.433331>,  <35.097210, 39.022633, 49.522118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.301849, 39.111176, 49.433331>,  <35.642914, 39.258747, 49.285355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301849, 39.111176, 49.433331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297516, -0.239185, -0.924270,
		0.429475, -0.898154, 0.094182,
		-0.852664, -0.368930, 0.369940,
		35.046051, 39.000496, 49.544312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590511, 38.652569, 48.989170>,  <35.642914, 39.258747, 49.285355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590511, 38.652569, 48.989170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212532, 38.712585, 49.105484>,  <34.985744, 38.748596, 49.175274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212532, 38.712585, 49.105484>,  <35.590511, 38.652569, 48.989170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212532, 38.712585, 49.105484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320451, -0.244594, -0.915142,
		-0.066185, -0.957946, 0.279210,
		-0.944950, 0.150042, 0.290786,
		34.929047, 38.757599, 49.192719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296448, 38.063908, 48.837578>,  <35.590511, 38.652569, 48.989170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296448, 38.063908, 48.837578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005844, 38.337231, 48.866638>,  <34.831482, 38.501225, 48.884075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.005844, 38.337231, 48.866638>,  <35.296448, 38.063908, 48.837578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005844, 38.337231, 48.866638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321836, -0.244947, -0.914562,
		-0.607135, -0.687814, 0.397869,
		-0.726504, 0.683311, 0.072647,
		34.787891, 38.542225, 48.888432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597107, 37.733627, 48.583599>,  <35.296448, 38.063908, 48.837578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597107, 37.733627, 48.583599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485760, 38.117798, 48.579639>,  <34.418949, 38.348301, 48.577263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485760, 38.117798, 48.579639>,  <34.597107, 37.733627, 48.583599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485760, 38.117798, 48.579639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379826, -0.119542, -0.917301,
		-0.882180, -0.251590, 0.398070,
		-0.278370, 0.960423, -0.009897,
		34.402248, 38.405926, 48.576672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909657, 37.733044, 48.307999>,  <34.597107, 37.733627, 48.583599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909657, 37.733044, 48.307999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085239, 38.088219, 48.253033>,  <34.190590, 38.301323, 48.220055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.085239, 38.088219, 48.253033>,  <33.909657, 37.733044, 48.307999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085239, 38.088219, 48.253033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261397, -0.020117, -0.965022,
		-0.859642, 0.459526, 0.223273,
		0.438961, 0.887936, -0.137412,
		34.216927, 38.354599, 48.211807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560329, 38.098145, 47.763424>,  <33.909657, 37.733044, 48.307999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560329, 38.098145, 47.763424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885635, 38.329166, 47.791798>,  <34.080818, 38.467777, 47.808823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.885635, 38.329166, 47.791798>,  <33.560329, 38.098145, 47.763424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885635, 38.329166, 47.791798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123021, 0.289798, -0.949148,
		-0.568739, 0.763184, 0.306734,
		0.813266, 0.577552, 0.070932,
		34.129616, 38.502434, 47.813076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334145, 38.733238, 47.547672>,  <33.560329, 38.098145, 47.763424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334145, 38.733238, 47.547672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722469, 38.673481, 47.472614>,  <33.955463, 38.637627, 47.427578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722469, 38.673481, 47.472614>,  <33.334145, 38.733238, 47.547672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722469, 38.673481, 47.472614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160172, 0.178535, -0.970809,
		0.178535, 0.972526, 0.149395,
		0.970809, -0.149395, -0.187646,
		34.013714, 38.628662, 47.416321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.599854, 35.846245, 50.509041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.975689, 35.956020, 50.590878>,  <38.201191, 36.021885, 50.639980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.975689, 35.956020, 50.590878>,  <37.599854, 35.846245, 50.509041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975689, 35.956020, 50.590878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318893, 0.919017, 0.231765,
		-0.124421, -0.283007, 0.951013,
		0.939589, 0.274435, 0.204594,
		38.257565, 36.038349, 50.652256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963219, 36.296680, 50.981819>,  <37.599854, 35.846245, 50.509041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963219, 36.296680, 50.981819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.345013, 36.343788, 50.872204>,  <38.574089, 36.372055, 50.806435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.345013, 36.343788, 50.872204>,  <37.963219, 36.296680, 50.981819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345013, 36.343788, 50.872204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242588, -0.228031, -0.942949,
		-0.173542, 0.966505, -0.189082,
		0.954481, 0.117772, -0.274035,
		38.631355, 36.379120, 50.789993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951012, 36.647800, 50.381100>,  <37.963219, 36.296680, 50.981819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951012, 36.647800, 50.381100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.301670, 36.455742, 50.368813>,  <38.512066, 36.340508, 50.361443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.301670, 36.455742, 50.368813>,  <37.951012, 36.647800, 50.381100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301670, 36.455742, 50.368813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114106, -0.145470, -0.982760,
		0.467403, 0.865041, -0.182314,
		0.876650, -0.480148, -0.030714,
		38.564667, 36.311699, 50.359600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002743, 36.664959, 49.733471>,  <37.951012, 36.647800, 50.381100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002743, 36.664959, 49.733471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.295795, 36.418530, 49.849201>,  <38.471626, 36.270672, 49.918640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.295795, 36.418530, 49.849201>,  <38.002743, 36.664959, 49.733471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295795, 36.418530, 49.849201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004380, -0.429337, -0.903134,
		0.680616, 0.660393, -0.317243,
		0.732628, -0.616076, 0.289321,
		38.515583, 36.233707, 49.935997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551525, 36.666641, 49.282833>,  <38.002743, 36.664959, 49.733471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551525, 36.666641, 49.282833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.570202, 36.308743, 49.460487>,  <38.581406, 36.094006, 49.567078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.570202, 36.308743, 49.460487>,  <38.551525, 36.666641, 49.282833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570202, 36.308743, 49.460487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273942, -0.439041, -0.855686,
		0.960612, -0.081717, -0.265606,
		0.046688, -0.894743, 0.444134,
		38.584209, 36.040321, 49.593727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855099, 36.201275, 48.657681>,  <38.551525, 36.666641, 49.282833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855099, 36.201275, 48.657681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.698204, 35.946198, 48.922859>,  <38.604069, 35.793152, 49.081966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.698204, 35.946198, 48.922859>,  <38.855099, 36.201275, 48.657681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698204, 35.946198, 48.922859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420310, -0.516816, -0.745815,
		0.818224, -0.571178, -0.065315,
		-0.392237, -0.637697, 0.662943,
		38.580532, 35.754890, 49.121742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000057, 35.627796, 48.442436>,  <38.855099, 36.201275, 48.657681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000057, 35.627796, 48.442436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.708607, 35.504696, 48.687187>,  <38.533737, 35.430836, 48.834038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.708607, 35.504696, 48.687187>,  <39.000057, 35.627796, 48.442436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708607, 35.504696, 48.687187> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402679, -0.530167, -0.746172,
		0.554031, -0.790071, 0.262370,
		-0.728629, -0.307752, 0.611873,
		38.490017, 35.412369, 48.870750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978588, 34.877865, 48.422421>,  <39.000057, 35.627796, 48.442436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978588, 34.877865, 48.422421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.614258, 34.985352, 48.547764>,  <38.395660, 35.049843, 48.622971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.614258, 34.985352, 48.547764>,  <38.978588, 34.877865, 48.422421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614258, 34.985352, 48.547764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401121, -0.396854, -0.825596,
		-0.097497, -0.877665, 0.469253,
		-0.910822, 0.268720, 0.313358,
		38.341011, 35.065968, 48.641769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556969, 34.340538, 48.335850>,  <38.978588, 34.877865, 48.422421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556969, 34.340538, 48.335850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.275356, 34.624340, 48.348167>,  <38.106388, 34.794621, 48.355556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.275356, 34.624340, 48.348167>,  <38.556969, 34.340538, 48.335850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275356, 34.624340, 48.348167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514341, -0.479515, -0.710999,
		-0.489703, -0.516389, 0.702519,
		-0.704020, 0.709513, 0.030780,
		38.064148, 34.837193, 48.357403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935028, 33.929127, 48.286682>,  <38.556969, 34.340538, 48.335850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935028, 33.929127, 48.286682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.854137, 34.305840, 48.179234>,  <37.805603, 34.531868, 48.114765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.854137, 34.305840, 48.179234>,  <37.935028, 33.929127, 48.286682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854137, 34.305840, 48.179234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406576, -0.330269, -0.851833,
		-0.890955, -0.063047, 0.449693,
		-0.202225, 0.941779, -0.268622,
		37.793468, 34.588375, 48.098648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189224, 33.977821, 48.230694>,  <37.935028, 33.929127, 48.286682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189224, 33.977821, 48.230694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.363327, 34.253258, 47.998695>,  <37.467789, 34.418518, 47.859497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.363327, 34.253258, 47.998695>,  <37.189224, 33.977821, 48.230694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363327, 34.253258, 47.998695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523095, -0.330903, -0.785414,
		-0.732752, 0.645247, 0.216172,
		0.435255, 0.688592, -0.579995,
		37.493904, 34.459835, 47.824696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611996, 34.234627, 47.808117>,  <37.189224, 33.977821, 48.230694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611996, 34.234627, 47.808117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.960278, 34.320263, 47.631012>,  <37.169247, 34.371643, 47.524750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.960278, 34.320263, 47.631012>,  <36.611996, 34.234627, 47.808117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960278, 34.320263, 47.631012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364880, -0.322422, -0.873445,
		-0.329750, 0.922069, -0.202618,
		0.870705, 0.214088, -0.442763,
		37.221489, 34.384491, 47.498184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356682, 34.942028, 47.636200>,  <36.611996, 34.234627, 47.808117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356682, 34.942028, 47.636200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.997776, 34.823288, 47.766922>,  <35.782433, 34.752045, 47.845356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.997776, 34.823288, 47.766922>,  <36.356682, 34.942028, 47.636200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997776, 34.823288, 47.766922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101039, 0.582512, 0.806518,
		-0.429780, 0.756679, -0.492673,
		-0.897263, -0.296846, 0.326806,
		35.728596, 34.734234, 47.864964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181541, 35.447475, 47.955818>,  <36.356682, 34.942028, 47.636200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181541, 35.447475, 47.955818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.945129, 35.163883, 48.109722>,  <35.803284, 34.993729, 48.202065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.945129, 35.163883, 48.109722>,  <36.181541, 35.447475, 47.955818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945129, 35.163883, 48.109722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011470, 0.484317, 0.874817,
		-0.806571, 0.512627, -0.294376,
		-0.591026, -0.708979, 0.384756,
		35.767822, 34.951191, 48.225147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547955, 35.810295, 48.255516>,  <36.181541, 35.447475, 47.955818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547955, 35.810295, 48.255516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.598148, 35.450806, 48.423588>,  <35.628265, 35.235111, 48.524429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.598148, 35.450806, 48.423588>,  <35.547955, 35.810295, 48.255516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598148, 35.450806, 48.423588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190929, 0.393730, 0.899179,
		-0.973551, -0.193054, -0.122187,
		0.125481, -0.898726, 0.420175,
		35.635792, 35.181187, 48.549641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192772, 35.847733, 48.864334>,  <35.547955, 35.810295, 48.255516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192772, 35.847733, 48.864334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.389408, 35.515244, 48.968185>,  <35.507389, 35.315750, 49.030495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.389408, 35.515244, 48.968185>,  <35.192772, 35.847733, 48.864334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389408, 35.515244, 48.968185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354231, 0.081484, 0.931601,
		-0.795523, -0.549936, -0.254388,
		0.491593, -0.831222, 0.259627,
		35.536884, 35.265877, 49.046074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724152, 35.662010, 49.443626>,  <35.192772, 35.847733, 48.864334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724152, 35.662010, 49.443626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.055584, 35.440926, 49.479298>,  <35.254444, 35.308273, 49.500698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.055584, 35.440926, 49.479298>,  <34.724152, 35.662010, 49.443626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055584, 35.440926, 49.479298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096213, 0.016338, 0.995227,
		-0.551535, -0.833209, -0.039641,
		0.828584, -0.552716, 0.089176,
		35.304161, 35.275112, 49.506050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540356, 35.152309, 49.876553>,  <34.724152, 35.662010, 49.443626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540356, 35.152309, 49.876553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.936764, 35.199772, 49.901222>,  <35.174610, 35.228249, 49.916023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.936764, 35.199772, 49.901222>,  <34.540356, 35.152309, 49.876553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936764, 35.199772, 49.901222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078104, 0.139214, 0.987177,
		0.108536, -0.983129, 0.147231,
		0.991019, 0.118644, 0.061676,
		35.234070, 35.235367, 49.919724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792725, 34.716278, 50.402660>,  <34.540356, 35.152309, 49.876553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792725, 34.716278, 50.402660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064476, 35.006447, 50.358471>,  <35.227528, 35.180550, 50.331959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.064476, 35.006447, 50.358471>,  <34.792725, 34.716278, 50.402660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064476, 35.006447, 50.358471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082946, 0.225509, 0.970704,
		0.729084, -0.650313, 0.213377,
		0.679380, 0.725423, -0.110474,
		35.268291, 35.224075, 50.325329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305122, 34.647575, 50.935886>,  <34.792725, 34.716278, 50.402660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305122, 34.647575, 50.935886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.348156, 35.024906, 50.810310>,  <35.373978, 35.251305, 50.734966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.348156, 35.024906, 50.810310>,  <35.305122, 34.647575, 50.935886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348156, 35.024906, 50.810310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115567, 0.301768, 0.946351,
		0.987456, -0.138092, -0.076553,
		0.107583, 0.943327, -0.313941,
		35.380432, 35.307903, 50.716129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939045, 34.961826, 51.281857>,  <35.305122, 34.647575, 50.935886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939045, 34.961826, 51.281857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.730930, 35.279617, 51.156563>,  <35.606060, 35.470291, 51.081387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.730930, 35.279617, 51.156563>,  <35.939045, 34.961826, 51.281857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730930, 35.279617, 51.156563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317052, 0.520270, 0.792967,
		0.792957, 0.313259, -0.522579,
		-0.520286, 0.794473, -0.313232,
		35.574844, 35.517960, 51.062592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373726, 35.518181, 51.265858>,  <35.939045, 34.961826, 51.281857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373726, 35.518181, 51.265858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.011745, 35.687962, 51.277836>,  <35.794556, 35.789829, 51.285023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.011745, 35.687962, 51.277836>,  <36.373726, 35.518181, 51.265858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011745, 35.687962, 51.277836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312608, 0.615450, 0.723531,
		0.288672, 0.664126, -0.689642,
		-0.904956, 0.424451, 0.029947,
		35.740257, 35.815296, 51.286819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412701, 36.305756, 51.098385>,  <36.373726, 35.518181, 51.265858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412701, 36.305756, 51.098385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.090405, 36.226639, 51.321690>,  <35.897026, 36.179169, 51.455673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.090405, 36.226639, 51.321690>,  <36.412701, 36.305756, 51.098385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090405, 36.226639, 51.321690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327244, 0.636963, 0.697990,
		-0.493651, 0.745088, -0.448501,
		-0.805742, -0.197794, 0.558262,
		35.848682, 36.167301, 51.489170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188156, 36.998589, 51.398277>,  <36.412701, 36.305756, 51.098385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188156, 36.998589, 51.398277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968094, 36.742126, 51.612286>,  <35.836056, 36.588249, 51.740692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.968094, 36.742126, 51.612286>,  <36.188156, 36.998589, 51.398277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968094, 36.742126, 51.612286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151524, 0.553415, 0.819007,
		-0.821201, 0.531648, -0.207312,
		-0.550153, -0.641157, 0.535023,
		35.803047, 36.549778, 51.772793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641109, 37.390217, 51.680439>,  <36.188156, 36.998589, 51.398277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641109, 37.390217, 51.680439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.684132, 37.053215, 51.891579>,  <35.709946, 36.851013, 52.018261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.684132, 37.053215, 51.891579>,  <35.641109, 37.390217, 51.680439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684132, 37.053215, 51.891579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069749, 0.536014, 0.841323,
		-0.991749, -0.053672, 0.116415,
		0.107556, -0.842501, 0.527848,
		35.716400, 36.800465, 52.049934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131828, 37.501045, 52.237511>,  <35.641109, 37.390217, 51.680439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131828, 37.501045, 52.237511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.419861, 37.249111, 52.353985>,  <35.592682, 37.097950, 52.423870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.419861, 37.249111, 52.353985>,  <35.131828, 37.501045, 52.237511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419861, 37.249111, 52.353985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126324, 0.531615, 0.837513,
		-0.682294, -0.566294, 0.462370,
		0.720082, -0.629838, 0.291181,
		35.635887, 37.060162, 52.441338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008648, 38.247662, 52.583260>,  <35.131828, 37.501045, 52.237511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008648, 38.247662, 52.583260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.072926, 38.640984, 52.549099>,  <35.111492, 38.876976, 52.528603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.072926, 38.640984, 52.549099>,  <35.008648, 38.247662, 52.583260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072926, 38.640984, 52.549099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310113, -0.031848, -0.950166,
		-0.937020, 0.179172, 0.299817,
		0.160695, 0.983302, -0.085405,
		35.121136, 38.935974, 52.523476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405029, 38.481804, 52.285862>,  <35.008648, 38.247662, 52.583260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405029, 38.481804, 52.285862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.706196, 38.729591, 52.196987>,  <34.886898, 38.878265, 52.143661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.706196, 38.729591, 52.196987>,  <34.405029, 38.481804, 52.285862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706196, 38.729591, 52.196987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282413, -0.000823, -0.959292,
		-0.594438, 0.785018, 0.174327,
		0.752918, 0.619472, -0.222189,
		34.932072, 38.915432, 52.130329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121418, 38.753250, 51.690979>,  <34.405029, 38.481804, 52.285862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121418, 38.753250, 51.690979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.506992, 38.859474, 51.683987>,  <34.738338, 38.923206, 51.679790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.506992, 38.859474, 51.683987>,  <34.121418, 38.753250, 51.690979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506992, 38.859474, 51.683987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016439, -0.006144, -0.999846,
		-0.265623, 0.964076, -0.001557,
		0.963937, 0.265557, -0.017480,
		34.796173, 38.939140, 51.678741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132484, 39.276379, 51.102486>,  <34.121418, 38.753250, 51.690979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132484, 39.276379, 51.102486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.508842, 39.151436, 51.154873>,  <34.734657, 39.076469, 51.186306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.508842, 39.151436, 51.154873>,  <34.132484, 39.276379, 51.102486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508842, 39.151436, 51.154873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158019, 0.062797, -0.985437,
		0.299582, 0.947888, 0.108443,
		0.940894, -0.312355, 0.130971,
		34.791111, 39.057728, 51.194164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547279, 39.715195, 50.856812>,  <34.132484, 39.276379, 51.102486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547279, 39.715195, 50.856812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764137, 39.379204, 50.847660>,  <34.894253, 39.177608, 50.842171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.764137, 39.379204, 50.847660>,  <34.547279, 39.715195, 50.856812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764137, 39.379204, 50.847660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134926, 0.113890, -0.984289,
		0.829381, 0.530541, 0.175079,
		0.542145, -0.839973, -0.022875,
		34.926781, 39.127213, 50.840797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199360, 39.898472, 50.527088>,  <34.547279, 39.715195, 50.856812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199360, 39.898472, 50.527088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.149387, 39.505745, 50.469921>,  <35.119404, 39.270107, 50.435619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.149387, 39.505745, 50.469921>,  <35.199360, 39.898472, 50.527088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149387, 39.505745, 50.469921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027771, 0.147454, -0.988679,
		0.991777, -0.119549, -0.045688,
		-0.124932, -0.981818, -0.142921,
		35.111908, 39.211201, 50.427044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411400, 39.741795, 49.799301>,  <35.199360, 39.898472, 50.527088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411400, 39.741795, 49.799301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.252792, 39.389824, 49.903988>,  <35.157627, 39.178642, 49.966801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.252792, 39.389824, 49.903988>,  <35.411400, 39.741795, 49.799301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252792, 39.389824, 49.903988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216991, -0.187174, -0.958061,
		0.892014, -0.436677, -0.116720,
		-0.396516, -0.879932, 0.261717,
		35.133839, 39.125843, 49.982502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187466, 39.938843, 49.529942>,  <35.411400, 39.741795, 49.799301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187466, 39.938843, 49.529942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.183132, 40.338505, 49.514091>,  <36.180531, 40.578300, 49.504581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.183132, 40.338505, 49.514091>,  <36.187466, 39.938843, 49.529942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183132, 40.338505, 49.514091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499652, 0.039739, 0.865314,
		0.866158, -0.010426, -0.499661,
		-0.010834, 0.999156, -0.039630,
		36.179882, 40.638252, 49.502201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817875, 40.201721, 49.665058>,  <36.187466, 39.938843, 49.529942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817875, 40.201721, 49.665058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.572922, 40.504112, 49.757572>,  <36.425949, 40.685547, 49.813080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.572922, 40.504112, 49.757572>,  <36.817875, 40.201721, 49.665058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572922, 40.504112, 49.757572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329190, -0.022143, 0.944004,
		0.718763, 0.654228, -0.235299,
		-0.612383, 0.755974, 0.231281,
		36.389206, 40.730904, 49.826958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196518, 40.704823, 50.077141>,  <36.817875, 40.201721, 49.665058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196518, 40.704823, 50.077141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.804955, 40.718525, 50.157703>,  <36.570015, 40.726746, 50.206039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.804955, 40.718525, 50.157703>,  <37.196518, 40.704823, 50.077141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804955, 40.718525, 50.157703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199099, -0.061047, 0.978076,
		0.045796, 0.997547, 0.052939,
		-0.978909, 0.034252, 0.201407,
		36.511280, 40.728802, 50.218124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369244, 41.262623, 50.565659>,  <37.196518, 40.704823, 50.077141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369244, 41.262623, 50.565659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985565, 41.178329, 50.641056>,  <36.755356, 41.127754, 50.686295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.985565, 41.178329, 50.641056>,  <37.369244, 41.262623, 50.565659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985565, 41.178329, 50.641056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151962, 0.177946, 0.972236,
		-0.238423, 0.961211, -0.138662,
		-0.959199, -0.210732, 0.188494,
		36.697807, 41.115108, 50.697605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080219, 41.777180, 51.061657>,  <37.369244, 41.262623, 50.565659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080219, 41.777180, 51.061657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.876789, 41.433647, 51.086174>,  <36.754730, 41.227528, 51.100883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.876789, 41.433647, 51.086174>,  <37.080219, 41.777180, 51.061657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876789, 41.433647, 51.086174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101424, 0.010934, 0.994783,
		-0.855020, 0.512143, 0.081545,
		-0.508580, -0.858831, 0.061293,
		36.724216, 41.175999, 51.104561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546192, 42.073334, 51.436165>,  <37.080219, 41.777180, 51.061657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546192, 42.073334, 51.436165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.533875, 41.674236, 51.460052>,  <36.526482, 41.434780, 51.474384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.533875, 41.674236, 51.460052>,  <36.546192, 42.073334, 51.436165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533875, 41.674236, 51.460052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307311, 0.066307, 0.949296,
		-0.951111, 0.010884, -0.308658,
		-0.030799, -0.997740, 0.059720,
		36.524635, 41.374916, 51.477970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841610, 41.863026, 51.691753>,  <36.546192, 42.073334, 51.436165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841610, 41.863026, 51.691753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.113827, 41.584694, 51.783566>,  <36.277157, 41.417694, 51.838654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.113827, 41.584694, 51.783566>,  <35.841610, 41.863026, 51.691753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113827, 41.584694, 51.783566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180898, 0.144004, 0.972902,
		-0.710026, -0.703624, -0.027873,
		0.680543, -0.695828, 0.229530,
		36.317989, 41.375946, 51.852425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566082, 41.419865, 52.213261>,  <35.841610, 41.863026, 51.691753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566082, 41.419865, 52.213261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.952328, 41.325241, 52.256393>,  <36.184074, 41.268467, 52.282272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.952328, 41.325241, 52.256393>,  <35.566082, 41.419865, 52.213261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952328, 41.325241, 52.256393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108137, 0.011710, 0.994067,
		-0.236422, -0.971546, -0.014274,
		0.965614, -0.236563, 0.107829,
		36.242012, 41.254272, 52.288742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666473, 40.849342, 52.747761>,  <35.566082, 41.419865, 52.213261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666473, 40.849342, 52.747761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.010666, 41.050949, 52.717991>,  <36.217182, 41.171913, 52.700127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.010666, 41.050949, 52.717991>,  <35.666473, 40.849342, 52.747761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010666, 41.050949, 52.717991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044268, 0.071571, 0.996453,
		0.507557, -0.860723, 0.039273,
		0.860480, 0.504018, -0.074429,
		36.268810, 41.202156, 52.695663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.335838, 39.352276, 36.841549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612572, 39.070881, 36.906620>,  <36.778610, 38.902042, 36.945663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612572, 39.070881, 36.906620>,  <36.335838, 39.352276, 36.841549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612572, 39.070881, 36.906620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074489, 0.154561, 0.985171,
		-0.718204, -0.693693, 0.054528,
		0.691834, -0.703492, 0.162679,
		36.820122, 38.859833, 36.955425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038483, 38.823853, 37.214603>,  <36.335838, 39.352276, 36.841549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038483, 38.823853, 37.214603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431526, 38.851437, 37.283562>,  <36.667355, 38.867989, 37.324936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431526, 38.851437, 37.283562>,  <36.038483, 38.823853, 37.214603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431526, 38.851437, 37.283562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180421, 0.135305, 0.974239,
		0.043859, -0.988401, 0.145394,
		0.982611, 0.068962, 0.172393,
		36.726311, 38.872124, 37.335281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196552, 38.338306, 37.779388>,  <36.038483, 38.823853, 37.214603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196552, 38.338306, 37.779388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484009, 38.615753, 37.799202>,  <36.656483, 38.782223, 37.811092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484009, 38.615753, 37.799202>,  <36.196552, 38.338306, 37.779388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484009, 38.615753, 37.799202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074736, 0.006216, 0.997184,
		0.691355, -0.720318, 0.056305,
		0.718639, 0.693616, 0.049536,
		36.699600, 38.823837, 37.814064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852776, 38.104340, 38.251575>,  <36.196552, 38.338306, 37.779388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852776, 38.104340, 38.251575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778442, 38.497353, 38.247620>,  <36.733841, 38.733162, 38.245247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778442, 38.497353, 38.247620>,  <36.852776, 38.104340, 38.251575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778442, 38.497353, 38.247620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097587, -0.008444, 0.995191,
		0.977723, 0.185906, 0.097452,
		-0.185834, 0.982531, -0.009886,
		36.722691, 38.792110, 38.244656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264164, 38.373302, 38.814590>,  <36.852776, 38.104340, 38.251575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264164, 38.373302, 38.814590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995506, 38.659180, 38.736504>,  <36.834312, 38.830704, 38.689651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995506, 38.659180, 38.736504>,  <37.264164, 38.373302, 38.814590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995506, 38.659180, 38.736504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080901, 0.191169, 0.978218,
		0.736443, 0.672808, -0.070579,
		-0.671645, 0.714691, -0.195216,
		36.794014, 38.873589, 38.677940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350578, 38.897572, 39.337440>,  <37.264164, 38.373302, 38.814590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350578, 38.897572, 39.337440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982700, 38.971569, 39.198917>,  <36.761974, 39.015968, 39.115803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982700, 38.971569, 39.198917>,  <37.350578, 38.897572, 39.337440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982700, 38.971569, 39.198917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305254, 0.217825, 0.927023,
		0.246931, 0.958295, -0.143863,
		-0.919698, 0.184996, -0.346311,
		36.706791, 39.027069, 39.095024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091782, 39.564442, 39.623936>,  <37.350578, 38.897572, 39.337440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091782, 39.564442, 39.623936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751965, 39.377636, 39.525814>,  <36.548073, 39.265553, 39.466942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751965, 39.377636, 39.525814>,  <37.091782, 39.564442, 39.623936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751965, 39.377636, 39.525814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460077, 0.428448, 0.777664,
		-0.258084, 0.773515, -0.578849,
		-0.849542, -0.467018, -0.245301,
		36.497101, 39.237530, 39.452225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555553, 40.010288, 39.548386>,  <37.091782, 39.564442, 39.623936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555553, 40.010288, 39.548386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337658, 39.680424, 39.609306>,  <36.206921, 39.482506, 39.645859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337658, 39.680424, 39.609306>,  <36.555553, 40.010288, 39.548386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337658, 39.680424, 39.609306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477581, 0.454352, 0.751984,
		-0.689327, 0.336902, -0.641346,
		-0.544742, -0.824658, 0.152299,
		36.174236, 39.433025, 39.654995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888954, 40.283367, 39.658104>,  <36.555553, 40.010288, 39.548386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888954, 40.283367, 39.658104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848217, 39.911465, 39.799629>,  <35.823772, 39.688324, 39.884544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848217, 39.911465, 39.799629>,  <35.888954, 40.283367, 39.658104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848217, 39.911465, 39.799629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603983, 0.340397, 0.720649,
		-0.790463, -0.140299, -0.596225,
		-0.101847, -0.929756, 0.353809,
		35.817661, 39.632538, 39.905773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106834, 40.115135, 39.725826>,  <35.888954, 40.283367, 39.658104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106834, 40.115135, 39.725826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315910, 39.909588, 39.997925>,  <35.441357, 39.786259, 40.161182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315910, 39.909588, 39.997925>,  <35.106834, 40.115135, 39.725826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315910, 39.909588, 39.997925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659751, 0.261528, 0.704508,
		-0.539930, -0.817030, -0.202331,
		0.522689, -0.513873, 0.680243,
		35.472717, 39.755424, 40.202000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604336, 39.827431, 40.350204>,  <35.106834, 40.115135, 39.725826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604336, 39.827431, 40.350204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974937, 39.796844, 40.497581>,  <35.197296, 39.778492, 40.586006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974937, 39.796844, 40.497581>,  <34.604336, 39.827431, 40.350204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974937, 39.796844, 40.497581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333352, 0.287438, 0.897917,
		-0.174563, -0.954742, 0.240822,
		0.926501, -0.076464, 0.368441,
		35.252888, 39.773907, 40.608112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444897, 39.424854, 41.032246>,  <34.604336, 39.827431, 40.350204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444897, 39.424854, 41.032246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801662, 39.603981, 41.057407>,  <35.015720, 39.711456, 41.072506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801662, 39.603981, 41.057407>,  <34.444897, 39.424854, 41.032246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801662, 39.603981, 41.057407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248848, 0.369887, 0.895130,
		0.377623, -0.814011, 0.441347,
		0.891894, 0.447850, 0.062887,
		35.069237, 39.738327, 41.076279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170609, 38.763359, 40.976368>,  <34.444897, 39.424854, 41.032246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170609, 38.763359, 40.976368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846710, 38.669628, 41.191555>,  <33.652370, 38.613392, 41.320667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846710, 38.669628, 41.191555>,  <34.170609, 38.763359, 40.976368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846710, 38.669628, 41.191555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562527, 0.049099, -0.825320,
		0.166978, -0.970918, -0.171572,
		-0.809742, -0.234324, 0.537969,
		33.603786, 38.599331, 41.352947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814396, 38.172531, 40.648685>,  <34.170609, 38.763359, 40.976368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814396, 38.172531, 40.648685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543430, 38.361904, 40.873886>,  <33.380852, 38.475529, 41.009007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543430, 38.361904, 40.873886>,  <33.814396, 38.172531, 40.648685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543430, 38.361904, 40.873886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671843, -0.086519, -0.735623,
		-0.299561, -0.876568, 0.376684,
		-0.677414, 0.473437, 0.562999,
		33.340206, 38.503937, 41.042786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254017, 37.732407, 40.707077>,  <33.814396, 38.172531, 40.648685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254017, 37.732407, 40.707077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125065, 38.107552, 40.758434>,  <33.047695, 38.332638, 40.789249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125065, 38.107552, 40.758434>,  <33.254017, 37.732407, 40.707077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125065, 38.107552, 40.758434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631435, -0.112003, -0.767297,
		-0.705238, -0.328435, 0.628307,
		-0.322379, 0.937863, 0.128397,
		33.028351, 38.388908, 40.796955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490372, 37.707241, 40.749676>,  <33.254017, 37.732407, 40.707077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490372, 37.707241, 40.749676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573936, 38.080627, 40.633064>,  <32.624073, 38.304661, 40.563095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573936, 38.080627, 40.633064>,  <32.490372, 37.707241, 40.749676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573936, 38.080627, 40.633064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696422, -0.067279, -0.714472,
		-0.686551, 0.352290, 0.636034,
		0.208910, 0.933469, -0.291533,
		32.636608, 38.360668, 40.545605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843864, 38.033138, 40.661251>,  <32.490372, 37.707241, 40.749676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843864, 38.033138, 40.661251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116470, 38.242699, 40.456871>,  <32.280033, 38.368435, 40.334244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116470, 38.242699, 40.456871>,  <31.843864, 38.033138, 40.661251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116470, 38.242699, 40.456871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585673, -0.028165, -0.810058,
		-0.438780, 0.851314, 0.287639,
		0.681512, 0.523900, -0.510950,
		32.320923, 38.399868, 40.303585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485476, 38.408440, 40.194958>,  <31.843864, 38.033138, 40.661251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485476, 38.408440, 40.194958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848007, 38.474270, 40.039276>,  <32.065525, 38.513767, 39.945866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848007, 38.474270, 40.039276>,  <31.485476, 38.408440, 40.194958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848007, 38.474270, 40.039276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378988, -0.090801, -0.920936,
		-0.186906, 0.982176, -0.019923,
		0.906330, 0.164578, -0.389204,
		32.119907, 38.523643, 39.922516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491653, 39.085693, 39.834084>,  <31.485476, 38.408440, 40.194958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491653, 39.085693, 39.834084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782969, 38.854946, 39.686131>,  <31.957758, 38.716496, 39.597359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782969, 38.854946, 39.686131>,  <31.491653, 39.085693, 39.834084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782969, 38.854946, 39.686131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445141, 0.012129, -0.895378,
		0.521005, 0.816744, -0.247956,
		0.728288, -0.576872, -0.369886,
		32.001453, 38.681885, 39.575165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671919, 39.426327, 39.136070>,  <31.491653, 39.085693, 39.834084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671919, 39.426327, 39.136070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820618, 39.055649, 39.113991>,  <31.909838, 38.833244, 39.100742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820618, 39.055649, 39.113991>,  <31.671919, 39.426327, 39.136070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820618, 39.055649, 39.113991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486258, -0.143724, -0.861915,
		0.790795, 0.347257, -0.504040,
		0.371749, -0.926691, -0.055200,
		31.932142, 38.777641, 39.097431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735912, 39.297688, 38.468987>,  <31.671919, 39.426327, 39.136070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735912, 39.297688, 38.468987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768030, 38.921326, 38.600594>,  <31.787300, 38.695507, 38.679558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.768030, 38.921326, 38.600594>,  <31.735912, 39.297688, 38.468987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768030, 38.921326, 38.600594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571955, -0.313823, -0.757881,
		0.816346, -0.127327, -0.563354,
		0.080295, -0.940905, 0.329013,
		31.792118, 38.639053, 38.699299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869644, 38.951420, 37.869656>,  <31.735912, 39.297688, 38.468987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869644, 38.951420, 37.869656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729143, 38.693062, 38.140785>,  <31.644842, 38.538048, 38.303463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729143, 38.693062, 38.140785>,  <31.869644, 38.951420, 37.869656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729143, 38.693062, 38.140785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482665, -0.495423, -0.722212,
		0.802281, -0.580840, -0.137732,
		-0.351254, -0.645896, 0.677819,
		31.623766, 38.499294, 38.344131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803839, 38.301933, 37.492348>,  <31.869644, 38.951420, 37.869656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803839, 38.301933, 37.492348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552460, 38.292984, 37.803360>,  <31.401632, 38.287617, 37.989967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552460, 38.292984, 37.803360>,  <31.803839, 38.301933, 37.492348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552460, 38.292984, 37.803360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730373, -0.326918, -0.599734,
		0.267605, -0.944788, 0.189111,
		-0.628445, -0.022370, 0.777532,
		31.363926, 38.286274, 38.036621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550961, 37.599846, 37.394947>,  <31.803839, 38.301933, 37.492348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550961, 37.599846, 37.394947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275078, 37.797161, 37.606972>,  <31.109549, 37.915550, 37.734188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275078, 37.797161, 37.606972>,  <31.550961, 37.599846, 37.394947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275078, 37.797161, 37.606972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714205, -0.342913, -0.610181,
		-0.119231, -0.799421, 0.588821,
		-0.689707, 0.493291, 0.530065,
		31.068167, 37.945148, 37.765991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951065, 37.152885, 37.665257>,  <31.550961, 37.599846, 37.394947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951065, 37.152885, 37.665257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823879, 37.532043, 37.657295>,  <30.747568, 37.759537, 37.652519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823879, 37.532043, 37.657295>,  <30.951065, 37.152885, 37.665257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823879, 37.532043, 37.657295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735099, -0.259736, -0.626232,
		-0.598772, -0.184486, 0.779383,
		-0.317965, 0.947894, -0.019907,
		30.728491, 37.816410, 37.651321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261057, 37.085835, 37.692772>,  <30.951065, 37.152885, 37.665257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261057, 37.085835, 37.692772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312681, 37.459198, 37.558857>,  <30.343657, 37.683216, 37.478508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312681, 37.459198, 37.558857>,  <30.261057, 37.085835, 37.692772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312681, 37.459198, 37.558857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638798, -0.179973, -0.748028,
		-0.758472, 0.310406, 0.573034,
		0.129062, 0.933412, -0.334792,
		30.351400, 37.739220, 37.458420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225281, 36.781006, 38.409531>,  <30.261057, 37.085835, 37.692772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225281, 36.781006, 38.409531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302933, 36.401588, 38.309467>,  <30.349524, 36.173939, 38.249428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302933, 36.401588, 38.309467>,  <30.225281, 36.781006, 38.409531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302933, 36.401588, 38.309467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473866, -0.132610, 0.870555,
		-0.858932, -0.287542, 0.423738,
		0.194129, -0.948543, -0.250160,
		30.361172, 36.117027, 38.234421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965105, 36.400318, 38.930191>,  <30.225281, 36.781006, 38.409531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965105, 36.400318, 38.930191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200146, 36.123978, 38.761688>,  <30.341169, 35.958176, 38.660587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200146, 36.123978, 38.761688>,  <29.965105, 36.400318, 38.930191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200146, 36.123978, 38.761688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299041, -0.298344, 0.906402,
		-0.751864, -0.658575, 0.031285,
		0.587600, -0.690847, -0.421255,
		30.376427, 35.916725, 38.635311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778706, 35.811546, 39.266502>,  <29.965105, 36.400318, 38.930191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778706, 35.811546, 39.266502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158485, 35.814098, 39.140961>,  <30.386353, 35.815632, 39.065636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158485, 35.814098, 39.140961>,  <29.778706, 35.811546, 39.266502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158485, 35.814098, 39.140961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287367, -0.420098, 0.860777,
		-0.126355, -0.907456, -0.400696,
		0.949450, 0.006383, -0.313855,
		30.443321, 35.816013, 39.046803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024185, 35.134544, 39.418438>,  <29.778706, 35.811546, 39.266502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024185, 35.134544, 39.418438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355267, 35.358624, 39.405247>,  <30.553915, 35.493073, 39.397331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355267, 35.358624, 39.405247>,  <30.024185, 35.134544, 39.418438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355267, 35.358624, 39.405247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328249, -0.435647, 0.838131,
		0.455151, -0.704550, -0.544470,
		0.827702, 0.560198, -0.032983,
		30.603577, 35.526684, 39.395351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638731, 34.688808, 39.452579>,  <30.024185, 35.134544, 39.418438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638731, 34.688808, 39.452579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731346, 35.057358, 39.577450>,  <30.786915, 35.278488, 39.652374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731346, 35.057358, 39.577450>,  <30.638731, 34.688808, 39.452579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731346, 35.057358, 39.577450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375360, -0.380664, 0.845104,
		0.897494, -0.078493, -0.433986,
		0.231538, 0.921376, 0.312180,
		30.800808, 35.333771, 39.671104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388947, 34.654400, 39.671814>,  <30.638731, 34.688808, 39.452579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388947, 34.654400, 39.671814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194622, 34.953903, 39.852188>,  <31.078028, 35.133606, 39.960415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194622, 34.953903, 39.852188>,  <31.388947, 34.654400, 39.671814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194622, 34.953903, 39.852188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389384, -0.276492, 0.878597,
		0.782539, 0.602420, -0.157233,
		-0.485810, 0.748761, 0.450938,
		31.048880, 35.178532, 39.987469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905987, 34.901051, 40.110508>,  <31.388947, 34.654400, 39.671814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905987, 34.901051, 40.110508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585468, 35.087440, 40.260597>,  <31.393158, 35.199276, 40.350651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585468, 35.087440, 40.260597>,  <31.905987, 34.901051, 40.110508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585468, 35.087440, 40.260597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411611, -0.025760, 0.910995,
		0.434166, 0.884423, -0.171159,
		-0.801296, 0.465975, 0.375223,
		31.345079, 35.227234, 40.373165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152878, 35.500351, 40.558201>,  <31.905987, 34.901051, 40.110508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152878, 35.500351, 40.558201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782310, 35.399990, 40.670486>,  <31.559971, 35.339775, 40.737858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782310, 35.399990, 40.670486>,  <32.152878, 35.500351, 40.558201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782310, 35.399990, 40.670486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311386, -0.091510, 0.945867,
		-0.211631, 0.963678, 0.162903,
		-0.926418, -0.250901, 0.280710,
		31.504385, 35.324718, 40.754700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188515, 35.594578, 41.231079>,  <32.152878, 35.500351, 40.558201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188515, 35.594578, 41.231079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839355, 35.399677, 41.241173>,  <31.629860, 35.282738, 41.247227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839355, 35.399677, 41.241173>,  <32.188515, 35.594578, 41.231079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839355, 35.399677, 41.241173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174278, -0.263076, 0.948904,
		-0.455717, 0.832693, 0.314555,
		-0.872897, -0.487251, 0.025232,
		31.577486, 35.253502, 41.248741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751194, 35.912140, 41.756893>,  <32.188515, 35.594578, 41.231079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751194, 35.912140, 41.756893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600845, 35.545471, 41.702599>,  <31.510635, 35.325470, 41.670021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600845, 35.545471, 41.702599>,  <31.751194, 35.912140, 41.756893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600845, 35.545471, 41.702599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121609, -0.194008, 0.973433,
		-0.918658, 0.349379, 0.184398,
		-0.375872, -0.916676, -0.135739,
		31.488083, 35.270470, 41.661877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314676, 35.851444, 42.279083>,  <31.751194, 35.912140, 41.756893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314676, 35.851444, 42.279083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415174, 35.480385, 42.168556>,  <31.475473, 35.257751, 42.102242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415174, 35.480385, 42.168556>,  <31.314676, 35.851444, 42.279083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415174, 35.480385, 42.168556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312418, -0.192476, 0.930241,
		-0.916117, -0.320045, 0.241454,
		0.251245, -0.927645, -0.276319,
		31.490547, 35.202091, 42.085659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177055, 35.457291, 42.758873>,  <31.314676, 35.851444, 42.279083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177055, 35.457291, 42.758873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434042, 35.233639, 42.549259>,  <31.588234, 35.099449, 42.423489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434042, 35.233639, 42.549259>,  <31.177055, 35.457291, 42.758873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434042, 35.233639, 42.549259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331417, -0.413849, 0.847875,
		-0.690941, -0.718406, -0.080581,
		0.642466, -0.559126, -0.524037,
		31.626781, 35.065903, 42.392048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161484, 34.768909, 42.990017>,  <31.177055, 35.457291, 42.758873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161484, 34.768909, 42.990017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516169, 34.789158, 42.806198>,  <31.728979, 34.801308, 42.695908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516169, 34.789158, 42.806198>,  <31.161484, 34.768909, 42.990017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516169, 34.789158, 42.806198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433572, -0.436117, 0.788553,
		-0.160496, -0.898465, -0.408659,
		0.886711, 0.050623, -0.459545,
		31.782183, 34.804344, 42.668335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545654, 34.159756, 43.154987>,  <31.161484, 34.768909, 42.990017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545654, 34.159756, 43.154987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811543, 34.436146, 43.041359>,  <31.971075, 34.601978, 42.973183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811543, 34.436146, 43.041359>,  <31.545654, 34.159756, 43.154987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811543, 34.436146, 43.041359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645614, -0.339948, 0.683826,
		0.375937, -0.637956, -0.672075,
		0.664721, 0.690976, -0.284074,
		32.010960, 34.643440, 42.956135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105503, 33.690434, 43.143959>,  <31.545654, 34.159756, 43.154987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105503, 33.690434, 43.143959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242916, 34.065750, 43.159931>,  <32.325363, 34.290939, 43.169514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242916, 34.065750, 43.159931>,  <32.105503, 33.690434, 43.143959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242916, 34.065750, 43.159931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764456, -0.304079, 0.568457,
		0.545520, -0.164760, -0.821744,
		0.343534, 0.938291, 0.039929,
		32.345978, 34.347237, 43.171909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842655, 33.618015, 43.184406>,  <32.105503, 33.690434, 43.143959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842655, 33.618015, 43.184406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809643, 33.990662, 43.325985>,  <32.789837, 34.214249, 43.410931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809643, 33.990662, 43.325985>,  <32.842655, 33.618015, 43.184406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809643, 33.990662, 43.325985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763003, -0.169409, 0.623801,
		0.641105, 0.321543, -0.696846,
		-0.082527, 0.931617, 0.353948,
		32.784885, 34.270145, 43.432171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494614, 33.894440, 43.256229>,  <32.842655, 33.618015, 43.184406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494614, 33.894440, 43.256229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268215, 34.096809, 43.516598>,  <33.132378, 34.218231, 43.672817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268215, 34.096809, 43.516598>,  <33.494614, 33.894440, 43.256229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268215, 34.096809, 43.516598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597833, -0.291789, 0.746629,
		0.567668, 0.811727, -0.137307,
		-0.565994, 0.505924, 0.650916,
		33.098415, 34.248585, 43.711872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978085, 34.070843, 43.653278>,  <33.494614, 33.894440, 43.256229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978085, 34.070843, 43.653278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667320, 34.169025, 43.885197>,  <33.480862, 34.227936, 44.024349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.667320, 34.169025, 43.885197>,  <33.978085, 34.070843, 43.653278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667320, 34.169025, 43.885197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547312, -0.191926, 0.814625,
		0.311232, 0.950219, 0.014768,
		-0.776907, 0.245455, 0.579800,
		33.434250, 34.242661, 44.059135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156563, 34.688271, 44.040630>,  <33.978085, 34.070843, 43.653278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156563, 34.688271, 44.040630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841290, 34.534554, 44.232914>,  <33.652126, 34.442326, 44.348286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.841290, 34.534554, 44.232914>,  <34.156563, 34.688271, 44.040630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841290, 34.534554, 44.232914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483414, 0.096829, 0.870020,
		-0.380887, 0.918121, 0.109452,
		-0.788185, -0.384290, 0.480713,
		33.604836, 34.419266, 44.377129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205231, 35.068787, 44.648617>,  <34.156563, 34.688271, 44.040630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205231, 35.068787, 44.648617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996944, 34.735371, 44.722443>,  <33.871971, 34.535320, 44.766739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996944, 34.735371, 44.722443>,  <34.205231, 35.068787, 44.648617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996944, 34.735371, 44.722443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392977, -0.042096, 0.918584,
		-0.757906, 0.550854, 0.349482,
		-0.520717, -0.833539, 0.184568,
		33.840729, 34.485310, 44.777813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831665, 35.151600, 45.278938>,  <34.205231, 35.068787, 44.648617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831665, 35.151600, 45.278938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876534, 34.762318, 45.198650>,  <33.903454, 34.528748, 45.150478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876534, 34.762318, 45.198650>,  <33.831665, 35.151600, 45.278938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876534, 34.762318, 45.198650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447186, -0.130942, 0.884805,
		-0.887380, -0.189004, 0.420517,
		0.112169, -0.973207, -0.200715,
		33.910183, 34.470356, 45.138435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596481, 34.841423, 45.800049>,  <33.831665, 35.151600, 45.278938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596481, 34.841423, 45.800049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835392, 34.564445, 45.638168>,  <33.978737, 34.398258, 45.541042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835392, 34.564445, 45.638168>,  <33.596481, 34.841423, 45.800049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835392, 34.564445, 45.638168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482045, -0.093354, 0.871159,
		-0.641010, -0.715406, 0.278031,
		0.597277, -0.692445, -0.404698,
		34.014576, 34.356712, 45.516758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614643, 34.387711, 46.379551>,  <33.596481, 34.841423, 45.800049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614643, 34.387711, 46.379551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926895, 34.285400, 46.151447>,  <34.114246, 34.224014, 46.014584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926895, 34.285400, 46.151447>,  <33.614643, 34.387711, 46.379551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926895, 34.285400, 46.151447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500850, -0.289785, 0.815582,
		-0.373862, -0.922281, -0.098107,
		0.780625, -0.255778, -0.570264,
		34.161083, 34.208668, 45.980370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966381, 33.731750, 46.601543>,  <33.614643, 34.387711, 46.379551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966381, 33.731750, 46.601543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267220, 33.899803, 46.398430>,  <34.447723, 34.000637, 46.276562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267220, 33.899803, 46.398430>,  <33.966381, 33.731750, 46.601543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267220, 33.899803, 46.398430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636138, -0.261344, 0.725966,
		0.172297, -0.869015, -0.463818,
		0.752092, 0.420134, -0.507785,
		34.492847, 34.025845, 46.246094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534752, 33.364990, 46.846695>,  <33.966381, 33.731750, 46.601543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534752, 33.364990, 46.846695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670227, 33.700062, 46.675308>,  <34.751511, 33.901104, 46.572475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670227, 33.700062, 46.675308>,  <34.534752, 33.364990, 46.846695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670227, 33.700062, 46.675308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574712, 0.176378, 0.799123,
		0.744983, -0.516893, -0.421689,
		0.338684, 0.837682, -0.428464,
		34.771832, 33.951366, 46.546768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268696, 33.417282, 46.967323>,  <34.534752, 33.364990, 46.846695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268696, 33.417282, 46.967323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181526, 33.803711, 46.911873>,  <35.129227, 34.035568, 46.878601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181526, 33.803711, 46.911873>,  <35.268696, 33.417282, 46.967323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181526, 33.803711, 46.911873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576115, 0.241988, 0.780726,
		0.787783, 0.090273, -0.609302,
		-0.217923, 0.966071, -0.138626,
		35.116150, 34.093533, 46.870285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916573, 33.735092, 47.027912>,  <35.268696, 33.417282, 46.967323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916573, 33.735092, 47.027912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631718, 34.005592, 47.103329>,  <35.460804, 34.167892, 47.148579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631718, 34.005592, 47.103329>,  <35.916573, 33.735092, 47.027912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631718, 34.005592, 47.103329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503280, 0.304521, 0.808688,
		0.489464, 0.670781, -0.557205,
		-0.712133, 0.676254, 0.188539,
		35.418079, 34.208469, 47.159889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211346, 34.418648, 47.122673>,  <35.916573, 33.735092, 47.027912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211346, 34.418648, 47.122673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855042, 34.465694, 47.298271>,  <35.641258, 34.493923, 47.403629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855042, 34.465694, 47.298271>,  <36.211346, 34.418648, 47.122673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855042, 34.465694, 47.298271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449360, 0.372453, 0.812006,
		-0.067999, 0.920568, -0.384618,
		-0.890759, 0.117617, 0.438993,
		35.587814, 34.500980, 47.429970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471462, 34.983562, 46.723896>,  <36.211346, 34.418648, 47.122673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471462, 34.983562, 46.723896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827980, 34.807899, 46.769054>,  <37.041889, 34.702503, 46.796150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827980, 34.807899, 46.769054>,  <36.471462, 34.983562, 46.723896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827980, 34.807899, 46.769054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045282, -0.161522, -0.985830,
		0.451166, 0.883773, -0.124078,
		0.891291, -0.439154, 0.112892,
		37.095367, 34.676155, 46.802921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036713, 35.381100, 46.351158>,  <36.471462, 34.983562, 46.723896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036713, 35.381100, 46.351158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177765, 35.011772, 46.411987>,  <37.262398, 34.790176, 46.448486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177765, 35.011772, 46.411987>,  <37.036713, 35.381100, 46.351158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177765, 35.011772, 46.411987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035709, -0.149116, -0.988175,
		0.935080, 0.353894, -0.019613,
		0.352634, -0.923322, 0.152072,
		37.283554, 34.734776, 46.457607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512932, 35.211208, 45.798996>,  <37.036713, 35.381100, 46.351158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512932, 35.211208, 45.798996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427353, 34.852261, 45.953373>,  <37.376003, 34.636890, 46.045998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427353, 34.852261, 45.953373>,  <37.512932, 35.211208, 45.798996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427353, 34.852261, 45.953373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053237, -0.405212, -0.912671,
		0.975393, -0.174720, 0.134469,
		-0.213951, -0.897371, 0.385940,
		37.363167, 34.583050, 46.069157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053360, 34.775337, 45.590073>,  <37.512932, 35.211208, 45.798996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053360, 34.775337, 45.590073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737350, 34.545883, 45.676613>,  <37.547745, 34.408211, 45.728539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737350, 34.545883, 45.676613>,  <38.053360, 34.775337, 45.590073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737350, 34.545883, 45.676613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007175, -0.344216, -0.938863,
		0.613036, -0.743275, 0.267823,
		-0.790022, -0.573636, 0.216350,
		37.500343, 34.373791, 45.741516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098751, 34.245487, 45.196678>,  <38.053360, 34.775337, 45.590073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098751, 34.245487, 45.196678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709137, 34.211681, 45.280693>,  <37.475368, 34.191399, 45.331104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.709137, 34.211681, 45.280693>,  <38.098751, 34.245487, 45.196678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709137, 34.211681, 45.280693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182904, -0.253040, -0.950009,
		0.133442, -0.963757, 0.231010,
		-0.974033, -0.084519, 0.210041,
		37.416927, 34.186325, 45.343704>
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
