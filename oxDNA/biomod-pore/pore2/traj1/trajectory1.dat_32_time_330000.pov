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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.942438, 16.379747, -2.402624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.875816, 16.313179, -2.013870>,  <22.835844, 16.273237, -1.780617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.875816, 16.313179, -2.013870>,  <22.942438, 16.379747, -2.402624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.875816, 16.313179, -2.013870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153638, 0.977995, 0.141137,
		-0.973989, -0.125812, -0.188459,
		-0.166555, -0.166421, 0.971886,
		22.825850, 16.263252, -1.722304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.313782, 16.492460, -2.881460>,  <22.942438, 16.379747, -2.402624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.313782, 16.492460, -2.881460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.029568, 16.773010, -2.904151>,  <21.859039, 16.941339, -2.917766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.029568, 16.773010, -2.904151>,  <22.313782, 16.492460, -2.881460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.029568, 16.773010, -2.904151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660550, 0.637043, -0.397302,
		-0.242519, -0.319769, -0.915933,
		-0.710534, 0.701373, -0.056728,
		21.816408, 16.983421, -2.921170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.509357, 16.732771, -3.523943>,  <22.313782, 16.492460, -2.881460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.509357, 16.732771, -3.523943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.243073, 16.967175, -3.339153>,  <22.083302, 17.107817, -3.228279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.243073, 16.967175, -3.339153>,  <22.509357, 16.732771, -3.523943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.243073, 16.967175, -3.339153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461211, 0.809809, -0.362621,
		-0.586610, -0.028334, -0.809374,
		-0.665713, 0.586009, 0.461974,
		22.043358, 17.142977, -3.200561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.312361, 17.283222, -4.080769>,  <22.509357, 16.732771, -3.523943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.312361, 17.283222, -4.080769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.283390, 17.387253, -3.695622>,  <22.266008, 17.449671, -3.464534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.283390, 17.387253, -3.695622>,  <22.312361, 17.283222, -4.080769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.283390, 17.387253, -3.695622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772291, 0.625520, -0.110866,
		-0.631127, 0.735585, -0.246158,
		-0.072425, 0.260076, 0.962868,
		22.261663, 17.465275, -3.406761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623789, 17.938084, -3.975074>,  <22.312361, 17.283222, -4.080769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623789, 17.938084, -3.975074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.631218, 17.807125, -3.597193>,  <22.635675, 17.728550, -3.370464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.631218, 17.807125, -3.597193>,  <22.623789, 17.938084, -3.975074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.631218, 17.807125, -3.597193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680074, 0.696757, 0.228100,
		-0.732908, 0.638232, 0.235595,
		0.018572, -0.327399, 0.944704,
		22.636789, 17.708906, -3.313781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.635494, 18.469866, -3.506868>,  <22.623789, 17.938084, -3.975074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.635494, 18.469866, -3.506868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.795403, 18.184143, -3.277104>,  <22.891348, 18.012709, -3.139246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.795403, 18.184143, -3.277104>,  <22.635494, 18.469866, -3.506868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.795403, 18.184143, -3.277104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677977, 0.652168, 0.339152,
		-0.616870, 0.253852, 0.745004,
		0.399773, -0.714308, 0.574409,
		22.915335, 17.969851, -3.104782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.504761, 18.590708, -2.805351>,  <22.635494, 18.469866, -3.506868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.504761, 18.590708, -2.805351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.849617, 18.409863, -2.896834>,  <23.056530, 18.301355, -2.951724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.849617, 18.409863, -2.896834>,  <22.504761, 18.590708, -2.805351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.849617, 18.409863, -2.896834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506168, 0.748489, 0.428438,
		-0.022518, -0.485138, 0.874148,
		0.862141, -0.452113, -0.228707,
		23.108259, 18.274229, -2.965446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.010012, 18.557011, -2.255415>,  <22.504761, 18.590708, -2.805351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.010012, 18.557011, -2.255415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.250008, 18.500359, -2.570364>,  <23.394005, 18.466368, -2.759332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.250008, 18.500359, -2.570364>,  <23.010012, 18.557011, -2.255415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.250008, 18.500359, -2.570364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684483, 0.600346, 0.413602,
		0.414117, -0.787100, 0.457145,
		0.599991, -0.141629, -0.787370,
		23.430004, 18.457870, -2.806575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.391085, 17.998526, -1.874362>,  <23.010012, 18.557011, -2.255415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.391085, 17.998526, -1.874362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233479, 17.686806, -1.679451>,  <23.138914, 17.499773, -1.562504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.233479, 17.686806, -1.679451>,  <23.391085, 17.998526, -1.874362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.233479, 17.686806, -1.679451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476645, 0.280046, 0.833297,
		-0.785850, 0.560591, 0.261107,
		-0.394017, -0.779302, 0.487277,
		23.115273, 17.453014, -1.533267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.238722, 18.429735, -1.303137>,  <23.391085, 17.998526, -1.874362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.238722, 18.429735, -1.303137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.284973, 18.046913, -1.196795>,  <23.312723, 17.817221, -1.132990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.284973, 18.046913, -1.196795>,  <23.238722, 18.429735, -1.303137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.284973, 18.046913, -1.196795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678091, 0.271633, 0.682941,
		-0.725826, 0.101307, 0.680378,
		0.115626, -0.957054, 0.265854,
		23.319660, 17.759796, -1.117039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.352911, 18.503418, -0.571072>,  <23.238722, 18.429735, -1.303137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.352911, 18.503418, -0.571072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.497860, 18.157272, -0.709540>,  <23.584829, 17.949585, -0.792620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.497860, 18.157272, -0.709540>,  <23.352911, 18.503418, -0.571072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.497860, 18.157272, -0.709540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800144, 0.098373, 0.591686,
		-0.477970, -0.491396, 0.728062,
		0.362374, -0.865363, -0.346168,
		23.606573, 17.897663, -0.813390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.704544, 18.017467, 0.049587>,  <23.352911, 18.503418, -0.571072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.704544, 18.017467, 0.049587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.830303, 17.889515, -0.307922>,  <23.905758, 17.812742, -0.522428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.830303, 17.889515, -0.307922>,  <23.704544, 18.017467, 0.049587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.830303, 17.889515, -0.307922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886944, -0.236601, 0.396675,
		-0.338357, -0.917439, 0.209331,
		0.314397, -0.319883, -0.893773,
		23.924622, 17.793550, -0.576054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.783148, 17.302965, 0.074293>,  <23.704544, 18.017467, 0.049587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.783148, 17.302965, 0.074293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.015556, 17.465069, -0.208034>,  <24.155001, 17.562330, -0.377431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.015556, 17.465069, -0.208034>,  <23.783148, 17.302965, 0.074293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.015556, 17.465069, -0.208034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802609, -0.141420, 0.579499,
		0.135030, -0.903198, -0.407432,
		0.581021, 0.405258, -0.705819,
		24.189863, 17.586647, -0.419780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379337, 16.903593, -0.029439>,  <23.783148, 17.302965, 0.074293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379337, 16.903593, -0.029439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506603, 17.267704, -0.135397>,  <24.582962, 17.486170, -0.198972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.506603, 17.267704, -0.135397>,  <24.379337, 16.903593, -0.029439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506603, 17.267704, -0.135397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903670, -0.206721, 0.375028,
		0.286619, -0.358699, -0.888360,
		0.318165, 0.910275, -0.264896,
		24.602053, 17.540787, -0.214866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.822903, 16.838169, 0.541640>,  <24.379337, 16.903593, -0.029439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.822903, 16.838169, 0.541640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457653, 16.954834, 0.655581>,  <24.238504, 17.024834, 0.723946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457653, 16.954834, 0.655581>,  <24.822903, 16.838169, 0.541640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457653, 16.954834, 0.655581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082590, 0.551879, -0.829824,
		-0.399232, -0.781257, -0.479845,
		-0.913122, 0.291662, 0.284852,
		24.183716, 17.042332, 0.741037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558378, 17.294008, 1.186143>,  <24.822903, 16.838169, 0.541640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558378, 17.294008, 1.186143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679207, 17.446781, 1.535515>,  <24.751703, 17.538445, 1.745139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679207, 17.446781, 1.535515>,  <24.558378, 17.294008, 1.186143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679207, 17.446781, 1.535515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921132, -0.352896, -0.164256,
		0.245496, 0.854163, -0.458408,
		0.302071, 0.381930, 0.873431,
		24.769829, 17.561359, 1.797545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221878, 17.224491, 1.082971>,  <24.558378, 17.294008, 1.186143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221878, 17.224491, 1.082971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200462, 17.332550, 1.467503>,  <25.187613, 17.397385, 1.698222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200462, 17.332550, 1.467503>,  <25.221878, 17.224491, 1.082971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200462, 17.332550, 1.467503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956841, -0.261504, 0.126776,
		0.285639, 0.926627, -0.244486,
		-0.053540, 0.270146, 0.961330,
		25.184401, 17.413593, 1.755902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791037, 17.664892, 1.239092>,  <25.221878, 17.224491, 1.082971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791037, 17.664892, 1.239092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721260, 17.498920, 1.596282>,  <25.679394, 17.399338, 1.810597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.721260, 17.498920, 1.596282>,  <25.791037, 17.664892, 1.239092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.721260, 17.498920, 1.596282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954294, -0.294748, 0.049464,
		0.242679, 0.860789, 0.447380,
		-0.174442, -0.414928, 0.892975,
		25.668928, 17.374443, 1.864175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305696, 17.844933, 1.808080>,  <25.791037, 17.664892, 1.239092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305696, 17.844933, 1.808080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163406, 17.485405, 1.910515>,  <26.078032, 17.269688, 1.971976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.163406, 17.485405, 1.910515>,  <26.305696, 17.844933, 1.808080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163406, 17.485405, 1.910515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932778, -0.358502, 0.037430,
		0.058165, 0.252188, 0.965929,
		-0.355727, -0.898820, 0.256087,
		26.056688, 17.215759, 1.987342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661791, 18.380697, 1.727262>,  <26.305696, 17.844933, 1.808080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661791, 18.380697, 1.727262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823009, 18.668114, 1.500547>,  <25.919741, 18.840565, 1.364518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823009, 18.668114, 1.500547>,  <25.661791, 18.380697, 1.727262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823009, 18.668114, 1.500547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300460, 0.688884, 0.659669,
		0.864452, -0.095580, 0.493546,
		0.403047, 0.718543, -0.566789,
		25.943924, 18.883677, 1.330510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319273, 18.726471, 2.069742>,  <25.661791, 18.380697, 1.727262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319273, 18.726471, 2.069742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092239, 18.955177, 1.832784>,  <25.956018, 19.092402, 1.690610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092239, 18.955177, 1.832784>,  <26.319273, 18.726471, 2.069742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092239, 18.955177, 1.832784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206193, 0.597876, 0.774615,
		0.797077, 0.561808, -0.221452,
		-0.567586, 0.571766, -0.592394,
		25.921963, 19.126707, 1.655066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447212, 19.449265, 2.070261>,  <26.319273, 18.726471, 2.069742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447212, 19.449265, 2.070261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056595, 19.392052, 2.005882>,  <25.822224, 19.357723, 1.967255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.056595, 19.392052, 2.005882>,  <26.447212, 19.449265, 2.070261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.056595, 19.392052, 2.005882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208377, 0.439517, 0.873730,
		-0.054232, 0.886773, -0.459012,
		-0.976544, -0.143032, -0.160947,
		25.763632, 19.349142, 1.957598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982780, 20.079180, 2.213043>,  <26.447212, 19.449265, 2.070261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982780, 20.079180, 2.213043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751812, 19.756641, 2.264260>,  <25.613232, 19.563118, 2.294991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.751812, 19.756641, 2.264260>,  <25.982780, 20.079180, 2.213043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.751812, 19.756641, 2.264260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307344, 0.359968, 0.880887,
		-0.756390, 0.469289, -0.455678,
		-0.577420, -0.806345, 0.128043,
		25.578587, 19.514738, 2.302673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378845, 20.382677, 2.411112>,  <25.982780, 20.079180, 2.213043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378845, 20.382677, 2.411112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450222, 20.023495, 2.572026>,  <25.493048, 19.807985, 2.668574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.450222, 20.023495, 2.572026>,  <25.378845, 20.382677, 2.411112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.450222, 20.023495, 2.572026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144453, 0.380508, 0.913426,
		-0.973289, -0.221105, -0.061814,
		0.178442, -0.897957, 0.402284,
		25.503756, 19.754108, 2.692711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.828497, 20.127171, 2.888709>,  <25.378845, 20.382677, 2.411112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.828497, 20.127171, 2.888709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195644, 20.018425, 3.004367>,  <25.415934, 19.953178, 3.073763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.195644, 20.018425, 3.004367>,  <24.828497, 20.127171, 2.888709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.195644, 20.018425, 3.004367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151073, 0.434372, 0.887974,
		-0.367005, -0.858727, 0.357626,
		0.917870, -0.271864, 0.289147,
		25.471004, 19.936867, 3.091111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.765373, 19.914537, 3.509009>,  <24.828497, 20.127171, 2.888709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.765373, 19.914537, 3.509009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.154888, 20.001537, 3.482383>,  <25.388597, 20.053738, 3.466408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.154888, 20.001537, 3.482383>,  <24.765373, 19.914537, 3.509009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.154888, 20.001537, 3.482383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048849, 0.485789, 0.872710,
		0.222150, -0.846583, 0.483680,
		0.973788, 0.217500, -0.066563,
		25.447025, 20.066788, 3.462414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.220903, 19.746204, 4.046412>,  <24.765373, 19.914537, 3.509009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.220903, 19.746204, 4.046412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338093, 20.086857, 3.872566>,  <25.408405, 20.291248, 3.768258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.338093, 20.086857, 3.872566>,  <25.220903, 19.746204, 4.046412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.338093, 20.086857, 3.872566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174269, 0.494509, 0.851523,
		0.940105, -0.173733, 0.293291,
		0.292973, 0.851632, -0.434614,
		25.425985, 20.342346, 3.742182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529703, 20.048635, 4.655585>,  <25.220903, 19.746204, 4.046412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529703, 20.048635, 4.655585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427227, 20.323254, 4.383403>,  <25.365742, 20.488026, 4.220093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427227, 20.323254, 4.383403>,  <25.529703, 20.048635, 4.655585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427227, 20.323254, 4.383403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293275, 0.615561, 0.731488,
		0.921063, 0.386960, 0.043648,
		-0.256189, 0.686547, -0.680456,
		25.350370, 20.529217, 4.179266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803850, 20.782877, 4.670834>,  <25.529703, 20.048635, 4.655585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803850, 20.782877, 4.670834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431183, 20.693764, 4.556036>,  <25.207582, 20.640295, 4.487157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431183, 20.693764, 4.556036>,  <25.803850, 20.782877, 4.670834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431183, 20.693764, 4.556036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339713, 0.254107, 0.905552,
		-0.128815, 0.941168, -0.312425,
		-0.931666, -0.222783, -0.286994,
		25.151684, 20.626928, 4.469938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026253, 21.234459, 4.566445>,  <25.803850, 20.782877, 4.670834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026253, 21.234459, 4.566445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.023331, 20.858665, 4.703450>,  <25.021578, 20.633188, 4.785653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.023331, 20.858665, 4.703450>,  <25.026253, 21.234459, 4.566445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.023331, 20.858665, 4.703450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469532, 0.305638, 0.828326,
		-0.882885, -0.154768, -0.443352,
		-0.007307, -0.939485, 0.342512,
		25.021139, 20.576820, 4.806203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760578, 21.223377, 5.251196>,  <25.026253, 21.234459, 4.566445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760578, 21.223377, 5.251196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750320, 20.827320, 5.196122>,  <24.744165, 20.589685, 5.163078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750320, 20.827320, 5.196122>,  <24.760578, 21.223377, 5.251196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750320, 20.827320, 5.196122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450530, -0.111503, 0.885771,
		-0.892393, 0.084747, -0.443230,
		-0.025645, -0.990144, -0.137686,
		24.742626, 20.530277, 5.154817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183001, 20.961573, 5.544447>,  <24.760578, 21.223377, 5.251196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183001, 20.961573, 5.544447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434101, 20.651142, 5.568556>,  <24.584763, 20.464884, 5.583021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434101, 20.651142, 5.568556>,  <24.183001, 20.961573, 5.544447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.434101, 20.651142, 5.568556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432207, -0.283112, 0.856180,
		-0.647397, -0.563520, -0.513150,
		0.627753, -0.776076, 0.060271,
		24.622427, 20.418320, 5.586637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.818977, 20.330799, 5.768266>,  <24.183001, 20.961573, 5.544447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.818977, 20.330799, 5.768266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205826, 20.316761, 5.869020>,  <24.437935, 20.308338, 5.929471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.205826, 20.316761, 5.869020>,  <23.818977, 20.330799, 5.768266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.205826, 20.316761, 5.869020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249279, -0.326972, 0.911564,
		0.050366, -0.944382, -0.324970,
		0.967121, -0.035096, 0.251883,
		24.495962, 20.306232, 5.944584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.088459, 19.656862, 6.191158>,  <23.818977, 20.330799, 5.768266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.088459, 19.656862, 6.191158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.281872, 19.997486, 6.272197>,  <24.397919, 20.201860, 6.320820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.281872, 19.997486, 6.272197>,  <24.088459, 19.656862, 6.191158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.281872, 19.997486, 6.272197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021657, -0.219743, 0.975317,
		0.875059, -0.475985, -0.087811,
		0.483532, 0.851558, 0.202597,
		24.426931, 20.252954, 6.332976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.638054, 19.493286, 6.779815>,  <24.088459, 19.656862, 6.191158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.638054, 19.493286, 6.779815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532368, 19.878750, 6.795557>,  <24.468956, 20.110027, 6.805002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532368, 19.878750, 6.795557>,  <24.638054, 19.493286, 6.779815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532368, 19.878750, 6.795557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094096, -0.066367, 0.993349,
		0.959862, 0.258757, 0.108212,
		-0.264217, 0.963660, 0.039356,
		24.453102, 20.167849, 6.807364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.117172, 19.839701, 7.220290>,  <24.638054, 19.493286, 6.779815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.117172, 19.839701, 7.220290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760448, 20.020443, 7.229232>,  <24.546413, 20.128889, 7.234597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.760448, 20.020443, 7.229232>,  <25.117172, 19.839701, 7.220290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.760448, 20.020443, 7.229232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195112, -0.428726, 0.882114,
		0.408175, 0.782316, 0.470505,
		-0.891810, 0.451858, 0.022356,
		24.492905, 20.156000, 7.235939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.057335, 20.293421, 7.783782>,  <25.117172, 19.839701, 7.220290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.057335, 20.293421, 7.783782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684662, 20.197807, 7.674359>,  <24.461058, 20.140438, 7.608706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684662, 20.197807, 7.674359>,  <25.057335, 20.293421, 7.783782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.684662, 20.197807, 7.674359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135376, -0.470337, 0.872042,
		-0.337113, 0.849497, 0.405844,
		-0.931680, -0.239035, -0.273558,
		24.405157, 20.126097, 7.592292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.717947, 20.621574, 8.312321>,  <25.057335, 20.293421, 7.783782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.717947, 20.621574, 8.312321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453377, 20.366535, 8.154340>,  <24.294634, 20.213512, 8.059551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.453377, 20.366535, 8.154340>,  <24.717947, 20.621574, 8.312321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.453377, 20.366535, 8.154340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399348, -0.146345, 0.905044,
		-0.634851, 0.756343, -0.157826,
		-0.661426, -0.637596, -0.394951,
		24.254950, 20.175257, 8.035854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.193832, 20.869596, 8.674050>,  <24.717947, 20.621574, 8.312321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.193832, 20.869596, 8.674050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.103947, 20.504848, 8.536650>,  <24.050014, 20.285999, 8.454209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.103947, 20.504848, 8.536650>,  <24.193832, 20.869596, 8.674050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.103947, 20.504848, 8.536650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447201, -0.216690, 0.867789,
		-0.865745, 0.348621, -0.359095,
		-0.224717, -0.911871, -0.343502,
		24.036531, 20.231287, 8.433599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.539539, 20.702414, 8.833379>,  <24.193832, 20.869596, 8.674050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.539539, 20.702414, 8.833379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.682510, 20.331791, 8.786496>,  <23.768293, 20.109417, 8.758367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.682510, 20.331791, 8.786496>,  <23.539539, 20.702414, 8.833379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.682510, 20.331791, 8.786496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400966, -0.265583, 0.876751,
		-0.843488, -0.266379, -0.466445,
		0.357427, -0.926557, -0.117207,
		23.789738, 20.053823, 8.751334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.944653, 20.299030, 9.023534>,  <23.539539, 20.702414, 8.833379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.944653, 20.299030, 9.023534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.267097, 20.062641, 9.035731>,  <23.460566, 19.920807, 9.043050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.267097, 20.062641, 9.035731>,  <22.944653, 20.299030, 9.023534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.267097, 20.062641, 9.035731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348773, -0.432849, 0.831264,
		-0.478060, -0.680726, -0.555042,
		0.806112, -0.590977, 0.030491,
		23.508932, 19.885349, 9.044880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.783247, 19.580860, 9.067373>,  <22.944653, 20.299030, 9.023534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.783247, 19.580860, 9.067373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.147800, 19.612698, 9.228888>,  <23.366533, 19.631800, 9.325796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.147800, 19.612698, 9.228888>,  <22.783247, 19.580860, 9.067373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.147800, 19.612698, 9.228888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354312, -0.347408, 0.868200,
		0.209381, -0.934330, -0.288421,
		0.911385, 0.079594, 0.403785,
		23.421215, 19.636576, 9.350023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.675999, 19.218500, 9.611093>,  <22.783247, 19.580860, 9.067373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.675999, 19.218500, 9.611093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.032787, 19.387135, 9.676398>,  <23.246861, 19.488316, 9.715582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.032787, 19.387135, 9.676398>,  <22.675999, 19.218500, 9.611093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.032787, 19.387135, 9.676398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022042, -0.320144, 0.947112,
		0.451557, -0.848395, -0.276267,
		0.891970, 0.421585, 0.163263,
		23.300379, 19.513611, 9.725377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.977942, 18.755203, 10.032042>,  <22.675999, 19.218500, 9.611093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.977942, 18.755203, 10.032042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.170094, 19.101574, 10.087757>,  <23.285385, 19.309397, 10.121186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.170094, 19.101574, 10.087757>,  <22.977942, 18.755203, 10.032042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.170094, 19.101574, 10.087757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117670, -0.093746, 0.988618,
		0.869130, -0.491304, 0.056860,
		0.480382, 0.865928, 0.139289,
		23.314209, 19.361353, 10.129544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.547010, 18.647085, 10.484325>,  <22.977942, 18.755203, 10.032042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.547010, 18.647085, 10.484325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.510235, 19.044456, 10.511586>,  <23.488169, 19.282879, 10.527943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.510235, 19.044456, 10.511586>,  <23.547010, 18.647085, 10.484325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.510235, 19.044456, 10.511586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106213, -0.077836, 0.991292,
		0.990084, 0.083901, 0.112672,
		-0.091940, 0.993429, 0.068152,
		23.482653, 19.342485, 10.532032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.012871, 18.850201, 11.061131>,  <23.547010, 18.647085, 10.484325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.012871, 18.850201, 11.061131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.730389, 19.127659, 11.004380>,  <23.560900, 19.294134, 10.970330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.730389, 19.127659, 11.004380>,  <24.012871, 18.850201, 11.061131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.730389, 19.127659, 11.004380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144251, 0.055218, 0.987999,
		0.693155, 0.718197, 0.061064,
		-0.706207, 0.693645, -0.141876,
		23.518526, 19.335752, 10.961818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.189001, 19.292057, 11.608572>,  <24.012871, 18.850201, 11.061131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.189001, 19.292057, 11.608572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.822666, 19.407562, 11.496958>,  <23.602865, 19.476866, 11.429989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.822666, 19.407562, 11.496958>,  <24.189001, 19.292057, 11.608572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.822666, 19.407562, 11.496958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218626, 0.224296, 0.949681,
		0.336820, 0.930756, -0.142287,
		-0.915835, 0.288764, -0.279035,
		23.547916, 19.494192, 11.413247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.084219, 19.966274, 11.817788>,  <24.189001, 19.292057, 11.608572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.084219, 19.966274, 11.817788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.712383, 19.821266, 11.791133>,  <23.489281, 19.734261, 11.775140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.712383, 19.821266, 11.791133>,  <24.084219, 19.966274, 11.817788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.712383, 19.821266, 11.791133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199288, 0.342235, 0.918237,
		-0.310074, 0.866865, -0.390384,
		-0.929590, -0.362520, -0.066638,
		23.433506, 19.712509, 11.771142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.694256, 20.489439, 11.984122>,  <24.084219, 19.966274, 11.817788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.694256, 20.489439, 11.984122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465424, 20.167889, 12.049245>,  <23.328123, 19.974958, 12.088319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465424, 20.167889, 12.049245>,  <23.694256, 20.489439, 11.984122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465424, 20.167889, 12.049245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198156, 0.328081, 0.923633,
		-0.795900, 0.496132, -0.346982,
		-0.572082, -0.803875, 0.162808,
		23.293798, 19.926725, 12.098087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.139406, 20.810268, 12.374469>,  <23.694256, 20.489439, 11.984122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.139406, 20.810268, 12.374469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.101353, 20.422066, 12.463073>,  <23.078522, 20.189144, 12.516235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.101353, 20.422066, 12.463073>,  <23.139406, 20.810268, 12.374469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.101353, 20.422066, 12.463073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562568, 0.235994, 0.792354,
		-0.821260, -0.049236, -0.568426,
		-0.095133, -0.970506, 0.221511,
		23.072813, 20.130915, 12.529526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412842, 20.715187, 12.564604>,  <23.139406, 20.810268, 12.374469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412842, 20.715187, 12.564604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.613682, 20.407173, 12.722055>,  <22.734186, 20.222364, 12.816526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.613682, 20.407173, 12.722055>,  <22.412842, 20.715187, 12.564604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.613682, 20.407173, 12.722055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254347, 0.303544, 0.918242,
		-0.826562, -0.561166, -0.043447,
		0.502098, -0.770034, 0.393629,
		22.764311, 20.176163, 12.840144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.984680, 20.520050, 13.069294>,  <22.412842, 20.715187, 12.564604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.984680, 20.520050, 13.069294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.348000, 20.382423, 13.164465>,  <22.565992, 20.299849, 13.221567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.348000, 20.382423, 13.164465>,  <21.984680, 20.520050, 13.069294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.348000, 20.382423, 13.164465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181631, 0.187986, 0.965231,
		-0.376831, -0.919935, 0.108255,
		0.908300, -0.344066, 0.237928,
		22.620489, 20.279203, 13.235844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.888142, 19.986282, 13.604793>,  <21.984680, 20.520050, 13.069294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.888142, 19.986282, 13.604793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.263767, 20.123203, 13.617363>,  <22.489143, 20.205357, 13.624905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.263767, 20.123203, 13.617363>,  <21.888142, 19.986282, 13.604793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.263767, 20.123203, 13.617363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027480, -0.016371, 0.999488,
		0.342643, -0.939447, -0.005967,
		0.939064, 0.342304, 0.031425,
		22.545486, 20.225895, 13.626791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.195498, 19.612270, 14.158292>,  <21.888142, 19.986282, 13.604793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.195498, 19.612270, 14.158292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395672, 19.954090, 14.102705>,  <22.515776, 20.159182, 14.069353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.395672, 19.954090, 14.102705>,  <22.195498, 19.612270, 14.158292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.395672, 19.954090, 14.102705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131830, 0.083429, 0.987755,
		0.855679, -0.512627, -0.070904,
		0.500434, 0.854549, -0.138968,
		22.545803, 20.210455, 14.061014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.839441, 19.604105, 14.421657>,  <22.195498, 19.612270, 14.158292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.839441, 19.604105, 14.421657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.771931, 19.998306, 14.414730>,  <22.731424, 20.234827, 14.410574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.771931, 19.998306, 14.414730>,  <22.839441, 19.604105, 14.421657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.771931, 19.998306, 14.414730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083913, 0.031872, 0.995963,
		0.982076, 0.166642, -0.088076,
		-0.168776, 0.985502, -0.017317,
		22.721298, 20.293957, 14.409535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.347235, 19.866724, 14.929141>,  <22.839441, 19.604105, 14.421657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.347235, 19.866724, 14.929141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.092979, 20.171291, 14.878222>,  <22.940426, 20.354033, 14.847670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.092979, 20.171291, 14.878222>,  <23.347235, 19.866724, 14.929141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.092979, 20.171291, 14.878222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099855, 0.244605, 0.964467,
		0.765503, 0.600339, -0.231512,
		-0.635637, 0.761420, -0.127299,
		22.902288, 20.399717, 14.840032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.558611, 20.340813, 15.518082>,  <23.347235, 19.866724, 14.929141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.558611, 20.340813, 15.518082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.217068, 20.507771, 15.393688>,  <23.012142, 20.607946, 15.319053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.217068, 20.507771, 15.393688>,  <23.558611, 20.340813, 15.518082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.217068, 20.507771, 15.393688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307139, 0.078331, 0.948435,
		0.420233, 0.905342, 0.061315,
		-0.853856, 0.417396, -0.310983,
		22.960911, 20.632990, 15.300393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.510160, 20.965239, 15.911269>,  <23.558611, 20.340813, 15.518082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.510160, 20.965239, 15.911269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.133949, 20.866337, 15.818083>,  <22.908222, 20.806995, 15.762171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.133949, 20.866337, 15.818083>,  <23.510160, 20.965239, 15.911269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.133949, 20.866337, 15.818083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293708, 0.247221, 0.923373,
		-0.170716, 0.936881, -0.305139,
		-0.940527, -0.247256, -0.232965,
		22.851791, 20.792160, 15.748193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.152729, 21.583261, 16.185539>,  <23.510160, 20.965239, 15.911269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.152729, 21.583261, 16.185539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.877724, 21.301338, 16.115602>,  <22.712721, 21.132183, 16.073641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.877724, 21.301338, 16.115602>,  <23.152729, 21.583261, 16.185539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.877724, 21.301338, 16.115602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414646, 0.183360, 0.891318,
		-0.596151, 0.685289, -0.418309,
		-0.687512, -0.704810, -0.174842,
		22.671471, 21.089895, 16.063150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.497166, 21.884224, 16.387871>,  <23.152729, 21.583261, 16.185539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.497166, 21.884224, 16.387871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.436081, 21.489010, 16.396494>,  <22.399431, 21.251881, 16.401667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.436081, 21.489010, 16.396494>,  <22.497166, 21.884224, 16.387871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.436081, 21.489010, 16.396494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389542, 0.080225, 0.917508,
		-0.908260, 0.131715, -0.397133,
		-0.152710, -0.988036, 0.021556,
		22.390268, 21.192598, 16.402960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.768320, 21.676363, 16.517815>,  <22.497166, 21.884224, 16.387871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.768320, 21.676363, 16.517815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.004684, 21.380550, 16.646759>,  <22.146503, 21.203062, 16.724127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.004684, 21.380550, 16.646759>,  <21.768320, 21.676363, 16.517815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.004684, 21.380550, 16.646759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387059, 0.090702, 0.917583,
		-0.707822, -0.666981, -0.232646,
		0.590909, -0.739533, 0.322362,
		22.181957, 21.158691, 16.743467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.394199, 21.432083, 17.077452>,  <21.768320, 21.676363, 16.517815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.394199, 21.432083, 17.077452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746078, 21.244171, 17.106947>,  <21.957207, 21.131424, 17.124645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.746078, 21.244171, 17.106947>,  <21.394199, 21.432083, 17.077452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746078, 21.244171, 17.106947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166823, -0.159664, 0.972974,
		-0.445308, -0.868226, -0.218826,
		0.879699, -0.469778, 0.073740,
		22.009989, 21.103237, 17.129068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.325233, 20.756752, 17.360716>,  <21.394199, 21.432083, 17.077452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.325233, 20.756752, 17.360716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.701191, 20.859329, 17.450907>,  <21.926765, 20.920876, 17.505022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.701191, 20.859329, 17.450907>,  <21.325233, 20.756752, 17.360716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.701191, 20.859329, 17.450907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184851, -0.173086, 0.967404,
		0.287110, -0.950936, -0.115279,
		0.939893, 0.256442, 0.225477,
		21.983158, 20.936262, 17.518549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.564701, 20.242701, 17.876764>,  <21.325233, 20.756752, 17.360716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.564701, 20.242701, 17.876764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.827904, 20.542007, 17.910509>,  <21.985826, 20.721592, 17.930756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.827904, 20.542007, 17.910509>,  <21.564701, 20.242701, 17.876764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.827904, 20.542007, 17.910509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033974, -0.082419, 0.996019,
		0.752243, -0.658255, -0.028811,
		0.658009, 0.748269, 0.084363,
		22.025307, 20.766489, 17.935818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.984346, 19.983833, 18.400537>,  <21.564701, 20.242701, 17.876764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.984346, 19.983833, 18.400537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.035664, 20.380432, 18.391855>,  <22.066454, 20.618391, 18.386646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.035664, 20.380432, 18.391855>,  <21.984346, 19.983833, 18.400537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.035664, 20.380432, 18.391855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009468, 0.020660, 0.999741,
		0.991691, -0.128465, -0.006737,
		0.128293, 0.991499, -0.021705,
		22.074152, 20.677881, 18.385344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.482841, 20.130581, 18.805368>,  <21.984346, 19.983833, 18.400537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.482841, 20.130581, 18.805368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.288219, 20.478901, 18.777159>,  <22.171446, 20.687893, 18.760233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.288219, 20.478901, 18.777159>,  <22.482841, 20.130581, 18.805368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.288219, 20.478901, 18.777159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060348, 0.114030, 0.991643,
		0.871563, 0.478232, -0.108033,
		-0.486555, 0.870799, -0.070524,
		22.142254, 20.740141, 18.756001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.656914, 20.353571, 19.378468>,  <22.482841, 20.130581, 18.805368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.656914, 20.353571, 19.378468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.353889, 20.594372, 19.277514>,  <22.172075, 20.738852, 19.216942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.353889, 20.594372, 19.277514>,  <22.656914, 20.353571, 19.378468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.353889, 20.594372, 19.277514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188202, 0.168792, 0.967517,
		0.625048, 0.780450, -0.014572,
		-0.757558, 0.602002, -0.252385,
		22.126621, 20.774973, 19.201797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.721050, 20.946394, 19.832973>,  <22.656914, 20.353571, 19.378468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.721050, 20.946394, 19.832973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.339493, 20.919689, 19.715925>,  <22.110558, 20.903667, 19.645697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.339493, 20.919689, 19.715925>,  <22.721050, 20.946394, 19.832973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.339493, 20.919689, 19.715925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297027, 0.069928, 0.952305,
		-0.043114, 0.995316, -0.086533,
		-0.953895, -0.066761, -0.292621,
		22.053324, 20.899660, 19.628139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.374842, 21.404255, 20.236956>,  <22.721050, 20.946394, 19.832973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.374842, 21.404255, 20.236956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.080902, 21.174805, 20.092207>,  <21.904537, 21.037134, 20.005358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.080902, 21.174805, 20.092207>,  <22.374842, 21.404255, 20.236956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.080902, 21.174805, 20.092207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505801, 0.108046, 0.855857,
		-0.451842, 0.811961, -0.369537,
		-0.734850, -0.573625, -0.361871,
		21.860447, 21.002718, 19.983646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741367, 21.728745, 20.289557>,  <22.374842, 21.404255, 20.236956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741367, 21.728745, 20.289557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.620472, 21.348602, 20.259962>,  <21.547935, 21.120516, 20.242205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.620472, 21.348602, 20.259962>,  <21.741367, 21.728745, 20.289557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.620472, 21.348602, 20.259962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523753, 0.100713, 0.845896,
		-0.796451, 0.294413, -0.528191,
		-0.302239, -0.950357, -0.073986,
		21.529800, 21.063496, 20.237766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034922, 21.695726, 20.482458>,  <21.741367, 21.728745, 20.289557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034922, 21.695726, 20.482458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.140228, 21.313129, 20.532755>,  <21.203413, 21.083570, 20.562933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.140228, 21.313129, 20.532755>,  <21.034922, 21.695726, 20.482458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.140228, 21.313129, 20.532755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530402, -0.034637, 0.847038,
		-0.805831, -0.289690, -0.516445,
		0.263267, -0.956494, 0.125741,
		21.219208, 21.026182, 20.570477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.394995, 21.275122, 20.654076>,  <21.034922, 21.695726, 20.482458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.394995, 21.275122, 20.654076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708744, 21.054981, 20.768528>,  <20.896994, 20.922897, 20.837200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.708744, 21.054981, 20.768528>,  <20.394995, 21.275122, 20.654076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.708744, 21.054981, 20.768528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492235, -0.271572, 0.827015,
		-0.377445, -0.789531, -0.483917,
		0.784372, -0.550353, 0.286132,
		20.944056, 20.889875, 20.854368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.143740, 20.634230, 20.942221>,  <20.394995, 21.275122, 20.654076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.143740, 20.634230, 20.942221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506172, 20.673031, 21.106955>,  <20.723631, 20.696312, 21.205795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506172, 20.673031, 21.106955>,  <20.143740, 20.634230, 20.942221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.506172, 20.673031, 21.106955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401995, -0.106231, 0.909459,
		0.131968, -0.989599, -0.057260,
		0.906082, 0.097001, 0.411833,
		20.777996, 20.702131, 21.230505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.017803, 20.256325, 21.565907>,  <20.143740, 20.634230, 20.942221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.017803, 20.256325, 21.565907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.368977, 20.432377, 21.641298>,  <20.579679, 20.538008, 21.686533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.368977, 20.432377, 21.641298>,  <20.017803, 20.256325, 21.565907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.368977, 20.432377, 21.641298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227439, 0.036967, 0.973091,
		0.421319, -0.897173, 0.132557,
		0.877931, 0.440130, 0.188477,
		20.632357, 20.564415, 21.697842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347980, 19.865606, 22.156002>,  <20.017803, 20.256325, 21.565907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347980, 19.865606, 22.156002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449539, 20.250843, 22.120239>,  <20.510475, 20.481985, 22.098782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449539, 20.250843, 22.120239>,  <20.347980, 19.865606, 22.156002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.449539, 20.250843, 22.120239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191826, 0.140740, 0.971285,
		0.948019, -0.229455, 0.220479,
		0.253896, 0.963090, -0.089408,
		20.525707, 20.539770, 22.093416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.709181, 20.011297, 22.902315>,  <20.347980, 19.865606, 22.156002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.709181, 20.011297, 22.902315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.676598, 20.383572, 22.759663>,  <20.657047, 20.606936, 22.674070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.676598, 20.383572, 22.759663>,  <20.709181, 20.011297, 22.902315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676598, 20.383572, 22.759663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343567, 0.309671, 0.886604,
		0.935589, 0.194749, 0.294527,
		-0.081459, 0.930686, -0.356634,
		20.652161, 20.662777, 22.652672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074263, 20.583836, 23.381201>,  <20.709181, 20.011297, 22.902315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074263, 20.583836, 23.381201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770103, 20.724655, 23.162897>,  <20.587608, 20.809147, 23.031916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770103, 20.724655, 23.162897>,  <21.074263, 20.583836, 23.381201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.770103, 20.724655, 23.162897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403656, 0.402122, 0.821803,
		0.508778, 0.845197, -0.163667,
		-0.760399, 0.352050, -0.545760,
		20.541985, 20.830271, 22.999168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.877516, 21.326283, 23.490297>,  <21.074263, 20.583836, 23.381201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.877516, 21.326283, 23.490297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.539917, 21.156525, 23.359116>,  <20.337357, 21.054670, 23.280407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.539917, 21.156525, 23.359116>,  <20.877516, 21.326283, 23.490297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.539917, 21.156525, 23.359116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520131, 0.498430, 0.693564,
		-0.130884, 0.755946, -0.641416,
		-0.843998, -0.424397, -0.327955,
		20.286718, 21.029205, 23.260729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.421303, 21.916847, 23.469507>,  <20.877516, 21.326283, 23.490297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.421303, 21.916847, 23.469507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.289646, 21.548866, 23.554697>,  <20.210653, 21.328077, 23.605810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.289646, 21.548866, 23.554697>,  <20.421303, 21.916847, 23.469507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.289646, 21.548866, 23.554697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349842, 0.328290, 0.877403,
		-0.877084, 0.214281, -0.429891,
		-0.329140, -0.919950, 0.212974,
		20.190905, 21.272881, 23.618589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.641245, 21.850864, 23.436832>,  <20.421303, 21.916847, 23.469507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.641245, 21.850864, 23.436832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.843582, 21.617775, 23.691252>,  <19.964985, 21.477921, 23.843903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.843582, 21.617775, 23.691252>,  <19.641245, 21.850864, 23.436832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.843582, 21.617775, 23.691252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298184, 0.573768, 0.762808,
		-0.809451, -0.575519, 0.116476,
		0.505841, -0.582725, 0.636048,
		19.995335, 21.442957, 23.882067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229652, 22.015118, 23.982615>,  <19.641245, 21.850864, 23.436832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229652, 22.015118, 23.982615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552681, 21.911110, 24.194357>,  <19.746498, 21.848705, 24.321404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552681, 21.911110, 24.194357>,  <19.229652, 22.015118, 23.982615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.552681, 21.911110, 24.194357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197011, 0.727072, 0.657688,
		-0.555891, -0.635419, 0.535936,
		0.807572, -0.260017, 0.529357,
		19.794952, 21.833105, 24.353165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135973, 21.744411, 24.690208>,  <19.229652, 22.015118, 23.982615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135973, 21.744411, 24.690208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.458084, 21.970295, 24.617954>,  <19.651350, 22.105825, 24.574602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.458084, 21.970295, 24.617954>,  <19.135973, 21.744411, 24.690208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.458084, 21.970295, 24.617954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299082, 0.649965, 0.698638,
		0.511933, -0.508575, 0.692298,
		0.805279, 0.564710, -0.180633,
		19.699667, 22.139708, 24.563765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409283, 21.390799, 24.541418>,  <19.135973, 21.744411, 24.690208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.409283, 21.390799, 24.541418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.707752, 21.324207, 24.799257>,  <18.886833, 21.284252, 24.953960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.707752, 21.324207, 24.799257>,  <18.409283, 21.390799, 24.541418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.707752, 21.324207, 24.799257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131345, 0.986012, 0.102614,
		-0.652666, 0.008096, 0.757603,
		0.746174, -0.166480, 0.644599,
		18.931604, 21.274263, 24.992638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474709, 21.186300, 23.847837>,  <18.409283, 21.390799, 24.541418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.474709, 21.186300, 23.847837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398720, 21.042988, 23.482204>,  <18.353127, 20.957001, 23.262825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398720, 21.042988, 23.482204>,  <18.474709, 21.186300, 23.847837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.398720, 21.042988, 23.482204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974923, 0.178760, 0.132550,
		0.115911, 0.916341, -0.383255,
		-0.189972, -0.358280, -0.914082,
		18.341728, 20.935503, 23.207979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076916, 21.645594, 23.457779>,  <18.474709, 21.186300, 23.847837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076916, 21.645594, 23.457779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.983192, 21.271950, 23.350044>,  <17.926958, 21.047764, 23.285402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.983192, 21.271950, 23.350044>,  <18.076916, 21.645594, 23.457779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.983192, 21.271950, 23.350044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955361, 0.169957, 0.241663,
		-0.179964, 0.313938, -0.932232,
		-0.234306, -0.934108, -0.269338,
		17.912901, 20.991718, 23.269243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.709087, 22.210764, 23.429035>,  <18.076916, 21.645594, 23.457779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.709087, 22.210764, 23.429035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069000, 22.383469, 23.403816>,  <18.284948, 22.487091, 23.388685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069000, 22.383469, 23.403816>,  <17.709087, 22.210764, 23.429035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069000, 22.383469, 23.403816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119249, 0.104331, -0.987368,
		-0.419731, 0.895933, 0.145362,
		0.899781, 0.431763, -0.063048,
		18.338934, 22.512999, 23.384901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633095, 22.787601, 23.116251>,  <17.709087, 22.210764, 23.429035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633095, 22.787601, 23.116251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.014114, 22.693230, 23.039324>,  <18.242727, 22.636606, 22.993168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.014114, 22.693230, 23.039324>,  <17.633095, 22.787601, 23.116251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.014114, 22.693230, 23.039324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172828, 0.100884, -0.979772,
		0.250558, 0.966520, 0.055322,
		0.952550, -0.235928, -0.192319,
		18.299879, 22.622452, 22.981628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787886, 23.208582, 22.604288>,  <17.633095, 22.787601, 23.116251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.787886, 23.208582, 22.604288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.052395, 22.908722, 22.593353>,  <18.211100, 22.728806, 22.586792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.052395, 22.908722, 22.593353>,  <17.787886, 23.208582, 22.604288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.052395, 22.908722, 22.593353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004178, 0.040124, -0.999186,
		0.750135, 0.660619, 0.029664,
		0.661272, -0.749648, -0.027338,
		18.250776, 22.683828, 22.585152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.413437, 23.437984, 22.265598>,  <17.787886, 23.208582, 22.604288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.413437, 23.437984, 22.265598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.410648, 23.040894, 22.217522>,  <18.408976, 22.802639, 22.188675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.410648, 23.040894, 22.217522>,  <18.413437, 23.437984, 22.265598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.410648, 23.040894, 22.217522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307460, 0.112245, -0.944918,
		0.951535, -0.043540, 0.304442,
		-0.006970, -0.992726, -0.120192,
		18.408558, 22.743076, 22.181463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.874676, 23.395958, 21.669416>,  <18.413437, 23.437984, 22.265598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.874676, 23.395958, 21.669416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.678547, 23.048428, 21.696907>,  <18.560869, 22.839909, 21.713402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.678547, 23.048428, 21.696907>,  <18.874676, 23.395958, 21.669416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.678547, 23.048428, 21.696907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010056, -0.073210, -0.997266,
		0.871483, -0.489674, 0.027160,
		-0.490324, -0.868827, 0.068725,
		18.531450, 22.787779, 21.717525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244923, 22.995443, 21.269667>,  <18.874676, 23.395958, 21.669416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.244923, 22.995443, 21.269667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.877182, 22.840569, 21.297604>,  <18.656538, 22.747644, 21.314365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.877182, 22.840569, 21.297604>,  <19.244923, 22.995443, 21.269667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.877182, 22.840569, 21.297604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053122, -0.053740, -0.997141,
		0.389832, -0.920435, 0.028839,
		-0.919353, -0.387185, 0.069845,
		18.601376, 22.724413, 21.318558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.224665, 22.489265, 20.731091>,  <19.244923, 22.995443, 21.269667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.224665, 22.489265, 20.731091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.843224, 22.580761, 20.809397>,  <18.614359, 22.635658, 20.856380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.843224, 22.580761, 20.809397>,  <19.224665, 22.489265, 20.731091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.843224, 22.580761, 20.809397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203718, -0.011448, -0.978963,
		-0.221687, -0.973420, 0.057515,
		-0.953600, 0.228741, 0.195766,
		18.557144, 22.649384, 20.868126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.820515, 22.020481, 20.325598>,  <19.224665, 22.489265, 20.731091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.820515, 22.020481, 20.325598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.569954, 22.320290, 20.411236>,  <18.419617, 22.500175, 20.462620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.569954, 22.320290, 20.411236>,  <18.820515, 22.020481, 20.325598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.569954, 22.320290, 20.411236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329817, -0.005984, -0.944026,
		-0.706286, -0.661954, 0.250953,
		-0.626403, 0.749521, 0.214097,
		18.382032, 22.545145, 20.475466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228060, 21.816671, 20.048319>,  <18.820515, 22.020481, 20.325598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.228060, 21.816671, 20.048319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.201782, 22.212013, 20.103216>,  <18.186016, 22.449219, 20.136154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.201782, 22.212013, 20.103216>,  <18.228060, 21.816671, 20.048319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.201782, 22.212013, 20.103216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221530, 0.119661, -0.967784,
		-0.972938, -0.093979, 0.211090,
		-0.065692, 0.988357, 0.137242,
		18.182074, 22.508520, 20.144388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.584429, 21.946629, 19.796066>,  <18.228060, 21.816671, 20.048319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.584429, 21.946629, 19.796066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.793133, 22.287334, 19.815113>,  <17.918356, 22.491758, 19.826540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.793133, 22.287334, 19.815113>,  <17.584429, 21.946629, 19.796066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.793133, 22.287334, 19.815113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169661, 0.158303, -0.972705,
		-0.836052, 0.499440, 0.227107,
		0.521760, 0.851763, 0.047615,
		17.949661, 22.542864, 19.829397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251244, 22.481724, 19.313684>,  <17.584429, 21.946629, 19.796066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251244, 22.481724, 19.313684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.606735, 22.652344, 19.380878>,  <17.820030, 22.754715, 19.421196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.606735, 22.652344, 19.380878>,  <17.251244, 22.481724, 19.313684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.606735, 22.652344, 19.380878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083538, 0.209617, -0.974209,
		-0.450759, 0.879840, 0.150659,
		0.888728, 0.426548, 0.167987,
		17.873354, 22.780308, 19.431274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.350121, 23.069849, 18.900568>,  <17.251244, 22.481724, 19.313684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.350121, 23.069849, 18.900568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.732609, 22.986950, 18.983219>,  <17.962101, 22.937210, 19.032810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.732609, 22.986950, 18.983219>,  <17.350121, 23.069849, 18.900568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.732609, 22.986950, 18.983219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242226, 0.164236, -0.956218,
		0.164236, 0.964405, 0.207245,
		0.956218, -0.207245, 0.206630,
		18.019474, 22.924776, 19.045208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748192, 23.565981, 18.492464>,  <17.350121, 23.069849, 18.900568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.748192, 23.565981, 18.492464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.012417, 23.279934, 18.583908>,  <18.170952, 23.108305, 18.638775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.012417, 23.279934, 18.583908>,  <17.748192, 23.565981, 18.492464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.012417, 23.279934, 18.583908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271205, -0.056651, -0.960853,
		0.700076, 0.696703, 0.156523,
		0.660562, -0.715120, 0.228609,
		18.210585, 23.065397, 18.652491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.359459, 23.711216, 18.168476>,  <17.748192, 23.565981, 18.492464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.359459, 23.711216, 18.168476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.409107, 23.318134, 18.223452>,  <18.438896, 23.082285, 18.256437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.409107, 23.318134, 18.223452>,  <18.359459, 23.711216, 18.168476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.409107, 23.318134, 18.223452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343280, -0.087431, -0.935155,
		0.930996, 0.163252, 0.326490,
		0.124121, -0.982703, 0.137439,
		18.446342, 23.023323, 18.264683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851215, 23.615465, 17.664892>,  <18.359459, 23.711216, 18.168476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851215, 23.615465, 17.664892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.772175, 23.238373, 17.772383>,  <18.724751, 23.012117, 17.836878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.772175, 23.238373, 17.772383>,  <18.851215, 23.615465, 17.664892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772175, 23.238373, 17.772383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464194, -0.331437, -0.821385,
		0.863410, -0.037566, 0.503102,
		-0.197603, -0.942729, 0.268728,
		18.712894, 22.955555, 17.853001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461266, 23.329865, 17.614910>,  <18.851215, 23.615465, 17.664892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461266, 23.329865, 17.614910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.187054, 23.042126, 17.570032>,  <19.022526, 22.869482, 17.543106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.187054, 23.042126, 17.570032>,  <19.461266, 23.329865, 17.614910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.187054, 23.042126, 17.570032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468569, -0.317992, -0.824211,
		0.557219, -0.617591, 0.555057,
		-0.685529, -0.719349, -0.112193,
		18.981396, 22.826321, 17.536375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.851610, 22.824453, 17.561285>,  <19.461266, 23.329865, 17.614910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.851610, 22.824453, 17.561285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.505165, 22.693668, 17.410055>,  <19.297298, 22.615196, 17.319317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.505165, 22.693668, 17.410055>,  <19.851610, 22.824453, 17.561285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.505165, 22.693668, 17.410055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486374, -0.376857, -0.788301,
		0.115267, -0.866644, 0.485429,
		-0.866114, -0.326965, -0.378074,
		19.245331, 22.595579, 17.296633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079967, 22.148762, 17.221212>,  <19.851610, 22.824453, 17.561285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079967, 22.148762, 17.221212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.728310, 22.237164, 17.052328>,  <19.517315, 22.290205, 16.950996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.728310, 22.237164, 17.052328>,  <20.079967, 22.148762, 17.221212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.728310, 22.237164, 17.052328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370388, -0.240599, -0.897176,
		-0.299864, -0.945129, 0.129664,
		-0.879144, 0.221005, -0.422211,
		19.464567, 22.303465, 16.925665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.973524, 21.501104, 16.770445>,  <20.079967, 22.148762, 17.221212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.973524, 21.501104, 16.770445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766544, 21.817219, 16.639175>,  <19.642357, 22.006887, 16.560413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.766544, 21.817219, 16.639175>,  <19.973524, 21.501104, 16.770445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766544, 21.817219, 16.639175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336782, -0.164478, -0.927105,
		-0.786655, -0.590252, -0.181045,
		-0.517447, 0.790285, -0.328174,
		19.611311, 22.054304, 16.540724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.029226, 21.381166, 16.124338>,  <19.973524, 21.501104, 16.770445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.029226, 21.381166, 16.124338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.850414, 21.738174, 16.100422>,  <19.743126, 21.952379, 16.086071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.850414, 21.738174, 16.100422>,  <20.029226, 21.381166, 16.124338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.850414, 21.738174, 16.100422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281434, 0.076882, -0.956496,
		-0.849093, -0.444411, -0.285553,
		-0.447031, 0.892518, -0.059792,
		19.716305, 22.005930, 16.082483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642935, 21.403347, 15.464291>,  <20.029226, 21.381166, 16.124338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.642935, 21.403347, 15.464291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.743168, 21.771683, 15.583799>,  <19.803308, 21.992683, 15.655504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.743168, 21.771683, 15.583799>,  <19.642935, 21.403347, 15.464291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.743168, 21.771683, 15.583799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283367, 0.225334, -0.932163,
		-0.925695, 0.318247, -0.204471,
		0.250584, 0.920839, 0.298771,
		19.818342, 22.047934, 15.673430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423067, 21.817396, 14.881007>,  <19.642935, 21.403347, 15.464291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.423067, 21.817396, 14.881007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.683056, 22.039883, 15.088144>,  <19.839048, 22.173374, 15.212426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.683056, 22.039883, 15.088144>,  <19.423067, 21.817396, 14.881007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.683056, 22.039883, 15.088144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326061, 0.411396, -0.851139,
		-0.686457, 0.722063, 0.086035,
		0.649970, 0.556218, 0.517842,
		19.878046, 22.206747, 15.243497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345602, 22.447325, 14.502541>,  <19.423067, 21.817396, 14.881007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.345602, 22.447325, 14.502541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.677853, 22.484150, 14.722206>,  <19.877203, 22.506245, 14.854006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.677853, 22.484150, 14.722206>,  <19.345602, 22.447325, 14.502541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.677853, 22.484150, 14.722206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455417, 0.455150, -0.765136,
		-0.320393, 0.885643, 0.336133,
		0.830628, 0.092064, 0.549164,
		19.927042, 22.511768, 14.886955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.479280, 23.191618, 14.555152>,  <19.345602, 22.447325, 14.502541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.479280, 23.191618, 14.555152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.809631, 22.974606, 14.616577>,  <20.007843, 22.844398, 14.653433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.809631, 22.974606, 14.616577>,  <19.479280, 23.191618, 14.555152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.809631, 22.974606, 14.616577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464984, 0.501279, -0.729732,
		0.318925, 0.674075, 0.666265,
		0.825879, -0.542532, 0.153564,
		20.057396, 22.811846, 14.662646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.070871, 23.597616, 14.309080>,  <19.479280, 23.191618, 14.555152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.070871, 23.597616, 14.309080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.211426, 23.223724, 14.330263>,  <20.295759, 22.999390, 14.342973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.211426, 23.223724, 14.330263>,  <20.070871, 23.597616, 14.309080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.211426, 23.223724, 14.330263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675177, 0.213817, -0.705987,
		0.648585, 0.283830, 0.706242,
		0.351387, -0.934732, 0.052957,
		20.316841, 22.943304, 14.346150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.733681, 23.697824, 14.278208>,  <20.070871, 23.597616, 14.309080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.733681, 23.697824, 14.278208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.697201, 23.305256, 14.210684>,  <20.675314, 23.069715, 14.170170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.697201, 23.305256, 14.210684>,  <20.733681, 23.697824, 14.278208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.697201, 23.305256, 14.210684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712868, 0.054025, -0.699214,
		0.695343, -0.184105, 0.694696,
		-0.091198, -0.981421, -0.168809,
		20.669842, 23.010830, 14.160041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.399752, 23.496046, 14.101523>,  <20.733681, 23.697824, 14.278208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.399752, 23.496046, 14.101523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.176212, 23.198395, 13.955120>,  <21.042089, 23.019804, 13.867278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.176212, 23.198395, 13.955120>,  <21.399752, 23.496046, 14.101523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.176212, 23.198395, 13.955120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662036, -0.134548, -0.737296,
		0.499397, -0.654348, 0.567831,
		-0.558849, -0.744128, -0.366009,
		21.008558, 22.975157, 13.845318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.752604, 22.913940, 14.060680>,  <21.399752, 23.496046, 14.101523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.752604, 22.913940, 14.060680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.478775, 22.912041, 13.769108>,  <21.314478, 22.910900, 13.594164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.478775, 22.912041, 13.769108>,  <21.752604, 22.913940, 14.060680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.478775, 22.912041, 13.769108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722811, -0.133912, -0.677947,
		-0.094392, -0.990982, 0.095106,
		-0.684569, -0.004751, -0.728932,
		21.273405, 22.910616, 13.550428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.073826, 22.663837, 13.455167>,  <21.752604, 22.913940, 14.060680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.073826, 22.663837, 13.455167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.735802, 22.776390, 13.273310>,  <21.532988, 22.843922, 13.164195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.735802, 22.776390, 13.273310>,  <22.073826, 22.663837, 13.455167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.735802, 22.776390, 13.273310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458270, -0.056858, -0.886992,
		-0.275431, -0.957911, -0.080899,
		-0.845060, 0.281379, -0.454643,
		21.482285, 22.860804, 13.136917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.913862, 22.204788, 12.889523>,  <22.073826, 22.663837, 13.455167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.913862, 22.204788, 12.889523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.665829, 22.490170, 12.758998>,  <21.517008, 22.661398, 12.680683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.665829, 22.490170, 12.758998>,  <21.913862, 22.204788, 12.889523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.665829, 22.490170, 12.758998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282760, -0.184736, -0.941233,
		-0.731806, -0.675913, -0.087184,
		-0.620086, 0.713452, -0.326312,
		21.479803, 22.704205, 12.661104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.498402, 21.984596, 12.340716>,  <21.913862, 22.204788, 12.889523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.498402, 21.984596, 12.340716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.510925, 22.382187, 12.298699>,  <21.518438, 22.620741, 12.273489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.510925, 22.382187, 12.298699>,  <21.498402, 21.984596, 12.340716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.510925, 22.382187, 12.298699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167120, -0.108821, -0.979913,
		-0.985439, 0.013124, -0.169520,
		0.031308, 0.993975, -0.105043,
		21.520317, 22.680380, 12.267186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.118731, 21.966728, 11.761634>,  <21.498402, 21.984596, 12.340716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.118731, 21.966728, 11.761634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279682, 22.331863, 11.789404>,  <21.376253, 22.550945, 11.806066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.279682, 22.331863, 11.789404>,  <21.118731, 21.966728, 11.761634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.279682, 22.331863, 11.789404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099955, 0.119189, -0.987827,
		-0.910001, 0.390540, 0.139202,
		0.402377, 0.912838, 0.069425,
		21.400394, 22.605715, 11.810231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.691729, 22.437099, 11.482495>,  <21.118731, 21.966728, 11.761634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.691729, 22.437099, 11.482495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.065277, 22.577705, 11.456206>,  <21.289406, 22.662069, 11.440433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.065277, 22.577705, 11.456206>,  <20.691729, 22.437099, 11.482495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.065277, 22.577705, 11.456206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043706, -0.070217, -0.996574,
		-0.354926, 0.933545, -0.050210,
		0.933872, 0.351515, -0.065724,
		21.345438, 22.683161, 11.436489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724058, 22.780993, 10.876609>,  <20.691729, 22.437099, 11.482495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724058, 22.780993, 10.876609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.106747, 22.713917, 10.971741>,  <21.336361, 22.673672, 11.028820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.106747, 22.713917, 10.971741>,  <20.724058, 22.780993, 10.876609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.106747, 22.713917, 10.971741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224118, -0.096711, -0.969752,
		0.185618, 0.981085, -0.054943,
		0.956722, -0.167689, 0.237830,
		21.393763, 22.663610, 11.043090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116369, 23.187645, 10.459846>,  <20.724058, 22.780993, 10.876609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116369, 23.187645, 10.459846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395538, 22.914265, 10.545449>,  <21.563040, 22.750237, 10.596811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.395538, 22.914265, 10.545449>,  <21.116369, 23.187645, 10.459846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395538, 22.914265, 10.545449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279454, -0.015243, -0.960038,
		0.659403, 0.729835, 0.180355,
		0.697920, -0.683453, 0.214007,
		21.604914, 22.709229, 10.609652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.792919, 23.377829, 10.108279>,  <21.116369, 23.187645, 10.459846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.792919, 23.377829, 10.108279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.833092, 22.988155, 10.189157>,  <21.857195, 22.754353, 10.237684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.833092, 22.988155, 10.189157>,  <21.792919, 23.377829, 10.108279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.833092, 22.988155, 10.189157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335748, -0.158119, -0.928586,
		0.936582, 0.161147, 0.311199,
		0.100432, -0.974182, 0.202197,
		21.863222, 22.695900, 10.249817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.372866, 23.139093, 9.765686>,  <21.792919, 23.377829, 10.108279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.372866, 23.139093, 9.765686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.205681, 22.780521, 9.824643>,  <22.105370, 22.565378, 9.860018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.205681, 22.780521, 9.824643>,  <22.372866, 23.139093, 9.765686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.205681, 22.780521, 9.824643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311549, -0.293842, -0.903656,
		0.853373, -0.331773, 0.402096,
		-0.417961, -0.896428, 0.147393,
		22.080292, 22.511593, 9.868861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.915298, 22.575588, 9.520452>,  <22.372866, 23.139093, 9.765686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.915298, 22.575588, 9.520452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.573326, 22.368641, 9.535542>,  <22.368143, 22.244473, 9.544595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.573326, 22.368641, 9.535542>,  <22.915298, 22.575588, 9.520452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.573326, 22.368641, 9.535542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137885, -0.296749, -0.944949,
		0.500080, -0.802665, 0.325037,
		-0.854932, -0.517368, 0.037723,
		22.316847, 22.213430, 9.546859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.106487, 21.933449, 9.340784>,  <22.915298, 22.575588, 9.520452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.106487, 21.933449, 9.340784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.713989, 21.918873, 9.265068>,  <22.478491, 21.910128, 9.219639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.713989, 21.918873, 9.265068>,  <23.106487, 21.933449, 9.340784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.713989, 21.918873, 9.265068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187507, -0.408195, -0.893431,
		-0.044711, -0.912167, 0.407372,
		-0.981245, -0.036438, -0.189289,
		22.419615, 21.907942, 9.208282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.970406, 21.270269, 8.978897>,  <23.106487, 21.933449, 9.340784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.970406, 21.270269, 8.978897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.658276, 21.510559, 8.909355>,  <22.470999, 21.654734, 8.867630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.658276, 21.510559, 8.909355>,  <22.970406, 21.270269, 8.978897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.658276, 21.510559, 8.909355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108302, -0.403609, -0.908499,
		-0.615929, -0.690093, 0.380005,
		-0.780322, 0.600726, -0.173856,
		22.424179, 21.690777, 8.857199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499559, 20.845261, 8.621559>,  <22.970406, 21.270269, 8.978897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499559, 20.845261, 8.621559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.398129, 21.224804, 8.546341>,  <22.337269, 21.452530, 8.501210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.398129, 21.224804, 8.546341>,  <22.499559, 20.845261, 8.621559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.398129, 21.224804, 8.546341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098380, -0.218689, -0.970823,
		-0.962299, -0.227680, 0.148804,
		-0.253579, 0.948861, -0.188045,
		22.322054, 21.509462, 8.489927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.740694, 20.868668, 8.453767>,  <22.499559, 20.845261, 8.621559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.740694, 20.868668, 8.453767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.881447, 21.203873, 8.286956>,  <21.965899, 21.404997, 8.186870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.881447, 21.203873, 8.286956>,  <21.740694, 20.868668, 8.453767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.881447, 21.203873, 8.286956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349054, -0.295909, -0.889157,
		-0.868527, 0.458444, 0.188387,
		0.351883, 0.838014, -0.417026,
		21.987011, 21.455276, 8.161848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.799782, 20.743372, 7.796531>,  <21.740694, 20.868668, 8.453767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.799782, 20.743372, 7.796531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594063, 20.424198, 7.670803>,  <21.470631, 20.232695, 7.595366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594063, 20.424198, 7.670803>,  <21.799782, 20.743372, 7.796531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.594063, 20.424198, 7.670803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640039, 0.113165, 0.759963,
		-0.570831, 0.592025, -0.568910,
		-0.514298, -0.797935, -0.314320,
		21.439774, 20.184818, 7.576507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.097906, 20.922239, 7.651503>,  <21.799782, 20.743372, 7.796531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.097906, 20.922239, 7.651503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.126072, 20.539402, 7.763944>,  <21.142971, 20.309700, 7.831408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.126072, 20.539402, 7.763944>,  <21.097906, 20.922239, 7.651503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.126072, 20.539402, 7.763944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500912, 0.209769, 0.839693,
		-0.862629, -0.199933, -0.464649,
		0.070413, -0.957091, 0.281101,
		21.147196, 20.252275, 7.848274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.408607, 20.760603, 7.808256>,  <21.097906, 20.922239, 7.651503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.408607, 20.760603, 7.808256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638962, 20.510330, 8.018733>,  <20.777174, 20.360167, 8.145020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.638962, 20.510330, 8.018733>,  <20.408607, 20.760603, 7.808256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.638962, 20.510330, 8.018733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694049, -0.034035, 0.719123,
		-0.432034, -0.779335, -0.453855,
		0.575884, -0.625683, 0.526192,
		20.811728, 20.322626, 8.176591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.960766, 20.149107, 8.120019>,  <20.408607, 20.760603, 7.808256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.960766, 20.149107, 8.120019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294079, 20.096569, 8.334826>,  <20.494066, 20.065046, 8.463709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.294079, 20.096569, 8.334826>,  <19.960766, 20.149107, 8.120019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.294079, 20.096569, 8.334826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552737, -0.217091, 0.804583,
		0.010905, -0.967275, -0.253496,
		0.833285, -0.131343, 0.537016,
		20.544064, 20.057167, 8.495931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892641, 19.534794, 8.536944>,  <19.960766, 20.149107, 8.120019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892641, 19.534794, 8.536944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.186398, 19.746212, 8.707268>,  <20.362652, 19.873062, 8.809462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.186398, 19.746212, 8.707268>,  <19.892641, 19.534794, 8.536944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.186398, 19.746212, 8.707268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379657, -0.200137, 0.903220,
		0.562612, -0.824976, 0.053687,
		0.734390, 0.528545, 0.425807,
		20.406715, 19.904776, 8.835010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.005623, 19.147720, 9.111747>,  <19.892641, 19.534794, 8.536944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.005623, 19.147720, 9.111747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.139732, 19.518410, 9.179604>,  <20.220198, 19.740824, 9.220318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.139732, 19.518410, 9.179604>,  <20.005623, 19.147720, 9.111747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.139732, 19.518410, 9.179604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463167, 0.005331, 0.886255,
		0.820408, -0.375710, 0.431014,
		0.335273, 0.926722, 0.169642,
		20.240314, 19.796427, 9.230496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.219444, 19.130951, 9.819861>,  <20.005623, 19.147720, 9.111747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.219444, 19.130951, 9.819861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189342, 19.520630, 9.734745>,  <20.171282, 19.754436, 9.683675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189342, 19.520630, 9.734745>,  <20.219444, 19.130951, 9.819861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.189342, 19.520630, 9.734745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326643, 0.177539, 0.928323,
		0.942147, 0.139370, 0.304853,
		-0.075257, 0.974195, -0.212792,
		20.166765, 19.812889, 9.670907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.629362, 19.464188, 10.307893>,  <20.219444, 19.130951, 9.819861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.629362, 19.464188, 10.307893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.351929, 19.724365, 10.184045>,  <20.185469, 19.880472, 10.109736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.351929, 19.724365, 10.184045>,  <20.629362, 19.464188, 10.307893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.351929, 19.724365, 10.184045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255352, 0.179906, 0.949963,
		0.673599, 0.737942, 0.041312,
		-0.693585, 0.650442, -0.309619,
		20.143852, 19.919498, 10.091159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.707415, 19.949375, 10.772421>,  <20.629362, 19.464188, 10.307893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.707415, 19.949375, 10.772421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.347042, 20.038551, 10.623492>,  <20.130819, 20.092056, 10.534135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.347042, 20.038551, 10.623492>,  <20.707415, 19.949375, 10.772421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.347042, 20.038551, 10.623492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338413, 0.176160, 0.924362,
		0.271664, 0.958784, -0.083263,
		-0.900930, 0.222938, -0.372321,
		20.076763, 20.105433, 10.511796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.438055, 20.483446, 11.321157>,  <20.707415, 19.949375, 10.772421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.438055, 20.483446, 11.321157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.118896, 20.351295, 11.119478>,  <19.927401, 20.272005, 10.998471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.118896, 20.351295, 11.119478>,  <20.438055, 20.483446, 11.321157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.118896, 20.351295, 11.119478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593403, 0.283417, 0.753357,
		-0.105992, 0.900293, -0.422183,
		-0.797896, -0.330375, -0.504197,
		19.879528, 20.252184, 10.968219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023830, 21.015676, 11.505265>,  <20.438055, 20.483446, 11.321157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023830, 21.015676, 11.505265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.824345, 20.696194, 11.370592>,  <19.704653, 20.504505, 11.289788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.824345, 20.696194, 11.370592>,  <20.023830, 21.015676, 11.505265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.824345, 20.696194, 11.370592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636986, 0.074295, 0.767287,
		-0.587822, 0.597118, -0.545816,
		-0.498712, -0.798705, -0.336684,
		19.674730, 20.456581, 11.269588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352350, 21.275278, 11.414867>,  <20.023830, 21.015676, 11.505265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352350, 21.275278, 11.414867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.305496, 20.878311, 11.429751>,  <19.277384, 20.640131, 11.438682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.305496, 20.878311, 11.429751>,  <19.352350, 21.275278, 11.414867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.305496, 20.878311, 11.429751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703372, 0.109353, 0.702360,
		-0.701104, 0.056098, -0.710849,
		-0.117134, -0.992419, 0.037210,
		19.270355, 20.580585, 11.440914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.684450, 21.210754, 11.570784>,  <19.352350, 21.275278, 11.414867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.684450, 21.210754, 11.570784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.834698, 20.854477, 11.673212>,  <18.924847, 20.640711, 11.734669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.834698, 20.854477, 11.673212>,  <18.684450, 21.210754, 11.570784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.834698, 20.854477, 11.673212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607298, -0.027841, 0.793986,
		-0.700070, -0.453748, -0.551375,
		0.375620, -0.890695, 0.256070,
		18.947384, 20.587269, 11.750033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.098978, 20.862022, 11.680781>,  <18.684450, 21.210754, 11.570784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.098978, 20.862022, 11.680781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.379223, 20.657013, 11.879362>,  <18.547369, 20.534006, 11.998510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.379223, 20.657013, 11.879362>,  <18.098978, 20.862022, 11.680781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.379223, 20.657013, 11.879362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614611, -0.080008, 0.784763,
		-0.362491, -0.854936, -0.371058,
		0.700610, -0.512526, 0.496451,
		18.589405, 20.503256, 12.028297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.743904, 20.368540, 12.069114>,  <18.098978, 20.862022, 11.680781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.743904, 20.368540, 12.069114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101665, 20.357559, 12.247680>,  <18.316322, 20.350971, 12.354819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.101665, 20.357559, 12.247680>,  <17.743904, 20.368540, 12.069114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101665, 20.357559, 12.247680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445391, -0.145781, 0.883388,
		0.040832, -0.988936, -0.142612,
		0.894404, -0.027448, 0.446416,
		18.369987, 20.349325, 12.381604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.785965, 19.783653, 12.525833>,  <17.743904, 20.368540, 12.069114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.785965, 19.783653, 12.525833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069767, 20.033516, 12.656313>,  <18.240049, 20.183434, 12.734601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069767, 20.033516, 12.656313>,  <17.785965, 19.783653, 12.525833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069767, 20.033516, 12.656313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388115, -0.039984, 0.920743,
		0.588190, -0.779876, 0.214069,
		0.709506, 0.624655, 0.326199,
		18.282619, 20.220913, 12.754172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938986, 19.567665, 13.189279>,  <17.785965, 19.783653, 12.525833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938986, 19.567665, 13.189279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.033974, 19.956173, 13.182985>,  <18.090967, 20.189278, 13.179210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.033974, 19.956173, 13.182985>,  <17.938986, 19.567665, 13.189279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033974, 19.956173, 13.182985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373358, 0.106212, 0.921587,
		0.896779, -0.212976, 0.387853,
		0.237470, 0.971267, -0.015732,
		18.105215, 20.247553, 13.178266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.179480, 19.699268, 13.881740>,  <17.938986, 19.567665, 13.189279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.179480, 19.699268, 13.881740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070930, 20.053581, 13.731144>,  <18.005802, 20.266169, 13.640786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070930, 20.053581, 13.731144>,  <18.179480, 19.699268, 13.881740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070930, 20.053581, 13.731144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348370, 0.274249, 0.896340,
		0.897216, 0.374398, 0.234157,
		-0.271371, 0.885784, -0.376490,
		17.989519, 20.319317, 13.618197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.528336, 20.160389, 14.220591>,  <18.179480, 19.699268, 13.881740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.528336, 20.160389, 14.220591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.226189, 20.365902, 14.057890>,  <18.044901, 20.489210, 13.960270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.226189, 20.365902, 14.057890>,  <18.528336, 20.160389, 14.220591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.226189, 20.365902, 14.057890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308860, 0.268303, 0.912479,
		0.577948, 0.814888, -0.043981,
		-0.755369, 0.513781, -0.406752,
		17.999578, 20.520037, 13.935864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.591946, 20.870050, 14.487344>,  <18.528336, 20.160389, 14.220591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.591946, 20.870050, 14.487344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.214424, 20.806416, 14.371462>,  <17.987911, 20.768234, 14.301932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.214424, 20.806416, 14.371462>,  <18.591946, 20.870050, 14.487344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.214424, 20.806416, 14.371462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330213, 0.491183, 0.806039,
		0.014067, 0.856405, -0.516113,
		-0.943802, -0.159089, -0.289706,
		17.931284, 20.758690, 14.284550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.374397, 21.512768, 14.685962>,  <18.591946, 20.870050, 14.487344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.374397, 21.512768, 14.685962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079372, 21.243759, 14.661568>,  <17.902357, 21.082355, 14.646932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079372, 21.243759, 14.661568>,  <18.374397, 21.512768, 14.685962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079372, 21.243759, 14.661568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253454, 0.191992, 0.948103,
		-0.625909, 0.714743, -0.312059,
		-0.737563, -0.672519, -0.060985,
		17.858103, 21.042004, 14.643272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737415, 21.808893, 15.009288>,  <18.374397, 21.512768, 14.685962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.737415, 21.808893, 15.009288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.682686, 21.412663, 15.006912>,  <17.649849, 21.174923, 15.005486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.682686, 21.412663, 15.006912>,  <17.737415, 21.808893, 15.009288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.682686, 21.412663, 15.006912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312797, 0.037514, 0.949079,
		-0.939914, 0.131713, -0.314983,
		-0.136822, -0.990578, -0.005940,
		17.641640, 21.115490, 15.005130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.097383, 21.785971, 15.282062>,  <17.737415, 21.808893, 15.009288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.097383, 21.785971, 15.282062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.252789, 21.419956, 15.325459>,  <17.346031, 21.200348, 15.351497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.252789, 21.419956, 15.325459>,  <17.097383, 21.785971, 15.282062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.252789, 21.419956, 15.325459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378545, -0.051151, 0.924168,
		-0.840097, -0.400119, -0.366255,
		0.388511, -0.915035, 0.108491,
		17.369343, 21.145445, 15.358006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.558596, 21.442488, 15.595415>,  <17.097383, 21.785971, 15.282062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.558596, 21.442488, 15.595415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.877094, 21.213284, 15.673031>,  <17.068193, 21.075762, 15.719600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.877094, 21.213284, 15.673031>,  <16.558596, 21.442488, 15.595415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.877094, 21.213284, 15.673031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364002, -0.197592, 0.910198,
		-0.483211, -0.795373, -0.365909,
		0.796247, -0.573009, 0.194038,
		17.115969, 21.041380, 15.731242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.257244, 20.812794, 15.919072>,  <16.558596, 21.442488, 15.595415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.257244, 20.812794, 15.919072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646111, 20.797966, 16.011608>,  <16.879431, 20.789070, 16.067129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646111, 20.797966, 16.011608>,  <16.257244, 20.812794, 15.919072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646111, 20.797966, 16.011608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233081, -0.253240, 0.938905,
		0.023781, -0.966693, -0.254831,
		0.972167, -0.037068, 0.231340,
		16.937761, 20.786846, 16.081011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339548, 20.230637, 16.260283>,  <16.257244, 20.812794, 15.919072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339548, 20.230637, 16.260283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.645336, 20.466995, 16.363375>,  <16.828810, 20.608810, 16.425230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.645336, 20.466995, 16.363375>,  <16.339548, 20.230637, 16.260283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645336, 20.466995, 16.363375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271838, -0.067033, 0.960006,
		0.584540, -0.803958, 0.109383,
		0.764471, 0.590896, 0.257729,
		16.874678, 20.644264, 16.440693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682138, 19.897243, 16.801483>,  <16.339548, 20.230637, 16.260283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682138, 19.897243, 16.801483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777458, 20.283264, 16.845095>,  <16.834650, 20.514877, 16.871262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.777458, 20.283264, 16.845095>,  <16.682138, 19.897243, 16.801483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.777458, 20.283264, 16.845095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401368, -0.004365, 0.915906,
		0.884373, -0.262021, 0.386301,
		0.238300, 0.965052, 0.109027,
		16.848948, 20.572781, 16.877802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.296579, 19.859749, 17.328897>,  <16.682138, 19.897243, 16.801483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.296579, 19.859749, 17.328897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.168774, 20.237892, 17.354845>,  <17.092091, 20.464779, 17.370415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.168774, 20.237892, 17.354845>,  <17.296579, 19.859749, 17.328897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.168774, 20.237892, 17.354845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162881, -0.122234, 0.979045,
		0.933477, 0.302255, 0.193036,
		-0.319517, 0.945358, 0.064871,
		17.072918, 20.521500, 17.374306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580637, 20.264561, 17.986147>,  <17.296579, 19.859749, 17.328897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580637, 20.264561, 17.986147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.276398, 20.499031, 17.874512>,  <17.093855, 20.639713, 17.807529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.276398, 20.499031, 17.874512>,  <17.580637, 20.264561, 17.986147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.276398, 20.499031, 17.874512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157787, 0.250089, 0.955279,
		0.629759, 0.770618, -0.097726,
		-0.760596, 0.586176, -0.279089,
		17.048220, 20.674885, 17.790785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.652309, 20.814018, 18.434130>,  <17.580637, 20.264561, 17.986147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.652309, 20.814018, 18.434130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275997, 20.841648, 18.301367>,  <17.050209, 20.858227, 18.221710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275997, 20.841648, 18.301367>,  <17.652309, 20.814018, 18.434130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275997, 20.841648, 18.301367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316638, 0.170777, 0.933046,
		0.121131, 0.982886, -0.138792,
		-0.940780, 0.069074, -0.331906,
		16.993763, 20.862370, 18.201796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379568, 21.398699, 18.811134>,  <17.652309, 20.814018, 18.434130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.379568, 21.398699, 18.811134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.069897, 21.175797, 18.691057>,  <16.884094, 21.042055, 18.619011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.069897, 21.175797, 18.691057>,  <17.379568, 21.398699, 18.811134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.069897, 21.175797, 18.691057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414982, 0.088734, 0.905492,
		-0.477954, 0.825586, -0.299948,
		-0.774177, -0.557256, -0.300193,
		16.837645, 21.008619, 18.601000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752396, 21.721125, 19.066462>,  <17.379568, 21.398699, 18.811134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.752396, 21.721125, 19.066462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.648895, 21.338654, 19.011652>,  <16.586796, 21.109171, 18.978765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.648895, 21.338654, 19.011652>,  <16.752396, 21.721125, 19.066462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.648895, 21.338654, 19.011652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440632, -0.009397, 0.897639,
		-0.859588, 0.292643, -0.418890,
		-0.258751, -0.956175, -0.137026,
		16.571270, 21.051802, 18.970545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.933389, 21.605932, 19.308048>,  <16.752396, 21.721125, 19.066462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.933389, 21.605932, 19.308048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.077374, 21.235523, 19.262606>,  <16.163765, 21.013277, 19.235340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.077374, 21.235523, 19.262606>,  <15.933389, 21.605932, 19.308048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.077374, 21.235523, 19.262606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428263, -0.272188, 0.861687,
		-0.828865, -0.261520, -0.494560,
		0.359962, -0.926024, -0.113608,
		16.185362, 20.957716, 19.228523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453028, 21.031929, 19.340952>,  <15.933389, 21.605932, 19.308048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453028, 21.031929, 19.340952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.804614, 20.892963, 19.471624>,  <16.015566, 20.809584, 19.550028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.804614, 20.892963, 19.471624>,  <15.453028, 21.031929, 19.340952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.804614, 20.892963, 19.471624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438199, -0.318124, 0.840701,
		-0.188144, -0.882101, -0.431856,
		0.878967, -0.347412, 0.326683,
		16.068304, 20.788740, 19.569630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226069, 20.343554, 19.712141>,  <15.453028, 21.031929, 19.340952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.226069, 20.343554, 19.712141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.606074, 20.417213, 19.812992>,  <15.834077, 20.461409, 19.873503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.606074, 20.417213, 19.812992>,  <15.226069, 20.343554, 19.712141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606074, 20.417213, 19.812992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198507, -0.267039, 0.943019,
		0.240983, -0.945928, -0.217135,
		0.950012, 0.184149, 0.252126,
		15.891078, 20.472458, 19.888630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.348592, 19.869421, 20.170458>,  <15.226069, 20.343554, 19.712141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.348592, 19.869421, 20.170458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.633451, 20.131393, 20.271584>,  <15.804365, 20.288576, 20.332258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.633451, 20.131393, 20.271584>,  <15.348592, 19.869421, 20.170458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633451, 20.131393, 20.271584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167347, -0.191369, 0.967147,
		0.681795, -0.731057, -0.026682,
		0.712145, 0.654930, 0.252814,
		15.847095, 20.327873, 20.347427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.806895, 19.598930, 20.576933>,  <15.348592, 19.869421, 20.170458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.806895, 19.598930, 20.576933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.839915, 19.988083, 20.663359>,  <15.859727, 20.221575, 20.715214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.839915, 19.988083, 20.663359>,  <15.806895, 19.598930, 20.576933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.839915, 19.988083, 20.663359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076833, -0.209947, 0.974689,
		0.993621, -0.097061, 0.057418,
		0.082550, 0.972883, 0.216065,
		15.864680, 20.279947, 20.728178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404844, 19.823290, 20.901333>,  <15.806895, 19.598930, 20.576933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404844, 19.823290, 20.901333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091145, 20.053780, 20.993347>,  <15.902925, 20.192074, 21.048555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091145, 20.053780, 20.993347>,  <16.404844, 19.823290, 20.901333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091145, 20.053780, 20.993347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038721, -0.415496, 0.908771,
		0.619236, 0.703796, 0.348165,
		-0.784250, 0.576225, 0.230038,
		15.855869, 20.226646, 21.062359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377396, 19.324816, 21.615992>,  <16.404844, 19.823290, 20.901333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377396, 19.324816, 21.615992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.386551, 18.934662, 21.703722>,  <16.392044, 18.700569, 21.756359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.386551, 18.934662, 21.703722>,  <16.377396, 19.324816, 21.615992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.386551, 18.934662, 21.703722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220373, -0.209064, -0.952748,
		0.975147, 0.070142, 0.210163,
		0.022890, -0.975383, 0.219325,
		16.393417, 18.642046, 21.769520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928167, 19.085333, 21.456442>,  <16.377396, 19.324816, 21.615992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.928167, 19.085333, 21.456442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.704903, 18.755154, 21.422760>,  <16.570944, 18.557047, 21.402550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.704903, 18.755154, 21.422760>,  <16.928167, 19.085333, 21.456442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704903, 18.755154, 21.422760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360134, -0.149583, -0.920831,
		0.747501, -0.544299, 0.380763,
		-0.558163, -0.825447, -0.084207,
		16.537455, 18.507519, 21.397497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.409094, 18.587708, 21.270470>,  <16.928167, 19.085333, 21.456442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.409094, 18.587708, 21.270470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043854, 18.433640, 21.216967>,  <16.824709, 18.341198, 21.184866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043854, 18.433640, 21.216967>,  <17.409094, 18.587708, 21.270470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043854, 18.433640, 21.216967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275358, -0.340584, -0.898989,
		0.300711, -0.857697, 0.417047,
		-0.913100, -0.385173, -0.133756,
		16.769924, 18.318089, 21.176840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.555859, 17.989586, 20.786362>,  <17.409094, 18.587708, 21.270470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.555859, 17.989586, 20.786362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157963, 18.024990, 20.765718>,  <16.919226, 18.046232, 20.753332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157963, 18.024990, 20.765718>,  <17.555859, 17.989586, 20.786362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157963, 18.024990, 20.765718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024050, -0.287897, -0.957359,
		-0.099593, -0.953562, 0.284254,
		-0.994737, 0.088510, -0.051606,
		16.859541, 18.051544, 20.750237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271065, 17.375269, 20.484222>,  <17.555859, 17.989586, 20.786362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.271065, 17.375269, 20.484222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.992954, 17.654175, 20.414469>,  <16.826088, 17.821518, 20.372616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.992954, 17.654175, 20.414469>,  <17.271065, 17.375269, 20.484222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.992954, 17.654175, 20.414469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066055, -0.303590, -0.950510,
		-0.715699, -0.649350, 0.257137,
		-0.695279, 0.697264, -0.174386,
		16.784370, 17.863354, 20.362152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.958590, 17.098122, 19.961359>,  <17.271065, 17.375269, 20.484222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.958590, 17.098122, 19.961359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850063, 17.482025, 19.932381>,  <16.784948, 17.712368, 19.914993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.850063, 17.482025, 19.932381>,  <16.958590, 17.098122, 19.961359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.850063, 17.482025, 19.932381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001606, -0.075721, -0.997128,
		-0.962490, -0.270419, 0.022085,
		-0.271314, 0.959761, -0.072446,
		16.768669, 17.769953, 19.910646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.415546, 17.167818, 19.373188>,  <16.958590, 17.098122, 19.961359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.415546, 17.167818, 19.373188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553295, 17.539425, 19.427345>,  <16.635944, 17.762390, 19.459839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.553295, 17.539425, 19.427345>,  <16.415546, 17.167818, 19.373188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.553295, 17.539425, 19.427345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184423, 0.074464, -0.980022,
		-0.920541, 0.362461, -0.145689,
		0.344371, 0.929019, 0.135394,
		16.656607, 17.818130, 19.467964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.261782, 17.359634, 18.754202>,  <16.415546, 17.167818, 19.373188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.261782, 17.359634, 18.754202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.524605, 17.615154, 18.914307>,  <16.682299, 17.768465, 19.010370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.524605, 17.615154, 18.914307>,  <16.261782, 17.359634, 18.754202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.524605, 17.615154, 18.914307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438690, 0.107781, -0.892151,
		-0.613045, 0.761788, -0.209416,
		0.657059, 0.638798, 0.400264,
		16.721722, 17.806793, 19.034386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.270763, 17.983849, 18.392416>,  <16.261782, 17.359634, 18.754202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.270763, 17.983849, 18.392416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.626095, 17.983711, 18.576101>,  <16.839293, 17.983629, 18.686312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.626095, 17.983711, 18.576101>,  <16.270763, 17.983849, 18.392416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.626095, 17.983711, 18.576101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455884, 0.120837, -0.881798,
		-0.055187, 0.992672, 0.107499,
		0.888327, -0.000343, 0.459212,
		16.892593, 17.983608, 18.713865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.615141, 18.679605, 18.329750>,  <16.270763, 17.983849, 18.392416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.615141, 18.679605, 18.329750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.913139, 18.423805, 18.405663>,  <17.091938, 18.270325, 18.451210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.913139, 18.423805, 18.405663>,  <16.615141, 18.679605, 18.329750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.913139, 18.423805, 18.405663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427317, 0.239054, -0.871925,
		0.512230, 0.730678, 0.451364,
		0.744997, -0.639502, 0.189781,
		17.136639, 18.231955, 18.462597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221375, 18.937057, 18.032602>,  <16.615141, 18.679605, 18.329750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221375, 18.937057, 18.032602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.360622, 18.565384, 18.082298>,  <17.444170, 18.342381, 18.112116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.360622, 18.565384, 18.082298>,  <17.221375, 18.937057, 18.032602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.360622, 18.565384, 18.082298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442887, 0.046208, -0.895386,
		0.826236, 0.366723, 0.427608,
		0.348118, -0.929182, 0.124238,
		17.465057, 18.286629, 18.119570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.057278, 18.853113, 17.831030>,  <17.221375, 18.937057, 18.032602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.057278, 18.853113, 17.831030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.879009, 18.495880, 17.806425>,  <17.772049, 18.281540, 17.791662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.879009, 18.495880, 17.806425>,  <18.057278, 18.853113, 17.831030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.879009, 18.495880, 17.806425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287530, -0.077733, -0.954612,
		0.847765, -0.443128, 0.291431,
		-0.445669, -0.893082, -0.061514,
		17.745308, 18.227955, 17.787971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566788, 18.378136, 17.595171>,  <18.057278, 18.853113, 17.831030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.566788, 18.378136, 17.595171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.207195, 18.236389, 17.492208>,  <17.991440, 18.151340, 17.430431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.207195, 18.236389, 17.492208>,  <18.566788, 18.378136, 17.595171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.207195, 18.236389, 17.492208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282436, -0.019836, -0.959081,
		0.334761, -0.934896, 0.117919,
		-0.898980, -0.354368, -0.257408,
		17.937502, 18.130079, 17.414986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.641106, 17.680506, 17.305422>,  <18.566788, 18.378136, 17.595171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.641106, 17.680506, 17.305422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.297283, 17.830685, 17.166740>,  <18.090990, 17.920792, 17.083532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.297283, 17.830685, 17.166740>,  <18.641106, 17.680506, 17.305422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297283, 17.830685, 17.166740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342065, -0.081343, -0.936149,
		-0.379675, -0.923268, -0.058507,
		-0.859557, 0.375446, -0.346701,
		18.039415, 17.943317, 17.062731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477840, 17.244505, 16.700323>,  <18.641106, 17.680506, 17.305422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.477840, 17.244505, 16.700323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252747, 17.571541, 16.651533>,  <18.117691, 17.767763, 16.622259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252747, 17.571541, 16.651533>,  <18.477840, 17.244505, 16.700323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252747, 17.571541, 16.651533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233663, 0.015789, -0.972190,
		-0.792928, -0.575583, -0.199925,
		-0.562732, 0.817591, -0.121973,
		18.083927, 17.816818, 16.614941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028301, 17.030508, 16.157066>,  <18.477840, 17.244505, 16.700323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028301, 17.030508, 16.157066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.016510, 17.429562, 16.181913>,  <18.009436, 17.668993, 16.196821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.016510, 17.429562, 16.181913>,  <18.028301, 17.030508, 16.157066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.016510, 17.429562, 16.181913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240527, 0.067398, -0.968300,
		-0.970195, -0.013602, -0.241944,
		-0.029477, 0.997634, 0.062117,
		18.007668, 17.728851, 16.200548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.579975, 17.342167, 15.542011>,  <18.028301, 17.030508, 16.157066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.579975, 17.342167, 15.542011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822826, 17.643703, 15.642502>,  <17.968536, 17.824625, 15.702796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822826, 17.643703, 15.642502>,  <17.579975, 17.342167, 15.542011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822826, 17.643703, 15.642502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255673, 0.114022, -0.960016,
		-0.752347, 0.647085, -0.123511,
		0.607129, 0.753843, 0.251226,
		18.004965, 17.869856, 15.717870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.371780, 17.793573, 15.053303>,  <17.579975, 17.342167, 15.542011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.371780, 17.793573, 15.053303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.725525, 17.919132, 15.191504>,  <17.937773, 17.994467, 15.274425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.725525, 17.919132, 15.191504>,  <17.371780, 17.793573, 15.053303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.725525, 17.919132, 15.191504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223555, 0.364954, -0.903788,
		-0.409788, 0.876515, 0.252578,
		0.884363, 0.313896, 0.345503,
		17.990833, 18.013302, 15.295155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465855, 18.412386, 14.695579>,  <17.371780, 17.793573, 15.053303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465855, 18.412386, 14.695579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.833767, 18.323341, 14.824854>,  <18.054514, 18.269915, 14.902419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.833767, 18.323341, 14.824854>,  <17.465855, 18.412386, 14.695579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.833767, 18.323341, 14.824854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355207, 0.122145, -0.926773,
		0.166835, 0.967225, 0.191420,
		0.919779, -0.222612, 0.323187,
		18.109701, 18.256557, 14.921810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.821623, 18.749996, 14.321759>,  <17.465855, 18.412386, 14.695579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.821623, 18.749996, 14.321759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.104187, 18.500935, 14.456388>,  <18.273726, 18.351498, 14.537167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.104187, 18.500935, 14.456388>,  <17.821623, 18.749996, 14.321759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.104187, 18.500935, 14.456388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392621, -0.050943, -0.918288,
		0.588924, 0.780835, 0.208481,
		0.706412, -0.622656, 0.336574,
		18.316111, 18.314138, 14.557361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.506529, 19.066153, 14.141588>,  <17.821623, 18.749996, 14.321759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.506529, 19.066153, 14.141588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.558121, 18.672688, 14.191828>,  <18.589077, 18.436609, 14.221972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.558121, 18.672688, 14.191828>,  <18.506529, 19.066153, 14.141588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558121, 18.672688, 14.191828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431194, -0.058425, -0.900366,
		0.892993, 0.170288, 0.416613,
		0.128981, -0.983661, 0.125600,
		18.596815, 18.377590, 14.229507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.168068, 18.920311, 13.856948>,  <18.506529, 19.066153, 14.141588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.168068, 18.920311, 13.856948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.997719, 18.558430, 13.861816>,  <18.895510, 18.341301, 13.864738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.997719, 18.558430, 13.861816>,  <19.168068, 18.920311, 13.856948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.997719, 18.558430, 13.861816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308634, -0.157903, -0.937983,
		0.850516, -0.395705, 0.346468,
		-0.425873, -0.904701, 0.012171,
		18.869957, 18.287020, 13.865468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.658381, 18.363684, 13.510382>,  <19.168068, 18.920311, 13.856948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.658381, 18.363684, 13.510382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.288387, 18.217087, 13.470211>,  <19.066391, 18.129128, 13.446109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.288387, 18.217087, 13.470211>,  <19.658381, 18.363684, 13.510382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.288387, 18.217087, 13.470211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152400, -0.115682, -0.981525,
		0.348106, -0.923201, 0.162858,
		-0.924985, -0.366494, -0.100426,
		19.010891, 18.107138, 13.440084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815504, 17.880617, 13.070101>,  <19.658381, 18.363684, 13.510382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.815504, 17.880617, 13.070101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.417320, 17.918030, 13.063025>,  <19.178410, 17.940477, 13.058779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.417320, 17.918030, 13.063025>,  <19.815504, 17.880617, 13.070101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.417320, 17.918030, 13.063025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004166, -0.142860, -0.989734,
		-0.095095, -0.985314, 0.141822,
		-0.995459, 0.093528, -0.017690,
		19.118683, 17.946089, 13.057717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613335, 17.299671, 12.679618>,  <19.815504, 17.880617, 13.070101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.613335, 17.299671, 12.679618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301529, 17.547619, 12.643578>,  <19.114445, 17.696386, 12.621954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.301529, 17.547619, 12.643578>,  <19.613335, 17.299671, 12.679618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.301529, 17.547619, 12.643578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039173, -0.191803, -0.980651,
		-0.625156, -0.760904, 0.173796,
		-0.779516, 0.619868, -0.090100,
		19.067675, 17.733580, 12.616548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183359, 16.946550, 12.345275>,  <19.613335, 17.299671, 12.679618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183359, 16.946550, 12.345275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.078716, 17.330624, 12.306055>,  <19.015930, 17.561068, 12.282523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.078716, 17.330624, 12.306055>,  <19.183359, 16.946550, 12.345275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.078716, 17.330624, 12.306055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214141, -0.156797, -0.964136,
		-0.941119, -0.231228, 0.246633,
		-0.261607, 0.960181, -0.098050,
		19.000235, 17.618677, 12.276640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.451328, 17.071302, 12.035800>,  <19.183359, 16.946550, 12.345275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.451328, 17.071302, 12.035800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.690441, 17.380005, 11.949039>,  <18.833908, 17.565228, 11.896982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.690441, 17.380005, 11.949039>,  <18.451328, 17.071302, 12.035800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.690441, 17.380005, 11.949039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337926, -0.002768, -0.941169,
		-0.726955, 0.635910, 0.259143,
		0.597781, 0.771758, -0.216903,
		18.869776, 17.611532, 11.883967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.005470, 17.382137, 11.649988>,  <18.451328, 17.071302, 12.035800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.005470, 17.382137, 11.649988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.357430, 17.551605, 11.563932>,  <18.568605, 17.653286, 11.512300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.357430, 17.551605, 11.563932>,  <18.005470, 17.382137, 11.649988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357430, 17.551605, 11.563932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285134, 0.108596, -0.952316,
		-0.380105, 0.899283, 0.216356,
		0.879897, 0.423670, -0.215138,
		18.621399, 17.678707, 11.499391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840805, 17.895519, 11.220559>,  <18.005470, 17.382137, 11.649988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.840805, 17.895519, 11.220559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.223186, 17.806915, 11.143532>,  <18.452616, 17.753752, 11.097316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.223186, 17.806915, 11.143532>,  <17.840805, 17.895519, 11.220559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.223186, 17.806915, 11.143532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218890, -0.100939, -0.970515,
		0.195542, 0.969920, -0.144980,
		0.955955, -0.221511, -0.192568,
		18.509974, 17.740461, 11.085761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020702, 18.203228, 10.579705>,  <17.840805, 17.895519, 11.220559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020702, 18.203228, 10.579705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.293278, 17.913052, 10.618447>,  <18.456823, 17.738947, 10.641692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.293278, 17.913052, 10.618447>,  <18.020702, 18.203228, 10.579705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.293278, 17.913052, 10.618447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134709, -0.254399, -0.957671,
		0.719371, 0.639547, -0.271080,
		0.681438, -0.725438, 0.096854,
		18.497709, 17.695419, 10.647504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.442812, 18.293941, 9.922807>,  <18.020702, 18.203228, 10.579705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.442812, 18.293941, 9.922807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.503757, 17.924782, 10.064254>,  <18.540325, 17.703287, 10.149122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.503757, 17.924782, 10.064254>,  <18.442812, 18.293941, 9.922807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.503757, 17.924782, 10.064254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127753, -0.373185, -0.918919,
		0.980033, 0.094835, -0.174762,
		0.152364, -0.922897, 0.353618,
		18.549467, 17.647913, 10.170340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742044, 17.974634, 9.411263>,  <18.442812, 18.293941, 9.922807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742044, 17.974634, 9.411263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.626308, 17.643585, 9.603647>,  <18.556868, 17.444956, 9.719078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.626308, 17.643585, 9.603647>,  <18.742044, 17.974634, 9.411263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.626308, 17.643585, 9.603647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376819, -0.363403, -0.852024,
		0.879937, -0.427760, -0.206717,
		-0.289340, -0.827623, 0.480960,
		18.539507, 17.395298, 9.747935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.883949, 17.532701, 8.957685>,  <18.742044, 17.974634, 9.411263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.883949, 17.532701, 8.957685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.624165, 17.326515, 9.181289>,  <18.468294, 17.202803, 9.315452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.624165, 17.326515, 9.181289>,  <18.883949, 17.532701, 8.957685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.624165, 17.326515, 9.181289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198348, -0.594865, -0.778970,
		0.734070, -0.616789, 0.284100,
		-0.649461, -0.515468, 0.559012,
		18.429327, 17.171875, 9.348992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.024477, 16.771439, 8.953056>,  <18.883949, 17.532701, 8.957685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.024477, 16.771439, 8.953056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.639919, 16.760456, 9.062580>,  <18.409185, 16.753866, 9.128294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.639919, 16.760456, 9.062580>,  <19.024477, 16.771439, 8.953056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.639919, 16.760456, 9.062580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180178, -0.689259, -0.701753,
		0.207992, -0.723995, 0.657701,
		-0.961392, -0.027456, 0.273809,
		18.351501, 16.752220, 9.144723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889658, 16.058611, 9.052728>,  <19.024477, 16.771439, 8.953056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889658, 16.058611, 9.052728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545784, 16.246407, 8.972213>,  <18.339458, 16.359085, 8.923903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.545784, 16.246407, 8.972213>,  <18.889658, 16.058611, 9.052728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.545784, 16.246407, 8.972213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243992, -0.723592, -0.645664,
		-0.448783, -0.505957, 0.736615,
		-0.859687, 0.469491, -0.201287,
		18.287878, 16.387255, 8.911827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.380028, 15.601663, 9.096330>,  <18.889658, 16.058611, 9.052728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.380028, 15.601663, 9.096330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172997, 15.883709, 8.902452>,  <18.048779, 16.052937, 8.786126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.172997, 15.883709, 8.902452>,  <18.380028, 15.601663, 9.096330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.172997, 15.883709, 8.902452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420986, -0.703018, -0.573181,
		-0.744905, -0.092618, 0.660711,
		-0.517578, 0.705115, -0.484691,
		18.017723, 16.095243, 8.757045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667200, 15.293742, 8.998841>,  <18.380028, 15.601663, 9.096330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.667200, 15.293742, 8.998841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.694809, 15.596088, 8.738409>,  <17.711374, 15.777496, 8.582150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.694809, 15.596088, 8.738409>,  <17.667200, 15.293742, 8.998841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694809, 15.596088, 8.738409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278225, -0.612157, -0.740172,
		-0.958033, 0.232234, 0.168049,
		0.069021, 0.755865, -0.651080,
		17.715515, 15.822847, 8.543085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107676, 15.230166, 8.649246>,  <17.667200, 15.293742, 8.998841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107676, 15.230166, 8.649246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.338123, 15.458092, 8.414845>,  <17.476391, 15.594847, 8.274203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.338123, 15.458092, 8.414845>,  <17.107676, 15.230166, 8.649246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.338123, 15.458092, 8.414845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306434, -0.514077, -0.801139,
		-0.757751, 0.641122, -0.121559,
		0.576118, 0.569814, -0.586004,
		17.510958, 15.629036, 8.239043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703833, 15.505214, 7.994965>,  <17.107676, 15.230166, 8.649246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703833, 15.505214, 7.994965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097412, 15.488720, 7.925510>,  <17.333559, 15.478824, 7.883838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.097412, 15.488720, 7.925510>,  <16.703833, 15.505214, 7.994965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.097412, 15.488720, 7.925510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172587, -0.467484, -0.866990,
		-0.045422, 0.883039, -0.467096,
		0.983946, -0.041235, -0.173635,
		17.392595, 15.476350, 7.873420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.764185, 15.572195, 7.324259>,  <16.703833, 15.505214, 7.994965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.764185, 15.572195, 7.324259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.121262, 15.434959, 7.441148>,  <17.335506, 15.352618, 7.511281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.121262, 15.434959, 7.441148>,  <16.764185, 15.572195, 7.324259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.121262, 15.434959, 7.441148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083386, -0.762962, -0.641043,
		0.442889, 0.547885, -0.709698,
		0.892690, -0.343089, 0.292222,
		17.389069, 15.332032, 7.528814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998058, 15.413881, 6.726158>,  <16.764185, 15.572195, 7.324259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998058, 15.413881, 6.726158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.184677, 15.213860, 7.017988>,  <17.296648, 15.093846, 7.193087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.184677, 15.213860, 7.017988>,  <16.998058, 15.413881, 6.726158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.184677, 15.213860, 7.017988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021981, -0.831149, -0.555616,
		0.884224, 0.243183, -0.398761,
		0.466546, -0.500054, 0.729576,
		17.324640, 15.063844, 7.236861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635170, 15.139386, 6.473662>,  <16.998058, 15.413881, 6.726158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635170, 15.139386, 6.473662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.436462, 14.953678, 6.766967>,  <17.317238, 14.842253, 6.942949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.436462, 14.953678, 6.766967>,  <17.635170, 15.139386, 6.473662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.436462, 14.953678, 6.766967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107732, -0.805363, -0.582910,
		0.861169, -0.368569, 0.350064,
		-0.496771, -0.464271, 0.733261,
		17.287432, 14.814397, 6.986945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.946848, 14.367443, 6.627041>,  <17.635170, 15.139386, 6.473662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.946848, 14.367443, 6.627041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559387, 14.445312, 6.688771>,  <17.326910, 14.492034, 6.725809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559387, 14.445312, 6.688771>,  <17.946848, 14.367443, 6.627041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.559387, 14.445312, 6.688771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248321, -0.776620, -0.578963,
		0.007142, -0.599136, 0.800616,
		-0.968651, 0.194674, 0.154325,
		17.268791, 14.503715, 6.735069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.781324, 13.836427, 6.286239>,  <17.946848, 14.367443, 6.627041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.781324, 13.836427, 6.286239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.449780, 13.988888, 6.450050>,  <17.250853, 14.080364, 6.548337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.449780, 13.988888, 6.450050>,  <17.781324, 13.836427, 6.286239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.449780, 13.988888, 6.450050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502680, -0.828696, -0.246120,
		0.245565, -0.409861, 0.878471,
		-0.828861, 0.381151, 0.409528,
		17.201120, 14.103233, 6.572909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.698109, 13.350562, 6.855548>,  <17.781324, 13.836427, 6.286239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.698109, 13.350562, 6.855548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.394287, 13.536678, 6.673744>,  <17.211994, 13.648348, 6.564662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.394287, 13.536678, 6.673744>,  <17.698109, 13.350562, 6.855548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.394287, 13.536678, 6.673744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194815, -0.829430, -0.523539,
		-0.620582, -0.309112, 0.720644,
		-0.759556, 0.465291, -0.454510,
		17.166420, 13.676266, 6.537391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.321377, 12.739425, 6.692325>,  <17.698109, 13.350562, 6.855548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.321377, 12.739425, 6.692325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154102, 13.033024, 6.478271>,  <17.053738, 13.209183, 6.349839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154102, 13.033024, 6.478271>,  <17.321377, 12.739425, 6.692325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154102, 13.033024, 6.478271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385200, -0.676823, -0.627321,
		-0.822643, -0.056203, 0.565774,
		-0.418186, 0.733997, -0.535134,
		17.028646, 13.253223, 6.317731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.566593, 12.685854, 6.753050>,  <17.321377, 12.739425, 6.692325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.566593, 12.685854, 6.753050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.712460, 12.847389, 6.417447>,  <16.799980, 12.944310, 6.216085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.712460, 12.847389, 6.417447>,  <16.566593, 12.685854, 6.753050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712460, 12.847389, 6.417447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379717, -0.758232, -0.530000,
		-0.850196, 0.511858, -0.123158,
		0.364667, 0.403839, -0.839007,
		16.821859, 12.968541, 6.165745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.032402, 12.950202, 6.289730>,  <16.566593, 12.685854, 6.753050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.032402, 12.950202, 6.289730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.350109, 12.778473, 6.117768>,  <16.540733, 12.675435, 6.014591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.350109, 12.778473, 6.117768>,  <16.032402, 12.950202, 6.289730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.350109, 12.778473, 6.117768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579900, -0.746786, -0.325618,
		-0.181251, 0.507930, -0.842114,
		0.794270, -0.429323, -0.429904,
		16.588390, 12.649676, 5.988797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105141, 13.281690, 5.717837>,  <16.032402, 12.950202, 6.289730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105141, 13.281690, 5.717837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.286724, 13.630558, 5.644907>,  <16.395674, 13.839879, 5.601149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.286724, 13.630558, 5.644907>,  <16.105141, 13.281690, 5.717837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.286724, 13.630558, 5.644907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605595, -0.452106, -0.654870,
		-0.653588, 0.186867, -0.733419,
		0.453957, 0.872170, -0.182326,
		16.422911, 13.892209, 5.590209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281313, 13.314548, 4.882008>,  <16.105141, 13.281690, 5.717837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281313, 13.314548, 4.882008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.518513, 13.555183, 5.096089>,  <16.660833, 13.699565, 5.224538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.518513, 13.555183, 5.096089>,  <16.281313, 13.314548, 4.882008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518513, 13.555183, 5.096089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788787, -0.300481, -0.536214,
		-0.161761, 0.740138, -0.652709,
		0.592999, 0.601588, 0.535205,
		16.696413, 13.735660, 5.256651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.617371, 13.638512, 4.305538>,  <16.281313, 13.314548, 4.882008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.617371, 13.638512, 4.305538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.837975, 13.639225, 4.639205>,  <16.970337, 13.639653, 4.839405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.837975, 13.639225, 4.639205>,  <16.617371, 13.638512, 4.305538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.837975, 13.639225, 4.639205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816730, -0.204558, -0.539544,
		0.169673, 0.978853, -0.114273,
		0.551510, 0.001784, 0.834167,
		17.003428, 13.639760, 4.889455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204494, 13.577115, 4.043649>,  <16.617371, 13.638512, 4.305538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204494, 13.577115, 4.043649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.317581, 13.525124, 4.423791>,  <17.385433, 13.493929, 4.651877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.317581, 13.525124, 4.423791>,  <17.204494, 13.577115, 4.043649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.317581, 13.525124, 4.423791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956934, -0.029900, -0.288763,
		0.065949, 0.991066, 0.115928,
		0.282717, -0.129979, 0.950356,
		17.402395, 13.486130, 4.708898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.772551, 14.128341, 4.151843>,  <17.204494, 13.577115, 4.043649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.772551, 14.128341, 4.151843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770706, 13.800438, 4.380921>,  <17.769600, 13.603697, 4.518368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.770706, 13.800438, 4.380921>,  <17.772551, 14.128341, 4.151843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770706, 13.800438, 4.380921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912678, -0.237488, -0.332593,
		0.408653, 0.521152, 0.749268,
		-0.004610, -0.819756, 0.572695,
		17.769323, 13.554511, 4.552729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.422827, 14.177967, 4.412276>,  <17.772551, 14.128341, 4.151843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.422827, 14.177967, 4.412276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.296623, 13.801155, 4.457944>,  <18.220901, 13.575068, 4.485345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.296623, 13.801155, 4.457944>,  <18.422827, 14.177967, 4.412276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296623, 13.801155, 4.457944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929273, -0.331089, -0.163806,
		0.192111, 0.054414, 0.979863,
		-0.315508, -0.942029, 0.114172,
		18.201971, 13.518546, 4.492196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889711, 13.869285, 4.724205>,  <18.422827, 14.177967, 4.412276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889711, 13.869285, 4.724205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710281, 13.557598, 4.549114>,  <18.602623, 13.370586, 4.444060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710281, 13.557598, 4.549114>,  <18.889711, 13.869285, 4.724205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.710281, 13.557598, 4.549114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893730, -0.388175, -0.224872,
		0.005309, -0.492080, 0.870534,
		-0.448575, -0.779216, -0.437725,
		18.575708, 13.323833, 4.417797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.240818, 13.272972, 4.956153>,  <18.889711, 13.869285, 4.724205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.240818, 13.272972, 4.956153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.068802, 13.329773, 4.599525>,  <18.965591, 13.363853, 4.385548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.068802, 13.329773, 4.599525>,  <19.240818, 13.272972, 4.956153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.068802, 13.329773, 4.599525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898388, -0.030303, -0.438156,
		-0.089236, -0.989403, -0.114541,
		-0.430042, 0.142002, -0.891572,
		18.939789, 13.372374, 4.332054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461824, 12.798883, 4.335508>,  <19.240818, 13.272972, 4.956153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461824, 12.798883, 4.335508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318897, 13.122116, 4.148178>,  <19.233141, 13.316056, 4.035779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.318897, 13.122116, 4.148178>,  <19.461824, 12.798883, 4.335508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.318897, 13.122116, 4.148178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852351, 0.077117, -0.517253,
		-0.381867, -0.584000, -0.716325,
		-0.357316, 0.808082, -0.468325,
		19.211702, 13.364541, 4.007680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.551048, 12.640915, 3.690001>,  <19.461824, 12.798883, 4.335508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.551048, 12.640915, 3.690001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.520157, 13.039696, 3.685575>,  <19.501621, 13.278964, 3.682919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.520157, 13.039696, 3.685575>,  <19.551048, 12.640915, 3.690001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.520157, 13.039696, 3.685575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675157, 0.044129, -0.736353,
		-0.733620, -0.064338, -0.676507,
		-0.077229, 0.996952, -0.011065,
		19.496988, 13.338781, 3.682255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.245863, 12.851937, 3.039763>,  <19.551048, 12.640915, 3.690001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.245863, 12.851937, 3.039763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.509502, 13.101021, 3.208439>,  <19.667686, 13.250471, 3.309645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.509502, 13.101021, 3.208439>,  <19.245863, 12.851937, 3.039763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.509502, 13.101021, 3.208439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658521, -0.207045, -0.723521,
		-0.363234, 0.754564, -0.546529,
		0.659099, 0.622708, 0.421691,
		19.707232, 13.287833, 3.334946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530666, 13.343581, 2.624799>,  <19.245863, 12.851937, 3.039763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530666, 13.343581, 2.624799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.792503, 13.266304, 2.917151>,  <19.949606, 13.219938, 3.092562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.792503, 13.266304, 2.917151>,  <19.530666, 13.343581, 2.624799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.792503, 13.266304, 2.917151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737902, -0.046902, -0.673277,
		0.164351, 0.980039, 0.111856,
		0.654591, -0.193192, 0.730881,
		19.988880, 13.208346, 3.136415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297230, 13.185967, 2.379652>,  <19.530666, 13.343581, 2.624799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297230, 13.185967, 2.379652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.561619, 13.101788, 2.091535>,  <20.720253, 13.051279, 1.918664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.561619, 13.101788, 2.091535>,  <20.297230, 13.185967, 2.379652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.561619, 13.101788, 2.091535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320839, 0.788458, -0.524782,
		0.678362, 0.577966, 0.453630,
		0.660974, -0.210450, -0.720294,
		20.759911, 13.038652, 1.875446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682463, 13.741273, 2.027200>,  <20.297230, 13.185967, 2.379652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682463, 13.741273, 2.027200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.666626, 13.467274, 1.736212>,  <20.657124, 13.302875, 1.561620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.666626, 13.467274, 1.736212>,  <20.682463, 13.741273, 2.027200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.666626, 13.467274, 1.736212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444912, 0.663972, -0.600994,
		0.894699, 0.299865, -0.331052,
		-0.039592, -0.684997, -0.727469,
		20.654749, 13.261774, 1.517972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.994291, 14.039379, 1.431169>,  <20.682463, 13.741273, 2.027200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.994291, 14.039379, 1.431169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.714252, 13.767998, 1.342117>,  <20.546228, 13.605169, 1.288686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.714252, 13.767998, 1.342117>,  <20.994291, 14.039379, 1.431169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714252, 13.767998, 1.342117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476424, 0.676072, -0.562092,
		0.531866, -0.287455, -0.796548,
		-0.700099, -0.678452, -0.222629,
		20.504223, 13.564462, 1.275328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.968542, 13.934667, 0.727992>,  <20.994291, 14.039379, 1.431169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.968542, 13.934667, 0.727992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617599, 13.883991, 0.913118>,  <20.407034, 13.853586, 1.024194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617599, 13.883991, 0.913118>,  <20.968542, 13.934667, 0.727992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.617599, 13.883991, 0.913118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362003, 0.807854, -0.465108,
		-0.314964, -0.575605, -0.754636,
		-0.877355, -0.126688, 0.462816,
		20.354393, 13.845984, 1.051963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.315960, 13.900144, 0.249745>,  <20.968542, 13.934667, 0.727992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.315960, 13.900144, 0.249745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.242188, 14.043884, 0.615664>,  <20.197924, 14.130129, 0.835215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.242188, 14.043884, 0.615664>,  <20.315960, 13.900144, 0.249745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.242188, 14.043884, 0.615664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367251, 0.838147, -0.403282,
		-0.911654, -0.410337, -0.022607,
		-0.184430, 0.359351, 0.914797,
		20.186859, 14.151690, 0.890103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.611792, 14.081644, 0.420753>,  <20.315960, 13.900144, 0.249745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.611792, 14.081644, 0.420753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.887886, 14.316429, 0.590009>,  <20.053543, 14.457300, 0.691563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.887886, 14.316429, 0.590009>,  <19.611792, 14.081644, 0.420753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.887886, 14.316429, 0.590009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280038, 0.755910, -0.591760,
		-0.667196, 0.289959, 0.686129,
		0.690237, 0.586962, 0.423140,
		20.094957, 14.492517, 0.716951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.392677, 14.667790, 0.810576>,  <19.611792, 14.081644, 0.420753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.392677, 14.667790, 0.810576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.752960, 14.702930, 0.640395>,  <19.969130, 14.724014, 0.538287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.752960, 14.702930, 0.640395>,  <19.392677, 14.667790, 0.810576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752960, 14.702930, 0.640395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374104, 0.654707, -0.656814,
		0.220847, 0.750760, 0.622564,
		0.900707, 0.087849, -0.425453,
		20.023172, 14.729285, 0.512759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.479065, 15.328078, 0.688152>,  <19.392677, 14.667790, 0.810576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.479065, 15.328078, 0.688152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.753040, 15.154129, 0.454317>,  <19.917425, 15.049759, 0.314016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.753040, 15.154129, 0.454317>,  <19.479065, 15.328078, 0.688152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.753040, 15.154129, 0.454317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199167, 0.660033, -0.724354,
		0.700850, 0.612570, 0.365470,
		0.684940, -0.434874, -0.584588,
		19.958523, 15.023667, 0.278941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.945425, 15.846825, 0.493096>,  <19.479065, 15.328078, 0.688152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.945425, 15.846825, 0.493096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.963600, 15.554157, 0.221038>,  <19.974506, 15.378557, 0.057803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.963600, 15.554157, 0.221038>,  <19.945425, 15.846825, 0.493096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.963600, 15.554157, 0.221038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307231, 0.637614, -0.706439,
		0.950550, 0.241061, -0.195818,
		0.045439, -0.731667, -0.680146,
		19.977232, 15.334657, 0.016994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.267918, 16.204288, -0.042960>,  <19.945425, 15.846825, 0.493096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.267918, 16.204288, -0.042960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.067608, 15.869148, -0.129897>,  <19.947422, 15.668064, -0.182058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.067608, 15.869148, -0.129897>,  <20.267918, 16.204288, -0.042960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.067608, 15.869148, -0.129897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444064, 0.464210, -0.766366,
		0.742991, -0.287261, -0.604521,
		-0.500772, -0.837849, -0.217341,
		19.917376, 15.617794, -0.195099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417891, 16.030119, -0.696913>,  <20.267918, 16.204288, -0.042960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417891, 16.030119, -0.696913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.061909, 15.860222, -0.630486>,  <19.848320, 15.758284, -0.590630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.061909, 15.860222, -0.630486>,  <20.417891, 16.030119, -0.696913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061909, 15.860222, -0.630486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381721, 0.494505, -0.780868,
		0.249545, -0.758327, -0.602218,
		-0.889953, -0.424741, 0.166068,
		19.794924, 15.732800, -0.580666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.105545, 15.753448, -1.293321>,  <20.417891, 16.030119, -0.696913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.105545, 15.753448, -1.293321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.795200, 15.827274, -1.051999>,  <19.608994, 15.871571, -0.907206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.795200, 15.827274, -1.051999>,  <20.105545, 15.753448, -1.293321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.795200, 15.827274, -1.051999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485969, 0.434985, -0.758038,
		-0.402337, -0.881319, -0.247794,
		-0.775860, 0.184566, 0.603305,
		19.562443, 15.882644, -0.871007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134426, 16.413687, -1.475193>,  <20.105545, 15.753448, -1.293321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.134426, 16.413687, -1.475193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.949757, 16.204838, -1.762037>,  <19.838955, 16.079529, -1.934143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.949757, 16.204838, -1.762037>,  <20.134426, 16.413687, -1.475193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.949757, 16.204838, -1.762037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855112, 0.046978, 0.516311,
		-0.235890, 0.851576, -0.468161,
		-0.461671, -0.522122, -0.717111,
		19.811255, 16.048201, -1.977170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.470392, 16.679592, -1.661320>,  <20.134426, 16.413687, -1.475193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.470392, 16.679592, -1.661320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.485050, 16.280441, -1.639802>,  <19.493845, 16.040951, -1.626892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.485050, 16.280441, -1.639802>,  <19.470392, 16.679592, -1.661320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.485050, 16.280441, -1.639802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776352, 0.005466, 0.630276,
		-0.629233, -0.064861, -0.774505,
		0.036647, -0.997880, 0.053795,
		19.496044, 15.981077, -1.623664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.338640, 17.109034, -2.281224>,  <19.470392, 16.679592, -1.661320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.338640, 17.109034, -2.281224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.353424, 16.780094, -2.508338>,  <19.362295, 16.582731, -2.644606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.353424, 16.780094, -2.508338>,  <19.338640, 17.109034, -2.281224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.353424, 16.780094, -2.508338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041894, 0.568948, -0.821306,
		0.998438, 0.006570, 0.055481,
		0.036962, -0.822347, -0.567784,
		19.364513, 16.533390, -2.678673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<22.355333, 16.629229, 16.240362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.503223, 17.000275, 16.219057>,  <22.591957, 17.222902, 16.206274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.503223, 17.000275, 16.219057>,  <22.355333, 16.629229, 16.240362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.503223, 17.000275, 16.219057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132519, -0.109381, -0.985127,
		-0.919643, 0.357166, -0.163367,
		0.369723, 0.927614, -0.053260,
		22.614140, 17.278559, 16.203079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.172401, 16.884314, 15.678555>,  <22.355333, 16.629229, 16.240362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.172401, 16.884314, 15.678555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.479412, 17.123489, 15.770964>,  <22.663618, 17.266994, 15.826409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.479412, 17.123489, 15.770964>,  <22.172401, 16.884314, 15.678555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.479412, 17.123489, 15.770964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164574, 0.164507, -0.972550,
		-0.619532, 0.784477, 0.027858,
		0.767526, 0.597941, 0.231022,
		22.709669, 17.302872, 15.840270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.052027, 17.520596, 15.360654>,  <22.172401, 16.884314, 15.678555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.052027, 17.520596, 15.360654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.445457, 17.474407, 15.416136>,  <22.681517, 17.446693, 15.449425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.445457, 17.474407, 15.416136>,  <22.052027, 17.520596, 15.360654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.445457, 17.474407, 15.416136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150416, 0.099742, -0.983579,
		0.099742, 0.988290, 0.115473,
		0.983579, -0.115473, 0.138706,
		22.740532, 17.439766, 15.457747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.223858, 18.023153, 15.010672>,  <22.052027, 17.520596, 15.360654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.223858, 18.023153, 15.010672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.530750, 17.769245, 15.047380>,  <22.714886, 17.616899, 15.069406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.530750, 17.769245, 15.047380>,  <22.223858, 18.023153, 15.010672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.530750, 17.769245, 15.047380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224341, 0.131556, -0.965590,
		0.600856, 0.761418, 0.243339,
		0.767231, -0.634772, 0.091771,
		22.760920, 17.578814, 15.074912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.737535, 18.381353, 14.737978>,  <22.223858, 18.023153, 15.010672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.737535, 18.381353, 14.737978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.859711, 18.000469, 14.738403>,  <22.933016, 17.771938, 14.738659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.859711, 18.000469, 14.738403>,  <22.737535, 18.381353, 14.737978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.859711, 18.000469, 14.738403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186641, 0.058773, -0.980669,
		0.933741, 0.299732, 0.195674,
		0.305438, -0.952211, 0.001063,
		22.951342, 17.714806, 14.738723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.222610, 18.449993, 14.322866>,  <22.737535, 18.381353, 14.737978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.222610, 18.449993, 14.322866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.159004, 18.055176, 14.331467>,  <23.120840, 17.818285, 14.336627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.159004, 18.055176, 14.331467>,  <23.222610, 18.449993, 14.322866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.159004, 18.055176, 14.331467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098928, -0.037599, -0.994384,
		0.982307, -0.155995, 0.103625,
		-0.159015, -0.987042, 0.021501,
		23.111300, 17.759064, 14.337917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.690235, 18.133493, 13.824677>,  <23.222610, 18.449993, 14.322866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.690235, 18.133493, 13.824677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.397400, 17.866577, 13.879480>,  <23.221699, 17.706429, 13.912362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.397400, 17.866577, 13.879480>,  <23.690235, 18.133493, 13.824677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.397400, 17.866577, 13.879480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067491, -0.129083, -0.989334,
		0.677857, -0.733528, 0.049464,
		-0.732089, -0.667289, 0.137007,
		23.177773, 17.666391, 13.920583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.729219, 17.793829, 13.231320>,  <23.690235, 18.133493, 13.824677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.729219, 17.793829, 13.231320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.387508, 17.652374, 13.383715>,  <23.182482, 17.567501, 13.475151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.387508, 17.652374, 13.383715>,  <23.729219, 17.793829, 13.231320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.387508, 17.652374, 13.383715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262666, -0.338801, -0.903449,
		0.448570, -0.871869, 0.196542,
		-0.854278, -0.353635, 0.380986,
		23.131226, 17.546284, 13.498011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.652674, 17.046623, 13.051411>,  <23.729219, 17.793829, 13.231320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.652674, 17.046623, 13.051411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.286991, 17.190910, 13.125286>,  <23.067581, 17.277483, 13.169611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.286991, 17.190910, 13.125286>,  <23.652674, 17.046623, 13.051411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.286991, 17.190910, 13.125286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329721, -0.397119, -0.856493,
		-0.235608, -0.843907, 0.481985,
		-0.914206, 0.360717, 0.184689,
		23.012730, 17.299126, 13.180693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.118553, 16.455542, 12.863776>,  <23.652674, 17.046623, 13.051411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.118553, 16.455542, 12.863776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.958420, 16.820698, 12.831869>,  <22.862341, 17.039791, 12.812725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.958420, 16.820698, 12.831869>,  <23.118553, 16.455542, 12.863776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.958420, 16.820698, 12.831869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239788, -0.188371, -0.952375,
		-0.884441, -0.362138, 0.294312,
		-0.400331, 0.912892, -0.079767,
		22.838320, 17.094566, 12.807939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.576794, 16.265152, 12.490477>,  <23.118553, 16.455542, 12.863776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.576794, 16.265152, 12.490477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.599133, 16.663559, 12.462685>,  <22.612535, 16.902603, 12.446010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.599133, 16.663559, 12.462685>,  <22.576794, 16.265152, 12.490477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.599133, 16.663559, 12.462685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172104, -0.058944, -0.983314,
		-0.983494, 0.066874, 0.168127,
		0.055848, 0.996019, -0.069480,
		22.615887, 16.962364, 12.441840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.023159, 16.490582, 12.296282>,  <22.576794, 16.265152, 12.490477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.023159, 16.490582, 12.296282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.271542, 16.778763, 12.172762>,  <22.420570, 16.951672, 12.098650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.271542, 16.778763, 12.172762>,  <22.023159, 16.490582, 12.296282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.271542, 16.778763, 12.172762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288076, -0.156630, -0.944711,
		-0.728989, 0.675583, 0.110285,
		0.620957, 0.720455, -0.308801,
		22.457829, 16.994900, 12.080122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.594599, 16.896984, 11.798795>,  <22.023159, 16.490582, 12.296282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.594599, 16.896984, 11.798795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.978497, 16.954819, 11.702477>,  <22.208836, 16.989519, 11.644686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.978497, 16.954819, 11.702477>,  <21.594599, 16.896984, 11.798795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.978497, 16.954819, 11.702477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232332, -0.073063, -0.969888,
		-0.157825, 0.986791, -0.036530,
		0.959746, 0.144585, -0.240795,
		22.266420, 16.998194, 11.630239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.526983, 17.279608, 11.174644>,  <21.594599, 16.896984, 11.798795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.526983, 17.279608, 11.174644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.896275, 17.126343, 11.163064>,  <22.117849, 17.034384, 11.156116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.896275, 17.126343, 11.163064>,  <21.526983, 17.279608, 11.174644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.896275, 17.126343, 11.163064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073504, -0.102145, -0.992050,
		0.377161, 0.918015, -0.122467,
		0.923226, -0.383165, -0.028952,
		22.173243, 17.011393, 11.154378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.755840, 17.647148, 10.577449>,  <21.526983, 17.279608, 11.174644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.755840, 17.647148, 10.577449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.000229, 17.337688, 10.644597>,  <22.146862, 17.152012, 10.684886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.000229, 17.337688, 10.644597>,  <21.755840, 17.647148, 10.577449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.000229, 17.337688, 10.644597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176921, -0.073251, -0.981495,
		0.771630, 0.629366, 0.092120,
		0.610972, -0.773649, 0.167870,
		22.183521, 17.105593, 10.694958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.277666, 17.791946, 10.061866>,  <21.755840, 17.647148, 10.577449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.277666, 17.791946, 10.061866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.268326, 17.403618, 10.157334>,  <22.262722, 17.170622, 10.214615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.268326, 17.403618, 10.157334>,  <22.277666, 17.791946, 10.061866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.268326, 17.403618, 10.157334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071574, -0.239746, -0.968194,
		0.997162, -0.005523, 0.075083,
		-0.023348, -0.970820, 0.238670,
		22.261322, 17.112371, 10.228935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.864008, 17.426491, 9.732229>,  <22.277666, 17.791946, 10.061866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.864008, 17.426491, 9.732229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.583801, 17.149879, 9.802726>,  <22.415676, 16.983912, 9.845024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.583801, 17.149879, 9.802726>,  <22.864008, 17.426491, 9.732229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.583801, 17.149879, 9.802726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008367, -0.254906, -0.966930,
		0.713586, -0.675877, 0.184352,
		-0.700518, -0.691530, 0.176242,
		22.373646, 16.942421, 9.855598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.071739, 16.922176, 9.246747>,  <22.864008, 17.426491, 9.732229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.071739, 16.922176, 9.246747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.714584, 16.789230, 9.368262>,  <22.500292, 16.709463, 9.441172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.714584, 16.789230, 9.368262>,  <23.071739, 16.922176, 9.246747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.714584, 16.789230, 9.368262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151387, -0.413810, -0.897688,
		0.424072, -0.847522, 0.319169,
		-0.892886, -0.332366, 0.303789,
		22.446718, 16.689520, 9.459399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.967247, 16.238035, 8.883909>,  <23.071739, 16.922176, 9.246747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.967247, 16.238035, 8.883909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.597363, 16.325905, 9.008264>,  <22.375431, 16.378626, 9.082876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.597363, 16.325905, 9.008264>,  <22.967247, 16.238035, 8.883909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.597363, 16.325905, 9.008264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352290, -0.184447, -0.917535,
		-0.144215, -0.957979, 0.247949,
		-0.924713, 0.219672, 0.310886,
		22.319948, 16.391808, 9.101529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.420237, 15.684198, 8.646004>,  <22.967247, 16.238035, 8.883909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.420237, 15.684198, 8.646004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.224461, 16.021408, 8.735229>,  <22.106995, 16.223734, 8.788763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.224461, 16.021408, 8.735229>,  <22.420237, 15.684198, 8.646004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.224461, 16.021408, 8.735229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435017, -0.014343, -0.900308,
		-0.755783, -0.537683, 0.373750,
		-0.489441, 0.843025, 0.223061,
		22.077629, 16.274315, 8.802147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.812008, 15.654413, 8.319695>,  <22.420237, 15.684198, 8.646004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.812008, 15.654413, 8.319695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.798084, 16.044075, 8.408968>,  <21.789730, 16.277872, 8.462531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.798084, 16.044075, 8.408968>,  <21.812008, 15.654413, 8.319695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.798084, 16.044075, 8.408968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514498, 0.173982, -0.839656,
		-0.856785, -0.144054, 0.495144,
		-0.034809, 0.974155, 0.223180,
		21.787642, 16.336321, 8.475922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124046, 15.943184, 8.349921>,  <21.812008, 15.654413, 8.319695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124046, 15.943184, 8.349921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.334728, 16.272034, 8.263485>,  <21.461138, 16.469343, 8.211623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.334728, 16.272034, 8.263485>,  <21.124046, 15.943184, 8.349921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.334728, 16.272034, 8.263485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487067, 0.083540, -0.869360,
		-0.696669, 0.563146, 0.444430,
		0.526704, 0.822124, -0.216090,
		21.492739, 16.518671, 8.198658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.448671, 15.739071, 8.443679>,  <21.124046, 15.943184, 8.349921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.448671, 15.739071, 8.443679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.164936, 15.464920, 8.509521>,  <19.994694, 15.300429, 8.549026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.164936, 15.464920, 8.509521>,  <20.448671, 15.739071, 8.443679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.164936, 15.464920, 8.509521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201399, 0.026715, 0.979145,
		-0.675482, 0.727697, 0.119084,
		-0.709340, -0.685378, 0.164603,
		19.952135, 15.259307, 8.558902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.967552, 16.044476, 8.919293>,  <20.448671, 15.739071, 8.443679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.967552, 16.044476, 8.919293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.917599, 15.648830, 8.950439>,  <19.887627, 15.411444, 8.969127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.917599, 15.648830, 8.950439>,  <19.967552, 16.044476, 8.919293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.917599, 15.648830, 8.950439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156475, 0.057862, 0.985986,
		-0.979755, 0.135317, 0.147546,
		-0.124883, -0.989111, 0.077864,
		19.880135, 15.352097, 8.973799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.673273, 15.950330, 9.544171>,  <19.967552, 16.044476, 8.919293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.673273, 15.950330, 9.544171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.801033, 15.578892, 9.468596>,  <19.877689, 15.356029, 9.423252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.801033, 15.578892, 9.468596>,  <19.673273, 15.950330, 9.544171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.801033, 15.578892, 9.468596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056876, -0.180235, 0.981978,
		-0.945912, -0.324387, -0.004752,
		0.319397, -0.928595, -0.188936,
		19.896852, 15.300313, 9.411916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.364571, 15.655992, 10.014172>,  <19.673273, 15.950330, 9.544171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.364571, 15.655992, 10.014172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.625729, 15.368481, 9.918602>,  <19.782423, 15.195974, 9.861260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.625729, 15.368481, 9.918602>,  <19.364571, 15.655992, 10.014172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.625729, 15.368481, 9.918602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130523, -0.203953, 0.970241,
		-0.746117, -0.664651, -0.039343,
		0.652896, -0.718778, -0.238925,
		19.821598, 15.152847, 9.846925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172245, 15.075672, 10.337838>,  <19.364571, 15.655992, 10.014172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.172245, 15.075672, 10.337838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.560978, 15.015537, 10.265243>,  <19.794218, 14.979457, 10.221685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.560978, 15.015537, 10.265243>,  <19.172245, 15.075672, 10.337838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560978, 15.015537, 10.265243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154911, -0.172846, 0.972691,
		-0.177656, -0.973400, -0.144679,
		0.971824, -0.150392, -0.181497,
		19.852528, 14.970436, 10.210795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.347013, 14.403383, 10.588031>,  <19.172245, 15.075672, 10.337838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.347013, 14.403383, 10.588031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.681389, 14.622906, 10.586455>,  <19.882015, 14.754619, 10.585510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.681389, 14.622906, 10.586455>,  <19.347013, 14.403383, 10.588031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.681389, 14.622906, 10.586455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131288, -0.192998, 0.972376,
		0.532885, -0.813366, -0.233386,
		0.835941, 0.548806, -0.003939,
		19.932171, 14.787547, 10.585274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.832010, 13.988365, 10.960833>,  <19.347013, 14.403383, 10.588031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.832010, 13.988365, 10.960833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.970654, 14.363506, 10.967683>,  <20.053839, 14.588592, 10.971793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.970654, 14.363506, 10.967683>,  <19.832010, 13.988365, 10.960833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970654, 14.363506, 10.967683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367010, -0.152394, 0.917649,
		0.863230, -0.311780, -0.397023,
		0.346608, 0.937854, 0.017125,
		20.074636, 14.644862, 10.972820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.520367, 13.943298, 11.226415>,  <19.832010, 13.988365, 10.960833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.520367, 13.943298, 11.226415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.400375, 14.316978, 11.303650>,  <20.328381, 14.541186, 11.349991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.400375, 14.316978, 11.303650>,  <20.520367, 13.943298, 11.226415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.400375, 14.316978, 11.303650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142001, -0.156425, 0.977429,
		0.943318, 0.320625, -0.085734,
		-0.299977, 0.934200, 0.193088,
		20.310383, 14.597239, 11.361576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.995771, 14.342551, 11.631227>,  <20.520367, 13.943298, 11.226415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.995771, 14.342551, 11.631227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.663567, 14.561684, 11.671488>,  <20.464243, 14.693163, 11.695644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.663567, 14.561684, 11.671488>,  <20.995771, 14.342551, 11.631227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.663567, 14.561684, 11.671488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108692, -0.017834, 0.993915,
		0.546293, 0.836399, -0.044733,
		-0.830512, 0.547832, 0.100653,
		20.414413, 14.726033, 11.701684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.216969, 14.872746, 12.094666>,  <20.995771, 14.342551, 11.631227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.216969, 14.872746, 12.094666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.817131, 14.863625, 12.101489>,  <20.577229, 14.858151, 12.105583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.817131, 14.863625, 12.101489>,  <21.216969, 14.872746, 12.094666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.817131, 14.863625, 12.101489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013774, 0.137109, 0.990460,
		-0.024927, 0.990294, -0.136739,
		-0.999594, -0.022806, 0.017058,
		20.517252, 14.856783, 12.106606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.100206, 15.319863, 12.565269>,  <21.216969, 14.872746, 12.094666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.100206, 15.319863, 12.565269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.756073, 15.117664, 12.539046>,  <20.549593, 14.996345, 12.523313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.756073, 15.117664, 12.539046>,  <21.100206, 15.319863, 12.565269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756073, 15.117664, 12.539046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113819, 0.065146, 0.991363,
		-0.496861, 0.860365, -0.113583,
		-0.860334, -0.505497, -0.065557,
		20.497972, 14.966015, 12.519379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.610844, 15.634083, 12.905362>,  <21.100206, 15.319863, 12.565269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.610844, 15.634083, 12.905362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.442814, 15.271095, 12.907885>,  <20.341997, 15.053303, 12.909398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.442814, 15.271095, 12.907885>,  <20.610844, 15.634083, 12.905362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.442814, 15.271095, 12.907885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023415, 0.017786, 0.999568,
		-0.907188, 0.419743, -0.028720,
		-0.420073, -0.907469, 0.006307,
		20.316792, 14.998855, 12.909777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.876633, 15.614299, 13.130433>,  <20.610844, 15.634083, 12.905362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.876633, 15.614299, 13.130433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.024727, 15.252335, 13.214399>,  <20.113583, 15.035156, 13.264779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.024727, 15.252335, 13.214399>,  <19.876633, 15.614299, 13.130433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.024727, 15.252335, 13.214399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091585, 0.189314, 0.977636,
		-0.924412, -0.381181, -0.012785,
		0.370236, -0.904909, 0.209915,
		20.135798, 14.980862, 13.277374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.379324, 15.312345, 13.595447>,  <19.876633, 15.614299, 13.130433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.379324, 15.312345, 13.595447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.714329, 15.094845, 13.617027>,  <19.915331, 14.964345, 13.629975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.714329, 15.094845, 13.617027>,  <19.379324, 15.312345, 13.595447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.714329, 15.094845, 13.617027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083583, -0.029908, 0.996052,
		-0.539990, -0.838714, -0.070497,
		0.837511, -0.543750, 0.053952,
		19.965582, 14.931720, 13.633213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.274393, 14.682757, 14.044846>,  <19.379324, 15.312345, 13.595447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.274393, 14.682757, 14.044846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.670116, 14.740044, 14.055836>,  <19.907551, 14.774416, 14.062429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.670116, 14.740044, 14.055836>,  <19.274393, 14.682757, 14.044846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.670116, 14.740044, 14.055836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038384, 0.073981, 0.996521,
		0.140689, -0.986922, 0.078687,
		0.989310, 0.143220, 0.027474,
		19.966909, 14.783009, 14.064078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474079, 14.403174, 14.612391>,  <19.274393, 14.682757, 14.044846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474079, 14.403174, 14.612391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.802578, 14.623180, 14.551676>,  <19.999678, 14.755184, 14.515247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.802578, 14.623180, 14.551676>,  <19.474079, 14.403174, 14.612391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.802578, 14.623180, 14.551676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135286, 0.070732, 0.988279,
		0.554303, -0.832155, -0.016321,
		0.821246, 0.550014, -0.151786,
		20.048952, 14.788184, 14.506140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.935438, 14.218788, 15.083177>,  <19.474079, 14.403174, 14.612391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.935438, 14.218788, 15.083177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.098804, 14.568466, 14.978119>,  <20.196825, 14.778273, 14.915084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.098804, 14.568466, 14.978119>,  <19.935438, 14.218788, 15.083177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.098804, 14.568466, 14.978119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215290, 0.187364, 0.958407,
		0.887044, -0.447973, -0.111683,
		0.408415, 0.874194, -0.262644,
		20.221329, 14.830725, 14.899325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508907, 14.359907, 15.500839>,  <19.935438, 14.218788, 15.083177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508907, 14.359907, 15.500839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.389244, 14.722202, 15.380743>,  <20.317446, 14.939579, 15.308685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.389244, 14.722202, 15.380743>,  <20.508907, 14.359907, 15.500839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389244, 14.722202, 15.380743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076936, 0.336522, 0.938528,
		0.951097, 0.257669, -0.170357,
		-0.299159, 0.905737, -0.300241,
		20.299496, 14.993923, 15.290670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<21.036242, 14.784676, 15.841218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.741337, 15.028381, 15.724434>,  <20.564394, 15.174604, 15.654364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.741337, 15.028381, 15.724434>,  <21.036242, 14.784676, 15.841218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.741337, 15.028381, 15.724434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006676, 0.425555, 0.904908,
		0.675574, 0.669103, -0.309678,
		-0.737262, 0.609265, -0.291961,
		20.520159, 15.211161, 15.636846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.319023, 15.377216, 16.160078>,  <21.036242, 14.784676, 15.841218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.319023, 15.377216, 16.160078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.930042, 15.458881, 16.115084>,  <20.696653, 15.507880, 16.088087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.930042, 15.458881, 16.115084>,  <21.319023, 15.377216, 16.160078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930042, 15.458881, 16.115084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004321, 0.466685, 0.884413,
		0.233059, 0.860536, -0.452947,
		-0.972453, 0.204163, -0.112484,
		20.638306, 15.520130, 16.081339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313404, 16.084932, 16.169359>,  <21.319023, 15.377216, 16.160078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313404, 16.084932, 16.169359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.942913, 15.964436, 16.260006>,  <20.720619, 15.892138, 16.314394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.942913, 15.964436, 16.260006>,  <21.313404, 16.084932, 16.169359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.942913, 15.964436, 16.260006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026521, 0.547602, 0.836319,
		-0.376030, 0.780632, -0.499215,
		-0.926228, -0.301241, 0.226618,
		20.665045, 15.874063, 16.327991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.983757, 16.633677, 16.317822>,  <21.313404, 16.084932, 16.169359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.983757, 16.633677, 16.317822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.777370, 16.343369, 16.499826>,  <20.653538, 16.169184, 16.609030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.777370, 16.343369, 16.499826>,  <20.983757, 16.633677, 16.317822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.777370, 16.343369, 16.499826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137777, 0.453953, 0.880309,
		-0.845455, 0.516902, -0.134231,
		-0.515968, -0.725768, 0.455014,
		20.622580, 16.125639, 16.636332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.578508, 17.035105, 16.881983>,  <20.983757, 16.633677, 16.317822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.578508, 17.035105, 16.881983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.558666, 16.646233, 16.973549>,  <20.546761, 16.412909, 17.028488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.558666, 16.646233, 16.973549>,  <20.578508, 17.035105, 16.881983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.558666, 16.646233, 16.973549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036042, 0.227306, 0.973156,
		-0.998118, 0.056523, 0.023765,
		-0.049604, -0.972182, 0.228915,
		20.543785, 16.354578, 17.042223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.950981, 16.768864, 17.184742>,  <20.578508, 17.035105, 16.881983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.950981, 16.768864, 17.184742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.216961, 16.499481, 17.313925>,  <20.376549, 16.337852, 17.391436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.216961, 16.499481, 17.313925>,  <19.950981, 16.768864, 17.184742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.216961, 16.499481, 17.313925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235902, 0.220898, 0.946337,
		-0.708657, -0.705452, -0.011984,
		0.664948, -0.673456, 0.322958,
		20.416445, 16.297445, 17.410812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687487, 16.459360, 17.867479>,  <19.950981, 16.768864, 17.184742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.687487, 16.459360, 17.867479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.083553, 16.403675, 17.861910>,  <20.321194, 16.370264, 17.858568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.083553, 16.403675, 17.861910>,  <19.687487, 16.459360, 17.867479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083553, 16.403675, 17.861910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020211, 0.043864, 0.998833,
		-0.138443, -0.989290, 0.046247,
		0.990164, -0.139216, -0.013922,
		20.380602, 16.361912, 17.857733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.825655, 16.089756, 18.403646>,  <19.687487, 16.459360, 17.867479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.825655, 16.089756, 18.403646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.207928, 16.190796, 18.343163>,  <20.437292, 16.251419, 18.306871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.207928, 16.190796, 18.343163>,  <19.825655, 16.089756, 18.403646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207928, 16.190796, 18.343163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160506, -0.016477, 0.986897,
		0.246798, -0.967431, -0.056291,
		0.955682, 0.252599, -0.151211,
		20.494633, 16.266575, 18.297798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.227554, 15.639633, 18.827513>,  <19.825655, 16.089756, 18.403646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.227554, 15.639633, 18.827513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.456467, 15.959343, 18.754131>,  <20.593813, 16.151169, 18.710102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.456467, 15.959343, 18.754131>,  <20.227554, 15.639633, 18.827513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.456467, 15.959343, 18.754131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044201, 0.193320, 0.980139,
		0.818867, -0.569022, 0.075304,
		0.572279, 0.799275, -0.183455,
		20.628151, 16.199125, 18.699095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.662647, 15.637418, 19.449804>,  <20.227554, 15.639633, 18.827513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.662647, 15.637418, 19.449804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.692883, 16.002872, 19.290028>,  <20.711023, 16.222145, 19.194160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.692883, 16.002872, 19.290028>,  <20.662647, 15.637418, 19.449804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.692883, 16.002872, 19.290028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053899, 0.403747, 0.913282,
		0.995681, -0.047503, 0.079762,
		0.075588, 0.913637, -0.399443,
		20.715559, 16.276964, 19.170195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.218290, 15.938026, 19.856369>,  <20.662647, 15.637418, 19.449804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.218290, 15.938026, 19.856369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.994984, 16.224770, 19.689301>,  <20.861000, 16.396816, 19.589060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.994984, 16.224770, 19.689301>,  <21.218290, 15.938026, 19.856369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.994984, 16.224770, 19.689301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135465, 0.417910, 0.898332,
		0.818526, 0.558090, -0.136197,
		-0.558268, 0.716859, -0.417672,
		20.827503, 16.439827, 19.563999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.528570, 16.586380, 20.068428>,  <21.218290, 15.938026, 19.856369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.528570, 16.586380, 20.068428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.148754, 16.655857, 19.963966>,  <20.920864, 16.697544, 19.901289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.148754, 16.655857, 19.963966>,  <21.528570, 16.586380, 20.068428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.148754, 16.655857, 19.963966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152239, 0.472744, 0.867950,
		0.274215, 0.863912, -0.422447,
		-0.949542, 0.173692, -0.261154,
		20.863892, 16.707964, 19.885620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.416872, 17.123217, 20.473625>,  <21.528570, 16.586380, 20.068428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.416872, 17.123217, 20.473625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.042130, 17.050659, 20.354027>,  <20.817284, 17.007124, 20.282269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.042130, 17.050659, 20.354027>,  <21.416872, 17.123217, 20.473625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.042130, 17.050659, 20.354027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345812, 0.353085, 0.869336,
		-0.052122, 0.917838, -0.393518,
		-0.936855, -0.181395, -0.298995,
		20.761072, 16.996241, 20.264328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078426, 17.680635, 20.622242>,  <21.416872, 17.123217, 20.473625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078426, 17.680635, 20.622242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.824135, 17.371929, 20.616268>,  <20.671560, 17.186705, 20.612684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.824135, 17.371929, 20.616268>,  <21.078426, 17.680635, 20.622242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.824135, 17.371929, 20.616268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405264, 0.317237, 0.857393,
		-0.656968, 0.551124, -0.514446,
		-0.635731, -0.771766, -0.014936,
		20.633415, 17.140400, 20.611788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.400732, 17.969397, 20.836754>,  <21.078426, 17.680635, 20.622242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.400732, 17.969397, 20.836754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.366684, 17.572556, 20.873598>,  <20.346256, 17.334450, 20.895704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.366684, 17.572556, 20.873598>,  <20.400732, 17.969397, 20.836754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.366684, 17.572556, 20.873598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482992, 0.121942, 0.867092,
		-0.871478, 0.029317, -0.489558,
		-0.085119, -0.992104, 0.092110,
		20.341148, 17.274925, 20.901232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626942, 17.869648, 20.994810>,  <20.400732, 17.969397, 20.836754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626942, 17.869648, 20.994810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.854050, 17.557724, 21.100286>,  <19.990314, 17.370569, 21.163572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.854050, 17.557724, 21.100286>,  <19.626942, 17.869648, 20.994810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.854050, 17.557724, 21.100286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450141, -0.025914, 0.892582,
		-0.689212, -0.625478, -0.365738,
		0.567768, -0.779811, 0.263693,
		20.024380, 17.323780, 21.179394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158144, 17.328878, 21.109467>,  <19.626942, 17.869648, 20.994810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.158144, 17.328878, 21.109467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.488117, 17.276775, 21.329472>,  <19.686102, 17.245514, 21.461475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.488117, 17.276775, 21.329472>,  <19.158144, 17.328878, 21.109467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.488117, 17.276775, 21.329472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510466, 0.246150, 0.823914,
		-0.242706, -0.960439, 0.136567,
		0.824935, -0.130257, 0.550014,
		19.735598, 17.237698, 21.494476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.925571, 17.161268, 21.661613>,  <19.158144, 17.328878, 21.109467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.925571, 17.161268, 21.661613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.293472, 17.209034, 21.811171>,  <19.514214, 17.237694, 21.900904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.293472, 17.209034, 21.811171>,  <18.925571, 17.161268, 21.661613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.293472, 17.209034, 21.811171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382878, 0.063373, 0.921623,
		0.086364, -0.990819, 0.104011,
		0.919753, 0.119418, 0.373890,
		19.569399, 17.244858, 21.923338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.060001, 16.635206, 22.224264>,  <18.925571, 17.161268, 21.661613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.060001, 16.635206, 22.224264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.282391, 16.963463, 22.277096>,  <19.415823, 17.160416, 22.308796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.282391, 16.963463, 22.277096>,  <19.060001, 16.635206, 22.224264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.282391, 16.963463, 22.277096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416081, 0.137210, 0.898916,
		0.719564, -0.554728, 0.417738,
		0.555971, 0.820640, 0.132081,
		19.449183, 17.209656, 22.316721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.246202, 16.561182, 22.875555>,  <19.060001, 16.635206, 22.224264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.246202, 16.561182, 22.875555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.339401, 16.941772, 22.795153>,  <19.395321, 17.170128, 22.746910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.339401, 16.941772, 22.795153>,  <19.246202, 16.561182, 22.875555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.339401, 16.941772, 22.795153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304375, 0.267662, 0.914173,
		0.923617, -0.151817, 0.351970,
		0.232996, 0.951477, -0.201007,
		19.409300, 17.227215, 22.734850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.495392, 16.841619, 23.509794>,  <19.246202, 16.561182, 22.875555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.495392, 16.841619, 23.509794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.415089, 17.187359, 23.325359>,  <19.366907, 17.394802, 23.214699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.415089, 17.187359, 23.325359>,  <19.495392, 16.841619, 23.509794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.415089, 17.187359, 23.325359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537437, 0.296341, 0.789521,
		0.819059, 0.406308, 0.405039,
		-0.200759, 0.864347, -0.461085,
		19.354860, 17.446663, 23.187035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.554838, 17.331413, 24.149590>,  <19.495392, 16.841619, 23.509794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.554838, 17.331413, 24.149590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.299141, 17.446171, 23.864195>,  <19.145723, 17.515026, 23.692959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.299141, 17.446171, 23.864195>,  <19.554838, 17.331413, 24.149590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.299141, 17.446171, 23.864195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709821, 0.136806, 0.690969,
		0.295844, 0.948144, 0.116191,
		-0.639242, 0.286894, -0.713485,
		19.107368, 17.532238, 23.650148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187433, 17.324198, 23.946764>,  <19.554838, 17.331413, 24.149590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187433, 17.324198, 23.946764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.910442, 17.612743, 23.942623>,  <19.744247, 17.785872, 23.940138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.910442, 17.612743, 23.942623>,  <20.187433, 17.324198, 23.946764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.910442, 17.612743, 23.942623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130780, 0.139631, 0.981529,
		0.709487, 0.678333, -0.191031,
		-0.692478, 0.721365, -0.010354,
		19.702700, 17.829153, 23.939516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471308, 17.987707, 24.185421>,  <20.187433, 17.324198, 23.946764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471308, 17.987707, 24.185421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.079304, 17.951313, 24.256191>,  <19.844101, 17.929476, 24.298653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.079304, 17.951313, 24.256191>,  <20.471308, 17.987707, 24.185421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079304, 17.951313, 24.256191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154259, 0.214091, 0.964557,
		-0.125640, 0.972567, -0.195776,
		-0.980010, -0.090987, 0.176925,
		19.785301, 17.924017, 24.309269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.701385, 18.114098, 23.512129>,  <20.471308, 17.987707, 24.185421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.701385, 18.114098, 23.512129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.869884, 18.461262, 23.617418>,  <20.970984, 18.669559, 23.680592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.869884, 18.461262, 23.617418>,  <20.701385, 18.114098, 23.512129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.869884, 18.461262, 23.617418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380149, 0.094536, -0.920081,
		-0.823430, 0.487646, -0.290111,
		0.421248, 0.867908, 0.263222,
		20.996260, 18.721634, 23.696384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.510054, 18.492134, 23.002277>,  <20.701385, 18.114098, 23.512129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.510054, 18.492134, 23.002277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.830631, 18.659946, 23.172775>,  <21.022978, 18.760633, 23.275074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.830631, 18.659946, 23.172775>,  <20.510054, 18.492134, 23.002277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830631, 18.659946, 23.172775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464220, 0.012989, -0.885625,
		-0.377081, 0.907649, -0.184344,
		0.801442, 0.419529, 0.426246,
		21.071064, 18.785805, 23.300650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.613153, 19.119690, 22.621140>,  <20.510054, 18.492134, 23.002277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.613153, 19.119690, 22.621140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.960377, 19.032719, 22.799665>,  <21.168711, 18.980536, 22.906780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.960377, 19.032719, 22.799665>,  <20.613153, 19.119690, 22.621140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.960377, 19.032719, 22.799665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455525, -0.008641, -0.890181,
		0.197406, 0.976038, 0.091543,
		0.868060, -0.217427, 0.446315,
		21.220795, 18.967491, 22.933559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074060, 19.570562, 22.233839>,  <20.613153, 19.119690, 22.621140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074060, 19.570562, 22.233839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.313366, 19.304443, 22.412483>,  <21.456949, 19.144772, 22.519670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.313366, 19.304443, 22.412483>,  <21.074060, 19.570562, 22.233839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313366, 19.304443, 22.412483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611564, 0.018973, -0.790967,
		0.517755, 0.746337, 0.418223,
		0.598263, -0.665298, 0.446610,
		21.492846, 19.104855, 22.546467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.739435, 19.779434, 21.984715>,  <21.074060, 19.570562, 22.233839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.739435, 19.779434, 21.984715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.786625, 19.411766, 22.135025>,  <21.814938, 19.191166, 22.225212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.786625, 19.411766, 22.135025>,  <21.739435, 19.779434, 21.984715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.786625, 19.411766, 22.135025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544866, -0.256449, -0.798345,
		0.830183, 0.298930, 0.470571,
		0.117972, -0.919170, 0.375777,
		21.822016, 19.136015, 22.247759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.440079, 19.675953, 21.856949>,  <21.739435, 19.779434, 21.984715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.440079, 19.675953, 21.856949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.208019, 19.350372, 21.869013>,  <22.068783, 19.155024, 21.876251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.208019, 19.350372, 21.869013>,  <22.440079, 19.675953, 21.856949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.208019, 19.350372, 21.869013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301886, -0.249266, -0.920180,
		0.756501, -0.524736, 0.390332,
		-0.580148, -0.813953, 0.030159,
		22.033976, 19.106186, 21.878061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.936102, 19.200117, 21.696972>,  <22.440079, 19.675953, 21.856949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.936102, 19.200117, 21.696972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.576141, 19.037453, 21.633974>,  <22.360165, 18.939854, 21.596174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.576141, 19.037453, 21.633974>,  <22.936102, 19.200117, 21.696972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.576141, 19.037453, 21.633974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274031, -0.246366, -0.929629,
		0.339243, -0.879733, 0.333143,
		-0.899901, -0.406662, -0.157496,
		22.306171, 18.915455, 21.586725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.136852, 18.613886, 21.363708>,  <22.936102, 19.200117, 21.696972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.136852, 18.613886, 21.363708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.748520, 18.634941, 21.270145>,  <22.515520, 18.647575, 21.214008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.748520, 18.634941, 21.270145>,  <23.136852, 18.613886, 21.363708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.748520, 18.634941, 21.270145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182148, -0.472444, -0.862333,
		-0.155900, -0.879787, 0.449077,
		-0.970833, 0.052639, -0.233906,
		22.457270, 18.650734, 21.199974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.027023, 18.110163, 20.934505>,  <23.136852, 18.613886, 21.363708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.027023, 18.110163, 20.934505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.692078, 18.314167, 20.855806>,  <22.491110, 18.436569, 20.808588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.692078, 18.314167, 20.855806>,  <23.027023, 18.110163, 20.934505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.692078, 18.314167, 20.855806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053398, -0.281880, -0.957963,
		-0.544030, -0.812670, 0.208802,
		-0.837365, 0.510011, -0.196746,
		22.440868, 18.467171, 20.796783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.539927, 17.612625, 20.571878>,  <23.027023, 18.110163, 20.934505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.539927, 17.612625, 20.571878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.440399, 17.987709, 20.474892>,  <22.380684, 18.212759, 20.416700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.440399, 17.987709, 20.474892>,  <22.539927, 17.612625, 20.571878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.440399, 17.987709, 20.474892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045808, -0.261452, -0.964129,
		-0.967467, -0.228785, 0.108008,
		-0.248817, 0.937710, -0.242465,
		22.365753, 18.269022, 20.402151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.130684, 17.550247, 20.075542>,  <22.539927, 17.612625, 20.571878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.130684, 17.550247, 20.075542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.239704, 17.929756, 20.011612>,  <22.305117, 18.157461, 19.973253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.239704, 17.929756, 20.011612>,  <22.130684, 17.550247, 20.075542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.239704, 17.929756, 20.011612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034047, -0.175521, -0.983887,
		-0.961538, 0.262718, -0.080142,
		0.272552, 0.948774, -0.159825,
		22.321470, 18.214388, 19.963665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635944, 17.897118, 19.551193>,  <22.130684, 17.550247, 20.075542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635944, 17.897118, 19.551193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.980473, 18.100109, 19.541464>,  <22.187189, 18.221905, 19.535627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.980473, 18.100109, 19.541464>,  <21.635944, 17.897118, 19.551193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.980473, 18.100109, 19.541464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076351, 0.081962, -0.993707,
		-0.502293, 0.857756, 0.109342,
		0.861320, 0.507480, -0.024322,
		22.238869, 18.252354, 19.534166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.525541, 18.455799, 19.055437>,  <21.635944, 17.897118, 19.551193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.525541, 18.455799, 19.055437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.922489, 18.473335, 19.101536>,  <22.160658, 18.483856, 19.129196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.922489, 18.473335, 19.101536>,  <21.525541, 18.455799, 19.055437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.922489, 18.473335, 19.101536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116159, -0.018833, -0.993052,
		-0.041363, 0.998861, -0.023781,
		0.992369, 0.043838, 0.115248,
		22.220200, 18.486486, 19.136110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.766130, 18.979589, 18.679569>,  <21.525541, 18.455799, 19.055437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.766130, 18.979589, 18.679569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.055542, 18.706993, 18.723518>,  <22.229189, 18.543436, 18.749887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.055542, 18.706993, 18.723518>,  <21.766130, 18.979589, 18.679569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.055542, 18.706993, 18.723518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060732, -0.095709, -0.993555,
		0.687615, 0.725541, -0.027860,
		0.723531, -0.681491, 0.109875,
		22.272602, 18.502546, 18.756481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.226151, 19.179865, 18.264988>,  <21.766130, 18.979589, 18.679569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.226151, 19.179865, 18.264988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.331367, 18.797710, 18.318718>,  <22.394497, 18.568417, 18.350956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.331367, 18.797710, 18.318718>,  <22.226151, 19.179865, 18.264988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.331367, 18.797710, 18.318718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022510, -0.133111, -0.990845,
		0.964522, 0.263657, -0.013508,
		0.263042, -0.955388, 0.134323,
		22.410280, 18.511093, 18.359015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.853165, 18.990402, 17.961462>,  <22.226151, 19.179865, 18.264988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.853165, 18.990402, 17.961462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.699291, 18.623947, 18.006559>,  <22.606968, 18.404074, 18.033619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.699291, 18.623947, 18.006559>,  <22.853165, 18.990402, 17.961462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.699291, 18.623947, 18.006559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209366, -0.205561, -0.955987,
		0.898992, -0.344146, 0.270884,
		-0.384682, -0.916138, 0.112745,
		22.583887, 18.349106, 18.040382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.376598, 18.506107, 17.670366>,  <22.853165, 18.990402, 17.961462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.376598, 18.506107, 17.670366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.034573, 18.298874, 17.661806>,  <22.829357, 18.174534, 17.656670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.034573, 18.298874, 17.661806>,  <23.376598, 18.506107, 17.670366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.034573, 18.298874, 17.661806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219641, -0.324499, -0.920031,
		0.469708, -0.791385, 0.391259,
		-0.855063, -0.518083, -0.021400,
		22.778053, 18.143450, 17.655386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.579538, 17.900673, 17.314640>,  <23.376598, 18.506107, 17.670366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.579538, 17.900673, 17.314640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.179958, 17.882633, 17.317867>,  <22.940210, 17.871809, 17.319803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.179958, 17.882633, 17.317867>,  <23.579538, 17.900673, 17.314640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.179958, 17.882633, 17.317867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005878, -0.300825, -0.953661,
		0.045439, -0.952612, 0.300774,
		-0.998950, -0.045102, 0.008069,
		22.880274, 17.869102, 17.320288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.278557, 17.117014, 17.249327>,  <23.579538, 17.900673, 17.314640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.278557, 17.117014, 17.249327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.988659, 17.366444, 17.132090>,  <22.814720, 17.516102, 17.061747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.988659, 17.366444, 17.132090>,  <23.278557, 17.117014, 17.249327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.988659, 17.366444, 17.132090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058193, -0.368460, -0.927820,
		-0.686557, -0.689487, 0.230751,
		-0.724743, 0.623574, -0.293093,
		22.771236, 17.553516, 17.044163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.819822, 16.684797, 16.889139>,  <23.278557, 17.117014, 17.249327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.819822, 16.684797, 16.889139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.761948, 17.062683, 16.771439>,  <22.727222, 17.289413, 16.700817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.761948, 17.062683, 16.771439>,  <22.819822, 16.684797, 16.889139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.761948, 17.062683, 16.771439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018654, -0.294724, -0.955400,
		-0.989302, -0.143721, 0.025019,
		-0.144685, 0.944713, -0.294252,
		22.718542, 17.346096, 16.683163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.737539, 13.884996, 12.829696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.930809, 14.233566, 12.863540>,  <20.046772, 14.442708, 12.883846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.930809, 14.233566, 12.863540>,  <19.737539, 13.884996, 12.829696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930809, 14.233566, 12.863540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311074, 0.261203, -0.913786,
		-0.818397, 0.415199, 0.397285,
		0.483176, 0.871425, 0.084610,
		20.075762, 14.494994, 12.888923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334316, 14.344322, 12.505343>,  <19.737539, 13.884996, 12.829696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.334316, 14.344322, 12.505343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.701530, 14.502583, 12.494976>,  <19.921860, 14.597539, 12.488755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.701530, 14.502583, 12.494976>,  <19.334316, 14.344322, 12.505343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.701530, 14.502583, 12.494976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176742, 0.349826, -0.919991,
		-0.354929, 0.849165, 0.391081,
		0.918035, 0.395652, -0.025919,
		19.976940, 14.621278, 12.487200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265636, 15.078603, 12.060951>,  <19.334316, 14.344322, 12.505343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265636, 15.078603, 12.060951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.657345, 15.002487, 12.088706>,  <19.892370, 14.956818, 12.105359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.657345, 15.002487, 12.088706>,  <19.265636, 15.078603, 12.060951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.657345, 15.002487, 12.088706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132615, 0.343442, -0.929764,
		0.153093, 0.919695, 0.361558,
		0.979273, -0.190288, 0.069387,
		19.951126, 14.945400, 12.109522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544971, 15.609342, 11.798903>,  <19.265636, 15.078603, 12.060951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544971, 15.609342, 11.798903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.810341, 15.311211, 11.772508>,  <19.969563, 15.132332, 11.756671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.810341, 15.311211, 11.772508>,  <19.544971, 15.609342, 11.798903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.810341, 15.311211, 11.772508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112162, 0.186253, -0.976079,
		0.739788, 0.640154, 0.207162,
		0.663425, -0.745327, -0.065986,
		20.009369, 15.087612, 11.752711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021744, 15.859215, 11.423096>,  <19.544971, 15.609342, 11.798903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.021744, 15.859215, 11.423096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.106998, 15.468594, 11.410978>,  <20.158152, 15.234221, 11.403708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.106998, 15.468594, 11.410978>,  <20.021744, 15.859215, 11.423096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.106998, 15.468594, 11.410978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108774, 0.054532, -0.992570,
		0.970948, 0.208258, 0.117847,
		0.213137, -0.976553, -0.030295,
		20.170940, 15.175628, 11.401890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523193, 15.886354, 11.076478>,  <20.021744, 15.859215, 11.423096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523193, 15.886354, 11.076478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.389618, 15.510056, 11.052884>,  <20.309473, 15.284276, 11.038728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.389618, 15.510056, 11.052884>,  <20.523193, 15.886354, 11.076478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389618, 15.510056, 11.052884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108446, 0.023816, -0.993817,
		0.936335, -0.338271, 0.094067,
		-0.333940, -0.940747, -0.058984,
		20.289436, 15.227832, 11.035189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.934853, 15.565722, 10.577039>,  <20.523193, 15.886354, 11.076478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.934853, 15.565722, 10.577039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.628960, 15.308090, 10.584476>,  <20.445423, 15.153511, 10.588939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.628960, 15.308090, 10.584476>,  <20.934853, 15.565722, 10.577039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.628960, 15.308090, 10.584476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146110, -0.201440, -0.968542,
		0.627564, -0.737959, 0.248154,
		-0.764732, -0.644080, 0.018594,
		20.399540, 15.114866, 10.590055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.171848, 14.911094, 10.194664>,  <20.934853, 15.565722, 10.577039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.171848, 14.911094, 10.194664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.776432, 14.969238, 10.178393>,  <20.539183, 15.004125, 10.168631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.776432, 14.969238, 10.178393>,  <21.171848, 14.911094, 10.194664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776432, 14.969238, 10.178393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008383, -0.216197, -0.976314,
		-0.150709, -0.965469, 0.212502,
		-0.988543, 0.145358, -0.040676,
		20.479870, 15.012847, 10.166190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.961252, 14.559128, 9.623368>,  <21.171848, 14.911094, 10.194664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.961252, 14.559128, 9.623368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.618092, 14.759041, 9.671074>,  <20.412195, 14.878988, 9.699697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.618092, 14.759041, 9.671074>,  <20.961252, 14.559128, 9.623368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618092, 14.759041, 9.671074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194679, -0.101361, -0.975616,
		-0.475508, -0.860199, 0.184254,
		-0.857901, 0.499783, 0.119265,
		20.360722, 14.908976, 9.706853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.397308, 14.177730, 9.438124>,  <20.961252, 14.559128, 9.623368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.397308, 14.177730, 9.438124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.262699, 14.553040, 9.406150>,  <20.181932, 14.778226, 9.386966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.262699, 14.553040, 9.406150>,  <20.397308, 14.177730, 9.438124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.262699, 14.553040, 9.406150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402386, -0.220026, -0.888636,
		-0.851373, -0.266884, 0.451593,
		-0.336525, 0.938276, -0.079934,
		20.161741, 14.834522, 9.382170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.762228, 14.066781, 9.110161>,  <20.397308, 14.177730, 9.438124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.762228, 14.066781, 9.110161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.821644, 14.459221, 9.060555>,  <19.857292, 14.694685, 9.030791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.821644, 14.459221, 9.060555>,  <19.762228, 14.066781, 9.110161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.821644, 14.459221, 9.060555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406801, -0.053683, -0.911938,
		-0.901360, 0.185907, 0.391138,
		0.148538, 0.981100, -0.124015,
		19.866205, 14.753551, 9.023350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.145859, 14.239337, 8.915318>,  <19.762228, 14.066781, 9.110161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.145859, 14.239337, 8.915318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.381294, 14.540794, 8.798300>,  <19.522556, 14.721669, 8.728088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.381294, 14.540794, 8.798300>,  <19.145859, 14.239337, 8.915318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.381294, 14.540794, 8.798300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480009, 0.034615, -0.876580,
		-0.650502, 0.656371, 0.382130,
		0.588590, 0.753643, -0.292547,
		19.557871, 14.766888, 8.710536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.776859, 14.752897, 8.652119>,  <19.145859, 14.239337, 8.915318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.776859, 14.752897, 8.652119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.143375, 14.741398, 8.492328>,  <19.363285, 14.734498, 8.396453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.143375, 14.741398, 8.492328>,  <18.776859, 14.752897, 8.652119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.143375, 14.741398, 8.492328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399609, -0.132536, -0.907054,
		-0.026869, 0.990761, -0.132929,
		0.916292, -0.028748, -0.399479,
		19.418262, 14.732774, 8.372484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.028114, 15.343513, 8.274874>,  <18.776859, 14.752897, 8.652119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.028114, 15.343513, 8.274874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.177235, 15.004684, 8.123354>,  <19.266706, 14.801387, 8.032442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.177235, 15.004684, 8.123354>,  <19.028114, 15.343513, 8.274874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.177235, 15.004684, 8.123354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498100, 0.161743, -0.851901,
		0.782890, 0.506268, -0.361629,
		0.372799, -0.847072, -0.378799,
		19.289074, 14.750563, 8.009714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.520388, 14.878277, 7.901532>,  <19.028114, 15.343513, 8.274874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.520388, 14.878277, 7.901532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.184109, 15.025242, 7.742415>,  <17.982342, 15.113420, 7.646945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.184109, 15.025242, 7.742415>,  <18.520388, 14.878277, 7.901532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.184109, 15.025242, 7.742415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069766, 0.801968, 0.593279,
		0.536995, 0.471015, -0.699844,
		-0.840696, 0.367413, -0.397792,
		17.931900, 15.135466, 7.623078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.664782, 15.615208, 7.684387>,  <18.520388, 14.878277, 7.901532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.664782, 15.615208, 7.684387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.267834, 15.588566, 7.725897>,  <18.029665, 15.572581, 7.750803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.267834, 15.588566, 7.725897>,  <18.664782, 15.615208, 7.684387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267834, 15.588566, 7.725897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004138, 0.823115, 0.567860,
		-0.123239, 0.563956, -0.816558,
		-0.992368, -0.066604, 0.103774,
		17.970123, 15.568584, 7.757029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372873, 16.259268, 7.528019>,  <18.664782, 15.615208, 7.684387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372873, 16.259268, 7.528019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.079563, 16.082409, 7.734633>,  <17.903576, 15.976294, 7.858602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.079563, 16.082409, 7.734633>,  <18.372873, 16.259268, 7.528019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079563, 16.082409, 7.734633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045665, 0.790000, 0.611404,
		-0.678395, 0.424741, -0.599479,
		-0.733277, -0.442149, 0.516536,
		17.859581, 15.949764, 7.889595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.981182, 16.774895, 7.695086>,  <18.372873, 16.259268, 7.528019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.981182, 16.774895, 7.695086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.865356, 16.491550, 7.952575>,  <17.795860, 16.321545, 8.107068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.865356, 16.491550, 7.952575>,  <17.981182, 16.774895, 7.695086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.865356, 16.491550, 7.952575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040595, 0.662841, 0.747659,
		-0.956297, 0.242627, -0.163180,
		-0.289564, -0.708360, 0.643722,
		17.778486, 16.279043, 8.145691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.489935, 17.064028, 8.160989>,  <17.981182, 16.774895, 7.695086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.489935, 17.064028, 8.160989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.623081, 16.740997, 8.355727>,  <17.702969, 16.547178, 8.472570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.623081, 16.740997, 8.355727>,  <17.489935, 17.064028, 8.160989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623081, 16.740997, 8.355727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050656, 0.500228, 0.864411,
		-0.941613, -0.312395, 0.125600,
		0.332866, -0.807577, 0.486846,
		17.722940, 16.498724, 8.501781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.072729, 16.834213, 8.746886>,  <17.489935, 17.064028, 8.160989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.072729, 16.834213, 8.746886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.458523, 16.746822, 8.806268>,  <17.689999, 16.694387, 8.841896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.458523, 16.746822, 8.806268>,  <17.072729, 16.834213, 8.746886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.458523, 16.746822, 8.806268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065738, 0.345798, 0.936003,
		-0.255830, -0.912519, 0.319155,
		0.964484, -0.218477, 0.148453,
		17.747868, 16.681280, 8.850803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.096394, 16.765665, 9.514692>,  <17.072729, 16.834213, 8.746886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.096394, 16.765665, 9.514692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.477840, 16.788773, 9.396523>,  <17.706709, 16.802637, 9.325622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.477840, 16.788773, 9.396523>,  <17.096394, 16.765665, 9.514692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.477840, 16.788773, 9.396523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270009, 0.269690, 0.924317,
		0.133068, -0.961213, 0.241584,
		0.953618, 0.057768, -0.295423,
		17.763926, 16.806103, 9.307897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592783, 16.511003, 10.081659>,  <17.096394, 16.765665, 9.514692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.592783, 16.511003, 10.081659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.838444, 16.708595, 9.835471>,  <17.985840, 16.827150, 9.687758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.838444, 16.708595, 9.835471>,  <17.592783, 16.511003, 10.081659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.838444, 16.708595, 9.835471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615802, 0.187780, 0.765197,
		0.493565, -0.848953, -0.188869,
		0.614150, 0.493980, -0.615469,
		18.022690, 16.856789, 9.650830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214962, 16.269175, 10.292459>,  <17.592783, 16.511003, 10.081659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214962, 16.269175, 10.292459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.298794, 16.629780, 10.141014>,  <18.349092, 16.846144, 10.050147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.298794, 16.629780, 10.141014>,  <18.214962, 16.269175, 10.292459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.298794, 16.629780, 10.141014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465340, 0.248591, 0.849507,
		0.859962, -0.354225, -0.367410,
		0.209581, 0.901514, -0.378614,
		18.361668, 16.900234, 10.027430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822937, 16.468798, 10.603475>,  <18.214962, 16.269175, 10.292459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.822937, 16.468798, 10.603475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.750507, 16.831486, 10.451123>,  <18.707048, 17.049099, 10.359713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.750507, 16.831486, 10.451123>,  <18.822937, 16.468798, 10.603475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.750507, 16.831486, 10.451123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344736, 0.421228, 0.838882,
		0.921069, 0.020599, -0.388854,
		-0.181076, 0.906721, -0.380879,
		18.696184, 17.103502, 10.336860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.416195, 16.825245, 10.744807>,  <18.822937, 16.468798, 10.603475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.416195, 16.825245, 10.744807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.137306, 17.108051, 10.697461>,  <18.969973, 17.277735, 10.669053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.137306, 17.108051, 10.697461>,  <19.416195, 16.825245, 10.744807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.137306, 17.108051, 10.697461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328093, 0.461537, 0.824220,
		0.637365, 0.535831, -0.553761,
		-0.697223, 0.707014, -0.118365,
		18.928139, 17.320156, 10.661952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.719942, 17.424688, 10.901336>,  <19.416195, 16.825245, 10.744807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.719942, 17.424688, 10.901336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.343983, 17.549648, 10.956461>,  <19.118406, 17.624624, 10.989536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.343983, 17.549648, 10.956461>,  <19.719942, 17.424688, 10.901336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.343983, 17.549648, 10.956461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258011, 0.385436, 0.885929,
		0.223647, 0.868242, -0.442874,
		-0.939900, 0.312401, 0.137814,
		19.062012, 17.643368, 10.997806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.689280, 18.181334, 11.092163>,  <19.719942, 17.424688, 10.901336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.689280, 18.181334, 11.092163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.366707, 18.006855, 11.251864>,  <19.173162, 17.902168, 11.347685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.366707, 18.006855, 11.251864>,  <19.689280, 18.181334, 11.092163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.366707, 18.006855, 11.251864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345399, 0.200564, 0.916774,
		-0.479967, 0.877217, -0.011080,
		-0.806431, -0.436194, 0.399254,
		19.124777, 17.875998, 11.371640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.506300, 18.689238, 11.610589>,  <19.689280, 18.181334, 11.092163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.506300, 18.689238, 11.610589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.337788, 18.336140, 11.693805>,  <19.236681, 18.124281, 11.743734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.337788, 18.336140, 11.693805>,  <19.506300, 18.689238, 11.610589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.337788, 18.336140, 11.693805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069006, 0.197525, 0.977866,
		-0.904301, 0.426312, -0.022299,
		-0.421281, -0.882747, 0.208040,
		19.211403, 18.071316, 11.756217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103823, 19.299568, 11.497682>,  <19.506300, 18.689238, 11.610589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103823, 19.299568, 11.497682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.152905, 19.696087, 11.478618>,  <19.182354, 19.933998, 11.467179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.152905, 19.696087, 11.478618>,  <19.103823, 19.299568, 11.497682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.152905, 19.696087, 11.478618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378746, -0.091162, -0.921000,
		-0.917331, 0.094960, -0.386636,
		0.122705, 0.991298, -0.047660,
		19.189716, 19.993477, 11.464319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903778, 19.411053, 10.857817>,  <19.103823, 19.299568, 11.497682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.903778, 19.411053, 10.857817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.124428, 19.730049, 10.955567>,  <19.256817, 19.921448, 11.014218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.124428, 19.730049, 10.955567>,  <18.903778, 19.411053, 10.857817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.124428, 19.730049, 10.955567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304604, 0.080143, -0.949102,
		-0.776486, 0.597984, -0.198711,
		0.551622, 0.797492, 0.244378,
		19.289915, 19.969297, 11.028881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.867821, 19.806585, 10.306276>,  <18.903778, 19.411053, 10.857817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.867821, 19.806585, 10.306276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.182678, 19.957527, 10.501420>,  <19.371593, 20.048092, 10.618506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.182678, 19.957527, 10.501420>,  <18.867821, 19.806585, 10.306276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.182678, 19.957527, 10.501420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448663, 0.192425, -0.872740,
		-0.423207, 0.905857, -0.017837,
		0.787145, 0.377352, 0.487860,
		19.418821, 20.070732, 10.647778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.951366, 20.454243, 9.935180>,  <18.867821, 19.806585, 10.306276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.951366, 20.454243, 9.935180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.290268, 20.353676, 10.122350>,  <19.493608, 20.293335, 10.234652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.290268, 20.353676, 10.122350>,  <18.951366, 20.454243, 9.935180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.290268, 20.353676, 10.122350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497299, 0.065811, -0.865079,
		0.186701, 0.965639, 0.180788,
		0.847252, -0.251417, 0.467924,
		19.544443, 20.278252, 10.262727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.464128, 20.992073, 9.830546>,  <18.951366, 20.454243, 9.935180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.464128, 20.992073, 9.830546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.659325, 20.647831, 9.888818>,  <19.776442, 20.441286, 9.923780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.659325, 20.647831, 9.888818>,  <19.464128, 20.992073, 9.830546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.659325, 20.647831, 9.888818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572687, 0.189732, -0.797516,
		0.658708, 0.472606, 0.585446,
		0.487989, -0.860607, 0.145678,
		19.805721, 20.389648, 9.932521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071522, 21.080528, 9.494164>,  <19.464128, 20.992073, 9.830546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.071522, 21.080528, 9.494164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.101841, 20.683636, 9.533630>,  <20.120033, 20.445501, 9.557310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.101841, 20.683636, 9.533630>,  <20.071522, 21.080528, 9.494164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.101841, 20.683636, 9.533630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645671, -0.026562, -0.763154,
		0.759844, 0.121550, 0.638641,
		0.075798, -0.992230, 0.098664,
		20.124580, 20.385967, 9.563230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.831898, 20.933630, 9.462970>,  <20.071522, 21.080528, 9.494164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.831898, 20.933630, 9.462970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.641937, 20.592010, 9.378052>,  <20.527960, 20.387039, 9.327101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.641937, 20.592010, 9.378052>,  <20.831898, 20.933630, 9.462970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.641937, 20.592010, 9.378052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605579, -0.142106, -0.782994,
		0.638546, -0.500408, 0.584680,
		-0.474903, -0.854048, -0.212296,
		20.499466, 20.335796, 9.314363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334499, 20.465012, 9.458365>,  <20.831898, 20.933630, 9.462970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334499, 20.465012, 9.458365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.031956, 20.313988, 9.244686>,  <20.850430, 20.223373, 9.116478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.031956, 20.313988, 9.244686>,  <21.334499, 20.465012, 9.458365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.031956, 20.313988, 9.244686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638405, -0.247914, -0.728682,
		0.142687, -0.892181, 0.428548,
		-0.756360, -0.377561, -0.534199,
		20.805048, 20.200720, 9.084427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.689651, 19.928556, 9.074934>,  <21.334499, 20.465012, 9.458365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.689651, 19.928556, 9.074934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.329170, 19.964439, 8.905330>,  <21.112881, 19.985970, 8.803567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.329170, 19.964439, 8.905330>,  <21.689651, 19.928556, 9.074934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329170, 19.964439, 8.905330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403437, -0.183780, -0.896361,
		-0.158326, -0.978866, 0.129436,
		-0.901206, 0.089698, -0.424008,
		21.058809, 19.991352, 8.778127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.585279, 19.296875, 8.631495>,  <21.689651, 19.928556, 9.074934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.585279, 19.296875, 8.631495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.350700, 19.593044, 8.500131>,  <21.209953, 19.770746, 8.421311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.350700, 19.593044, 8.500131>,  <21.585279, 19.296875, 8.631495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.350700, 19.593044, 8.500131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174685, -0.280299, -0.943884,
		-0.790927, -0.610906, 0.035040,
		-0.586446, 0.740423, -0.328412,
		21.174767, 19.815170, 8.401607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.257286, 18.927961, 8.088158>,  <21.585279, 19.296875, 8.631495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.257286, 18.927961, 8.088158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.209957, 19.322819, 8.045174>,  <21.181559, 19.559732, 8.019383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.209957, 19.322819, 8.045174>,  <21.257286, 18.927961, 8.088158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.209957, 19.322819, 8.045174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040178, -0.103371, -0.993831,
		-0.992162, -0.121911, -0.027431,
		-0.118323, 0.987143, -0.107459,
		21.174459, 19.618961, 8.012936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.782421, 19.089323, 7.519046>,  <21.257286, 18.927961, 8.088158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.782421, 19.089323, 7.519046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.005642, 19.420372, 7.543100>,  <21.139576, 19.619001, 7.557533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.005642, 19.420372, 7.543100>,  <20.782421, 19.089323, 7.519046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.005642, 19.420372, 7.543100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140240, -0.022639, -0.989859,
		-0.817868, 0.560828, -0.128700,
		0.558055, 0.827623, 0.060135,
		21.173058, 19.668659, 7.561141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.893995, 20.159107, 14.442924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181061, 20.422600, 14.533285>,  <17.353300, 20.580694, 14.587502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181061, 20.422600, 14.533285>,  <16.893995, 20.159107, 14.442924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181061, 20.422600, 14.533285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224215, 0.088549, -0.970508,
		-0.659307, 0.747150, -0.084149,
		0.717664, 0.658730, 0.225904,
		17.396360, 20.620218, 14.601056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687531, 20.662846, 13.992592>,  <16.893995, 20.159107, 14.442924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687531, 20.662846, 13.992592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074234, 20.691002, 14.090918>,  <17.306255, 20.707895, 14.149913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074234, 20.691002, 14.090918>,  <16.687531, 20.662846, 13.992592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.074234, 20.691002, 14.090918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235636, 0.127986, -0.963377,
		-0.099272, 0.989275, 0.107145,
		0.966758, 0.070390, 0.245814,
		17.364262, 20.712118, 14.164662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.995655, 21.263866, 13.558816>,  <16.687531, 20.662846, 13.992592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.995655, 21.263866, 13.558816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294991, 21.019955, 13.663244>,  <17.474592, 20.873608, 13.725902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294991, 21.019955, 13.663244>,  <16.995655, 21.263866, 13.558816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294991, 21.019955, 13.663244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329006, -0.000538, -0.944328,
		0.575970, 0.792573, 0.200217,
		0.748341, -0.609777, 0.261071,
		17.519493, 20.837021, 13.741566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.654810, 21.492342, 13.232568>,  <16.995655, 21.263866, 13.558816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.654810, 21.492342, 13.232568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748764, 21.112301, 13.314676>,  <17.805136, 20.884277, 13.363941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.748764, 21.112301, 13.314676>,  <17.654810, 21.492342, 13.232568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.748764, 21.112301, 13.314676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420164, -0.091191, -0.902854,
		0.876522, 0.298315, 0.377779,
		0.234885, -0.950101, 0.205272,
		17.819229, 20.827271, 13.376258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390097, 21.492825, 13.042831>,  <17.654810, 21.492342, 13.232568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390097, 21.492825, 13.042831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250469, 21.118778, 13.067205>,  <18.166693, 20.894350, 13.081830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250469, 21.118778, 13.067205>,  <18.390097, 21.492825, 13.042831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250469, 21.118778, 13.067205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504920, -0.242464, -0.828412,
		0.789435, -0.258404, 0.556795,
		-0.349067, -0.935114, 0.060936,
		18.145748, 20.838243, 13.085486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.125908, 21.187685, 13.038749>,  <18.390097, 21.492825, 13.042831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.125908, 21.187685, 13.038749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.881989, 20.876369, 12.978868>,  <18.735636, 20.689581, 12.942941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.881989, 20.876369, 12.978868>,  <19.125908, 21.187685, 13.038749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.881989, 20.876369, 12.978868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555874, -0.285361, -0.780752,
		0.564932, -0.559317, 0.606644,
		-0.609800, -0.778289, -0.149701,
		18.699049, 20.642883, 12.933958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565037, 20.576450, 12.883231>,  <19.125908, 21.187685, 13.038749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565037, 20.576450, 12.883231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.202381, 20.488701, 12.739075>,  <18.984787, 20.436050, 12.652581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.202381, 20.488701, 12.739075>,  <19.565037, 20.576450, 12.883231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.202381, 20.488701, 12.739075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413924, -0.297103, -0.860463,
		0.081690, -0.929303, 0.360169,
		-0.906639, -0.219374, -0.360390,
		18.930389, 20.422890, 12.630958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610142, 19.844238, 12.603481>,  <19.565037, 20.576450, 12.883231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610142, 19.844238, 12.603481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.298084, 20.029892, 12.435691>,  <19.110849, 20.141283, 12.335017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.298084, 20.029892, 12.435691>,  <19.610142, 19.844238, 12.603481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.298084, 20.029892, 12.435691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266548, -0.360009, -0.894062,
		-0.565978, -0.809305, 0.157144,
		-0.780142, 0.464132, -0.419475,
		19.064041, 20.169132, 12.309848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.383551, 19.371841, 12.157306>,  <19.610142, 19.844238, 12.603481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.383551, 19.371841, 12.157306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.252541, 19.730103, 12.036953>,  <19.173935, 19.945059, 11.964741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.252541, 19.730103, 12.036953>,  <19.383551, 19.371841, 12.157306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.252541, 19.730103, 12.036953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363767, -0.174366, -0.915024,
		-0.872009, -0.409146, -0.268700,
		-0.327526, 0.895654, -0.300883,
		19.154284, 19.998798, 11.946688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730623, 18.878639, 12.001070>,  <19.383551, 19.371841, 12.157306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.730623, 18.878639, 12.001070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.830173, 18.507210, 12.111209>,  <18.889904, 18.284353, 12.177292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.830173, 18.507210, 12.111209>,  <18.730623, 18.878639, 12.001070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.830173, 18.507210, 12.111209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277963, 0.203854, 0.938712,
		-0.927792, -0.310160, -0.207374,
		0.248877, -0.928571, 0.275346,
		18.904837, 18.228638, 12.193813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.269495, 18.790478, 12.516609>,  <18.730623, 18.878639, 12.001070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.269495, 18.790478, 12.516609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.500076, 18.469891, 12.580295>,  <18.638426, 18.277538, 12.618505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.500076, 18.469891, 12.580295>,  <18.269495, 18.790478, 12.516609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.500076, 18.469891, 12.580295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351950, -0.067684, 0.933568,
		-0.737451, -0.594193, -0.321094,
		0.576453, -0.801470, 0.159213,
		18.673012, 18.229450, 12.628058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846903, 18.190042, 12.923267>,  <18.269495, 18.790478, 12.516609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846903, 18.190042, 12.923267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.235748, 18.101063, 12.952965>,  <18.469055, 18.047674, 12.970783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.235748, 18.101063, 12.952965>,  <17.846903, 18.190042, 12.923267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235748, 18.101063, 12.952965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098078, -0.098084, 0.990333,
		-0.213019, -0.969997, -0.117166,
		0.972113, -0.222451, 0.074242,
		18.527382, 18.034328, 12.975238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.880726, 17.610571, 13.276589>,  <17.846903, 18.190042, 12.923267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.880726, 17.610571, 13.276589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.245056, 17.766621, 13.330544>,  <18.463655, 17.860250, 13.362916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.245056, 17.766621, 13.330544>,  <17.880726, 17.610571, 13.276589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.245056, 17.766621, 13.330544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111152, -0.082901, 0.990340,
		0.397540, -0.917022, -0.032146,
		0.910828, 0.390126, 0.134885,
		18.518305, 17.883657, 13.371009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.230150, 17.134352, 13.818229>,  <17.880726, 17.610571, 13.276589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.230150, 17.134352, 13.818229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409111, 17.491772, 13.833204>,  <18.516487, 17.706223, 13.842190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409111, 17.491772, 13.833204>,  <18.230150, 17.134352, 13.818229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.409111, 17.491772, 13.833204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087711, 0.002181, 0.996144,
		0.890021, -0.448962, 0.079350,
		0.447404, 0.893549, 0.037438,
		18.543331, 17.759836, 13.844436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.705778, 17.084232, 14.346395>,  <18.230150, 17.134352, 13.818229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.705778, 17.084232, 14.346395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.644260, 17.477707, 14.309071>,  <18.607349, 17.713791, 14.286675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.644260, 17.477707, 14.309071>,  <18.705778, 17.084232, 14.346395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.644260, 17.477707, 14.309071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020950, 0.091169, 0.995615,
		0.987881, 0.155074, 0.006588,
		-0.153793, 0.983687, -0.093313,
		18.598122, 17.772814, 14.281076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.168932, 17.471678, 14.863997>,  <18.705778, 17.084232, 14.346395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.168932, 17.471678, 14.863997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.869507, 17.720428, 14.771980>,  <18.689852, 17.869678, 14.716770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.869507, 17.720428, 14.771980>,  <19.168932, 17.471678, 14.863997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.869507, 17.720428, 14.771980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097094, 0.240396, 0.965807,
		0.655915, 0.745304, -0.119572,
		-0.748564, 0.621877, -0.230044,
		18.644938, 17.906992, 14.702967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.333193, 17.962374, 15.308455>,  <19.168932, 17.471678, 14.863997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.333193, 17.962374, 15.308455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949375, 18.023800, 15.214060>,  <18.719084, 18.060656, 15.157423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949375, 18.023800, 15.214060>,  <19.333193, 17.962374, 15.308455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.949375, 18.023800, 15.214060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222442, 0.100340, 0.969769,
		0.172604, 0.983031, -0.062121,
		-0.959545, 0.153567, -0.235987,
		18.661512, 18.069870, 15.143264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134520, 18.422218, 15.825364>,  <19.333193, 17.962374, 15.308455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.134520, 18.422218, 15.825364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.786037, 18.314590, 15.661119>,  <18.576948, 18.250013, 15.562572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.786037, 18.314590, 15.661119>,  <19.134520, 18.422218, 15.825364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.786037, 18.314590, 15.661119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468595, 0.206444, 0.858952,
		-0.146348, 0.940735, -0.305939,
		-0.871207, -0.269067, -0.410612,
		18.524675, 18.233870, 15.537936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688011, 18.894341, 16.144949>,  <19.134520, 18.422218, 15.825364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688011, 18.894341, 16.144949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.456703, 18.594227, 16.016773>,  <18.317919, 18.414160, 15.939867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.456703, 18.594227, 16.016773>,  <18.688011, 18.894341, 16.144949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.456703, 18.594227, 16.016773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520648, 0.036982, 0.852970,
		-0.628118, 0.660082, -0.412018,
		-0.578268, -0.750282, -0.320441,
		18.283222, 18.369143, 15.920641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064270, 19.096052, 16.280165>,  <18.688011, 18.894341, 16.144949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064270, 19.096052, 16.280165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.024147, 18.698769, 16.256592>,  <18.000072, 18.460398, 16.242449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.024147, 18.698769, 16.256592>,  <18.064270, 19.096052, 16.280165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.024147, 18.698769, 16.256592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488299, -0.002466, 0.872673,
		-0.866892, 0.116313, -0.484736,
		-0.100308, -0.993210, -0.058933,
		17.994055, 18.400806, 16.238913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.338549, 18.918806, 16.452248>,  <18.064270, 19.096052, 16.280165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.338549, 18.918806, 16.452248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563259, 18.590439, 16.493240>,  <17.698086, 18.393419, 16.517836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563259, 18.590439, 16.493240>,  <17.338549, 18.918806, 16.452248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.563259, 18.590439, 16.493240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391950, -0.155013, 0.906833,
		-0.728550, -0.549604, -0.408841,
		0.561774, -0.820918, 0.102483,
		17.731791, 18.344164, 16.523985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870331, 18.435799, 16.622343>,  <17.338549, 18.918806, 16.452248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870331, 18.435799, 16.622343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221733, 18.287849, 16.743286>,  <17.432575, 18.199080, 16.815853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221733, 18.287849, 16.743286>,  <16.870331, 18.435799, 16.622343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221733, 18.287849, 16.743286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420233, -0.297270, 0.857342,
		-0.227220, -0.880244, -0.416584,
		0.878507, -0.369867, 0.302362,
		17.485285, 18.176888, 16.833994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.740410, 17.767050, 17.059402>,  <16.870331, 18.435799, 16.622343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.740410, 17.767050, 17.059402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103260, 17.867371, 17.194592>,  <17.320971, 17.927563, 17.275705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103260, 17.867371, 17.194592>,  <16.740410, 17.767050, 17.059402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103260, 17.867371, 17.194592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279951, -0.240033, 0.929522,
		0.314250, -0.937807, -0.147527,
		0.907124, 0.250802, 0.337971,
		17.375397, 17.942612, 17.295982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.247377, 21.120947, 17.681225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.850349, 21.086216, 17.647123>,  <22.612133, 21.065378, 17.626663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.850349, 21.086216, 17.647123>,  <23.247377, 21.120947, 17.681225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.850349, 21.086216, 17.647123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106148, -0.275278, -0.955487,
		0.059494, -0.957436, 0.282449,
		-0.992569, -0.086827, -0.085253,
		22.552578, 21.060167, 17.621548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.183870, 20.424791, 17.393589>,  <23.247377, 21.120947, 17.681225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.183870, 20.424791, 17.393589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.842945, 20.620274, 17.319046>,  <22.638390, 20.737564, 17.274321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.842945, 20.620274, 17.319046>,  <23.183870, 20.424791, 17.393589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.842945, 20.620274, 17.319046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100217, -0.197105, -0.975247,
		-0.513342, -0.849891, 0.119018,
		-0.852312, 0.488708, -0.186356,
		22.587252, 20.766886, 17.263140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.851517, 20.109707, 16.905750>,  <23.183870, 20.424791, 17.393589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.851517, 20.109707, 16.905750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.613800, 20.430351, 16.879715>,  <22.471170, 20.622738, 16.864094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.613800, 20.430351, 16.879715>,  <22.851517, 20.109707, 16.905750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.613800, 20.430351, 16.879715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017190, -0.068249, -0.997520,
		-0.804064, -0.593939, 0.026780,
		-0.594294, 0.801610, -0.065086,
		22.435513, 20.670834, 16.860189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.385386, 19.890882, 16.468472>,  <22.851517, 20.109707, 16.905750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.385386, 19.890882, 16.468472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.380589, 20.290398, 16.449368>,  <22.377710, 20.530106, 16.437904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.380589, 20.290398, 16.449368>,  <22.385386, 19.890882, 16.468472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.380589, 20.290398, 16.449368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060572, -0.046950, -0.997059,
		-0.998092, -0.014850, -0.059935,
		-0.011992, 0.998787, -0.047760,
		22.376991, 20.590034, 16.435040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.747599, 20.146544, 15.985415>,  <22.385386, 19.890882, 16.468472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.747599, 20.146544, 15.985415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.041443, 20.417778, 15.994709>,  <22.217751, 20.580519, 16.000286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.041443, 20.417778, 15.994709>,  <21.747599, 20.146544, 15.985415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.041443, 20.417778, 15.994709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013764, 0.019347, -0.999718,
		-0.678347, 0.734726, 0.004879,
		0.734613, 0.678088, 0.023236,
		22.261827, 20.621204, 16.001680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.599722, 20.595150, 15.365288>,  <21.747599, 20.146544, 15.985415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.599722, 20.595150, 15.365288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.979488, 20.655956, 15.475197>,  <22.207348, 20.692440, 15.541142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.979488, 20.655956, 15.475197>,  <21.599722, 20.595150, 15.365288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.979488, 20.655956, 15.475197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258276, 0.119682, -0.958629,
		-0.178614, 0.981105, 0.074366,
		0.949416, 0.152018, 0.274773,
		22.264313, 20.701561, 15.557629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.821173, 21.123953, 15.024119>,  <21.599722, 20.595150, 15.365288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.821173, 21.123953, 15.024119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.178627, 20.964855, 15.107275>,  <22.393099, 20.869396, 15.157168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.178627, 20.964855, 15.107275>,  <21.821173, 21.123953, 15.024119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.178627, 20.964855, 15.107275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269892, 0.106181, -0.957018,
		0.358574, 0.911332, 0.202235,
		0.893635, -0.397743, 0.207888,
		22.446718, 20.845531, 15.169641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.191191, 21.471987, 14.633183>,  <21.821173, 21.123953, 15.024119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.191191, 21.471987, 14.633183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.402874, 21.140060, 14.704004>,  <22.529884, 20.940905, 14.746497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.402874, 21.140060, 14.704004>,  <22.191191, 21.471987, 14.633183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402874, 21.140060, 14.704004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405364, 0.063945, -0.911916,
		0.745399, 0.554365, 0.370217,
		0.529208, -0.829814, 0.177055,
		22.561636, 20.891117, 14.757121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.876562, 21.566002, 14.298077>,  <22.191191, 21.471987, 14.633183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.876562, 21.566002, 14.298077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.845284, 21.169853, 14.343767>,  <22.826515, 20.932163, 14.371181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.845284, 21.169853, 14.343767>,  <22.876562, 21.566002, 14.298077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.845284, 21.169853, 14.343767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368695, -0.135184, -0.919668,
		0.926255, -0.029801, 0.375717,
		-0.078198, -0.990372, 0.114227,
		22.821825, 20.872742, 14.378036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.346260, 21.241070, 13.804161>,  <22.876562, 21.566002, 14.298077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.346260, 21.241070, 13.804161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.126793, 20.917591, 13.888988>,  <22.995113, 20.723503, 13.939885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.126793, 20.917591, 13.888988>,  <23.346260, 21.241070, 13.804161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.126793, 20.917591, 13.888988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168404, -0.355363, -0.919433,
		0.818904, -0.468749, 0.331164,
		-0.548667, -0.808697, 0.212069,
		22.962193, 20.674982, 13.952609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.759060, 20.656685, 13.795681>,  <23.346260, 21.241070, 13.804161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.759060, 20.656685, 13.795681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.391018, 20.506748, 13.750250>,  <23.170193, 20.416786, 13.722991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.391018, 20.506748, 13.750250>,  <23.759060, 20.656685, 13.795681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.391018, 20.506748, 13.750250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256779, -0.358331, -0.897588,
		0.295754, -0.855040, 0.425954,
		-0.920106, -0.374841, -0.113578,
		23.114986, 20.394297, 13.716176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.746698, 19.885746, 13.707537>,  <23.759060, 20.656685, 13.795681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.746698, 19.885746, 13.707537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.399910, 20.004692, 13.547569>,  <23.191837, 20.076059, 13.451589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.399910, 20.004692, 13.547569>,  <23.746698, 19.885746, 13.707537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.399910, 20.004692, 13.547569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153929, -0.603450, -0.782403,
		-0.473991, -0.739879, 0.477400,
		-0.866971, 0.297366, -0.399918,
		23.139818, 20.093903, 13.427593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.547794, 19.233860, 13.294714>,  <23.746698, 19.885746, 13.707537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.547794, 19.233860, 13.294714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.288486, 19.518280, 13.185789>,  <23.132902, 19.688932, 13.120434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.288486, 19.518280, 13.185789>,  <23.547794, 19.233860, 13.294714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.288486, 19.518280, 13.185789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148882, -0.469115, -0.870497,
		-0.746712, -0.523775, 0.409976,
		-0.648271, 0.711049, -0.272313,
		23.094006, 19.731594, 13.104095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.896238, 18.902206, 12.879849>,  <23.547794, 19.233860, 13.294714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.896238, 18.902206, 12.879849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.942192, 19.278996, 12.753685>,  <22.969765, 19.505070, 12.677986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.942192, 19.278996, 12.753685>,  <22.896238, 18.902206, 12.879849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.942192, 19.278996, 12.753685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037526, -0.313172, -0.948955,
		-0.992669, 0.120859, -0.000630,
		0.114887, 0.941975, -0.315412,
		22.976658, 19.561588, 12.659061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.394960, 18.323238, 12.774827>,  <22.896238, 18.902206, 12.879849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.394960, 18.323238, 12.774827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.486652, 17.933903, 12.777979>,  <22.541668, 17.700300, 12.779870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.486652, 17.933903, 12.777979>,  <22.394960, 18.323238, 12.774827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.486652, 17.933903, 12.777979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045470, 0.018794, 0.998789,
		-0.972309, -0.228596, 0.048566,
		0.229232, -0.973340, 0.007880,
		22.555422, 17.641901, 12.780343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.891415, 17.875311, 13.219997>,  <22.394960, 18.323238, 12.774827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.891415, 17.875311, 13.219997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.245514, 17.690662, 13.197226>,  <22.457973, 17.579874, 13.183562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.245514, 17.690662, 13.197226>,  <21.891415, 17.875311, 13.219997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.245514, 17.690662, 13.197226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018872, -0.086650, 0.996060,
		-0.464734, -0.882836, -0.067995,
		0.885249, -0.461620, -0.056930,
		22.511089, 17.552177, 13.180146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.927099, 17.169825, 13.669246>,  <21.891415, 17.875311, 13.219997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.927099, 17.169825, 13.669246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.302799, 17.297760, 13.619432>,  <22.528219, 17.374521, 13.589544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.302799, 17.297760, 13.619432>,  <21.927099, 17.169825, 13.669246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.302799, 17.297760, 13.619432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208604, -0.243827, 0.947118,
		0.272562, -0.915560, -0.295735,
		0.939252, 0.319840, -0.124532,
		22.584576, 17.393711, 13.582073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.324839, 16.698170, 14.014244>,  <21.927099, 17.169825, 13.669246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.324839, 16.698170, 14.014244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.569965, 17.013252, 13.989014>,  <22.717041, 17.202301, 13.973875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.569965, 17.013252, 13.989014>,  <22.324839, 16.698170, 14.014244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.569965, 17.013252, 13.989014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201233, -0.078368, 0.976403,
		0.764175, -0.611048, -0.206537,
		0.612815, 0.787705, -0.063076,
		22.753809, 17.249563, 13.970091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.892248, 16.487104, 14.396991>,  <22.324839, 16.698170, 14.014244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.892248, 16.487104, 14.396991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.924454, 16.884262, 14.361929>,  <22.943777, 17.122557, 14.340892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.924454, 16.884262, 14.361929>,  <22.892248, 16.487104, 14.396991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.924454, 16.884262, 14.361929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233451, 0.066710, 0.970078,
		0.969030, -0.098568, -0.226420,
		0.080514, 0.992892, -0.087655,
		22.948608, 17.182129, 14.335632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.536993, 16.609678, 14.712797>,  <22.892248, 16.487104, 14.396991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.536993, 16.609678, 14.712797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.334995, 16.954876, 14.718798>,  <23.213797, 17.161995, 14.722398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.334995, 16.954876, 14.718798>,  <23.536993, 16.609678, 14.712797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.334995, 16.954876, 14.718798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213049, 0.107788, 0.971078,
		0.836416, 0.493584, -0.238292,
		-0.504993, 0.862993, 0.015002,
		23.183496, 17.213774, 14.723298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.928116, 16.951550, 15.236453>,  <23.536993, 16.609678, 14.712797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.928116, 16.951550, 15.236453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.577271, 17.139954, 15.198891>,  <23.366762, 17.252996, 15.176353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.577271, 17.139954, 15.198891>,  <23.928116, 16.951550, 15.236453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.577271, 17.139954, 15.198891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081976, 0.339474, 0.937037,
		0.473233, 0.814190, -0.336369,
		-0.877115, 0.471011, -0.093906,
		23.314137, 17.281258, 15.170719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.994072, 17.532145, 15.718010>,  <23.928116, 16.951550, 15.236453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.994072, 17.532145, 15.718010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.603821, 17.487835, 15.642241>,  <23.369671, 17.461248, 15.596779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.603821, 17.487835, 15.642241>,  <23.994072, 17.532145, 15.718010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.603821, 17.487835, 15.642241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216436, 0.343526, 0.913863,
		-0.036162, 0.932587, -0.359129,
		-0.975627, -0.110776, -0.189423,
		23.311132, 17.454601, 15.585414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.710409, 18.070896, 16.122562>,  <23.994072, 17.532145, 15.718010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.710409, 18.070896, 16.122562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.393730, 17.847012, 16.024630>,  <23.203724, 17.712681, 15.965870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.393730, 17.847012, 16.024630>,  <23.710409, 18.070896, 16.122562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.393730, 17.847012, 16.024630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531897, 0.434387, 0.726907,
		-0.300506, 0.705714, -0.641610,
		-0.791695, -0.559711, -0.244831,
		23.156221, 17.679098, 15.951180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.167213, 18.515511, 16.203114>,  <23.710409, 18.070896, 16.122562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.167213, 18.515511, 16.203114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.993820, 18.155144, 16.211491>,  <22.889784, 17.938923, 16.216516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.993820, 18.155144, 16.211491>,  <23.167213, 18.515511, 16.203114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.993820, 18.155144, 16.211491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513509, 0.266042, 0.815800,
		-0.740542, 0.342879, -0.577954,
		-0.433481, -0.900919, 0.020944,
		22.863775, 17.884869, 16.217773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.495419, 18.661169, 16.471436>,  <23.167213, 18.515511, 16.203114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.495419, 18.661169, 16.471436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.577267, 18.273998, 16.529739>,  <22.626375, 18.041695, 16.564722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.577267, 18.273998, 16.529739>,  <22.495419, 18.661169, 16.471436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.577267, 18.273998, 16.529739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472642, 0.032698, 0.880648,
		-0.857170, -0.249089, -0.450793,
		0.204619, -0.967928, 0.145758,
		22.638653, 17.983620, 16.573467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830740, 18.325968, 16.607885>,  <22.495419, 18.661169, 16.471436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830740, 18.325968, 16.607885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.120537, 18.088203, 16.747478>,  <22.294415, 17.945545, 16.831234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.120537, 18.088203, 16.747478>,  <21.830740, 18.325968, 16.607885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.120537, 18.088203, 16.747478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400619, 0.048881, 0.914940,
		-0.560908, -0.802675, -0.202718,
		0.724490, -0.594410, 0.348985,
		22.337883, 17.909880, 16.852175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557419, 17.856989, 17.220295>,  <21.830740, 18.325968, 16.607885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557419, 17.856989, 17.220295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.954964, 17.830143, 17.255472>,  <22.193491, 17.814035, 17.276579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.954964, 17.830143, 17.255472>,  <21.557419, 17.856989, 17.220295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.954964, 17.830143, 17.255472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086822, 0.019412, 0.996035,
		-0.068556, -0.997556, 0.013466,
		0.993862, -0.067115, 0.087941,
		22.253122, 17.810009, 17.281855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.784988, 17.334457, 17.591095>,  <21.557419, 17.856989, 17.220295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.784988, 17.334457, 17.591095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.113789, 17.559090, 17.628929>,  <22.311068, 17.693869, 17.651628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.113789, 17.559090, 17.628929>,  <21.784988, 17.334457, 17.591095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.113789, 17.559090, 17.628929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098944, -0.022727, 0.994833,
		0.560827, -0.827111, 0.036884,
		0.821999, 0.561579, 0.094584,
		22.360388, 17.727564, 17.657305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.689816, 16.666384, 18.054987>,  <21.784988, 17.334457, 17.591095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.689816, 16.666384, 18.054987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.322117, 16.532730, 18.138258>,  <21.101498, 16.452538, 18.188221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.322117, 16.532730, 18.138258>,  <21.689816, 16.666384, 18.054987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.322117, 16.532730, 18.138258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047449, -0.430910, -0.901147,
		0.390812, -0.838254, 0.380258,
		-0.919247, -0.334136, 0.208179,
		21.046343, 16.432489, 18.200712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.602537, 15.912194, 17.821367>,  <21.689816, 16.666384, 18.054987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.602537, 15.912194, 17.821367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.240387, 16.081264, 17.837557>,  <21.023096, 16.182707, 17.847271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.240387, 16.081264, 17.837557>,  <21.602537, 15.912194, 17.821367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.240387, 16.081264, 17.837557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220505, -0.386574, -0.895510,
		-0.362863, -0.819699, 0.443197,
		-0.905377, 0.422674, 0.040474,
		20.968773, 16.208067, 17.849699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.199404, 15.334367, 17.637650>,  <21.602537, 15.912194, 17.821367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.199404, 15.334367, 17.637650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.952282, 15.644314, 17.584135>,  <20.804008, 15.830282, 17.552027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.952282, 15.644314, 17.584135>,  <21.199404, 15.334367, 17.637650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952282, 15.644314, 17.584135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243526, -0.350317, -0.904419,
		-0.747674, -0.526171, 0.405127,
		-0.617802, 0.774869, -0.133787,
		20.766941, 15.876775, 17.543999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.547178, 15.046170, 17.372698>,  <21.199404, 15.334367, 17.637650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.547178, 15.046170, 17.372698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.528446, 15.435986, 17.284988>,  <20.517208, 15.669875, 17.232363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.528446, 15.435986, 17.284988>,  <20.547178, 15.046170, 17.372698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528446, 15.435986, 17.284988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509083, -0.212151, -0.834162,
		-0.859443, 0.072565, 0.506056,
		-0.046829, 0.974539, -0.219274,
		20.514397, 15.728347, 17.219206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.798931, 15.258098, 17.171984>,  <20.547178, 15.046170, 17.372698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.798931, 15.258098, 17.171984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.069733, 15.504295, 17.010574>,  <20.232214, 15.652014, 16.913729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.069733, 15.504295, 17.010574>,  <19.798931, 15.258098, 17.171984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069733, 15.504295, 17.010574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345582, -0.218230, -0.912660,
		-0.649798, 0.757326, 0.064960,
		0.677005, 0.615494, -0.403524,
		20.272835, 15.688944, 16.889517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.420885, 15.397067, 16.590105>,  <19.798931, 15.258098, 17.171984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.420885, 15.397067, 16.590105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.795444, 15.516888, 16.516977>,  <20.020180, 15.588780, 16.473101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.795444, 15.516888, 16.516977>,  <19.420885, 15.397067, 16.590105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.795444, 15.516888, 16.516977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108418, -0.248534, -0.962537,
		-0.333766, 0.921141, -0.200250,
		0.936400, 0.299552, -0.182820,
		20.076365, 15.606753, 16.462132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.324736, 15.751610, 15.913306>,  <19.420885, 15.397067, 16.590105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.324736, 15.751610, 15.913306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.714645, 15.667393, 15.942928>,  <19.948591, 15.616862, 15.960701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.714645, 15.667393, 15.942928>,  <19.324736, 15.751610, 15.913306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.714645, 15.667393, 15.942928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012324, -0.280525, -0.959767,
		0.222845, 0.936471, -0.270854,
		0.974776, -0.210542, 0.074055,
		20.007078, 15.604230, 15.965145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.557953, 16.045889, 15.262822>,  <19.324736, 15.751610, 15.913306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.557953, 16.045889, 15.262822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.844753, 15.791817, 15.377682>,  <20.016834, 15.639374, 15.446598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.844753, 15.791817, 15.377682>,  <19.557953, 16.045889, 15.262822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.844753, 15.791817, 15.377682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223414, -0.180808, -0.957807,
		0.660299, 0.750903, 0.012268,
		0.717002, -0.635180, 0.287149,
		20.059855, 15.601263, 15.463826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.060427, 16.129635, 14.788496>,  <19.557953, 16.045889, 15.262822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.060427, 16.129635, 14.788496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.132336, 15.776787, 14.962643>,  <20.175482, 15.565078, 15.067130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.132336, 15.776787, 14.962643>,  <20.060427, 16.129635, 14.788496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.132336, 15.776787, 14.962643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162029, -0.409978, -0.897588,
		0.970273, 0.231903, 0.069226,
		0.179772, -0.882122, 0.435366,
		20.186268, 15.512150, 15.093252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.684841, 15.996748, 14.568549>,  <20.060427, 16.129635, 14.788496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.684841, 15.996748, 14.568549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.500706, 15.656143, 14.668962>,  <20.390224, 15.451780, 14.729211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.500706, 15.656143, 14.668962>,  <20.684841, 15.996748, 14.568549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.500706, 15.656143, 14.668962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118901, -0.339369, -0.933108,
		0.879746, -0.399696, 0.257470,
		-0.460337, -0.851511, 0.251034,
		20.362604, 15.400690, 14.744273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.107822, 15.495799, 14.289295>,  <20.684841, 15.996748, 14.568549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.107822, 15.495799, 14.289295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.765713, 15.297661, 14.350145>,  <20.560448, 15.178778, 14.386655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.765713, 15.297661, 14.350145>,  <21.107822, 15.495799, 14.289295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765713, 15.297661, 14.350145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097996, -0.442898, -0.891200,
		0.508828, -0.747312, 0.427340,
		-0.855273, -0.495345, 0.152125,
		20.509130, 15.149057, 14.395782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.290966, 14.839149, 13.968641>,  <21.107822, 15.495799, 14.289295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.290966, 14.839149, 13.968641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.893044, 14.848797, 14.008198>,  <20.654289, 14.854586, 14.031932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.893044, 14.848797, 14.008198>,  <21.290966, 14.839149, 13.968641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.893044, 14.848797, 14.008198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096394, -0.535349, -0.839112,
		0.032703, -0.844287, 0.534894,
		-0.994806, 0.024120, 0.098892,
		20.594603, 14.856032, 14.037866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.010189, 14.163716, 13.814879>,  <21.290966, 14.839149, 13.968641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.010189, 14.163716, 13.814879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.714321, 14.418800, 13.728889>,  <20.536800, 14.571851, 13.677296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.714321, 14.418800, 13.728889>,  <21.010189, 14.163716, 13.814879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714321, 14.418800, 13.728889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229642, -0.539446, -0.810100,
		-0.632577, -0.549840, 0.545457,
		-0.739670, 0.637710, -0.214975,
		20.492420, 14.610113, 13.664397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.439707, 13.753340, 13.342513>,  <21.010189, 14.163716, 13.814879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.439707, 13.753340, 13.342513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.394676, 14.150776, 13.338409>,  <20.367659, 14.389237, 13.335947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.394676, 14.150776, 13.338409>,  <20.439707, 13.753340, 13.342513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.394676, 14.150776, 13.338409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302274, -0.044080, -0.952201,
		-0.946550, -0.104093, 0.305299,
		-0.112575, 0.993590, -0.010259,
		20.360903, 14.448853, 13.335332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<17.354315, 17.016233, 17.619097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.489479, 17.387375, 17.682222>,  <17.570578, 17.610060, 17.720098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.489479, 17.387375, 17.682222>,  <17.354315, 17.016233, 17.619097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.489479, 17.387375, 17.682222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181311, -0.100361, 0.978291,
		0.923549, -0.359188, 0.134317,
		0.337910, 0.927853, 0.157813,
		17.590853, 17.665731, 17.729567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638504, 16.991510, 18.259975>,  <17.354315, 17.016233, 17.619097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638504, 16.991510, 18.259975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.588902, 17.383408, 18.197077>,  <17.559139, 17.618546, 18.159338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.588902, 17.383408, 18.197077>,  <17.638504, 16.991510, 18.259975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.588902, 17.383408, 18.197077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147363, 0.138527, 0.979334,
		0.981278, 0.144615, 0.127200,
		-0.124006, 0.979743, -0.157245,
		17.551701, 17.677330, 18.149904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.066069, 17.392942, 18.693073>,  <17.638504, 16.991510, 18.259975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.066069, 17.392942, 18.693073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.758259, 17.636932, 18.617434>,  <17.573572, 17.783327, 18.572050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.758259, 17.636932, 18.617434>,  <18.066069, 17.392942, 18.693073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.758259, 17.636932, 18.617434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136662, 0.131959, 0.981789,
		0.623822, 0.781355, -0.018185,
		-0.769526, 0.609976, -0.189100,
		17.527401, 17.819925, 18.560703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052258, 17.850042, 19.289839>,  <18.066069, 17.392942, 18.693073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.052258, 17.850042, 19.289839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.698853, 17.888393, 19.106443>,  <17.486809, 17.911404, 18.996407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.698853, 17.888393, 19.106443>,  <18.052258, 17.850042, 19.289839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.698853, 17.888393, 19.106443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442373, 0.150998, 0.884028,
		0.153989, 0.983874, -0.090995,
		-0.883512, 0.095877, -0.458491,
		17.433800, 17.917156, 18.968897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734127, 18.529291, 19.550537>,  <18.052258, 17.850042, 19.289839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734127, 18.529291, 19.550537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.417774, 18.340038, 19.395283>,  <17.227962, 18.226486, 19.302130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.417774, 18.340038, 19.395283>,  <17.734127, 18.529291, 19.550537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417774, 18.340038, 19.395283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433933, -0.013647, 0.900842,
		-0.431514, 0.880886, -0.194515,
		-0.790884, -0.473132, -0.388134,
		17.180510, 18.198099, 19.278843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104483, 19.012405, 19.564938>,  <17.734127, 18.529291, 19.550537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.104483, 19.012405, 19.564938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.991516, 18.629089, 19.547394>,  <16.923737, 18.399099, 19.536867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.991516, 18.629089, 19.547394>,  <17.104483, 19.012405, 19.564938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.991516, 18.629089, 19.547394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579054, 0.133844, 0.804228,
		-0.764811, 0.252526, -0.592700,
		-0.282418, -0.958288, -0.043860,
		16.906790, 18.341602, 19.534235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414965, 19.018784, 19.826828>,  <17.104483, 19.012405, 19.564938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.414965, 19.018784, 19.826828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.547722, 18.642498, 19.854839>,  <16.627377, 18.416727, 19.871647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.547722, 18.642498, 19.854839>,  <16.414965, 19.018784, 19.826828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.547722, 18.642498, 19.854839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424252, -0.082550, 0.901774,
		-0.842530, -0.329004, -0.426497,
		0.331895, -0.940713, 0.070030,
		16.647291, 18.360285, 19.875849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.910186, 18.733665, 20.125050>,  <16.414965, 19.018784, 19.826828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.910186, 18.733665, 20.125050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.178432, 18.449905, 20.211790>,  <16.339380, 18.279650, 20.263834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.178432, 18.449905, 20.211790>,  <15.910186, 18.733665, 20.125050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.178432, 18.449905, 20.211790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280318, 0.028305, 0.959490,
		-0.686801, -0.704236, -0.179876,
		0.670616, -0.709401, 0.216850,
		16.379618, 18.237085, 20.276846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599240, 18.213085, 20.541353>,  <15.910186, 18.733665, 20.125050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599240, 18.213085, 20.541353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.992290, 18.176048, 20.605698>,  <16.228119, 18.153826, 20.644304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.992290, 18.176048, 20.605698>,  <15.599240, 18.213085, 20.541353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.992290, 18.176048, 20.605698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173306, -0.147439, 0.973769,
		-0.066444, -0.984728, -0.160924,
		0.982624, -0.092590, 0.160863,
		16.287077, 18.148272, 20.653955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599809, 17.705475, 20.952637>,  <15.599240, 18.213085, 20.541353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599809, 17.705475, 20.952637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.961865, 17.866940, 21.005962>,  <16.179100, 17.963820, 21.037958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.961865, 17.866940, 21.005962>,  <15.599809, 17.705475, 20.952637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.961865, 17.866940, 21.005962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143508, -0.005049, 0.989636,
		0.400154, -0.914893, 0.053358,
		0.905142, 0.403664, 0.133315,
		16.233408, 17.988039, 21.045958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.854352, 17.426790, 21.572294>,  <15.599809, 17.705475, 20.952637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.854352, 17.426790, 21.572294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.056759, 17.767143, 21.515802>,  <16.178204, 17.971355, 21.481907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.056759, 17.767143, 21.515802>,  <15.854352, 17.426790, 21.572294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.056759, 17.767143, 21.515802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008809, 0.168832, 0.985606,
		0.862478, -0.497489, 0.092927,
		0.506017, 0.850882, -0.141231,
		16.208565, 18.022408, 21.473433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332876, 17.365559, 22.097857>,  <15.854352, 17.426790, 21.572294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332876, 17.365559, 22.097857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.329773, 17.745457, 21.972687>,  <16.327911, 17.973396, 21.897585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.329773, 17.745457, 21.972687>,  <16.332876, 17.365559, 22.097857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.329773, 17.745457, 21.972687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205309, 0.304756, 0.930039,
		0.978667, 0.071460, 0.192627,
		-0.007756, 0.949746, -0.312925,
		16.327446, 18.030380, 21.878809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878992, 17.808159, 22.401289>,  <16.332876, 17.365559, 22.097857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.878992, 17.808159, 22.401289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.547356, 18.013905, 22.313616>,  <16.348373, 18.137352, 22.261013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.547356, 18.013905, 22.313616>,  <16.878992, 17.808159, 22.401289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.547356, 18.013905, 22.313616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166356, 0.147324, 0.974998,
		0.533795, 0.844823, -0.036578,
		-0.829089, 0.514364, -0.219182,
		16.298630, 18.168213, 22.247862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668421, 18.194374, 22.583233>,  <16.878992, 17.808159, 22.401289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.668421, 18.194374, 22.583233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.658928, 18.060791, 22.960150>,  <17.653233, 17.980642, 23.186300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.658928, 18.060791, 22.960150>,  <17.668421, 18.194374, 22.583233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.658928, 18.060791, 22.960150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021212, -0.942175, -0.334449,
		0.999493, -0.027925, 0.015275,
		-0.023731, -0.333956, 0.942290,
		17.651808, 17.960604, 23.242836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409210, 18.171967, 22.735411>,  <17.668421, 18.194374, 22.583233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.409210, 18.171967, 22.735411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.745079, 18.129841, 22.948526>,  <18.946600, 18.104565, 23.076395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.745079, 18.129841, 22.948526>,  <18.409210, 18.171967, 22.735411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.745079, 18.129841, 22.948526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466289, -0.363155, -0.806655,
		0.278438, 0.925757, -0.255822,
		0.839670, -0.105316, 0.532787,
		18.996981, 18.098246, 23.108362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.044731, 18.495459, 22.481691>,  <18.409210, 18.171967, 22.735411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.044731, 18.495459, 22.481691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.148392, 18.174351, 22.696503>,  <19.210588, 17.981686, 22.825390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.148392, 18.174351, 22.696503>,  <19.044731, 18.495459, 22.481691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.148392, 18.174351, 22.696503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445351, -0.394064, -0.803975,
		0.857031, 0.447518, 0.255392,
		0.259153, -0.802771, 0.537028,
		19.226137, 17.933519, 22.857611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767296, 18.467762, 22.413509>,  <19.044731, 18.495459, 22.481691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767296, 18.467762, 22.413509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.644382, 18.099995, 22.511690>,  <19.570635, 17.879333, 22.570599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.644382, 18.099995, 22.511690>,  <19.767296, 18.467762, 22.413509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.644382, 18.099995, 22.511690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564971, -0.383814, -0.730407,
		0.765758, -0.085769, 0.637385,
		-0.307283, -0.919419, 0.245451,
		19.552198, 17.824169, 22.585325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.389786, 18.046824, 22.448055>,  <19.767296, 18.467762, 22.413509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.389786, 18.046824, 22.448055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.095238, 17.779366, 22.406721>,  <19.918509, 17.618891, 22.381920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.095238, 17.779366, 22.406721>,  <20.389786, 18.046824, 22.448055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.095238, 17.779366, 22.406721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538756, -0.487094, -0.687372,
		0.409272, -0.561832, 0.718916,
		-0.736368, -0.668643, -0.103337,
		19.874327, 17.578773, 22.375721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.775589, 17.528616, 22.263367>,  <20.389786, 18.046824, 22.448055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.775589, 17.528616, 22.263367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.405262, 17.420094, 22.158100>,  <20.183065, 17.354980, 22.094940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.405262, 17.420094, 22.158100>,  <20.775589, 17.528616, 22.263367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.405262, 17.420094, 22.158100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369575, -0.503829, -0.780750,
		0.079230, -0.820091, 0.566721,
		-0.925817, -0.271305, -0.263166,
		20.127518, 17.338701, 22.079149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.872768, 16.881561, 22.067711>,  <20.775589, 17.528616, 22.263367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.872768, 16.881561, 22.067711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.520248, 16.961433, 21.896393>,  <20.308737, 17.009357, 21.793602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.520248, 16.961433, 21.896393>,  <20.872768, 16.881561, 22.067711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520248, 16.961433, 21.896393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387227, -0.214331, -0.896726,
		-0.270856, -0.956133, 0.111568,
		-0.881302, 0.199681, -0.428293,
		20.255857, 17.021338, 21.767904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.655657, 16.318577, 21.725319>,  <20.872768, 16.881561, 22.067711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.655657, 16.318577, 21.725319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.437489, 16.602982, 21.547791>,  <20.306587, 16.773624, 21.441273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.437489, 16.602982, 21.547791>,  <20.655657, 16.318577, 21.725319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437489, 16.602982, 21.547791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400918, -0.243701, -0.883105,
		-0.736059, -0.659599, -0.152139,
		-0.545419, 0.711013, -0.443823,
		20.273863, 16.816286, 21.414644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.376768, 16.012886, 21.052299>,  <20.655657, 16.318577, 21.725319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.376768, 16.012886, 21.052299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.337688, 16.408947, 21.012188>,  <20.314241, 16.646584, 20.988121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.337688, 16.408947, 21.012188>,  <20.376768, 16.012886, 21.052299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.337688, 16.408947, 21.012188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137574, -0.086359, -0.986720,
		-0.985662, -0.110197, -0.127782,
		-0.097698, 0.990151, -0.100281,
		20.308378, 16.705992, 20.982103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.903170, 16.081306, 20.491467>,  <20.376768, 16.012886, 21.052299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.903170, 16.081306, 20.491467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.093082, 16.431408, 20.528378>,  <20.207031, 16.641468, 20.550524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.093082, 16.431408, 20.528378>,  <19.903170, 16.081306, 20.491467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093082, 16.431408, 20.528378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139028, 0.028947, -0.989865,
		-0.869052, 0.482801, -0.107941,
		0.474783, 0.875251, 0.092280,
		20.235518, 16.693983, 20.556061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.611893, 16.537407, 20.007950>,  <19.903170, 16.081306, 20.491467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.611893, 16.537407, 20.007950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.970947, 16.697731, 20.081268>,  <20.186380, 16.793926, 20.125259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.970947, 16.697731, 20.081268>,  <19.611893, 16.537407, 20.007950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.970947, 16.697731, 20.081268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233615, -0.080041, -0.969029,
		-0.373725, 0.912658, -0.165483,
		0.897638, 0.400810, 0.183297,
		20.240238, 16.817974, 20.136257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.643551, 16.970825, 19.483538>,  <19.611893, 16.537407, 20.007950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.643551, 16.970825, 19.483538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.018219, 16.904316, 19.606825>,  <20.243021, 16.864410, 19.680798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.018219, 16.904316, 19.606825>,  <19.643551, 16.970825, 19.483538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.018219, 16.904316, 19.606825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290767, -0.121299, -0.949074,
		0.195191, 0.978591, -0.065271,
		0.936672, -0.166272, 0.308218,
		20.299221, 16.854435, 19.699291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.117147, 17.422523, 19.140076>,  <19.643551, 16.970825, 19.483538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.117147, 17.422523, 19.140076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.345001, 17.114685, 19.255480>,  <20.481714, 16.929983, 19.324722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.345001, 17.114685, 19.255480>,  <20.117147, 17.422523, 19.140076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345001, 17.114685, 19.255480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362847, -0.079496, -0.928452,
		0.737467, 0.633565, 0.233961,
		0.569636, -0.769595, 0.288512,
		20.515892, 16.883806, 19.342033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682325, 17.514639, 18.709816>,  <20.117147, 17.422523, 19.140076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682325, 17.514639, 18.709816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.731270, 17.148613, 18.863533>,  <20.760637, 16.928997, 18.955763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.731270, 17.148613, 18.863533>,  <20.682325, 17.514639, 18.709816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.731270, 17.148613, 18.863533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206883, -0.355179, -0.911618,
		0.970684, 0.191051, 0.145851,
		0.122362, -0.915067, 0.384292,
		20.767979, 16.874092, 18.978821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.345079, 17.233801, 18.519951>,  <20.682325, 17.514639, 18.709816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.345079, 17.233801, 18.519951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.098469, 16.924835, 18.580965>,  <20.950502, 16.739456, 18.617573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.098469, 16.924835, 18.580965>,  <21.345079, 17.233801, 18.519951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098469, 16.924835, 18.580965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143310, -0.300594, -0.942924,
		0.774180, -0.559480, 0.296020,
		-0.616529, -0.772415, 0.152535,
		20.913509, 16.693111, 18.626726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.106733, 17.162792, 18.357744>,  <21.345079, 17.233801, 18.519951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.106733, 17.162792, 18.357744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.266697, 17.507782, 18.233671>,  <22.362675, 17.714775, 18.159227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.266697, 17.507782, 18.233671>,  <22.106733, 17.162792, 18.357744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.266697, 17.507782, 18.233671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080552, 0.304038, 0.949248,
		0.913009, -0.404597, 0.052113,
		0.399907, 0.862474, -0.310181,
		22.386669, 17.766525, 18.140617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.668886, 17.216534, 18.699387>,  <22.106733, 17.162792, 18.357744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.668886, 17.216534, 18.699387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.582390, 17.594257, 18.600178>,  <22.530491, 17.820892, 18.540651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.582390, 17.594257, 18.600178>,  <22.668886, 17.216534, 18.699387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.582390, 17.594257, 18.600178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146797, 0.282593, 0.947941,
		0.965241, 0.168576, -0.199731,
		-0.216243, 0.944311, -0.248024,
		22.517517, 17.877550, 18.525770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.276142, 17.673229, 18.897669>,  <22.668886, 17.216534, 18.699387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.276142, 17.673229, 18.897669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.962147, 17.916454, 18.850246>,  <22.773750, 18.062389, 18.821793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.962147, 17.916454, 18.850246>,  <23.276142, 17.673229, 18.897669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.962147, 17.916454, 18.850246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103536, 0.317443, 0.942608,
		0.610799, 0.727661, -0.312145,
		-0.784987, 0.608063, -0.118555,
		22.726650, 18.098873, 18.814680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.502052, 18.382961, 19.157230>,  <23.276142, 17.673229, 18.897669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.502052, 18.382961, 19.157230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.102474, 18.366951, 19.166252>,  <22.862728, 18.357344, 19.171665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.102474, 18.366951, 19.166252>,  <23.502052, 18.382961, 19.157230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.102474, 18.366951, 19.166252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008706, 0.317148, 0.948336,
		-0.045113, 0.947531, -0.316464,
		-0.998944, -0.040027, 0.022557,
		22.802792, 18.354942, 19.173019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.283705, 18.971626, 19.507835>,  <23.502052, 18.382961, 19.157230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.283705, 18.971626, 19.507835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.947056, 18.756824, 19.530809>,  <22.745068, 18.627943, 19.544594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.947056, 18.756824, 19.530809>,  <23.283705, 18.971626, 19.507835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.947056, 18.756824, 19.530809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180406, 0.379782, 0.907314,
		-0.509047, 0.753253, -0.416511,
		-0.841621, -0.537006, 0.057435,
		22.694571, 18.595722, 19.548040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.763544, 19.409201, 19.721764>,  <23.283705, 18.971626, 19.507835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.763544, 19.409201, 19.721764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.624207, 19.046577, 19.817097>,  <22.540604, 18.829002, 19.874296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.624207, 19.046577, 19.817097>,  <22.763544, 19.409201, 19.721764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.624207, 19.046577, 19.817097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251602, 0.335357, 0.907872,
		-0.902968, 0.256288, -0.344912,
		-0.348346, -0.906560, 0.238335,
		22.519703, 18.774609, 19.888597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.074810, 19.462545, 19.948004>,  <22.763544, 19.409201, 19.721764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.074810, 19.462545, 19.948004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.194016, 19.110260, 20.095261>,  <22.265539, 18.898888, 20.183615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.194016, 19.110260, 20.095261>,  <22.074810, 19.462545, 19.948004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194016, 19.110260, 20.095261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350579, 0.257733, 0.900371,
		-0.887853, -0.397384, -0.231953,
		0.298012, -0.880715, 0.368143,
		22.283419, 18.846045, 20.205704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.353287, 19.822569, 20.047802>,  <22.074810, 19.462545, 19.948004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.353287, 19.822569, 20.047802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.407726, 20.209087, 20.135210>,  <21.440390, 20.440998, 20.187654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.407726, 20.209087, 20.135210>,  <21.353287, 19.822569, 20.047802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.407726, 20.209087, 20.135210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214472, 0.186605, -0.958739,
		-0.967202, 0.177350, -0.181846,
		0.136099, 0.966295, 0.218521,
		21.448555, 20.498976, 20.200766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.977261, 20.168642, 19.576530>,  <21.353287, 19.822569, 20.047802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.977261, 20.168642, 19.576530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.235573, 20.444210, 19.708202>,  <21.390560, 20.609550, 19.787205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.235573, 20.444210, 19.708202>,  <20.977261, 20.168642, 19.576530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.235573, 20.444210, 19.708202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237904, 0.228111, -0.944122,
		-0.725512, 0.688010, -0.016586,
		0.645782, 0.688918, 0.329177,
		21.429308, 20.650885, 19.806955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.832499, 20.821821, 19.157644>,  <20.977261, 20.168642, 19.576530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.832499, 20.821821, 19.157644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.209335, 20.829788, 19.291552>,  <21.435436, 20.834568, 19.371895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.209335, 20.829788, 19.291552>,  <20.832499, 20.821821, 19.157644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.209335, 20.829788, 19.291552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314320, 0.295571, -0.902131,
		-0.116914, 0.955113, 0.272194,
		0.942090, 0.019916, 0.334767,
		21.491962, 20.835762, 19.391981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.110653, 21.554440, 19.046764>,  <20.832499, 20.821821, 19.157644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.110653, 21.554440, 19.046764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.419685, 21.301128, 19.064987>,  <21.605104, 21.149141, 19.075920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.419685, 21.301128, 19.064987>,  <21.110653, 21.554440, 19.046764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.419685, 21.301128, 19.064987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206231, 0.182440, -0.961345,
		0.600488, 0.752113, 0.271552,
		0.772582, -0.633279, 0.045556,
		21.651461, 21.111145, 19.078653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.347036, 21.740971, 18.497612>,  <21.110653, 21.554440, 19.046764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.347036, 21.740971, 18.497612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.610046, 21.454567, 18.591417>,  <21.767853, 21.282724, 18.647699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.610046, 21.454567, 18.591417>,  <21.347036, 21.740971, 18.497612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610046, 21.454567, 18.591417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359355, 0.024461, -0.932880,
		0.662213, 0.697664, 0.273385,
		0.657524, -0.716008, 0.234511,
		21.807304, 21.239765, 18.661770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.013794, 21.960577, 18.324848>,  <21.347036, 21.740971, 18.497612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.013794, 21.960577, 18.324848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.044090, 21.562206, 18.344398>,  <22.062267, 21.323183, 18.356129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.044090, 21.562206, 18.344398>,  <22.013794, 21.960577, 18.324848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.044090, 21.562206, 18.344398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330134, -0.021207, -0.943696,
		0.940891, 0.087611, 0.327184,
		0.075740, -0.995929, 0.048877,
		22.066813, 21.263428, 18.359062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.777527, 21.759245, 18.210346>,  <22.013794, 21.960577, 18.324848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.777527, 21.759245, 18.210346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.535526, 21.457005, 18.109917>,  <22.390326, 21.275660, 18.049658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.535526, 21.457005, 18.109917>,  <22.777527, 21.759245, 18.210346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.535526, 21.457005, 18.109917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465219, -0.079548, -0.881614,
		0.646175, -0.650185, 0.399647,
		-0.605003, -0.755600, -0.251076,
		22.354025, 21.230324, 18.034594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<15.423403, 21.190895, 21.225616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.713529, 20.915829, 21.212769>,  <15.887604, 20.750788, 21.205059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.713529, 20.915829, 21.212769>,  <15.423403, 21.190895, 21.225616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.713529, 20.915829, 21.212769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122177, 0.174504, -0.977047,
		0.677489, 0.704742, 0.210588,
		0.725314, -0.687668, -0.032121,
		15.931123, 20.709528, 21.203133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063646, 21.539885, 20.975803>,  <15.423403, 21.190895, 21.225616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063646, 21.539885, 20.975803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.018215, 21.151115, 20.893377>,  <15.990957, 20.917854, 20.843922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.018215, 21.151115, 20.893377>,  <16.063646, 21.539885, 20.975803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.018215, 21.151115, 20.893377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297421, 0.164634, -0.940445,
		0.947967, -0.168100, 0.270372,
		-0.113576, -0.971925, -0.206064,
		15.984142, 20.859537, 20.831558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.738159, 21.208721, 20.684818>,  <16.063646, 21.539885, 20.975803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.738159, 21.208721, 20.684818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.454010, 20.951195, 20.571068>,  <16.283520, 20.796679, 20.502817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.454010, 20.951195, 20.571068>,  <16.738159, 21.208721, 20.684818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.454010, 20.951195, 20.571068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449532, -0.104138, -0.887173,
		0.541563, -0.758060, 0.363393,
		-0.710373, -0.643817, -0.284375,
		16.240898, 20.758049, 20.485756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.052671, 20.640718, 20.368303>,  <16.738159, 21.208721, 20.684818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.052671, 20.640718, 20.368303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.690994, 20.592022, 20.204540>,  <16.473988, 20.562803, 20.106283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.690994, 20.592022, 20.204540>,  <17.052671, 20.640718, 20.368303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690994, 20.592022, 20.204540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416658, -0.040510, -0.908160,
		0.093977, -0.991735, 0.087354,
		-0.904193, -0.121743, -0.409407,
		16.419737, 20.555500, 20.081718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.139294, 20.162085, 19.758884>,  <17.052671, 20.640718, 20.368303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.139294, 20.162085, 19.758884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.790253, 20.350975, 19.708982>,  <16.580828, 20.464310, 19.679041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.790253, 20.350975, 19.708982>,  <17.139294, 20.162085, 19.758884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.790253, 20.350975, 19.708982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178030, 0.069664, -0.981556,
		-0.454828, -0.878719, -0.144860,
		-0.872603, 0.472228, -0.124753,
		16.528471, 20.492643, 19.671556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718189, 19.786207, 19.242363>,  <17.139294, 20.162085, 19.758884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718189, 19.786207, 19.242363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.573044, 20.158943, 19.242661>,  <16.485956, 20.382586, 19.242840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.573044, 20.158943, 19.242661>,  <16.718189, 19.786207, 19.242363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.573044, 20.158943, 19.242661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002602, -0.000213, -0.999997,
		-0.931839, -0.362863, 0.002502,
		-0.362863, 0.931842, 0.000746,
		16.464186, 20.438496, 19.242884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.212688, 19.829279, 18.775875>,  <16.718189, 19.786207, 19.242363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.212688, 19.829279, 18.775875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.331917, 20.208321, 18.821825>,  <16.403454, 20.435745, 18.849394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.331917, 20.208321, 18.821825>,  <16.212688, 19.829279, 18.775875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.331917, 20.208321, 18.821825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001186, 0.119976, -0.992776,
		-0.954543, 0.296055, 0.034638,
		0.298073, 0.947606, 0.114874,
		16.421339, 20.492603, 18.856287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842319, 20.217079, 18.318319>,  <16.212688, 19.829279, 18.775875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842319, 20.217079, 18.318319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.127594, 20.479630, 18.416735>,  <16.298759, 20.637159, 18.475784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.127594, 20.479630, 18.416735>,  <15.842319, 20.217079, 18.318319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.127594, 20.479630, 18.416735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151271, 0.198612, -0.968334,
		-0.684457, 0.727821, 0.042357,
		0.713187, 0.656376, 0.246040,
		16.341551, 20.676542, 18.490547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.756157, 20.879992, 17.867640>,  <15.842319, 20.217079, 18.318319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.756157, 20.879992, 17.867640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.143974, 20.851315, 17.961315>,  <16.376665, 20.834108, 18.017521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.143974, 20.851315, 17.961315>,  <15.756157, 20.879992, 17.867640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143974, 20.851315, 17.961315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244280, 0.214011, -0.945794,
		0.017688, 0.974197, 0.225006,
		0.969543, -0.071694, 0.234191,
		16.434837, 20.829807, 18.031572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060415, 21.452826, 17.519901>,  <15.756157, 20.879992, 17.867640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.060415, 21.452826, 17.519901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.365013, 21.206177, 17.599804>,  <16.547771, 21.058187, 17.647745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.365013, 21.206177, 17.599804>,  <16.060415, 21.452826, 17.519901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365013, 21.206177, 17.599804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376056, 0.169286, -0.911002,
		0.527929, 0.768843, 0.360794,
		0.761494, -0.616623, 0.199757,
		16.593462, 21.021191, 17.659731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.702322, 21.783230, 17.355783>,  <16.060415, 21.452826, 17.519901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.702322, 21.783230, 17.355783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.813751, 21.399319, 17.369783>,  <16.880608, 21.168972, 17.378183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.813751, 21.399319, 17.369783>,  <16.702322, 21.783230, 17.355783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.813751, 21.399319, 17.369783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478449, 0.107085, -0.871561,
		0.832757, 0.259537, 0.489036,
		0.278571, -0.959778, 0.035000,
		16.897322, 21.111385, 17.380283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420963, 21.720741, 17.004412>,  <16.702322, 21.783230, 17.355783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420963, 21.720741, 17.004412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.259033, 21.356136, 16.975384>,  <17.161875, 21.137373, 16.957968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.259033, 21.356136, 16.975384>,  <17.420963, 21.720741, 17.004412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259033, 21.356136, 16.975384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510140, -0.159273, -0.845216,
		0.758865, -0.379184, 0.529475,
		-0.404823, -0.911511, -0.072570,
		17.137587, 21.082684, 16.953613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.775841, 22.251364, 17.392643>,  <17.420963, 21.720741, 17.004412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.775841, 22.251364, 17.392643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.165653, 22.320843, 17.449379>,  <18.399540, 22.362530, 17.483421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.165653, 22.320843, 17.449379>,  <17.775841, 22.251364, 17.392643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.165653, 22.320843, 17.449379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186850, 0.279181, 0.941884,
		0.124000, -0.944398, 0.304525,
		0.974531, 0.173694, 0.141842,
		18.458012, 22.372952, 17.491932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.990498, 21.825344, 18.043034>,  <17.775841, 22.251364, 17.392643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.990498, 21.825344, 18.043034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.224762, 22.141434, 17.970877>,  <18.365320, 22.331087, 17.927582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.224762, 22.141434, 17.970877>,  <17.990498, 21.825344, 18.043034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.224762, 22.141434, 17.970877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168920, 0.336662, 0.926350,
		0.792758, -0.512057, 0.330655,
		0.585663, 0.790225, -0.180395,
		18.400461, 22.378502, 17.916758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707939, 21.797674, 18.430519>,  <17.990498, 21.825344, 18.043034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.707939, 21.797674, 18.430519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.588867, 22.173462, 18.362656>,  <18.517424, 22.398935, 18.321938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.588867, 22.173462, 18.362656>,  <18.707939, 21.797674, 18.430519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.588867, 22.173462, 18.362656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064992, 0.197246, 0.978197,
		0.952450, 0.280166, -0.119774,
		-0.297682, 0.939469, -0.169658,
		18.499563, 22.455303, 18.311758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.014217, 22.049414, 18.967505>,  <18.707939, 21.797674, 18.430519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.014217, 22.049414, 18.967505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.776112, 22.350914, 18.856136>,  <18.633247, 22.531815, 18.789316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.776112, 22.350914, 18.856136>,  <19.014217, 22.049414, 18.967505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.776112, 22.350914, 18.856136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097609, 0.276101, 0.956159,
		0.797578, 0.596346, -0.090781,
		-0.595266, 0.753751, -0.278421,
		18.597532, 22.577040, 18.772610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169071, 22.518457, 19.444231>,  <19.014217, 22.049414, 18.967505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.169071, 22.518457, 19.444231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.820995, 22.663017, 19.310268>,  <18.612150, 22.749754, 19.229891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.820995, 22.663017, 19.310268>,  <19.169071, 22.518457, 19.444231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.820995, 22.663017, 19.310268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200079, 0.361961, 0.910468,
		0.450266, 0.859287, -0.242666,
		-0.870189, 0.361401, -0.334904,
		18.559938, 22.771437, 19.209797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090714, 23.243464, 19.635464>,  <19.169071, 22.518457, 19.444231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090714, 23.243464, 19.635464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.722271, 23.100044, 19.574789>,  <18.501205, 23.013992, 19.538385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.722271, 23.100044, 19.574789>,  <19.090714, 23.243464, 19.635464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.722271, 23.100044, 19.574789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257802, 0.269793, 0.927766,
		-0.291726, 0.893675, -0.340942,
		-0.921105, -0.358549, -0.151685,
		18.445940, 22.992479, 19.529284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.536152, 23.725552, 19.858215>,  <19.090714, 23.243464, 19.635464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.536152, 23.725552, 19.858215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.380898, 23.356930, 19.854406>,  <18.287745, 23.135757, 19.852121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.380898, 23.356930, 19.854406>,  <18.536152, 23.725552, 19.858215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.380898, 23.356930, 19.854406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114284, 0.037875, 0.992726,
		-0.914488, 0.386402, -0.120020,
		-0.388137, -0.921553, -0.009524,
		18.264456, 23.080463, 19.851549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.991455, 23.796089, 20.277927>,  <18.536152, 23.725552, 19.858215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.991455, 23.796089, 20.277927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.058716, 23.402515, 20.253925>,  <18.099073, 23.166372, 20.239523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.058716, 23.402515, 20.253925>,  <17.991455, 23.796089, 20.277927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058716, 23.402515, 20.253925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217401, -0.096391, 0.971311,
		-0.961489, -0.150284, -0.230116,
		0.168154, -0.983933, -0.060007,
		18.109161, 23.107336, 20.235924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.569180, 23.500053, 20.798973>,  <17.991455, 23.796089, 20.277927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.569180, 23.500053, 20.798973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.805828, 23.195633, 20.692551>,  <17.947817, 23.012981, 20.628696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.805828, 23.195633, 20.692551>,  <17.569180, 23.500053, 20.798973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.805828, 23.195633, 20.692551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005806, -0.325978, 0.945359,
		-0.806194, -0.560841, -0.188438,
		0.591623, -0.761049, -0.266058,
		17.983315, 22.967318, 20.612734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276407, 22.849655, 21.029615>,  <17.569180, 23.500053, 20.798973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276407, 22.849655, 21.029615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.672100, 22.796616, 21.004847>,  <17.909515, 22.764791, 20.989985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.672100, 22.796616, 21.004847>,  <17.276407, 22.849655, 21.029615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.672100, 22.796616, 21.004847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003699, -0.400346, 0.916356,
		-0.146297, -0.906720, -0.395546,
		0.989234, -0.132597, -0.061923,
		17.968870, 22.756836, 20.986269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.428431, 22.139505, 21.231625>,  <17.276407, 22.849655, 21.029615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.428431, 22.139505, 21.231625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.789719, 22.307396, 21.267454>,  <18.006491, 22.408131, 21.288952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.789719, 22.307396, 21.267454>,  <17.428431, 22.139505, 21.231625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.789719, 22.307396, 21.267454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183420, -0.566204, 0.803599,
		0.388007, -0.709397, -0.588393,
		0.903221, 0.419725, 0.089574,
		18.060684, 22.433313, 21.294327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768978, 21.743574, 21.732183>,  <17.428431, 22.139505, 21.231625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.768978, 21.743574, 21.732183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.014179, 22.059399, 21.743612>,  <18.161301, 22.248894, 21.750469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.014179, 22.059399, 21.743612>,  <17.768978, 21.743574, 21.732183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.014179, 22.059399, 21.743612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263416, -0.238337, 0.934777,
		0.744875, -0.565495, -0.354085,
		0.613004, 0.789563, 0.028570,
		18.198080, 22.296268, 21.752184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.392408, 21.484901, 22.150820>,  <17.768978, 21.743574, 21.732183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.392408, 21.484901, 22.150820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.398411, 21.884651, 22.137985>,  <18.402012, 22.124500, 22.130285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.398411, 21.884651, 22.137985>,  <18.392408, 21.484901, 22.150820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.398411, 21.884651, 22.137985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154174, 0.029394, 0.987606,
		0.987930, -0.019766, -0.153636,
		0.015005, 0.999372, -0.032086,
		18.402912, 22.184464, 22.128359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.086088, 21.717363, 22.382902>,  <18.392408, 21.484901, 22.150820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.086088, 21.717363, 22.382902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.800179, 21.987247, 22.456516>,  <18.628633, 22.149178, 22.500685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.800179, 21.987247, 22.456516>,  <19.086088, 21.717363, 22.382902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.800179, 21.987247, 22.456516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108826, -0.152643, 0.982272,
		0.690838, 0.722128, 0.035679,
		-0.714772, 0.674708, 0.184037,
		18.585747, 22.189659, 22.511728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.764801, 21.448618, 22.085211>,  <19.086088, 21.717363, 22.382902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.764801, 21.448618, 22.085211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.995449, 21.296955, 22.374693>,  <20.133839, 21.205957, 22.548382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.995449, 21.296955, 22.374693>,  <19.764801, 21.448618, 22.085211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995449, 21.296955, 22.374693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669993, -0.287483, -0.684443,
		0.467565, 0.879541, 0.088264,
		0.576622, -0.379158, 0.723703,
		20.168436, 21.183208, 22.591805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477350, 21.800926, 22.097197>,  <19.764801, 21.448618, 22.085211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.477350, 21.800926, 22.097197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.511585, 21.437344, 22.260399>,  <20.532125, 21.219194, 22.358320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.511585, 21.437344, 22.260399>,  <20.477350, 21.800926, 22.097197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.511585, 21.437344, 22.260399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760708, -0.204844, -0.615924,
		0.643427, 0.363089, 0.673920,
		0.085586, -0.908958, 0.408007,
		20.537262, 21.164656, 22.382801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.113512, 21.701685, 22.115061>,  <20.477350, 21.800926, 22.097197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.113512, 21.701685, 22.115061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.907841, 21.360001, 22.084225>,  <20.784439, 21.154989, 22.065723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.907841, 21.360001, 22.084225>,  <21.113512, 21.701685, 22.115061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.907841, 21.360001, 22.084225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555551, -0.263223, -0.788719,
		0.653441, -0.448368, 0.609902,
		-0.514176, -0.854213, -0.077091,
		20.753588, 21.103737, 22.061098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.636314, 21.309805, 22.073622>,  <21.113512, 21.701685, 22.115061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.636314, 21.309805, 22.073622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.337753, 21.077229, 21.944124>,  <21.158617, 20.937683, 21.866426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.337753, 21.077229, 21.944124>,  <21.636314, 21.309805, 22.073622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.337753, 21.077229, 21.944124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519083, -0.204235, -0.829964,
		0.416454, -0.787538, 0.454257,
		-0.746404, -0.581439, -0.323743,
		21.113832, 20.902798, 21.847002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.912891, 20.673071, 21.795326>,  <21.636314, 21.309805, 22.073622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.912891, 20.673071, 21.795326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.555031, 20.680649, 21.616781>,  <21.340315, 20.685196, 21.509655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.555031, 20.680649, 21.616781>,  <21.912891, 20.673071, 21.795326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.555031, 20.680649, 21.616781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438433, -0.154815, -0.885330,
		-0.085875, -0.987762, 0.130200,
		-0.894652, 0.018944, -0.446363,
		21.286634, 20.686333, 21.482872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.990244, 20.229540, 21.281961>,  <21.912891, 20.673071, 21.795326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.990244, 20.229540, 21.281961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.669731, 20.421680, 21.139294>,  <21.477425, 20.536964, 21.053692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.669731, 20.421680, 21.139294>,  <21.990244, 20.229540, 21.281961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.669731, 20.421680, 21.139294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290106, -0.209436, -0.933796,
		-0.523249, -0.851704, 0.028464,
		-0.801280, 0.480350, -0.356672,
		21.429348, 20.565784, 21.032291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745161, 19.842445, 20.685076>,  <21.990244, 20.229540, 21.281961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745161, 19.842445, 20.685076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.606949, 20.216648, 20.655594>,  <21.524021, 20.441170, 20.637905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.606949, 20.216648, 20.655594>,  <21.745161, 19.842445, 20.685076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.606949, 20.216648, 20.655594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148356, -0.023095, -0.988664,
		-0.926605, -0.352550, -0.130808,
		-0.345532, 0.935508, -0.073703,
		21.503288, 20.497301, 20.633482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434446, 19.174360, 20.412321>,  <21.745161, 19.842445, 20.685076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434446, 19.174360, 20.412321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.758884, 18.974762, 20.534388>,  <21.953548, 18.855003, 20.607628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.758884, 18.974762, 20.534388>,  <21.434446, 19.174360, 20.412321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.758884, 18.974762, 20.534388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300122, 0.092764, 0.949380,
		-0.502045, -0.861625, -0.074519,
		0.811097, -0.498996, 0.305164,
		22.002214, 18.825064, 20.625937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.168615, 18.883921, 20.890373>,  <21.434446, 19.174360, 20.412321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.168615, 18.883921, 20.890373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.538239, 18.773617, 20.996256>,  <21.760014, 18.707434, 21.059786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.538239, 18.773617, 20.996256>,  <21.168615, 18.883921, 20.890373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.538239, 18.773617, 20.996256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263740, 0.041306, 0.963709,
		-0.276686, -0.960339, -0.034560,
		0.924060, -0.275759, 0.264709,
		21.815456, 18.690889, 21.075668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.172125, 18.283432, 21.408764>,  <21.168615, 18.883921, 20.890373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.172125, 18.283432, 21.408764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.513340, 18.484150, 21.466072>,  <21.718069, 18.604580, 21.500458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.513340, 18.484150, 21.466072>,  <21.172125, 18.283432, 21.408764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.513340, 18.484150, 21.466072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234411, 0.123169, 0.964303,
		0.466236, -0.856172, 0.222694,
		0.853039, 0.501795, 0.143271,
		21.769251, 18.634687, 21.509054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.429859, 17.958218, 21.951036>,  <21.172125, 18.283432, 21.408764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.429859, 17.958218, 21.951036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.641174, 18.295799, 21.913818>,  <21.767963, 18.498348, 21.891487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.641174, 18.295799, 21.913818>,  <21.429859, 17.958218, 21.951036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641174, 18.295799, 21.913818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048535, 0.079389, 0.995661,
		0.847678, -0.530510, 0.000979,
		0.528286, 0.843953, -0.093044,
		21.799660, 18.548985, 21.885904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.953632, 17.883282, 22.475056>,  <21.429859, 17.958218, 21.951036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.953632, 17.883282, 22.475056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.909546, 18.277279, 22.421930>,  <21.883093, 18.513678, 22.390055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.909546, 18.277279, 22.421930>,  <21.953632, 17.883282, 22.475056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.909546, 18.277279, 22.421930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004700, 0.134140, 0.990951,
		0.993896, 0.108597, -0.019414,
		-0.110219, 0.984994, -0.132811,
		21.876480, 18.572777, 22.382088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.207159, 18.179228, 23.095716>,  <21.953632, 17.883282, 22.475056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.207159, 18.179228, 23.095716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.986290, 18.474445, 22.940592>,  <21.853769, 18.651575, 22.847517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.986290, 18.474445, 22.940592>,  <22.207159, 18.179228, 23.095716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.986290, 18.474445, 22.940592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303541, 0.255270, 0.917987,
		0.776510, 0.624605, 0.083073,
		-0.552173, 0.738042, -0.387813,
		21.820639, 18.695858, 22.824247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.325212, 18.765511, 23.547497>,  <22.207159, 18.179228, 23.095716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.325212, 18.765511, 23.547497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.984516, 18.842693, 23.352640>,  <21.780098, 18.889004, 23.235725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.984516, 18.842693, 23.352640>,  <22.325212, 18.765511, 23.547497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.984516, 18.842693, 23.352640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453385, 0.194625, 0.869807,
		0.262646, 0.961711, -0.078285,
		-0.851739, 0.192957, -0.487143,
		21.728994, 18.900581, 23.206497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.124260, 19.333551, 23.933723>,  <22.325212, 18.765511, 23.547497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.124260, 19.333551, 23.933723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.816154, 19.172939, 23.735544>,  <21.631290, 19.076572, 23.616636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.816154, 19.172939, 23.735544>,  <22.124260, 19.333551, 23.933723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816154, 19.172939, 23.735544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562392, 0.061394, 0.824588,
		-0.300678, 0.913787, -0.273106,
		-0.770265, -0.401528, -0.495447,
		21.585075, 19.052481, 23.586910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.603033, 19.853157, 24.110540>,  <22.124260, 19.333551, 23.933723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.603033, 19.853157, 24.110540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.430431, 19.510761, 23.996637>,  <21.326870, 19.305325, 23.928295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.430431, 19.510761, 23.996637>,  <21.603033, 19.853157, 24.110540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.430431, 19.510761, 23.996637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747512, 0.162570, 0.644047,
		-0.505004, 0.490768, -0.710012,
		-0.431504, -0.855989, -0.284757,
		21.300980, 19.253965, 23.911211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.241505, 17.520485, 7.942628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.986408, 17.225449, 8.031390>,  <21.833349, 17.048426, 8.084648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.986408, 17.225449, 8.031390>,  <22.241505, 17.520485, 7.942628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.986408, 17.225449, 8.031390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454870, -0.128156, 0.881288,
		-0.621592, 0.662974, 0.417239,
		-0.637743, -0.737592, 0.221906,
		21.795086, 17.004171, 8.097962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.081060, 17.583900, 8.591575>,  <22.241505, 17.520485, 7.942628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.081060, 17.583900, 8.591575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.960247, 17.203598, 8.563746>,  <21.887760, 16.975416, 8.547050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.960247, 17.203598, 8.563746>,  <22.081060, 17.583900, 8.591575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.960247, 17.203598, 8.563746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210962, -0.137831, 0.967728,
		-0.929662, 0.277608, 0.242202,
		-0.302032, -0.950756, -0.069571,
		21.869638, 16.918371, 8.542875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.495358, 17.402954, 9.011399>,  <22.081060, 17.583900, 8.591575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.495358, 17.402954, 9.011399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.648350, 17.036171, 8.965973>,  <21.740145, 16.816101, 8.938717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.648350, 17.036171, 8.965973>,  <21.495358, 17.402954, 9.011399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.648350, 17.036171, 8.965973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314522, 0.013640, 0.949152,
		-0.868784, -0.398750, 0.293621,
		0.382479, -0.916958, -0.113566,
		21.763094, 16.761084, 8.931903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202024, 16.944405, 9.474756>,  <21.495358, 17.402954, 9.011399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202024, 16.944405, 9.474756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.520836, 16.734150, 9.355793>,  <21.712122, 16.607996, 9.284415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.520836, 16.734150, 9.355793>,  <21.202024, 16.944405, 9.474756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.520836, 16.734150, 9.355793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205405, -0.227158, 0.951950,
		-0.567940, -0.819819, -0.073082,
		0.797028, -0.525639, -0.297407,
		21.759945, 16.576458, 9.266571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.260227, 16.200632, 9.734497>,  <21.202024, 16.944405, 9.474756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.260227, 16.200632, 9.734497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.629002, 16.328232, 9.646613>,  <21.850266, 16.404791, 9.593883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.629002, 16.328232, 9.646613>,  <21.260227, 16.200632, 9.734497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629002, 16.328232, 9.646613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268360, -0.117012, 0.956186,
		0.279314, -0.940504, -0.193484,
		0.921937, 0.318999, -0.219710,
		21.905582, 16.423931, 9.580700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.702538, 15.900530, 10.189246>,  <21.260227, 16.200632, 9.734497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.702538, 15.900530, 10.189246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.930759, 16.212597, 10.086634>,  <22.067692, 16.399837, 10.025066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.930759, 16.212597, 10.086634>,  <21.702538, 15.900530, 10.189246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.930759, 16.212597, 10.086634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334100, 0.064853, 0.940304,
		0.750231, -0.622200, -0.223652,
		0.570553, 0.780167, -0.256532,
		22.101925, 16.446648, 10.009674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.451574, 15.848524, 10.474316>,  <21.702538, 15.900530, 10.189246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.451574, 15.848524, 10.474316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.388683, 16.239429, 10.417413>,  <22.350948, 16.473972, 10.383271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.388683, 16.239429, 10.417413>,  <22.451574, 15.848524, 10.474316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.388683, 16.239429, 10.417413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345025, 0.189328, 0.919300,
		0.925331, 0.095457, -0.366947,
		-0.157227, 0.977263, -0.142256,
		22.341515, 16.532608, 10.374736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.042210, 16.076513, 10.903696>,  <22.451574, 15.848524, 10.474316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.042210, 16.076513, 10.903696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.778370, 16.371231, 10.844284>,  <22.620066, 16.548061, 10.808637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.778370, 16.371231, 10.844284>,  <23.042210, 16.076513, 10.903696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.778370, 16.371231, 10.844284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121930, 0.299889, 0.946150,
		0.741663, 0.605968, -0.287643,
		-0.659598, 0.736797, -0.148531,
		22.580490, 16.592270, 10.799725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.359850, 16.618534, 11.173722>,  <23.042210, 16.076513, 10.903696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.359850, 16.618534, 11.173722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.975868, 16.729988, 11.162059>,  <22.745480, 16.796862, 11.155061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.975868, 16.729988, 11.162059>,  <23.359850, 16.618534, 11.173722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.975868, 16.729988, 11.162059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067969, 0.332603, 0.940614,
		0.271788, 0.900965, -0.338222,
		-0.959954, 0.278636, -0.029159,
		22.687881, 16.813580, 11.153311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.516777, 17.283079, 11.425526>,  <23.359850, 16.618534, 11.173722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.516777, 17.283079, 11.425526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.127022, 17.222454, 11.491977>,  <22.893169, 17.186079, 11.531847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.127022, 17.222454, 11.491977>,  <23.516777, 17.283079, 11.425526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.127022, 17.222454, 11.491977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056928, 0.548437, 0.834252,
		-0.217550, 0.822342, -0.525762,
		-0.974388, -0.151561, 0.166127,
		22.834705, 17.176987, 11.541815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.255032, 17.905720, 11.625818>,  <23.516777, 17.283079, 11.425526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.255032, 17.905720, 11.625818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.997993, 17.635948, 11.771266>,  <22.843771, 17.474085, 11.858535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.997993, 17.635948, 11.771266>,  <23.255032, 17.905720, 11.625818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.997993, 17.635948, 11.771266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113655, 0.553223, 0.825244,
		-0.757730, 0.488970, -0.432150,
		-0.642594, -0.674428, 0.363620,
		22.805216, 17.433620, 11.880352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.821140, 18.222406, 12.144010>,  <23.255032, 17.905720, 11.625818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.821140, 18.222406, 12.144010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.758530, 17.843540, 12.255996>,  <22.720963, 17.616220, 12.323188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.758530, 17.843540, 12.255996>,  <22.821140, 18.222406, 12.144010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.758530, 17.843540, 12.255996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186242, 0.306679, 0.933414,
		-0.969955, 0.093963, -0.224406,
		-0.156527, -0.947163, 0.279965,
		22.711571, 17.559391, 12.339985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.461880, 18.895807, 12.242706>,  <22.821140, 18.222406, 12.144010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.461880, 18.895807, 12.242706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.688843, 19.223145, 12.206136>,  <22.825022, 19.419548, 12.184194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.688843, 19.223145, 12.206136>,  <22.461880, 18.895807, 12.242706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.688843, 19.223145, 12.206136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015248, -0.121453, -0.992480,
		-0.823294, 0.561749, -0.081392,
		0.567410, 0.818344, -0.091426,
		22.859066, 19.468647, 12.178708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.194836, 19.341217, 11.725441>,  <22.461880, 18.895807, 12.242706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.194836, 19.341217, 11.725441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.583107, 19.437088, 11.732784>,  <22.816071, 19.494610, 11.737190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.583107, 19.437088, 11.732784>,  <22.194836, 19.341217, 11.725441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.583107, 19.437088, 11.732784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019155, -0.000990, -0.999816,
		-0.239613, 0.970853, -0.005551,
		0.970679, 0.239675, 0.018359,
		22.874311, 19.508991, 11.738292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.299774, 19.875969, 11.263078>,  <22.194836, 19.341217, 11.725441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.299774, 19.875969, 11.263078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.686897, 19.779419, 11.291598>,  <22.919172, 19.721489, 11.308711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.686897, 19.779419, 11.291598>,  <22.299774, 19.875969, 11.263078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.686897, 19.779419, 11.291598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071748, -0.006954, -0.997399,
		0.241243, 0.970407, 0.010588,
		0.967809, -0.241375, 0.071302,
		22.977240, 19.707006, 11.312989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.667099, 20.296070, 10.780931>,  <22.299774, 19.875969, 11.263078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.667099, 20.296070, 10.780931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.954720, 20.026684, 10.849524>,  <23.127293, 19.865051, 10.890680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.954720, 20.026684, 10.849524>,  <22.667099, 20.296070, 10.780931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954720, 20.026684, 10.849524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317101, 0.098382, -0.943275,
		0.618394, 0.732641, 0.284299,
		0.719052, -0.673468, 0.171483,
		23.170435, 19.824644, 10.900970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.308578, 20.589020, 10.606118>,  <22.667099, 20.296070, 10.780931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.308578, 20.589020, 10.606118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.330860, 20.190739, 10.576537>,  <23.344229, 19.951769, 10.558788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.330860, 20.190739, 10.576537>,  <23.308578, 20.589020, 10.606118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.330860, 20.190739, 10.576537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276906, 0.086569, -0.956989,
		0.959281, 0.032829, 0.280539,
		0.055703, -0.995705, -0.073953,
		23.347570, 19.892027, 10.554351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.010904, 20.421686, 10.350697>,  <23.308578, 20.589020, 10.606118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.010904, 20.421686, 10.350697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.776180, 20.108688, 10.267406>,  <23.635345, 19.920889, 10.217431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.776180, 20.108688, 10.267406>,  <24.010904, 20.421686, 10.350697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.776180, 20.108688, 10.267406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365162, -0.026209, -0.930575,
		0.722713, -0.622106, 0.301117,
		-0.586808, -0.782494, -0.208228,
		23.600138, 19.873940, 10.204937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440468, 20.097054, 9.984597>,  <24.010904, 20.421686, 10.350697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440468, 20.097054, 9.984597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.094296, 19.918011, 9.894551>,  <23.886593, 19.810585, 9.840524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.094296, 19.918011, 9.894551>,  <24.440468, 20.097054, 9.984597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.094296, 19.918011, 9.894551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244452, 0.014976, -0.969546,
		0.437349, -0.894104, 0.096458,
		-0.865430, -0.447609, -0.225115,
		23.834667, 19.783728, 9.827017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633238, 19.425579, 9.715692>,  <24.440468, 20.097054, 9.984597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633238, 19.425579, 9.715692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.255756, 19.504948, 9.609819>,  <24.029268, 19.552568, 9.546296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.255756, 19.504948, 9.609819>,  <24.633238, 19.425579, 9.715692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255756, 19.504948, 9.609819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281812, 0.063227, -0.957384,
		-0.173230, -0.978075, -0.115585,
		-0.943702, 0.198421, -0.264681,
		23.972647, 19.564474, 9.530416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430641, 18.966238, 9.225964>,  <24.633238, 19.425579, 9.715692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430641, 18.966238, 9.225964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.178188, 19.268135, 9.154372>,  <24.026716, 19.449274, 9.111418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.178188, 19.268135, 9.154372>,  <24.430641, 18.966238, 9.225964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178188, 19.268135, 9.154372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244146, -0.025719, -0.969397,
		-0.736249, -0.655516, -0.168036,
		-0.631133, 0.754743, -0.178977,
		23.988848, 19.494558, 9.100679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.133230, 18.807503, 8.580027>,  <24.430641, 18.966238, 9.225964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.133230, 18.807503, 8.580027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.038258, 19.190472, 8.645717>,  <23.981274, 19.420254, 8.685131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.038258, 19.190472, 8.645717>,  <24.133230, 18.807503, 8.580027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.038258, 19.190472, 8.645717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133268, 0.199565, -0.970780,
		-0.962220, -0.208607, -0.174976,
		-0.237430, 0.957422, 0.164225,
		23.967028, 19.477697, 8.694984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.876818, 18.976830, 8.001813>,  <24.133230, 18.807503, 8.580027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.876818, 18.976830, 8.001813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.951935, 19.341049, 8.149128>,  <23.997005, 19.559582, 8.237516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.951935, 19.341049, 8.149128>,  <23.876818, 18.976830, 8.001813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.951935, 19.341049, 8.149128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136639, 0.347093, -0.927823,
		-0.972658, 0.224561, -0.059235,
		0.187793, 0.910548, 0.368287,
		24.008272, 19.614214, 8.259614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.423231, 19.373072, 7.616491>,  <23.876818, 18.976830, 8.001813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.423231, 19.373072, 7.616491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.721226, 19.599812, 7.757162>,  <23.900023, 19.735855, 7.841565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.721226, 19.599812, 7.757162>,  <23.423231, 19.373072, 7.616491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.721226, 19.599812, 7.757162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177475, 0.339770, -0.923612,
		-0.643037, 0.750493, 0.152523,
		0.744987, 0.566848, 0.351678,
		23.944721, 19.769867, 7.862666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.182386, 19.939272, 7.323520>,  <23.423231, 19.373072, 7.616491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.182386, 19.939272, 7.323520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.567059, 19.988560, 7.421490>,  <23.797861, 20.018131, 7.480271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.567059, 19.988560, 7.421490>,  <23.182386, 19.939272, 7.323520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.567059, 19.988560, 7.421490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146543, 0.524007, -0.839012,
		-0.231724, 0.842754, 0.485871,
		0.961681, 0.123218, 0.244924,
		23.855562, 20.025526, 7.494967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.279623, 20.729452, 7.255288>,  <23.182386, 19.939272, 7.323520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.279623, 20.729452, 7.255288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.639328, 20.555901, 7.233096>,  <23.855150, 20.451771, 7.219781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.639328, 20.555901, 7.233096>,  <23.279623, 20.729452, 7.255288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.639328, 20.555901, 7.233096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185895, 0.493904, -0.849413,
		0.395942, 0.753532, 0.524805,
		0.899262, -0.433877, -0.055479,
		23.909107, 20.425737, 7.216452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.729782, 21.289509, 7.134068>,  <23.279623, 20.729452, 7.255288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.729782, 21.289509, 7.134068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.344337, 21.380123, 7.190830>,  <22.113071, 21.434492, 7.224888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.344337, 21.380123, 7.190830>,  <22.729782, 21.289509, 7.134068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344337, 21.380123, 7.190830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249368, 0.570593, 0.782457,
		0.096282, 0.789371, -0.606320,
		-0.963610, 0.226534, 0.141906,
		22.055254, 21.448084, 7.233402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.742281, 21.928198, 7.414686>,  <22.729782, 21.289509, 7.134068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.742281, 21.928198, 7.414686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.371635, 21.819942, 7.519103>,  <22.149248, 21.754990, 7.581753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.371635, 21.819942, 7.519103>,  <22.742281, 21.928198, 7.414686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.371635, 21.819942, 7.519103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110469, 0.467656, 0.876980,
		-0.359424, 0.841458, -0.403439,
		-0.926613, -0.270640, 0.261042,
		22.093651, 21.738750, 7.597416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.449421, 22.544722, 7.652883>,  <22.742281, 21.928198, 7.414686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.449421, 22.544722, 7.652883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.292908, 22.215092, 7.816735>,  <22.198999, 22.017313, 7.915047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.292908, 22.215092, 7.816735>,  <22.449421, 22.544722, 7.652883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.292908, 22.215092, 7.816735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146055, 0.383871, 0.911763,
		-0.908607, 0.416585, -0.029842,
		-0.391282, -0.824075, 0.409632,
		22.175524, 21.967869, 7.939625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.003447, 22.717995, 8.171805>,  <22.449421, 22.544722, 7.652883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.003447, 22.717995, 8.171805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.078644, 22.336597, 8.266044>,  <22.123762, 22.107758, 8.322586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.078644, 22.336597, 8.266044>,  <22.003447, 22.717995, 8.171805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078644, 22.336597, 8.266044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012876, 0.237459, 0.971312,
		-0.982086, -0.185633, 0.032363,
		0.187993, -0.953496, 0.235595,
		22.135042, 22.050549, 8.336722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396515, 22.418516, 8.502702>,  <22.003447, 22.717995, 8.171805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.396515, 22.418516, 8.502702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.744892, 22.240936, 8.586958>,  <21.953918, 22.134388, 8.637512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.744892, 22.240936, 8.586958>,  <21.396515, 22.418516, 8.502702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.744892, 22.240936, 8.586958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092684, 0.272557, 0.957665,
		-0.482567, -0.853593, 0.196234,
		0.870941, -0.443950, 0.210642,
		22.006174, 22.107752, 8.650150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.162571, 22.014235, 9.030575>,  <21.396515, 22.418516, 8.502702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.162571, 22.014235, 9.030575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.553864, 21.959496, 9.092975>,  <21.788639, 21.926653, 9.130415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.553864, 21.959496, 9.092975>,  <21.162571, 22.014235, 9.030575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553864, 21.959496, 9.092975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143412, 0.097524, 0.984846,
		-0.149989, -0.985780, 0.075775,
		0.978231, -0.136849, 0.156000,
		21.847332, 21.918442, 9.139774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.277161, 21.495434, 9.586981>,  <21.162571, 22.014235, 9.030575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.277161, 21.495434, 9.586981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.597435, 21.734295, 9.567739>,  <21.789598, 21.877611, 9.556193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.597435, 21.734295, 9.567739>,  <21.277161, 21.495434, 9.586981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597435, 21.734295, 9.567739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157189, 0.286890, 0.944979,
		0.578098, -0.749068, 0.323574,
		0.800684, 0.597153, -0.048105,
		21.837641, 21.913441, 9.553308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.674135, 21.325752, 10.225616>,  <21.277161, 21.495434, 9.586981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.674135, 21.325752, 10.225616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.794186, 21.692375, 10.119900>,  <21.866217, 21.912348, 10.056470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.794186, 21.692375, 10.119900>,  <21.674135, 21.325752, 10.225616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.794186, 21.692375, 10.119900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186662, 0.328139, 0.926003,
		0.935457, -0.228587, 0.269570,
		0.300128, 0.916555, -0.264291,
		21.884224, 21.967342, 10.040612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.142561, 21.514387, 10.674031>,  <21.674135, 21.325752, 10.225616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.142561, 21.514387, 10.674031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.060524, 21.868206, 10.506454>,  <22.011303, 22.080498, 10.405909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.060524, 21.868206, 10.506454>,  <22.142561, 21.514387, 10.674031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.060524, 21.868206, 10.506454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140713, 0.396947, 0.906991,
		0.968575, 0.244966, 0.043057,
		-0.205090, 0.884548, -0.418942,
		21.998997, 22.133570, 10.380772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.582392, 22.044994, 10.962503>,  <22.142561, 21.514387, 10.674031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.582392, 22.044994, 10.962503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.280342, 22.274151, 10.835018>,  <22.099112, 22.411646, 10.758527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.280342, 22.274151, 10.835018>,  <22.582392, 22.044994, 10.962503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.280342, 22.274151, 10.835018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045111, 0.530411, 0.846539,
		0.654026, 0.624866, -0.426371,
		-0.755126, 0.572893, -0.318714,
		22.053804, 22.446018, 10.739404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.782007, 22.751526, 11.126755>,  <22.582392, 22.044994, 10.962503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.782007, 22.751526, 11.126755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.384300, 22.714325, 11.105653>,  <22.145676, 22.692005, 11.092992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.384300, 22.714325, 11.105653>,  <22.782007, 22.751526, 11.126755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.384300, 22.714325, 11.105653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089820, 0.458804, 0.883986,
		-0.058007, 0.883657, -0.464527,
		-0.994267, -0.093001, -0.052756,
		22.086020, 22.686424, 11.089826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.541193, 23.219429, 11.559216>,  <22.782007, 22.751526, 11.126755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.541193, 23.219429, 11.559216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.171936, 23.078060, 11.498679>,  <21.950382, 22.993238, 11.462358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.171936, 23.078060, 11.498679>,  <22.541193, 23.219429, 11.559216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.171936, 23.078060, 11.498679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194606, 0.090058, 0.976738,
		-0.331573, 0.931118, -0.151914,
		-0.923140, -0.353423, -0.151340,
		21.894995, 22.972033, 11.453277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.064987, 23.746542, 11.728724>,  <22.541193, 23.219429, 11.559216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.064987, 23.746542, 11.728724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.865738, 23.400452, 11.751556>,  <21.746187, 23.192799, 11.765256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.865738, 23.400452, 11.751556>,  <22.064987, 23.746542, 11.728724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.865738, 23.400452, 11.751556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137873, 0.144023, 0.979923,
		-0.856074, 0.480254, -0.191033,
		-0.498125, -0.865224, 0.057080,
		21.716301, 23.140884, 11.768681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.387102, 23.883760, 11.998088>,  <22.064987, 23.746542, 11.728724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.387102, 23.883760, 11.998088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.455372, 23.504478, 12.105252>,  <21.496334, 23.276909, 12.169551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.455372, 23.504478, 12.105252>,  <21.387102, 23.883760, 11.998088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455372, 23.504478, 12.105252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332585, 0.200506, 0.921512,
		-0.927501, -0.246381, -0.281138,
		0.170673, -0.948206, 0.267912,
		21.506575, 23.220016, 12.185626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841747, 23.767393, 12.380826>,  <21.387102, 23.883760, 11.998088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.841747, 23.767393, 12.380826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.048286, 23.435932, 12.467283>,  <21.172211, 23.237055, 12.519157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.048286, 23.435932, 12.467283>,  <20.841747, 23.767393, 12.380826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.048286, 23.435932, 12.467283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455865, -0.052301, 0.888511,
		-0.724963, -0.557314, -0.404759,
		0.516349, -0.828653, 0.216144,
		21.203192, 23.187336, 12.532126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.360294, 23.375477, 12.730406>,  <20.841747, 23.767393, 12.380826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.360294, 23.375477, 12.730406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.702953, 23.190083, 12.821040>,  <20.908548, 23.078846, 12.875421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.702953, 23.190083, 12.821040>,  <20.360294, 23.375477, 12.730406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.702953, 23.190083, 12.821040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413329, -0.353752, 0.839058,
		-0.308729, -0.812433, -0.494610,
		0.856647, -0.463479, 0.226589,
		20.959948, 23.051037, 12.889016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.231514, 22.655239, 12.779290>,  <20.360294, 23.375477, 12.730406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.231514, 22.655239, 12.779290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.560017, 22.713013, 13.000080>,  <20.757118, 22.747677, 13.132554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.560017, 22.713013, 13.000080>,  <20.231514, 22.655239, 12.779290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.560017, 22.713013, 13.000080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520038, -0.208510, 0.828302,
		0.234729, -0.967296, -0.096127,
		0.821257, 0.144437, 0.551974,
		20.806395, 22.756344, 13.165672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.094902, 22.281361, 13.353205>,  <20.231514, 22.655239, 12.779290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.094902, 22.281361, 13.353205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.417805, 22.462894, 13.504133>,  <20.611546, 22.571815, 13.594690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.417805, 22.462894, 13.504133>,  <20.094902, 22.281361, 13.353205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.417805, 22.462894, 13.504133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396380, -0.056781, 0.916329,
		0.437287, -0.889275, 0.134054,
		0.807257, 0.453835, 0.377320,
		20.659983, 22.599045, 13.617330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.375933, 21.797592, 13.837446>,  <20.094902, 22.281361, 13.353205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.375933, 21.797592, 13.837446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.489643, 22.167591, 13.938299>,  <20.557869, 22.389589, 13.998811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.489643, 22.167591, 13.938299>,  <20.375933, 21.797592, 13.837446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.489643, 22.167591, 13.938299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371212, -0.136277, 0.918494,
		0.883962, -0.354701, 0.304628,
		0.284277, 0.924995, 0.252133,
		20.574926, 22.445089, 14.013939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806871, 21.747364, 14.422668>,  <20.375933, 21.797592, 13.837446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806871, 21.747364, 14.422668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.665119, 22.121357, 14.416729>,  <20.580069, 22.345753, 14.413165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.665119, 22.121357, 14.416729>,  <20.806871, 21.747364, 14.422668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665119, 22.121357, 14.416729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237570, -0.074663, 0.968497,
		0.904420, 0.346742, 0.248583,
		-0.354379, 0.934984, -0.014848,
		20.558805, 22.401852, 14.412274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.107088, 22.092144, 14.996558>,  <20.806871, 21.747364, 14.422668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.107088, 22.092144, 14.996558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.800049, 22.321865, 14.882736>,  <20.615826, 22.459698, 14.814443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.800049, 22.321865, 14.882736>,  <21.107088, 22.092144, 14.996558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.800049, 22.321865, 14.882736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327260, 0.030546, 0.944441,
		0.551085, 0.818074, 0.164499,
		-0.767598, 0.574301, -0.284556,
		20.569769, 22.494156, 14.797369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.061119, 22.626390, 15.563626>,  <21.107088, 22.092144, 14.996558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.061119, 22.626390, 15.563626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.717491, 22.597519, 15.360928>,  <20.511314, 22.580196, 15.239308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.717491, 22.597519, 15.360928>,  <21.061119, 22.626390, 15.563626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.717491, 22.597519, 15.360928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474005, -0.261467, 0.840806,
		-0.193185, 0.962510, 0.190405,
		-0.859068, -0.072178, -0.506746,
		20.459770, 22.575865, 15.208903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.631565, 22.896807, 16.049351>,  <21.061119, 22.626390, 15.563626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.631565, 22.896807, 16.049351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.392735, 22.723099, 15.779562>,  <20.249437, 22.618874, 15.617689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.392735, 22.723099, 15.779562>,  <20.631565, 22.896807, 16.049351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.392735, 22.723099, 15.779562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625644, -0.274132, 0.730357,
		-0.502067, 0.858056, -0.108022,
		-0.597075, -0.434271, -0.674471,
		20.213612, 22.592817, 15.577221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.068754, 23.258461, 16.039394>,  <20.631565, 22.896807, 16.049351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.068754, 23.258461, 16.039394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.991722, 22.877708, 15.944035>,  <19.945503, 22.649256, 15.886819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.991722, 22.877708, 15.944035>,  <20.068754, 23.258461, 16.039394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.991722, 22.877708, 15.944035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726923, -0.024809, 0.686271,
		-0.659163, 0.305458, -0.687168,
		-0.192579, -0.951883, -0.238398,
		19.933949, 22.592144, 15.872516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334776, 23.202435, 15.949015>,  <20.068754, 23.258461, 16.039394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.334776, 23.202435, 15.949015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.462090, 22.828564, 16.012354>,  <19.538477, 22.604240, 16.050358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.462090, 22.828564, 16.012354>,  <19.334776, 23.202435, 15.949015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.462090, 22.828564, 16.012354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653547, -0.095345, 0.750857,
		-0.686711, -0.342472, -0.641202,
		0.318284, -0.934677, 0.158347,
		19.557575, 22.548161, 16.059858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.717960, 22.763233, 15.991299>,  <19.334776, 23.202435, 15.949015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.717960, 22.763233, 15.991299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.014992, 22.571136, 16.178038>,  <19.193211, 22.455877, 16.290081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.014992, 22.571136, 16.178038>,  <18.717960, 22.763233, 15.991299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.014992, 22.571136, 16.178038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612513, -0.204972, 0.763423,
		-0.270943, -0.852846, -0.446366,
		0.742575, -0.480249, 0.466844,
		19.237764, 22.427063, 16.318092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.294067, 22.440001, 16.353287>,  <18.717960, 22.763233, 15.991299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.294067, 22.440001, 16.353287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.647293, 22.410461, 16.538649>,  <18.859228, 22.392738, 16.649866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.647293, 22.410461, 16.538649>,  <18.294067, 22.440001, 16.353287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.647293, 22.410461, 16.538649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461872, 0.037652, 0.886147,
		-0.082889, -0.996559, -0.000859,
		0.883065, -0.073849, 0.463403,
		18.912212, 22.388308, 16.677670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.169249, 21.983326, 16.825392>,  <18.294067, 22.440001, 16.353287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.169249, 21.983326, 16.825392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.487488, 22.188766, 16.953913>,  <18.678432, 22.312031, 17.031025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.487488, 22.188766, 16.953913>,  <18.169249, 21.983326, 16.825392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487488, 22.188766, 16.953913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488332, 0.229802, 0.841857,
		0.358546, -0.826681, 0.433639,
		0.795599, 0.513604, 0.321300,
		18.726168, 22.342848, 17.050303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.930490, 21.304138, 16.747231>,  <18.169249, 21.983326, 16.825392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.930490, 21.304138, 16.747231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.597069, 21.106560, 16.648275>,  <17.397015, 20.988012, 16.588902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.597069, 21.106560, 16.648275>,  <17.930490, 21.304138, 16.747231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.597069, 21.106560, 16.648275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344820, -0.115335, -0.931556,
		0.431607, -0.861809, 0.266461,
		-0.833555, -0.493947, -0.247390,
		17.347002, 20.958376, 16.574059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.173100, 20.706238, 16.441063>,  <17.930490, 21.304138, 16.747231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.173100, 20.706238, 16.441063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.790451, 20.733604, 16.327785>,  <17.560862, 20.750025, 16.259819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.790451, 20.733604, 16.327785>,  <18.173100, 20.706238, 16.441063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.790451, 20.733604, 16.327785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264670, -0.202222, -0.942898,
		-0.121774, -0.976947, 0.175342,
		-0.956620, 0.068413, -0.283194,
		17.503466, 20.754129, 16.242826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.115141, 20.239925, 15.917806>,  <18.173100, 20.706238, 16.441063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.115141, 20.239925, 15.917806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.796871, 20.475056, 15.859343>,  <17.605909, 20.616135, 15.824265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.796871, 20.475056, 15.859343>,  <18.115141, 20.239925, 15.917806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.796871, 20.475056, 15.859343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101727, -0.108188, -0.988912,
		-0.597122, -0.801720, 0.026284,
		-0.795674, 0.587827, -0.146158,
		17.558168, 20.651403, 15.815495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761074, 19.920374, 15.489183>,  <18.115141, 20.239925, 15.917806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761074, 19.920374, 15.489183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.618080, 20.290054, 15.435427>,  <17.532284, 20.511862, 15.403172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.618080, 20.290054, 15.435427>,  <17.761074, 19.920374, 15.489183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.618080, 20.290054, 15.435427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237260, -0.049306, -0.970194,
		-0.903279, -0.378713, -0.201650,
		-0.357483, 0.924200, -0.134391,
		17.510836, 20.567314, 15.395109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307753, 19.802765, 15.017719>,  <17.761074, 19.920374, 15.489183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.307753, 19.802765, 15.017719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.407066, 20.190239, 15.018051>,  <17.466656, 20.422724, 15.018250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.407066, 20.190239, 15.018051>,  <17.307753, 19.802765, 15.017719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.407066, 20.190239, 15.018051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283930, -0.071954, -0.956141,
		-0.926142, 0.237632, -0.292904,
		0.248285, 0.968687, 0.000831,
		17.481552, 20.480844, 15.018300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
