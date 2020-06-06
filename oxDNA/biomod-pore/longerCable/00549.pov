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
	<24.716557, 35.013485, 34.720802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.483774, 34.981880, 35.044552>,  <24.344105, 34.962917, 35.238800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.483774, 34.981880, 35.044552>,  <24.716557, 35.013485, 34.720802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.483774, 34.981880, 35.044552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699597, -0.556050, 0.448745,
		0.414597, 0.827385, 0.378871,
		-0.581956, -0.079009, 0.809373,
		24.309187, 34.958179, 35.287365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047770, 35.078644, 35.389652>,  <24.716557, 35.013485, 34.720802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047770, 35.078644, 35.389652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735777, 34.830677, 35.423889>,  <24.548582, 34.681896, 35.444431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.735777, 34.830677, 35.423889>,  <25.047770, 35.078644, 35.389652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.735777, 34.830677, 35.423889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609891, -0.722360, 0.325928,
		-0.140220, 0.306421, 0.941512,
		-0.779981, -0.619922, 0.085594,
		24.501783, 34.644699, 35.449566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857409, 34.756443, 36.070045>,  <25.047770, 35.078644, 35.389652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857409, 34.756443, 36.070045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686636, 34.499016, 35.815945>,  <24.584173, 34.344559, 35.663483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686636, 34.499016, 35.815945>,  <24.857409, 34.756443, 36.070045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686636, 34.499016, 35.815945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525671, -0.748234, 0.404742,
		-0.735798, -0.161138, 0.657750,
		-0.426931, -0.643569, -0.635255,
		24.558558, 34.305946, 35.625370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.732136, 34.109894, 36.455673>,  <24.857409, 34.756443, 36.070045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.732136, 34.109894, 36.455673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747116, 34.026192, 36.064816>,  <24.756104, 33.975971, 35.830299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.747116, 34.026192, 36.064816>,  <24.732136, 34.109894, 36.455673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747116, 34.026192, 36.064816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680046, -0.711145, 0.178354,
		-0.732212, -0.671182, 0.115668,
		0.037451, -0.209253, -0.977144,
		24.758352, 33.963417, 35.771671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857237, 33.360344, 36.371140>,  <24.732136, 34.109894, 36.455673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857237, 33.360344, 36.371140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018404, 33.554745, 36.060925>,  <25.115105, 33.671383, 35.874794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.018404, 33.554745, 36.060925>,  <24.857237, 33.360344, 36.371140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.018404, 33.554745, 36.060925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844015, -0.525025, 0.109484,
		-0.353969, -0.698680, -0.621734,
		0.402920, 0.485999, -0.775539,
		25.139280, 33.700546, 35.828262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939919, 32.807079, 35.882710>,  <24.857237, 33.360344, 36.371140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939919, 32.807079, 35.882710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184248, 33.120735, 35.838860>,  <25.330845, 33.308929, 35.812550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184248, 33.120735, 35.838860>,  <24.939919, 32.807079, 35.882710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184248, 33.120735, 35.838860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790327, -0.612186, 0.024722,
		-0.047725, -0.101739, -0.993666,
		0.610824, 0.784141, -0.109624,
		25.367495, 33.355976, 35.805973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431675, 32.711445, 35.366844>,  <24.939919, 32.807079, 35.882710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431675, 32.711445, 35.366844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599319, 32.971844, 35.619999>,  <25.699905, 33.128082, 35.771893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599319, 32.971844, 35.619999>,  <25.431675, 32.711445, 35.366844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599319, 32.971844, 35.619999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872947, -0.480568, -0.083767,
		0.249616, 0.587589, -0.769696,
		0.419112, 0.650994, 0.632892,
		25.725054, 33.167141, 35.809868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039831, 32.958473, 35.076450>,  <25.431675, 32.711445, 35.366844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039831, 32.958473, 35.076450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074215, 32.990269, 35.473698>,  <26.094845, 33.009346, 35.712048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074215, 32.990269, 35.473698>,  <26.039831, 32.958473, 35.076450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074215, 32.990269, 35.473698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895094, -0.443899, -0.041945,
		0.437512, 0.892544, -0.109308,
		0.085959, 0.079490, 0.993122,
		26.100002, 33.014114, 35.771633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776304, 33.263592, 35.296234>,  <26.039831, 32.958473, 35.076450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776304, 33.263592, 35.296234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643002, 33.035480, 35.596561>,  <26.563021, 32.898613, 35.776756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643002, 33.035480, 35.596561>,  <26.776304, 33.263592, 35.296234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643002, 33.035480, 35.596561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889396, -0.454438, 0.049601,
		0.312912, 0.684302, 0.658648,
		-0.333256, -0.570278, 0.750815,
		26.543024, 32.864395, 35.821804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337173, 33.295319, 35.785191>,  <26.776304, 33.263592, 35.296234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337173, 33.295319, 35.785191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108841, 32.984665, 35.891769>,  <26.971842, 32.798275, 35.955715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108841, 32.984665, 35.891769>,  <27.337173, 33.295319, 35.785191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108841, 32.984665, 35.891769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794472, -0.440532, 0.418025,
		-0.207275, 0.450304, 0.868483,
		-0.570834, -0.776632, 0.266442,
		26.937592, 32.751675, 35.971703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650200, 33.026390, 36.404404>,  <27.337173, 33.295319, 35.785191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650200, 33.026390, 36.404404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422035, 32.713341, 36.304699>,  <27.285137, 32.525513, 36.244877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422035, 32.713341, 36.304699>,  <27.650200, 33.026390, 36.404404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422035, 32.713341, 36.304699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590949, -0.601812, 0.537215,
		-0.570446, 0.159133, 0.805772,
		-0.570412, -0.782623, -0.249262,
		27.250912, 32.478554, 36.229919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.410793, 32.620457, 37.024441>,  <27.650200, 33.026390, 36.404404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.410793, 32.620457, 37.024441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406597, 32.356873, 36.723598>,  <27.404079, 32.198723, 36.543091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406597, 32.356873, 36.723598>,  <27.410793, 32.620457, 37.024441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406597, 32.356873, 36.723598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319205, -0.715004, 0.621995,
		-0.947628, -0.233551, 0.217844,
		-0.010492, -0.658956, -0.752108,
		27.403450, 32.159187, 36.497967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136551, 32.044323, 37.320038>,  <27.410793, 32.620457, 37.024441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136551, 32.044323, 37.320038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366350, 31.931187, 37.012802>,  <27.504229, 31.863306, 36.828461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366350, 31.931187, 37.012802>,  <27.136551, 32.044323, 37.320038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366350, 31.931187, 37.012802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379130, -0.739706, 0.555963,
		-0.725402, -0.610605, -0.317731,
		0.574501, -0.282835, -0.768084,
		27.538698, 31.846334, 36.782375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857981, 31.297817, 36.950954>,  <27.136551, 32.044323, 37.320038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857981, 31.297817, 36.950954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248154, 31.384291, 36.934013>,  <27.482258, 31.436174, 36.923847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248154, 31.384291, 36.934013>,  <26.857981, 31.297817, 36.950954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248154, 31.384291, 36.934013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206623, -0.831173, 0.516197,
		0.076391, -0.512267, -0.855422,
		0.975434, 0.216183, -0.042352,
		27.540783, 31.449146, 36.921307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902107, 30.900858, 36.317345>,  <26.857981, 31.297817, 36.950954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902107, 30.900858, 36.317345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023108, 30.706297, 35.989468>,  <27.095709, 30.589560, 35.792740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023108, 30.706297, 35.989468>,  <26.902107, 30.900858, 36.317345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023108, 30.706297, 35.989468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523481, -0.803460, 0.283582,
		-0.796527, 0.343308, -0.497679,
		0.302509, -0.486406, -0.819693,
		27.113859, 30.560375, 35.743557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536417, 30.867744, 35.661938>,  <26.902107, 30.900858, 36.317345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536417, 30.867744, 35.661938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807554, 31.137463, 35.779140>,  <26.970238, 31.299294, 35.849461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807554, 31.137463, 35.779140>,  <26.536417, 30.867744, 35.661938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807554, 31.137463, 35.779140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538770, -0.184409, -0.822022,
		-0.500254, 0.715065, -0.488292,
		0.677845, 0.674296, 0.293004,
		27.010908, 31.339752, 35.867043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388159, 31.623777, 35.843906>,  <26.536417, 30.867744, 35.661938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388159, 31.623777, 35.843906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661627, 31.876369, 35.990238>,  <26.825708, 32.027924, 36.078037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.661627, 31.876369, 35.990238>,  <26.388159, 31.623777, 35.843906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661627, 31.876369, 35.990238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634466, 0.762003, -0.129630,
		-0.360619, -0.143481, 0.921611,
		0.683671, 0.631478, 0.365827,
		26.866728, 32.065811, 36.099987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184763, 31.839073, 36.483910>,  <26.388159, 31.623777, 35.843906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184763, 31.839073, 36.483910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418339, 32.112499, 36.308750>,  <26.558485, 32.276554, 36.203655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418339, 32.112499, 36.308750>,  <26.184763, 31.839073, 36.483910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418339, 32.112499, 36.308750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752307, 0.658357, 0.024495,
		0.305038, 0.315132, 0.898690,
		0.583939, 0.683563, -0.437899,
		26.593521, 32.317570, 36.177380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087286, 32.440002, 36.941093>,  <26.184763, 31.839073, 36.483910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087286, 32.440002, 36.941093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220926, 32.560818, 36.583961>,  <26.301111, 32.633308, 36.369682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.220926, 32.560818, 36.583961>,  <26.087286, 32.440002, 36.941093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.220926, 32.560818, 36.583961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625644, 0.779547, 0.029596,
		0.704944, 0.548707, 0.449416,
		0.334101, 0.302038, -0.892832,
		26.321157, 32.651428, 36.316113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247265, 33.181107, 37.036552>,  <26.087286, 32.440002, 36.941093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247265, 33.181107, 37.036552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197111, 33.111088, 36.645935>,  <26.167019, 33.069077, 36.411564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197111, 33.111088, 36.645935>,  <26.247265, 33.181107, 37.036552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197111, 33.111088, 36.645935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755333, 0.655022, -0.020432,
		0.643234, 0.735054, -0.214348,
		-0.125384, -0.175047, -0.976544,
		26.159496, 33.058575, 36.352970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314072, 33.883274, 36.623943>,  <26.247265, 33.181107, 37.036552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314072, 33.883274, 36.623943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097454, 33.612865, 36.424053>,  <25.967484, 33.450623, 36.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097454, 33.612865, 36.424053>,  <26.314072, 33.883274, 36.623943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097454, 33.612865, 36.424053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759402, 0.648365, -0.054140,
		0.360606, 0.350175, -0.864489,
		-0.541546, -0.676018, -0.499728,
		25.934990, 33.410061, 36.274136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656883, 34.412025, 36.959393>,  <26.314072, 33.883274, 36.623943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656883, 34.412025, 36.959393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646708, 34.622581, 36.619446>,  <26.640602, 34.748917, 36.415478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646708, 34.622581, 36.619446>,  <26.656883, 34.412025, 36.959393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646708, 34.622581, 36.619446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965919, -0.206116, -0.156577,
		-0.257591, -0.824882, -0.503206,
		-0.025439, 0.526390, -0.849863,
		26.639076, 34.780499, 36.364487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949883, 34.044601, 36.350155>,  <26.656883, 34.412025, 36.959393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949883, 34.044601, 36.350155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974211, 34.442390, 36.315929>,  <26.988808, 34.681065, 36.295395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974211, 34.442390, 36.315929>,  <26.949883, 34.044601, 36.350155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974211, 34.442390, 36.315929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957784, -0.082278, -0.275463,
		-0.280980, -0.065194, -0.957497,
		0.060823, 0.994475, -0.085560,
		26.992458, 34.740734, 36.290260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340252, 34.187996, 35.844086>,  <26.949883, 34.044601, 36.350155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340252, 34.187996, 35.844086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384876, 34.473339, 36.120831>,  <27.411650, 34.644547, 36.286877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384876, 34.473339, 36.120831>,  <27.340252, 34.187996, 35.844086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384876, 34.473339, 36.120831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989850, -0.141446, -0.013767,
		0.088041, 0.686376, -0.721898,
		0.111559, 0.713359, 0.691862,
		27.418344, 34.687347, 36.328388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922848, 34.773087, 35.659134>,  <27.340252, 34.187996, 35.844086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922848, 34.773087, 35.659134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880821, 34.720341, 36.053406>,  <27.855606, 34.688694, 36.289970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880821, 34.720341, 36.053406>,  <27.922848, 34.773087, 35.659134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880821, 34.720341, 36.053406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992675, -0.073350, 0.095997,
		0.059641, 0.988550, 0.138610,
		-0.105065, -0.131869, 0.985683,
		27.849302, 34.680779, 36.349110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278175, 35.203457, 35.951984>,  <27.922848, 34.773087, 35.659134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278175, 35.203457, 35.951984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286976, 34.912094, 36.225903>,  <28.292257, 34.737278, 36.390255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.286976, 34.912094, 36.225903>,  <28.278175, 35.203457, 35.951984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286976, 34.912094, 36.225903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995190, 0.081363, 0.054568,
		-0.095465, 0.680300, 0.726690,
		0.022003, -0.728404, 0.684795,
		28.293577, 34.693573, 36.431339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716307, 35.451336, 36.590199>,  <28.278175, 35.203457, 35.951984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716307, 35.451336, 36.590199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727619, 35.051537, 36.595917>,  <28.734406, 34.811657, 36.599346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727619, 35.051537, 36.595917>,  <28.716307, 35.451336, 36.590199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727619, 35.051537, 36.595917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918476, 0.031625, 0.394210,
		-0.394464, 0.001982, 0.918909,
		0.028279, -0.999498, 0.014296,
		28.736103, 34.751686, 36.600204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924234, 35.280239, 37.278149>,  <28.716307, 35.451336, 36.590199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924234, 35.280239, 37.278149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017740, 35.000950, 37.007492>,  <29.073843, 34.833378, 36.845097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.017740, 35.000950, 37.007492>,  <28.924234, 35.280239, 37.278149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017740, 35.000950, 37.007492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895718, -0.116058, 0.429208,
		-0.378210, -0.706415, 0.598277,
		0.233764, -0.698219, -0.676643,
		29.087870, 34.791485, 36.804501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312519, 34.765217, 37.587166>,  <28.924234, 35.280239, 37.278149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312519, 34.765217, 37.587166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402905, 34.739899, 37.198334>,  <29.457136, 34.724709, 36.965034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402905, 34.739899, 37.198334>,  <29.312519, 34.765217, 37.587166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402905, 34.739899, 37.198334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935795, -0.263100, 0.234662,
		-0.270607, -0.962690, -0.000220,
		0.225965, -0.063296, -0.972077,
		29.470694, 34.720909, 36.906712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446882, 34.009521, 37.418919>,  <29.312519, 34.765217, 37.587166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446882, 34.009521, 37.418919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631756, 34.233234, 37.143646>,  <29.742680, 34.367462, 36.978481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631756, 34.233234, 37.143646>,  <29.446882, 34.009521, 37.418919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631756, 34.233234, 37.143646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838868, -0.527385, 0.134780,
		-0.287556, -0.639585, -0.712911,
		0.462182, 0.559281, -0.688180,
		29.770411, 34.401020, 36.937191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580675, 33.681915, 36.779984>,  <29.446882, 34.009521, 37.418919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580675, 33.681915, 36.779984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856649, 33.961899, 36.853794>,  <30.022234, 34.129890, 36.898079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856649, 33.961899, 36.853794>,  <29.580675, 33.681915, 36.779984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856649, 33.961899, 36.853794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715858, -0.697582, -0.030436,
		0.107415, 0.153091, -0.982357,
		0.689934, 0.699959, 0.184522,
		30.063629, 34.171886, 36.909149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024876, 33.639191, 36.286045>,  <29.580675, 33.681915, 36.779984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024876, 33.639191, 36.286045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232992, 33.809139, 36.582363>,  <30.357862, 33.911110, 36.760155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232992, 33.809139, 36.582363>,  <30.024876, 33.639191, 36.286045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232992, 33.809139, 36.582363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773428, -0.602230, -0.197809,
		0.362089, 0.675873, -0.641940,
		0.520290, 0.424870, 0.740800,
		30.389078, 33.936600, 36.804604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623365, 33.690029, 36.042103>,  <30.024876, 33.639191, 36.286045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623365, 33.690029, 36.042103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689960, 33.725483, 36.434925>,  <30.729918, 33.746754, 36.670616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689960, 33.725483, 36.434925>,  <30.623365, 33.690029, 36.042103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689960, 33.725483, 36.434925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831931, -0.547259, -0.091644,
		0.529314, 0.832257, -0.164850,
		0.166487, 0.088636, 0.982052,
		30.739906, 33.752075, 36.729542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207146, 34.162613, 36.147835>,  <30.623365, 33.690029, 36.042103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207146, 34.162613, 36.147835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163393, 33.937759, 36.475746>,  <31.137140, 33.802845, 36.672493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163393, 33.937759, 36.475746>,  <31.207146, 34.162613, 36.147835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163393, 33.937759, 36.475746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869461, -0.453811, -0.195173,
		0.481739, 0.691418, 0.538394,
		-0.109383, -0.562136, 0.819780,
		31.130579, 33.769119, 36.721680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596107, 34.317459, 36.645065>,  <31.207146, 34.162613, 36.147835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596107, 34.317459, 36.645065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525703, 33.923935, 36.631561>,  <31.483461, 33.687820, 36.623459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525703, 33.923935, 36.631561>,  <31.596107, 34.317459, 36.645065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525703, 33.923935, 36.631561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909503, -0.149403, -0.387922,
		0.376597, -0.098984, 0.921074,
		-0.176009, -0.983809, -0.033762,
		31.472900, 33.628792, 36.621433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073112, 34.146378, 37.199749>,  <31.596107, 34.317459, 36.645065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073112, 34.146378, 37.199749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804607, 33.873806, 37.316406>,  <31.643505, 33.710262, 37.386402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804607, 33.873806, 37.316406>,  <32.073112, 34.146378, 37.199749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804607, 33.873806, 37.316406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737164, -0.654848, 0.166625,
		0.077440, 0.326840, 0.941902,
		-0.671261, -0.681433, 0.291646,
		31.603230, 33.669376, 37.403900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414730, 33.845314, 37.749645>,  <32.073112, 34.146378, 37.199749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414730, 33.845314, 37.749645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142494, 33.584824, 37.615360>,  <31.979153, 33.428528, 37.534790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142494, 33.584824, 37.615360>,  <32.414730, 33.845314, 37.749645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142494, 33.584824, 37.615360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718710, -0.682421, -0.133255,
		-0.142316, -0.331971, 0.932492,
		-0.680590, -0.651227, -0.335710,
		31.938318, 33.389454, 37.514648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273678, 33.256012, 38.181580>,  <32.414730, 33.845314, 37.749645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273678, 33.256012, 38.181580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217239, 33.154243, 37.798882>,  <32.183376, 33.093182, 37.569263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217239, 33.154243, 37.798882>,  <32.273678, 33.256012, 38.181580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217239, 33.154243, 37.798882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762108, -0.644750, 0.059062,
		-0.631888, -0.720809, 0.284872,
		-0.141099, -0.254424, -0.956744,
		32.174911, 33.077915, 37.511860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058239, 33.608364, 38.402328>,  <32.273678, 33.256012, 38.181580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058239, 33.608364, 38.402328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351059, 33.880474, 38.416927>,  <33.526752, 34.043739, 38.425686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351059, 33.880474, 38.416927>,  <33.058239, 33.608364, 38.402328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351059, 33.880474, 38.416927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579893, -0.594125, -0.557441,
		-0.357527, 0.429240, -0.829414,
		0.732051, 0.680271, 0.036497,
		33.570675, 34.084557, 38.427876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493118, 33.466278, 37.746151>,  <33.058239, 33.608364, 38.402328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493118, 33.466278, 37.746151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132416, 33.421898, 37.579044>,  <32.915997, 33.395267, 37.478779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132416, 33.421898, 37.579044>,  <33.493118, 33.466278, 37.746151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132416, 33.421898, 37.579044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148119, 0.828660, -0.539799,
		0.406081, -0.548645, -0.730813,
		-0.901753, -0.110955, -0.417768,
		32.861889, 33.388611, 37.453712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405029, 33.470352, 36.939533>,  <33.493118, 33.466278, 37.746151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405029, 33.470352, 36.939533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050304, 33.604652, 37.066555>,  <32.837471, 33.685234, 37.142769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050304, 33.604652, 37.066555>,  <33.405029, 33.470352, 36.939533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050304, 33.604652, 37.066555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000418, 0.687722, -0.725973,
		-0.462134, -0.643668, -0.610020,
		-0.886810, 0.335752, 0.317551,
		32.784260, 33.705379, 37.161819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178108, 33.022800, 36.529686>,  <33.405029, 33.470352, 36.939533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178108, 33.022800, 36.529686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504505, 33.057358, 36.758312>,  <33.700344, 33.078091, 36.895489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504505, 33.057358, 36.758312>,  <33.178108, 33.022800, 36.529686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504505, 33.057358, 36.758312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577575, 0.162442, 0.800013,
		-0.023731, -0.982929, 0.182450,
		0.815993, 0.086393, 0.571570,
		33.749302, 33.083275, 36.929783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516453, 33.226696, 36.470886>,  <33.178108, 33.022800, 36.529686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516453, 33.226696, 36.470886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447170, 32.970772, 36.770390>,  <32.405602, 32.817215, 36.950092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447170, 32.970772, 36.770390>,  <32.516453, 33.226696, 36.470886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447170, 32.970772, 36.770390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836479, 0.496889, 0.231095,
		-0.519907, -0.586295, -0.621253,
		-0.173204, -0.639813, 0.748759,
		32.395210, 32.778828, 36.995018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821682, 32.812763, 36.298512>,  <32.516453, 33.226696, 36.470886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821682, 32.812763, 36.298512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924244, 32.863575, 36.681786>,  <31.985781, 32.894062, 36.911751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924244, 32.863575, 36.681786>,  <31.821682, 32.812763, 36.298512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924244, 32.863575, 36.681786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850421, 0.500805, 0.161176,
		-0.459391, -0.856188, 0.236435,
		0.256404, 0.127026, 0.958186,
		32.001163, 32.901684, 36.969242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244173, 32.610680, 36.716221>,  <31.821682, 32.812763, 36.298512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244173, 32.610680, 36.716221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452255, 32.865391, 36.943867>,  <31.577105, 33.018219, 37.080456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452255, 32.865391, 36.943867>,  <31.244173, 32.610680, 36.716221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452255, 32.865391, 36.943867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803959, 0.589967, 0.074757,
		-0.288158, -0.496437, 0.818850,
		0.520207, 0.636780, 0.569119,
		31.608316, 33.056423, 37.114601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855896, 32.759502, 37.332527>,  <31.244173, 32.610680, 36.716221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855896, 32.759502, 37.332527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116932, 33.052982, 37.256832>,  <31.273554, 33.229069, 37.211414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116932, 33.052982, 37.256832>,  <30.855896, 32.759502, 37.332527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116932, 33.052982, 37.256832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730419, 0.675577, 0.100424,
		0.201526, 0.072687, 0.976783,
		0.652592, 0.733698, -0.189238,
		31.312710, 33.273090, 37.200062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986162, 33.147198, 37.891270>,  <30.855896, 32.759502, 37.332527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986162, 33.147198, 37.891270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033455, 33.337528, 37.542648>,  <31.061831, 33.451725, 37.333473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.033455, 33.337528, 37.542648>,  <30.986162, 33.147198, 37.891270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033455, 33.337528, 37.542648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696108, 0.665646, 0.268979,
		0.708135, 0.574896, 0.409925,
		0.118230, 0.475826, -0.871557,
		31.068924, 33.480274, 37.281181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885914, 33.858932, 38.026443>,  <30.986162, 33.147198, 37.891270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885914, 33.858932, 38.026443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857285, 33.855946, 37.627480>,  <30.840107, 33.854153, 37.388103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.857285, 33.855946, 37.627480>,  <30.885914, 33.858932, 38.026443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857285, 33.855946, 37.627480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714277, 0.698348, 0.046026,
		0.696194, 0.715719, -0.055319,
		-0.071573, -0.007470, -0.997407,
		30.835814, 33.853706, 37.328259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997940, 34.564911, 37.794643>,  <30.885914, 33.858932, 38.026443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997940, 34.564911, 37.794643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814287, 34.363880, 37.501629>,  <30.704096, 34.243259, 37.325821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814287, 34.363880, 37.501629>,  <30.997940, 34.564911, 37.794643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814287, 34.363880, 37.501629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669531, 0.737730, -0.086503,
		0.583890, 0.450741, -0.675208,
		-0.459131, -0.502581, -0.732538,
		30.676548, 34.213104, 37.281868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890453, 34.993107, 37.208309>,  <30.997940, 34.564911, 37.794643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890453, 34.993107, 37.208309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608850, 34.709602, 37.226318>,  <30.439888, 34.539497, 37.237125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608850, 34.709602, 37.226318>,  <30.890453, 34.993107, 37.208309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608850, 34.709602, 37.226318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709784, 0.704336, -0.010812,
		-0.024050, -0.039571, -0.998927,
		-0.704008, -0.708763, 0.045027,
		30.397648, 34.496975, 37.239826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476318, 35.094578, 36.625362>,  <30.890453, 34.993107, 37.208309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476318, 35.094578, 36.625362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330587, 34.944290, 36.966209>,  <30.243149, 34.854118, 37.170715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330587, 34.944290, 36.966209>,  <30.476318, 35.094578, 36.625362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330587, 34.944290, 36.966209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643866, 0.762702, 0.061007,
		-0.672831, -0.526420, -0.519789,
		-0.364329, -0.375722, 0.852113,
		30.221289, 34.831573, 37.221844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756771, 35.076309, 36.545727>,  <30.476318, 35.094578, 36.625362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756771, 35.076309, 36.545727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888021, 35.114182, 36.921677>,  <29.966772, 35.136906, 37.147247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888021, 35.114182, 36.921677>,  <29.756771, 35.076309, 36.545727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888021, 35.114182, 36.921677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741282, 0.642525, 0.194069,
		-0.585520, -0.760393, 0.281015,
		0.328128, 0.094681, 0.939876,
		29.986460, 35.142586, 37.203640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022762, 34.922752, 35.845245>,  <29.756771, 35.076309, 36.545727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022762, 34.922752, 35.845245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076370, 35.187565, 35.550285>,  <30.108536, 35.346451, 35.373310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076370, 35.187565, 35.550285>,  <30.022762, 34.922752, 35.845245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076370, 35.187565, 35.550285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987797, -0.029670, 0.152892,
		0.079341, -0.748891, -0.657926,
		0.134020, 0.662028, -0.737399,
		30.116577, 35.386173, 35.329067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672180, 34.774128, 35.502434>,  <30.022762, 34.922752, 35.845245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672180, 34.774128, 35.502434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622524, 35.162678, 35.421413>,  <30.592731, 35.395805, 35.372803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622524, 35.162678, 35.421413>,  <30.672180, 34.774128, 35.502434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622524, 35.162678, 35.421413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978962, 0.153208, 0.134762,
		0.161936, -0.181559, -0.969955,
		-0.124138, 0.971372, -0.202549,
		30.585283, 35.454090, 35.360649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188787, 35.001492, 34.969425>,  <30.672180, 34.774128, 35.502434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188787, 35.001492, 34.969425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059164, 35.259094, 35.246624>,  <30.981390, 35.413654, 35.412941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059164, 35.259094, 35.246624>,  <31.188787, 35.001492, 34.969425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059164, 35.259094, 35.246624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942915, 0.160414, 0.291853,
		0.076790, 0.748012, -0.659228,
		-0.324059, 0.644008, 0.692994,
		30.961946, 35.452297, 35.454521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575449, 35.618423, 34.857010>,  <31.188787, 35.001492, 34.969425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575449, 35.618423, 34.857010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451029, 35.583759, 35.235584>,  <31.376377, 35.562962, 35.462727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451029, 35.583759, 35.235584>,  <31.575449, 35.618423, 34.857010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451029, 35.583759, 35.235584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936197, 0.143541, 0.320830,
		-0.163656, 0.985843, 0.036484,
		-0.311051, -0.086661, 0.946434,
		31.357714, 35.557762, 35.519516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410112, 36.151588, 34.441532>,  <31.575449, 35.618423, 34.857010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410112, 36.151588, 34.441532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392096, 36.546555, 34.380882>,  <31.381285, 36.783535, 34.344494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392096, 36.546555, 34.380882>,  <31.410112, 36.151588, 34.441532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392096, 36.546555, 34.380882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415389, 0.156547, 0.896072,
		0.908528, -0.022622, -0.417211,
		-0.045042, 0.987411, -0.151624,
		31.378584, 36.842777, 34.335396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360106, 35.459084, 34.181400>,  <31.410112, 36.151588, 34.441532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360106, 35.459084, 34.181400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411484, 35.087025, 34.043804>,  <31.442310, 34.863789, 33.961246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411484, 35.087025, 34.043804>,  <31.360106, 35.459084, 34.181400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411484, 35.087025, 34.043804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463052, 0.250483, -0.850200,
		0.876974, 0.268493, -0.398532,
		0.128447, -0.930145, -0.343993,
		31.450018, 34.807980, 33.940605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624136, 35.467274, 33.494667>,  <31.360106, 35.459084, 34.181400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624136, 35.467274, 33.494667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413960, 35.128841, 33.530563>,  <31.287853, 34.925781, 33.552101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413960, 35.128841, 33.530563>,  <31.624136, 35.467274, 33.494667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413960, 35.128841, 33.530563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304588, 0.088566, -0.948358,
		0.794442, -0.525641, -0.304243,
		-0.525441, -0.846084, 0.089743,
		31.256327, 34.875015, 33.557487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859699, 34.993385, 33.027859>,  <31.624136, 35.467274, 33.494667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859699, 34.993385, 33.027859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502855, 34.835876, 33.116482>,  <31.288750, 34.741371, 33.169655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502855, 34.835876, 33.116482>,  <31.859699, 34.993385, 33.027859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502855, 34.835876, 33.116482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225853, -0.036063, -0.973494,
		0.391324, -0.918501, -0.056762,
		-0.892108, -0.393772, 0.221558,
		31.235224, 34.717747, 33.182949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757385, 34.352161, 32.710297>,  <31.859699, 34.993385, 33.027859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757385, 34.352161, 32.710297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414165, 34.545727, 32.779087>,  <31.208233, 34.661865, 32.820362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414165, 34.545727, 32.779087>,  <31.757385, 34.352161, 32.710297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414165, 34.545727, 32.779087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217475, -0.039012, -0.975286,
		-0.465248, -0.874244, 0.138714,
		-0.858049, 0.483917, 0.171976,
		31.156752, 34.690903, 32.830681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128487, 35.020020, 32.353722>,  <31.757385, 34.352161, 32.710297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128487, 35.020020, 32.353722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131554, 35.160385, 31.979172>,  <32.133392, 35.244606, 31.754442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131554, 35.160385, 31.979172>,  <32.128487, 35.020020, 32.353722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131554, 35.160385, 31.979172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933749, -0.337609, -0.118880,
		-0.357846, -0.873429, -0.330255,
		0.007664, 0.350916, -0.936376,
		32.133854, 35.265659, 31.698259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283863, 34.582836, 31.717741>,  <32.128487, 35.020020, 32.353722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283863, 34.582836, 31.717741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430946, 34.946453, 31.639334>,  <32.519196, 35.164623, 31.592289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430946, 34.946453, 31.639334>,  <32.283863, 34.582836, 31.717741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430946, 34.946453, 31.639334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847563, -0.414345, -0.331596,
		-0.382656, -0.044207, -0.922833,
		0.367712, 0.909046, -0.196019,
		32.541260, 35.219166, 31.580528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580479, 34.671753, 31.013186>,  <32.283863, 34.582836, 31.717741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580479, 34.671753, 31.013186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745438, 34.947586, 31.251314>,  <32.844414, 35.113087, 31.394192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745438, 34.947586, 31.251314>,  <32.580479, 34.671753, 31.013186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745438, 34.947586, 31.251314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910612, -0.331202, -0.247167,
		0.026730, 0.644037, -0.764527,
		0.412397, 0.689581, 0.595321,
		32.869156, 35.154461, 31.429911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207863, 35.049702, 30.714445>,  <32.580479, 34.671753, 31.013186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207863, 35.049702, 30.714445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249027, 35.017014, 31.110975>,  <33.273727, 34.997398, 31.348894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249027, 35.017014, 31.110975>,  <33.207863, 35.049702, 30.714445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249027, 35.017014, 31.110975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821476, -0.554984, -0.131034,
		0.560880, 0.827837, 0.010018,
		0.102915, -0.081724, 0.991327,
		33.279903, 34.992496, 31.408373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847168, 35.327675, 31.107311>,  <33.207863, 35.049702, 30.714445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847168, 35.327675, 31.107311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752270, 34.963276, 31.242243>,  <33.695332, 34.744637, 31.323202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752270, 34.963276, 31.242243>,  <33.847168, 35.327675, 31.107311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752270, 34.963276, 31.242243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936142, -0.307165, -0.171139,
		0.259522, 0.275184, 0.925701,
		-0.237248, -0.911002, 0.337327,
		33.681095, 34.689976, 31.343441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324097, 35.253624, 31.803881>,  <33.847168, 35.327675, 31.107311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324097, 35.253624, 31.803881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466175, 34.978790, 32.057415>,  <34.551422, 34.813889, 32.209534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466175, 34.978790, 32.057415>,  <34.324097, 35.253624, 31.803881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466175, 34.978790, 32.057415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879081, -0.014939, 0.476439,
		-0.317885, -0.726422, -0.609310,
		0.355199, -0.687086, 0.633835,
		34.572735, 34.772663, 32.247566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333664, 35.830235, 31.305067>,  <34.324097, 35.253624, 31.803881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333664, 35.830235, 31.305067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496037, 35.707581, 30.960695>,  <34.593460, 35.633987, 30.754072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496037, 35.707581, 30.960695>,  <34.333664, 35.830235, 31.305067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496037, 35.707581, 30.960695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782966, 0.602559, 0.154553,
		0.471368, -0.736814, 0.484683,
		0.405928, -0.306639, -0.860927,
		34.617813, 35.615589, 30.702417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120228, 35.615131, 31.379232>,  <34.333664, 35.830235, 31.305067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120228, 35.615131, 31.379232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077503, 35.690720, 30.988770>,  <35.051868, 35.736073, 30.754492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077503, 35.690720, 30.988770>,  <35.120228, 35.615131, 31.379232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077503, 35.690720, 30.988770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870691, 0.491831, -0.000057,
		0.480094, -0.849937, -0.217064,
		-0.106807, 0.188968, -0.976157,
		35.045460, 35.747410, 30.695923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677288, 35.421310, 31.092937>,  <35.120228, 35.615131, 31.379232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677288, 35.421310, 31.092937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531296, 35.694622, 30.839981>,  <35.443699, 35.858608, 30.688208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531296, 35.694622, 30.839981>,  <35.677288, 35.421310, 31.092937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531296, 35.694622, 30.839981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853719, 0.516604, 0.065450,
		0.371417, -0.515998, -0.771878,
		-0.364983, 0.683277, -0.632393,
		35.421803, 35.899605, 30.650263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262352, 35.675201, 30.673189>,  <35.677288, 35.421310, 31.092937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262352, 35.675201, 30.673189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991531, 35.951145, 30.570667>,  <35.829037, 36.116711, 30.509155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991531, 35.951145, 30.570667>,  <36.262352, 35.675201, 30.673189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991531, 35.951145, 30.570667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734113, 0.608632, -0.301074,
		-0.051705, -0.391999, -0.918511,
		-0.677056, 0.689858, -0.256302,
		35.788414, 36.158104, 30.493776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481724, 35.957146, 29.959940>,  <36.262352, 35.675201, 30.673189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481724, 35.957146, 29.959940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244762, 36.243095, 30.108541>,  <36.102585, 36.414665, 30.197702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244762, 36.243095, 30.108541>,  <36.481724, 35.957146, 29.959940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244762, 36.243095, 30.108541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672373, 0.692734, -0.260833,
		-0.443815, 0.095269, -0.891040,
		-0.592404, 0.714873, 0.371502,
		36.067039, 36.457558, 30.219992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502064, 36.503864, 29.499525>,  <36.481724, 35.957146, 29.959940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502064, 36.503864, 29.499525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370956, 36.670528, 29.838692>,  <36.292294, 36.770527, 30.042192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370956, 36.670528, 29.838692>,  <36.502064, 36.503864, 29.499525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370956, 36.670528, 29.838692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501391, 0.837393, -0.217670,
		-0.800734, 0.353793, -0.483380,
		-0.327769, 0.416658, 0.847918,
		36.272625, 36.795525, 30.093067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325779, 37.171543, 29.240953>,  <36.502064, 36.503864, 29.499525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325779, 37.171543, 29.240953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357555, 37.220974, 29.636614>,  <36.376621, 37.250633, 29.874010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357555, 37.220974, 29.636614>,  <36.325779, 37.171543, 29.240953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357555, 37.220974, 29.636614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699874, 0.699677, -0.143623,
		-0.709834, 0.703691, -0.030901,
		0.079446, 0.123576, 0.989150,
		36.381390, 37.258045, 29.933359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425007, 37.802837, 29.317320>,  <36.325779, 37.171543, 29.240953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425007, 37.802837, 29.317320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559853, 37.676277, 29.672003>,  <36.640759, 37.600342, 29.884811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559853, 37.676277, 29.672003>,  <36.425007, 37.802837, 29.317320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559853, 37.676277, 29.672003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680782, 0.732482, 0.002546,
		-0.650301, 0.602795, 0.462328,
		0.337112, -0.316400, 0.886705,
		36.660988, 37.581356, 29.938015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529957, 38.392204, 29.667894>,  <36.425007, 37.802837, 29.317320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529957, 38.392204, 29.667894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746746, 38.113861, 29.856384>,  <36.876820, 37.946854, 29.969479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746746, 38.113861, 29.856384>,  <36.529957, 38.392204, 29.667894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746746, 38.113861, 29.856384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710832, 0.678687, 0.184666,
		-0.448314, 0.234876, 0.862466,
		0.541971, -0.695857, 0.471223,
		36.909336, 37.905106, 29.997751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722252, 38.764790, 30.204126>,  <36.529957, 38.392204, 29.667894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722252, 38.764790, 30.204126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968071, 38.454124, 30.148821>,  <37.115562, 38.267723, 30.115639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968071, 38.454124, 30.148821>,  <36.722252, 38.764790, 30.204126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968071, 38.454124, 30.148821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783130, 0.579512, 0.225551,
		-0.095053, -0.246890, 0.964370,
		0.614550, -0.776667, -0.138262,
		37.152435, 38.221123, 30.107342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361588, 38.912971, 30.569134>,  <36.722252, 38.764790, 30.204126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361588, 38.912971, 30.569134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458118, 38.632000, 30.301296>,  <37.516037, 38.463417, 30.140594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458118, 38.632000, 30.301296>,  <37.361588, 38.912971, 30.569134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458118, 38.632000, 30.301296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862755, 0.471202, -0.183366,
		0.444315, -0.533443, 0.719738,
		0.241327, -0.702429, -0.669593,
		37.530518, 38.421272, 30.100418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188778, 38.765034, 30.654942>,  <37.361588, 38.912971, 30.569134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188778, 38.765034, 30.654942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093403, 38.607735, 30.299751>,  <38.036179, 38.513355, 30.086637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093403, 38.607735, 30.299751>,  <38.188778, 38.765034, 30.654942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093403, 38.607735, 30.299751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766669, 0.485031, -0.420670,
		0.596125, -0.781087, 0.185843,
		-0.238440, -0.393252, -0.887975,
		38.021870, 38.489758, 30.033360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755054, 38.699757, 30.342381>,  <38.188778, 38.765034, 30.654942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755054, 38.699757, 30.342381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524830, 38.671707, 30.016483>,  <38.386696, 38.654877, 29.820946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524830, 38.671707, 30.016483>,  <38.755054, 38.699757, 30.342381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524830, 38.671707, 30.016483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697620, 0.477734, -0.533945,
		0.426673, -0.875701, -0.226047,
		-0.575567, -0.070124, -0.814742,
		38.352161, 38.650669, 29.772060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178066, 38.563736, 29.766174>,  <38.755054, 38.699757, 30.342381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178066, 38.563736, 29.766174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846264, 38.718796, 29.605354>,  <38.647182, 38.811832, 29.508862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846264, 38.718796, 29.605354>,  <39.178066, 38.563736, 29.766174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846264, 38.718796, 29.605354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558466, 0.567911, -0.604643,
		-0.006063, -0.726086, -0.687576,
		-0.829505, 0.387654, -0.402052,
		38.597412, 38.835091, 29.484739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182789, 38.473240, 29.046137>,  <39.178066, 38.563736, 29.766174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182789, 38.473240, 29.046137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946835, 38.789341, 29.112499>,  <38.805260, 38.979004, 29.152317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946835, 38.789341, 29.112499>,  <39.182789, 38.473240, 29.046137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946835, 38.789341, 29.112499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535424, 0.536593, -0.652218,
		-0.604443, -0.295907, -0.739653,
		-0.589889, 0.790257, 0.165904,
		38.769867, 39.026417, 29.162270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939896, 38.636749, 28.395088>,  <39.182789, 38.473240, 29.046137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939896, 38.636749, 28.395088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905785, 38.975563, 28.604948>,  <38.885319, 39.178852, 28.730864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905785, 38.975563, 28.604948>,  <38.939896, 38.636749, 28.395088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905785, 38.975563, 28.604948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490822, 0.493956, -0.717706,
		-0.867076, 0.196306, -0.457867,
		-0.085276, 0.847037, 0.524649,
		38.880203, 39.229675, 28.762342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665585, 39.170891, 27.908922>,  <38.939896, 38.636749, 28.395088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665585, 39.170891, 27.908922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819057, 39.386181, 28.209082>,  <38.911140, 39.515354, 28.389177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819057, 39.386181, 28.209082>,  <38.665585, 39.170891, 27.908922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819057, 39.386181, 28.209082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516823, 0.548262, -0.657497,
		-0.765300, 0.640092, -0.067813,
		0.383680, 0.538230, 0.750399,
		38.934162, 39.547649, 28.434202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673637, 39.736904, 27.705488>,  <38.665585, 39.170891, 27.908922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673637, 39.736904, 27.705488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953938, 39.762447, 27.989704>,  <39.122120, 39.777775, 28.160233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953938, 39.762447, 27.989704>,  <38.673637, 39.736904, 27.705488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953938, 39.762447, 27.989704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568434, 0.551844, -0.610205,
		-0.431074, 0.831499, 0.350407,
		0.700755, 0.063860, 0.710538,
		39.164165, 39.781605, 28.202866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945095, 40.446804, 27.717207>,  <38.673637, 39.736904, 27.705488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945095, 40.446804, 27.717207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230980, 40.228809, 27.892559>,  <39.402512, 40.098015, 27.997770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.230980, 40.228809, 27.892559>,  <38.945095, 40.446804, 27.717207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230980, 40.228809, 27.892559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698565, 0.525337, -0.485826,
		0.034470, 0.653464, 0.756173,
		0.714715, -0.544983, 0.438379,
		39.445396, 40.065315, 28.024073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494659, 40.911694, 27.795637>,  <38.945095, 40.446804, 27.717207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494659, 40.911694, 27.795637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675117, 40.558857, 27.849863>,  <39.783390, 40.347153, 27.882399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675117, 40.558857, 27.849863>,  <39.494659, 40.911694, 27.795637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675117, 40.558857, 27.849863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775610, 0.312386, -0.548493,
		0.441475, 0.352594, 0.825093,
		0.451142, -0.882096, 0.135565,
		39.810459, 40.294228, 27.890532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293423, 41.076889, 27.810410>,  <39.494659, 40.911694, 27.795637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293423, 41.076889, 27.810410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280521, 40.680477, 27.758539>,  <40.272781, 40.442631, 27.727417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280521, 40.680477, 27.758539>,  <40.293423, 41.076889, 27.810410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280521, 40.680477, 27.758539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799903, 0.052194, -0.597856,
		0.599262, -0.123013, 0.791045,
		-0.032256, -0.991032, -0.129677,
		40.270844, 40.383167, 27.719637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824539, 40.935444, 28.046888>,  <40.293423, 41.076889, 27.810410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824539, 40.935444, 28.046888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748341, 40.621502, 27.811020>,  <40.702621, 40.433136, 27.669498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748341, 40.621502, 27.811020>,  <40.824539, 40.935444, 28.046888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748341, 40.621502, 27.811020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846968, 0.172297, -0.502950,
		0.496342, -0.595244, 0.631925,
		-0.190499, -0.784856, -0.589671,
		40.691193, 40.386044, 27.634119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518261, 40.546520, 28.011215>,  <40.824539, 40.935444, 28.046888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518261, 40.546520, 28.011215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296417, 40.419224, 27.703672>,  <41.163311, 40.342846, 27.519148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296417, 40.419224, 27.703672>,  <41.518261, 40.546520, 28.011215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296417, 40.419224, 27.703672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828597, -0.126353, -0.545400,
		0.076421, -0.939552, 0.333768,
		-0.554605, -0.318239, -0.768855,
		41.130035, 40.323753, 27.473017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894485, 39.846889, 27.784866>,  <41.518261, 40.546520, 28.011215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894485, 39.846889, 27.784866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678761, 40.015446, 27.493231>,  <41.549328, 40.116581, 27.318249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678761, 40.015446, 27.493231>,  <41.894485, 39.846889, 27.784866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678761, 40.015446, 27.493231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781729, -0.071407, -0.619517,
		-0.313123, -0.904062, -0.290906,
		-0.539309, 0.421395, -0.729090,
		41.516968, 40.141865, 27.274504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106804, 39.506847, 27.163506>,  <41.894485, 39.846889, 27.784866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106804, 39.506847, 27.163506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924541, 39.846737, 27.057411>,  <41.815182, 40.050671, 26.993755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924541, 39.846737, 27.057411>,  <42.106804, 39.506847, 27.163506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924541, 39.846737, 27.057411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661068, 0.123478, -0.740096,
		-0.596124, -0.512571, -0.617987,
		-0.455659, 0.849720, -0.265236,
		41.787842, 40.101654, 26.977840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333096, 39.650795, 26.447369>,  <42.106804, 39.506847, 27.163506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333096, 39.650795, 26.447369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152195, 39.986267, 26.568750>,  <42.043655, 40.187550, 26.641579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152195, 39.986267, 26.568750>,  <42.333096, 39.650795, 26.447369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152195, 39.986267, 26.568750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526144, 0.525602, -0.668517,
		-0.720168, -0.142677, -0.678970,
		-0.452250, 0.838681, 0.303454,
		42.016521, 40.237873, 26.659786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282986, 40.081493, 25.769629>,  <42.333096, 39.650795, 26.447369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282986, 40.081493, 25.769629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245892, 40.319912, 26.088659>,  <42.223637, 40.462963, 26.280077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.245892, 40.319912, 26.088659>,  <42.282986, 40.081493, 25.769629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.245892, 40.319912, 26.088659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567102, 0.690025, -0.449734,
		-0.818410, 0.410601, -0.402010,
		-0.092736, 0.596048, 0.797576,
		42.218071, 40.498726, 26.327932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944920, 40.673481, 25.600048>,  <42.282986, 40.081493, 25.769629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944920, 40.673481, 25.600048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175346, 40.750313, 25.917852>,  <42.313602, 40.796413, 26.108536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175346, 40.750313, 25.917852>,  <41.944920, 40.673481, 25.600048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175346, 40.750313, 25.917852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551943, 0.625537, -0.551419,
		-0.602913, 0.756181, 0.254336,
		0.576069, 0.192079, 0.794513,
		42.348167, 40.807938, 26.156206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819687, 41.406200, 25.727423>,  <41.944920, 40.673481, 25.600048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819687, 41.406200, 25.727423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176765, 41.325565, 25.888643>,  <42.391014, 41.277184, 25.985376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176765, 41.325565, 25.888643>,  <41.819687, 41.406200, 25.727423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176765, 41.325565, 25.888643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450651, 0.402987, -0.796564,
		-0.001844, 0.892727, 0.450594,
		0.892698, -0.201592, 0.403052,
		42.444576, 41.265087, 26.009560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226410, 42.020599, 25.652317>,  <41.819687, 41.406200, 25.727423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226410, 42.020599, 25.652317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453201, 41.693359, 25.690796>,  <42.589275, 41.497017, 25.713884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.453201, 41.693359, 25.690796>,  <42.226410, 42.020599, 25.652317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453201, 41.693359, 25.690796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358122, 0.139639, -0.923174,
		0.741813, 0.557868, 0.372151,
		0.566976, -0.818098, 0.096198,
		42.623295, 41.447929, 25.719656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.893295, 42.251572, 25.499121>,  <42.226410, 42.020599, 25.652317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.893295, 42.251572, 25.499121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955093, 41.857910, 25.464300>,  <42.992172, 41.621716, 25.443407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955093, 41.857910, 25.464300>,  <42.893295, 42.251572, 25.499121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955093, 41.857910, 25.464300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562381, 0.160044, -0.811242,
		0.812316, 0.076378, 0.578194,
		0.154497, -0.984151, -0.087053,
		43.001442, 41.562664, 25.438185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618183, 42.129101, 25.396542>,  <42.893295, 42.251572, 25.499121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618183, 42.129101, 25.396542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415894, 41.830212, 25.224073>,  <43.294521, 41.650879, 25.120592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415894, 41.830212, 25.224073>,  <43.618183, 42.129101, 25.396542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415894, 41.830212, 25.224073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542993, 0.112676, -0.832144,
		0.670377, -0.654955, 0.348752,
		-0.505721, -0.747220, -0.431171,
		43.264175, 41.606045, 25.094723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971764, 41.552380, 25.202761>,  <43.618183, 42.129101, 25.396542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971764, 41.552380, 25.202761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667278, 41.482506, 24.952946>,  <43.484589, 41.440582, 24.803057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.667278, 41.482506, 24.952946>,  <43.971764, 41.552380, 25.202761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.667278, 41.482506, 24.952946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626932, 0.048112, -0.777587,
		0.165876, -0.983449, 0.072889,
		-0.761210, -0.174679, -0.624537,
		43.438915, 41.430103, 24.765585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295273, 41.106682, 24.684700>,  <43.971764, 41.552380, 25.202761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295273, 41.106682, 24.684700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950260, 41.221375, 24.517929>,  <43.743252, 41.290192, 24.417866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950260, 41.221375, 24.517929>,  <44.295273, 41.106682, 24.684700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950260, 41.221375, 24.517929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475352, 0.176714, -0.861866,
		-0.173448, -0.941571, -0.288720,
		-0.862529, 0.286732, -0.416927,
		43.691502, 41.307396, 24.392851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160988, 40.707497, 23.978907>,  <44.295273, 41.106682, 24.684700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160988, 40.707497, 23.978907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956001, 41.050961, 23.982620>,  <43.833012, 41.257038, 23.984848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956001, 41.050961, 23.982620>,  <44.160988, 40.707497, 23.978907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956001, 41.050961, 23.982620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457133, 0.281947, -0.843526,
		-0.726918, -0.428033, -0.537008,
		-0.512465, 0.858658, 0.009284,
		43.802261, 41.308559, 23.985405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.773708, 40.814205, 23.363747>,  <44.160988, 40.707497, 23.978907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.773708, 40.814205, 23.363747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820026, 41.183285, 23.510834>,  <43.847816, 41.404732, 23.599085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820026, 41.183285, 23.510834>,  <43.773708, 40.814205, 23.363747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820026, 41.183285, 23.510834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473555, 0.274139, -0.837015,
		-0.873119, 0.271057, -0.405205,
		0.115796, 0.922700, 0.367716,
		43.854767, 41.460094, 23.621149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554077, 41.291660, 22.803221>,  <43.773708, 40.814205, 23.363747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554077, 41.291660, 22.803221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790363, 41.492744, 23.055679>,  <43.932133, 41.613396, 23.207153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.790363, 41.492744, 23.055679>,  <43.554077, 41.291660, 22.803221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.790363, 41.492744, 23.055679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581237, 0.277435, -0.764979,
		-0.559663, 0.818727, -0.128308,
		0.590712, 0.502708, 0.631144,
		43.967579, 41.643559, 23.245022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917366, 41.629578, 22.337038>,  <43.554077, 41.291660, 22.803221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917366, 41.629578, 22.337038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114819, 41.751911, 22.662685>,  <44.233292, 41.825310, 22.858074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114819, 41.751911, 22.662685>,  <43.917366, 41.629578, 22.337038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114819, 41.751911, 22.662685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749832, 0.324534, -0.576567,
		-0.440542, 0.895067, -0.069122,
		0.493634, 0.305832, 0.814121,
		44.262909, 41.843662, 22.906921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138844, 42.284782, 22.231882>,  <43.917366, 41.629578, 22.337038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138844, 42.284782, 22.231882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393528, 42.142807, 22.505705>,  <44.546337, 42.057621, 22.669998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.393528, 42.142807, 22.505705>,  <44.138844, 42.284782, 22.231882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393528, 42.142807, 22.505705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769242, 0.230721, -0.595848,
		0.053548, 0.905972, 0.419937,
		0.636710, -0.354940, 0.684557,
		44.584541, 42.036324, 22.711073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689789, 42.779945, 22.230932>,  <44.138844, 42.284782, 22.231882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689789, 42.779945, 22.230932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845711, 42.457329, 22.408714>,  <44.939262, 42.263760, 22.515385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.845711, 42.457329, 22.408714>,  <44.689789, 42.779945, 22.230932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845711, 42.457329, 22.408714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903079, 0.240312, -0.355948,
		0.180279, 0.540130, 0.822046,
		0.389806, -0.806542, 0.444457,
		44.962654, 42.215366, 22.542051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291229, 43.037502, 22.419403>,  <44.689789, 42.779945, 22.230932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291229, 43.037502, 22.419403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.331444, 42.640671, 22.449511>,  <45.355572, 42.402573, 22.467575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.331444, 42.640671, 22.449511>,  <45.291229, 43.037502, 22.419403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331444, 42.640671, 22.449511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942509, 0.070733, -0.326610,
		0.318700, 0.103778, 0.942157,
		0.100537, -0.992082, 0.075269,
		45.361607, 42.343044, 22.472092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.911530, 42.903023, 22.782980>,  <45.291229, 43.037502, 22.419403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.911530, 42.903023, 22.782980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839722, 42.566021, 22.579821>,  <45.796638, 42.363819, 22.457924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.839722, 42.566021, 22.579821>,  <45.911530, 42.903023, 22.782980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.839722, 42.566021, 22.579821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952748, -0.020300, -0.303082,
		0.245037, -0.538310, 0.806337,
		-0.179521, -0.842502, -0.507900,
		45.785866, 42.313271, 22.427450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463860, 42.355877, 22.835730>,  <45.911530, 42.903023, 22.782980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463860, 42.355877, 22.835730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278976, 42.308712, 22.484169>,  <46.168049, 42.280415, 22.273233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278976, 42.308712, 22.484169>,  <46.463860, 42.355877, 22.835730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278976, 42.308712, 22.484169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886551, -0.083631, -0.455009,
		-0.019854, -0.989497, 0.143186,
		-0.462205, -0.117908, -0.878899,
		46.140316, 42.273338, 22.220499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.690632, 41.658245, 22.496416>,  <46.463860, 42.355877, 22.835730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.690632, 41.658245, 22.496416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602962, 41.981369, 22.277546>,  <46.550362, 42.175243, 22.146223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602962, 41.981369, 22.277546>,  <46.690632, 41.658245, 22.496416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602962, 41.981369, 22.277546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938341, 0.020844, -0.345082,
		-0.267357, -0.589070, -0.762573,
		-0.219173, 0.807813, -0.547175,
		46.537212, 42.223713, 22.113394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978584, 41.622944, 21.813532>,  <46.690632, 41.658245, 22.496416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978584, 41.622944, 21.813532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956596, 42.012520, 21.901543>,  <46.943405, 42.246265, 21.954350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956596, 42.012520, 21.901543>,  <46.978584, 41.622944, 21.813532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.956596, 42.012520, 21.901543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885072, 0.149532, -0.440782,
		-0.462197, 0.170509, -0.870230,
		-0.054970, 0.973944, 0.220026,
		46.940105, 42.304703, 21.967550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.223934, 41.991451, 21.276079>,  <46.978584, 41.622944, 21.813532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.223934, 41.991451, 21.276079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.255966, 42.254025, 21.576126>,  <47.275185, 42.411568, 21.756155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.255966, 42.254025, 21.576126>,  <47.223934, 41.991451, 21.276079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.255966, 42.254025, 21.576126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953664, 0.168497, -0.249264,
		-0.290019, 0.735322, -0.612528,
		0.080080, 0.656438, 0.750118,
		47.279991, 42.450954, 21.801161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.381046, 42.765594, 21.159983>,  <47.223934, 41.991451, 21.276079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.381046, 42.765594, 21.159983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531475, 42.611870, 21.497236>,  <47.621731, 42.519634, 21.699589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531475, 42.611870, 21.497236>,  <47.381046, 42.765594, 21.159983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.531475, 42.611870, 21.497236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917194, 0.025123, -0.397649,
		0.131640, 0.922860, 0.361939,
		0.376067, -0.384315, 0.843134,
		47.644295, 42.496574, 21.750177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.260689, 42.274902, 20.425293>,  <47.381046, 42.765594, 21.159983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.260689, 42.274902, 20.425293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118069, 42.116917, 20.086620>,  <47.032497, 42.022125, 19.883417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118069, 42.116917, 20.086620>,  <47.260689, 42.274902, 20.425293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.118069, 42.116917, 20.086620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412868, -0.746345, 0.522024,
		-0.838099, 0.535698, 0.103043,
		-0.356553, -0.394965, -0.846683,
		47.011105, 41.998428, 19.832615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550362, 42.073376, 20.466457>,  <47.260689, 42.274902, 20.425293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550362, 42.073376, 20.466457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.711739, 41.836502, 20.187443>,  <46.808563, 41.694378, 20.020035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.711739, 41.836502, 20.187443>,  <46.550362, 42.073376, 20.466457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.711739, 41.836502, 20.187443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516746, -0.776580, 0.360413,
		-0.755123, 0.215044, -0.619311,
		0.403439, -0.592183, -0.697536,
		46.832771, 41.658848, 19.978182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037914, 41.751522, 19.978262>,  <46.550362, 42.073376, 20.466457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037914, 41.751522, 19.978262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341728, 41.497799, 20.035898>,  <46.524017, 41.345566, 20.070480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341728, 41.497799, 20.035898>,  <46.037914, 41.751522, 19.978262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341728, 41.497799, 20.035898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620379, -0.639808, 0.453624,
		-0.195547, -0.433933, -0.879467,
		0.759533, -0.634308, 0.144091,
		46.569588, 41.307507, 20.079124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979897, 41.157803, 19.631903>,  <46.037914, 41.751522, 19.978262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979897, 41.157803, 19.631903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186462, 41.080864, 19.965685>,  <46.310402, 41.034702, 20.165955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186462, 41.080864, 19.965685>,  <45.979897, 41.157803, 19.631903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186462, 41.080864, 19.965685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684476, -0.678283, 0.267255,
		0.514592, -0.709180, -0.481931,
		0.516418, -0.192343, 0.834456,
		46.341389, 41.023163, 20.216022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939445, 40.460011, 19.661991>,  <45.979897, 41.157803, 19.631903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939445, 40.460011, 19.661991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030975, 40.601368, 20.024815>,  <46.085896, 40.686180, 20.242508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030975, 40.601368, 20.024815>,  <45.939445, 40.460011, 19.661991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030975, 40.601368, 20.024815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749534, -0.530597, 0.395810,
		0.621158, -0.770443, 0.143462,
		0.228828, 0.353390, 0.907057,
		46.099625, 40.707386, 20.296932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595341, 39.941666, 20.090401>,  <45.939445, 40.460011, 19.661991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595341, 39.941666, 20.090401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695854, 40.227955, 20.351044>,  <45.756165, 40.399731, 20.507429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695854, 40.227955, 20.351044>,  <45.595341, 39.941666, 20.090401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695854, 40.227955, 20.351044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809880, -0.213185, 0.546486,
		0.530047, -0.665048, 0.526081,
		0.251287, 0.715726, 0.651607,
		45.771240, 40.442673, 20.546526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600807, 39.631977, 20.779196>,  <45.595341, 39.941666, 20.090401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600807, 39.631977, 20.779196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535233, 40.021290, 20.843496>,  <45.495888, 40.254879, 20.882076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.535233, 40.021290, 20.843496>,  <45.600807, 39.631977, 20.779196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.535233, 40.021290, 20.843496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638254, -0.228901, 0.735007,
		0.752168, 0.017892, 0.658728,
		-0.163935, 0.973285, 0.160752,
		45.486053, 40.313274, 20.891722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856571, 39.741638, 21.380217>,  <45.600807, 39.631977, 20.779196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856571, 39.741638, 21.380217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583355, 40.027672, 21.320738>,  <45.419426, 40.199291, 21.285051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583355, 40.027672, 21.320738>,  <45.856571, 39.741638, 21.380217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583355, 40.027672, 21.320738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531556, -0.347068, 0.772653,
		0.500904, 0.606793, 0.617168,
		-0.683040, 0.715085, -0.148697,
		45.378445, 40.242199, 21.276129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651630, 39.908127, 22.064600>,  <45.856571, 39.741638, 21.380217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651630, 39.908127, 22.064600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381630, 40.055511, 21.808910>,  <45.219627, 40.143940, 21.655497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381630, 40.055511, 21.808910>,  <45.651630, 39.908127, 22.064600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381630, 40.055511, 21.808910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737792, -0.330409, 0.588637,
		0.005684, 0.868946, 0.494874,
		-0.675004, 0.368460, -0.639223,
		45.179127, 40.166050, 21.617144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119259, 40.199150, 22.479383>,  <45.651630, 39.908127, 22.064600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119259, 40.199150, 22.479383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933281, 40.149822, 22.128698>,  <44.821693, 40.120228, 21.918287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933281, 40.149822, 22.128698>,  <45.119259, 40.199150, 22.479383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933281, 40.149822, 22.128698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850331, -0.213525, 0.480983,
		-0.246513, 0.969123, -0.005583,
		-0.464940, -0.123316, -0.876712,
		44.793800, 40.112827, 21.865685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511749, 40.612259, 22.471622>,  <45.119259, 40.199150, 22.479383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511749, 40.612259, 22.471622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469349, 40.297333, 22.228672>,  <44.443909, 40.108379, 22.082901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469349, 40.297333, 22.228672>,  <44.511749, 40.612259, 22.471622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469349, 40.297333, 22.228672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889195, -0.198348, 0.412299,
		-0.445079, 0.583781, -0.679047,
		-0.106005, -0.787311, -0.607376,
		44.437546, 40.061138, 22.046459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830330, 40.729626, 22.151211>,  <44.511749, 40.612259, 22.471622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830330, 40.729626, 22.151211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914215, 40.339821, 22.119350>,  <43.964546, 40.105938, 22.100235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914215, 40.339821, 22.119350>,  <43.830330, 40.729626, 22.151211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914215, 40.339821, 22.119350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911996, -0.224333, 0.343420,
		-0.352536, 0.000621, -0.935798,
		0.209717, -0.974512, -0.079651,
		43.977131, 40.047466, 22.095455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293846, 40.449245, 21.645767>,  <43.830330, 40.729626, 22.151211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293846, 40.449245, 21.645767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428135, 40.142010, 21.863878>,  <43.508709, 39.957668, 21.994745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428135, 40.142010, 21.863878>,  <43.293846, 40.449245, 21.645767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428135, 40.142010, 21.863878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940151, -0.309103, 0.143428,
		0.058382, -0.560797, -0.825893,
		0.335720, -0.768090, 0.545280,
		43.528851, 39.911583, 22.027462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782330, 39.970966, 21.576639>,  <43.293846, 40.449245, 21.645767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782330, 39.970966, 21.576639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990265, 39.816010, 21.881191>,  <43.115025, 39.723034, 22.063923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990265, 39.816010, 21.881191>,  <42.782330, 39.970966, 21.576639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990265, 39.816010, 21.881191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826885, -0.452022, 0.334571,
		0.214550, -0.803495, -0.555306,
		0.519837, -0.387391, 0.761379,
		43.146217, 39.699791, 22.109606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568615, 39.337902, 21.506344>,  <42.782330, 39.970966, 21.576639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568615, 39.337902, 21.506344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739681, 39.350567, 21.867697>,  <42.842319, 39.358166, 22.084509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739681, 39.350567, 21.867697>,  <42.568615, 39.337902, 21.506344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739681, 39.350567, 21.867697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760558, -0.527501, 0.378542,
		0.488522, -0.848964, -0.201510,
		0.427666, 0.031666, 0.903382,
		42.867981, 39.360065, 22.138712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586117, 38.636650, 21.793499>,  <42.568615, 39.337902, 21.506344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586117, 38.636650, 21.793499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591888, 38.870304, 22.118109>,  <42.595352, 39.010498, 22.312876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.591888, 38.870304, 22.118109>,  <42.586117, 38.636650, 21.793499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591888, 38.870304, 22.118109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689504, -0.581965, 0.431162,
		0.724138, -0.565773, 0.394367,
		0.014432, 0.584139, 0.811526,
		42.596218, 39.045547, 22.361567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610916, 38.203079, 22.454588>,  <42.586117, 38.636650, 21.793499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610916, 38.203079, 22.454588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458130, 38.552231, 22.576033>,  <42.366459, 38.761723, 22.648899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.458130, 38.552231, 22.576033>,  <42.610916, 38.203079, 22.454588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458130, 38.552231, 22.576033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727712, -0.486581, 0.483398,
		0.569679, -0.036298, 0.821065,
		-0.381968, 0.872881, 0.303609,
		42.343540, 38.814095, 22.667116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501411, 38.177162, 23.189064>,  <42.610916, 38.203079, 22.454588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501411, 38.177162, 23.189064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259350, 38.485455, 23.109312>,  <42.114113, 38.670429, 23.061460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259350, 38.485455, 23.109312>,  <42.501411, 38.177162, 23.189064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259350, 38.485455, 23.109312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657215, -0.342321, 0.671479,
		0.449279, 0.537388, 0.713696,
		-0.605158, 0.770734, -0.199381,
		42.077801, 38.716675, 23.049498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318600, 38.491024, 23.768293>,  <42.501411, 38.177162, 23.189064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318600, 38.491024, 23.768293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002945, 38.595222, 23.545799>,  <41.813553, 38.657742, 23.412302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002945, 38.595222, 23.545799>,  <42.318600, 38.491024, 23.768293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002945, 38.595222, 23.545799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612867, -0.393886, 0.685017,
		-0.040647, 0.881473, 0.470483,
		-0.789140, 0.260500, -0.556235,
		41.766201, 38.673374, 23.378929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810959, 38.695690, 24.195333>,  <42.318600, 38.491024, 23.768293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810959, 38.695690, 24.195333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579388, 38.631336, 23.875593>,  <41.440445, 38.592724, 23.683750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579388, 38.631336, 23.875593>,  <41.810959, 38.695690, 24.195333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579388, 38.631336, 23.875593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688859, -0.428007, 0.585051,
		-0.436253, 0.889340, 0.136958,
		-0.578928, -0.160885, -0.799349,
		41.405708, 38.583069, 23.635788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054024, 38.942249, 24.346046>,  <41.810959, 38.695690, 24.195333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054024, 38.942249, 24.346046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063766, 38.681664, 24.042730>,  <41.069611, 38.525314, 23.860741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.063766, 38.681664, 24.042730>,  <41.054024, 38.942249, 24.346046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063766, 38.681664, 24.042730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847244, -0.416072, 0.330244,
		-0.530644, 0.634415, -0.562080,
		0.024354, -0.651462, -0.758291,
		41.071072, 38.486225, 23.815243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359634, 38.778595, 24.257957>,  <41.054024, 38.942249, 24.346046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359634, 38.778595, 24.257957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516705, 38.491993, 24.027332>,  <40.610947, 38.320030, 23.888958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516705, 38.491993, 24.027332>,  <40.359634, 38.778595, 24.257957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516705, 38.491993, 24.027332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714456, -0.632417, 0.299336,
		-0.579104, 0.294386, -0.760247,
		0.392672, -0.716510, -0.576561,
		40.634506, 38.277039, 23.854364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814045, 38.598835, 23.746679>,  <40.359634, 38.778595, 24.257957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814045, 38.598835, 23.746679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091805, 38.311565, 23.764732>,  <40.258461, 38.139202, 23.775564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091805, 38.311565, 23.764732>,  <39.814045, 38.598835, 23.746679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091805, 38.311565, 23.764732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705488, -0.667086, 0.239338,
		-0.141778, -0.198038, -0.969887,
		0.694396, -0.718176, 0.045135,
		40.300125, 38.096111, 23.778273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559475, 38.005802, 23.362234>,  <39.814045, 38.598835, 23.746679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559475, 38.005802, 23.362234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825871, 37.874718, 23.630283>,  <39.985706, 37.796066, 23.791113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825871, 37.874718, 23.630283>,  <39.559475, 38.005802, 23.362234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825871, 37.874718, 23.630283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702280, -0.578340, 0.415120,
		0.251521, -0.747080, -0.615312,
		0.665988, -0.327710, 0.670124,
		40.025665, 37.776405, 23.831320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353939, 37.331871, 23.423185>,  <39.559475, 38.005802, 23.362234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353939, 37.331871, 23.423185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584938, 37.390087, 23.744513>,  <39.723537, 37.425018, 23.937309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584938, 37.390087, 23.744513>,  <39.353939, 37.331871, 23.423185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584938, 37.390087, 23.744513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599782, -0.591920, 0.538417,
		0.553862, -0.792748, -0.254536,
		0.577494, 0.145543, 0.803317,
		39.758186, 37.433750, 23.985508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496712, 36.684818, 23.727871>,  <39.353939, 37.331871, 23.423185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496712, 36.684818, 23.727871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552170, 36.955990, 24.016645>,  <39.585445, 37.118690, 24.189911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552170, 36.955990, 24.016645>,  <39.496712, 36.684818, 23.727871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552170, 36.955990, 24.016645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641317, -0.494023, 0.587072,
		0.754645, -0.544386, 0.366270,
		0.138648, 0.677927, 0.721937,
		39.593765, 37.159367, 24.233227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641457, 36.332119, 24.300060>,  <39.496712, 36.684818, 23.727871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641457, 36.332119, 24.300060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533550, 36.693115, 24.434368>,  <39.468807, 36.909714, 24.514952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533550, 36.693115, 24.434368>,  <39.641457, 36.332119, 24.300060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533550, 36.693115, 24.434368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505926, -0.429529, 0.748027,
		0.819308, 0.031918, 0.572465,
		-0.269766, 0.902489, 0.335768,
		39.452621, 36.963863, 24.535099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762020, 36.390434, 25.079716>,  <39.641457, 36.332119, 24.300060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762020, 36.390434, 25.079716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506435, 36.688854, 25.004745>,  <39.353085, 36.867908, 24.959763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506435, 36.688854, 25.004745>,  <39.762020, 36.390434, 25.079716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506435, 36.688854, 25.004745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591287, -0.320498, 0.740041,
		0.492039, 0.583683, 0.645919,
		-0.638965, 0.746053, -0.187427,
		39.314747, 36.912670, 24.948517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565144, 36.555244, 25.713419>,  <39.762020, 36.390434, 25.079716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565144, 36.555244, 25.713419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282528, 36.732273, 25.492535>,  <39.112957, 36.838490, 25.360004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282528, 36.732273, 25.492535>,  <39.565144, 36.555244, 25.713419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282528, 36.732273, 25.492535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706893, -0.404743, 0.580073,
		0.033219, 0.800198, 0.598815,
		-0.706540, 0.442567, -0.552210,
		39.070564, 36.865044, 25.326872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126984, 36.967808, 26.166159>,  <39.565144, 36.555244, 25.713419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126984, 36.967808, 26.166159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891010, 36.867302, 25.859213>,  <38.749428, 36.806999, 25.675045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891010, 36.867302, 25.859213>,  <39.126984, 36.967808, 26.166159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891010, 36.867302, 25.859213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642331, -0.429828, 0.634554,
		-0.489277, 0.867244, 0.092173,
		-0.589932, -0.251267, -0.767363,
		38.714031, 36.791924, 25.629004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567783, 36.857471, 26.483110>,  <39.126984, 36.967808, 26.166159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567783, 36.857471, 26.483110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478554, 36.716888, 26.119415>,  <38.425014, 36.632538, 25.901197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478554, 36.716888, 26.119415>,  <38.567783, 36.857471, 26.483110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478554, 36.716888, 26.119415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602230, -0.683760, 0.412057,
		-0.766522, 0.639490, -0.059129,
		-0.223076, -0.351460, -0.909237,
		38.411633, 36.611450, 25.846643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843639, 36.802067, 26.392998>,  <38.567783, 36.857471, 26.483110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843639, 36.802067, 26.392998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992096, 36.533401, 26.136522>,  <38.081169, 36.372204, 25.982637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992096, 36.533401, 26.136522>,  <37.843639, 36.802067, 26.392998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992096, 36.533401, 26.136522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637200, -0.686493, 0.350291,
		-0.675448, 0.278557, -0.682771,
		0.371141, -0.671665, -0.641187,
		38.103439, 36.331902, 25.944166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263954, 36.580582, 26.009556>,  <37.843639, 36.802067, 26.392998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263954, 36.580582, 26.009556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531063, 36.289310, 25.947788>,  <37.691326, 36.114548, 25.910728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531063, 36.289310, 25.947788>,  <37.263954, 36.580582, 26.009556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531063, 36.289310, 25.947788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691685, -0.683665, 0.232753,
		-0.275055, -0.048616, -0.960198,
		0.667770, -0.728175, -0.154418,
		37.731396, 36.070858, 25.901463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019714, 36.081600, 25.601709>,  <37.263954, 36.580582, 26.009556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019714, 36.081600, 25.601709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281040, 35.892754, 25.838449>,  <37.437836, 35.779446, 25.980494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281040, 35.892754, 25.838449>,  <37.019714, 36.081600, 25.601709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281040, 35.892754, 25.838449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745370, -0.538119, 0.393512,
		0.132702, -0.698234, -0.703463,
		0.653310, -0.472120, 0.591852,
		37.477032, 35.751118, 26.016005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811256, 35.394238, 25.549067>,  <37.019714, 36.081600, 25.601709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811256, 35.394238, 25.549067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038597, 35.396843, 25.878170>,  <37.175003, 35.398407, 26.075632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038597, 35.396843, 25.878170>,  <36.811256, 35.394238, 25.549067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038597, 35.396843, 25.878170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655524, -0.600753, 0.457585,
		0.497257, -0.799408, -0.337168,
		0.568352, 0.006515, 0.822760,
		37.209103, 35.398796, 26.124998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735523, 34.778221, 25.853779>,  <36.811256, 35.394238, 25.549067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735523, 34.778221, 25.853779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889217, 34.991867, 26.154999>,  <36.981434, 35.120056, 26.335732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889217, 34.991867, 26.154999>,  <36.735523, 34.778221, 25.853779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889217, 34.991867, 26.154999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625561, -0.449268, 0.637834,
		0.678998, -0.716157, 0.161496,
		0.384234, 0.534113, 0.753052,
		37.004486, 35.152100, 26.380915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904278, 34.301163, 26.310480>,  <36.735523, 34.778221, 25.853779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904278, 34.301163, 26.310480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899368, 34.619686, 26.552387>,  <36.896423, 34.810799, 26.697531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899368, 34.619686, 26.552387>,  <36.904278, 34.301163, 26.310480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899368, 34.619686, 26.552387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487730, -0.532752, 0.691589,
		0.872908, -0.286477, 0.394920,
		-0.012270, 0.796308, 0.604766,
		36.895687, 34.858578, 26.733818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208775, 34.055759, 27.098574>,  <36.904278, 34.301163, 26.310480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208775, 34.055759, 27.098574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987766, 34.387775, 27.128910>,  <36.855160, 34.586987, 27.147112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987766, 34.387775, 27.128910>,  <37.208775, 34.055759, 27.098574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987766, 34.387775, 27.128910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459165, -0.379055, 0.803421,
		0.695618, 0.409087, 0.590562,
		-0.552525, 0.830039, 0.075839,
		36.822010, 34.636787, 27.151661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304115, 34.317242, 27.738707>,  <37.208775, 34.055759, 27.098574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304115, 34.317242, 27.738707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946388, 34.448971, 27.617546>,  <36.731754, 34.528008, 27.544849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.946388, 34.448971, 27.617546>,  <37.304115, 34.317242, 27.738707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946388, 34.448971, 27.617546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421440, -0.392580, 0.817477,
		0.150297, 0.858737, 0.489879,
		-0.894315, 0.329319, -0.302903,
		36.678093, 34.547768, 27.526674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996960, 34.707539, 28.276825>,  <37.304115, 34.317242, 27.738707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996960, 34.707539, 28.276825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679108, 34.639015, 28.043856>,  <36.488396, 34.597900, 27.904074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679108, 34.639015, 28.043856>,  <36.996960, 34.707539, 28.276825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679108, 34.639015, 28.043856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518712, -0.306890, 0.797970,
		-0.315437, 0.936201, 0.155005,
		-0.794630, -0.171306, -0.582423,
		36.440720, 34.587624, 27.869129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455074, 34.879993, 28.746115>,  <36.996960, 34.707539, 28.276825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455074, 34.879993, 28.746115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255756, 34.700710, 28.449247>,  <36.136166, 34.593140, 28.271128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255756, 34.700710, 28.449247>,  <36.455074, 34.879993, 28.746115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255756, 34.700710, 28.449247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559063, -0.488177, 0.670173,
		-0.662686, 0.748861, -0.007321,
		-0.498293, -0.448207, -0.742169,
		36.106270, 34.566250, 28.226597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870346, 34.865406, 28.991859>,  <36.455074, 34.879993, 28.746115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870346, 34.865406, 28.991859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860004, 34.590439, 28.701540>,  <35.853798, 34.425457, 28.527348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860004, 34.590439, 28.701540>,  <35.870346, 34.865406, 28.991859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860004, 34.590439, 28.701540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657877, -0.534959, 0.530110,
		-0.752681, 0.491195, -0.438405,
		-0.025859, -0.687420, -0.725800,
		35.852245, 34.384212, 28.483801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225086, 34.943436, 28.637657>,  <35.870346, 34.865406, 28.991859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225086, 34.943436, 28.637657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361290, 34.574379, 28.565228>,  <35.443012, 34.352943, 28.521770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361290, 34.574379, 28.565228>,  <35.225086, 34.943436, 28.637657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361290, 34.574379, 28.565228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860296, -0.383433, 0.335962,
		-0.379398, 0.041369, -0.924308,
		0.340512, -0.922642, -0.181063,
		35.463440, 34.297585, 28.510904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718552, 34.572056, 28.413666>,  <35.225086, 34.943436, 28.637657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718552, 34.572056, 28.413666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951385, 34.262722, 28.514174>,  <35.091084, 34.077122, 28.574478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951385, 34.262722, 28.514174>,  <34.718552, 34.572056, 28.413666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951385, 34.262722, 28.514174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800959, -0.492037, 0.341122,
		-0.140168, -0.399817, -0.905814,
		0.582080, -0.773334, 0.251270,
		35.126011, 34.030724, 28.589554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438763, 33.970322, 28.073475>,  <34.718552, 34.572056, 28.413666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438763, 33.970322, 28.073475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661980, 33.879784, 28.392815>,  <34.795910, 33.825462, 28.584419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661980, 33.879784, 28.392815>,  <34.438763, 33.970322, 28.073475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661980, 33.879784, 28.392815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809129, -0.361894, 0.462972,
		0.184128, -0.904324, -0.385091,
		0.558038, -0.226342, 0.798350,
		34.829391, 33.811882, 28.632320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103542, 34.400501, 27.502989>,  <34.438763, 33.970322, 28.073475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103542, 34.400501, 27.502989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716564, 34.465961, 27.425764>,  <33.484379, 34.505238, 27.379429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716564, 34.465961, 27.425764>,  <34.103542, 34.400501, 27.502989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716564, 34.465961, 27.425764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252776, 0.662694, -0.704941,
		0.012575, -0.730791, -0.682485,
		-0.967443, 0.163651, -0.193060,
		33.426331, 34.515057, 27.367846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964828, 34.184254, 26.803459>,  <34.103542, 34.400501, 27.502989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964828, 34.184254, 26.803459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715153, 34.468666, 26.932957>,  <33.565346, 34.639313, 27.010656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715153, 34.468666, 26.932957>,  <33.964828, 34.184254, 26.803459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715153, 34.468666, 26.932957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324119, 0.612716, -0.720782,
		-0.710865, -0.344975, -0.612913,
		-0.624193, 0.711036, 0.323746,
		33.527893, 34.681976, 27.030081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626820, 34.548595, 26.214306>,  <33.964828, 34.184254, 26.803459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626820, 34.548595, 26.214306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572021, 34.837894, 26.485050>,  <33.539143, 35.011475, 26.647497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.572021, 34.837894, 26.485050>,  <33.626820, 34.548595, 26.214306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572021, 34.837894, 26.485050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032199, 0.686195, -0.726705,
		-0.990048, -0.077760, -0.117292,
		-0.136994, 0.723249, 0.676863,
		33.530922, 35.054871, 26.688108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164352, 35.043148, 25.837341>,  <33.626820, 34.548595, 26.214306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164352, 35.043148, 25.837341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322231, 35.239845, 26.147800>,  <33.416958, 35.357864, 26.334076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322231, 35.239845, 26.147800>,  <33.164352, 35.043148, 25.837341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322231, 35.239845, 26.147800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282783, 0.738713, -0.611831,
		-0.874213, 0.460969, 0.152512,
		0.394698, 0.491743, 0.776146,
		33.440639, 35.387367, 26.380644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085693, 35.789948, 25.735229>,  <33.164352, 35.043148, 25.837341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085693, 35.789948, 25.735229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380684, 35.762863, 26.004017>,  <33.557678, 35.746613, 26.165289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380684, 35.762863, 26.004017>,  <33.085693, 35.789948, 25.735229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380684, 35.762863, 26.004017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508484, 0.710493, -0.486461,
		-0.444491, 0.700439, 0.558402,
		0.737477, -0.067711, 0.671969,
		33.601929, 35.742550, 26.205608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294350, 36.519154, 25.793823>,  <33.085693, 35.789948, 25.735229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294350, 36.519154, 25.793823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606777, 36.331619, 25.958813>,  <33.794231, 36.219101, 26.057806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606777, 36.331619, 25.958813>,  <33.294350, 36.519154, 25.793823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606777, 36.331619, 25.958813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621975, 0.642826, -0.447126,
		-0.055521, 0.605782, 0.793691,
		0.781066, -0.468831, 0.412472,
		33.841099, 36.190971, 26.082554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568653, 37.038574, 26.153603>,  <33.294350, 36.519154, 25.793823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568653, 37.038574, 26.153603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866444, 36.773907, 26.117954>,  <34.045120, 36.615105, 26.096565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866444, 36.773907, 26.117954>,  <33.568653, 37.038574, 26.153603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866444, 36.773907, 26.117954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522776, 0.660747, -0.538627,
		0.415279, 0.354407, 0.837818,
		0.744479, -0.661671, -0.089120,
		34.089787, 36.575405, 26.091219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172760, 37.370071, 26.318827>,  <33.568653, 37.038574, 26.153603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172760, 37.370071, 26.318827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320023, 37.059212, 26.114672>,  <34.408379, 36.872696, 25.992178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320023, 37.059212, 26.114672>,  <34.172760, 37.370071, 26.318827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320023, 37.059212, 26.114672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644834, 0.608890, -0.461998,
		0.669813, -0.159029, 0.725300,
		0.368157, -0.777151, -0.510390,
		34.430470, 36.826065, 25.961555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857243, 37.447014, 26.355503>,  <34.172760, 37.370071, 26.318827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857243, 37.447014, 26.355503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787930, 37.244247, 26.017744>,  <34.746342, 37.122589, 25.815088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787930, 37.244247, 26.017744>,  <34.857243, 37.447014, 26.355503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787930, 37.244247, 26.017744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469522, 0.711148, -0.523276,
		0.865749, -0.487139, 0.114778,
		-0.173284, -0.506917, -0.844398,
		34.735943, 37.092171, 25.764425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431919, 37.485294, 26.043362>,  <34.857243, 37.447014, 26.355503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431919, 37.485294, 26.043362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196846, 37.352661, 25.748150>,  <35.055801, 37.273083, 25.571022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196846, 37.352661, 25.748150>,  <35.431919, 37.485294, 26.043362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196846, 37.352661, 25.748150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644173, 0.360185, -0.674765,
		0.489566, -0.871964, 0.001922,
		-0.587679, -0.331580, -0.738030,
		35.020542, 37.253189, 25.526741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858696, 37.182098, 25.546141>,  <35.431919, 37.485294, 26.043362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858696, 37.182098, 25.546141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522301, 37.275154, 25.350746>,  <35.320465, 37.330986, 25.233509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522301, 37.275154, 25.350746>,  <35.858696, 37.182098, 25.546141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522301, 37.275154, 25.350746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540439, 0.404272, -0.737896,
		0.025816, -0.884558, -0.465715,
		-0.840987, 0.232641, -0.488486,
		35.270004, 37.344948, 25.204201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987648, 36.904556, 24.908878>,  <35.858696, 37.182098, 25.546141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987648, 36.904556, 24.908878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687534, 37.157990, 24.833368>,  <35.507465, 37.310051, 24.788063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.687534, 37.157990, 24.833368>,  <35.987648, 36.904556, 24.908878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687534, 37.157990, 24.833368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511393, 0.375247, -0.773089,
		-0.418983, -0.676577, -0.605555,
		-0.750287, 0.633588, -0.188775,
		35.462448, 37.348064, 24.776735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698574, 36.767075, 24.259150>,  <35.987648, 36.904556, 24.908878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698574, 36.767075, 24.259150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656494, 37.150875, 24.363678>,  <35.631245, 37.381157, 24.426395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656494, 37.150875, 24.363678>,  <35.698574, 36.767075, 24.259150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656494, 37.150875, 24.363678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502721, 0.278042, -0.818514,
		-0.858024, 0.045265, -0.511612,
		-0.105199, 0.959502, 0.261322,
		35.624935, 37.438725, 24.442074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562313, 37.039051, 23.630703>,  <35.698574, 36.767075, 24.259150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562313, 37.039051, 23.630703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679188, 37.331177, 23.877693>,  <35.749313, 37.506451, 24.025887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679188, 37.331177, 23.877693>,  <35.562313, 37.039051, 23.630703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679188, 37.331177, 23.877693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630257, 0.338570, -0.698674,
		-0.719307, 0.593310, -0.361358,
		0.292186, 0.730310, 0.617474,
		35.766842, 37.550270, 24.062935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609306, 37.598026, 23.175369>,  <35.562313, 37.039051, 23.630703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609306, 37.598026, 23.175369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828972, 37.672493, 23.501255>,  <35.960770, 37.717175, 23.696787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828972, 37.672493, 23.501255>,  <35.609306, 37.598026, 23.175369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828972, 37.672493, 23.501255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763180, 0.285536, -0.579677,
		-0.340549, 0.940111, 0.014725,
		0.549165, 0.186171, 0.814713,
		35.993721, 37.728344, 23.745668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851604, 38.299004, 23.079096>,  <35.609306, 37.598026, 23.175369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851604, 38.299004, 23.079096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096661, 38.129646, 23.346052>,  <36.243694, 38.028034, 23.506226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096661, 38.129646, 23.346052>,  <35.851604, 38.299004, 23.079096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096661, 38.129646, 23.346052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772017, 0.139709, -0.620057,
		0.169287, 0.895110, 0.412457,
		0.612643, -0.423391, 0.667389,
		36.280453, 38.002628, 23.546268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401062, 38.811066, 23.242588>,  <35.851604, 38.299004, 23.079096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401062, 38.811066, 23.242588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559521, 38.451103, 23.315510>,  <36.654594, 38.235126, 23.359262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559521, 38.451103, 23.315510>,  <36.401062, 38.811066, 23.242588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559521, 38.451103, 23.315510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779900, 0.224995, -0.584065,
		0.484587, 0.373554, 0.790969,
		0.396145, -0.899908, 0.182305,
		36.678364, 38.181129, 23.370201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162834, 38.942280, 23.343119>,  <36.401062, 38.811066, 23.242588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162834, 38.942280, 23.343119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133686, 38.547222, 23.287621>,  <37.116196, 38.310188, 23.254322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.133686, 38.547222, 23.287621>,  <37.162834, 38.942280, 23.343119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133686, 38.547222, 23.287621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706267, 0.047119, -0.706376,
		0.704185, -0.149465, 0.694107,
		-0.072873, -0.987644, -0.138743,
		37.111824, 38.250931, 23.245998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801559, 38.729733, 23.355307>,  <37.162834, 38.942280, 23.343119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801559, 38.729733, 23.355307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635151, 38.410919, 23.180191>,  <37.535305, 38.219631, 23.075123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635151, 38.410919, 23.180191>,  <37.801559, 38.729733, 23.355307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635151, 38.410919, 23.180191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771400, -0.054394, -0.634021,
		0.481525, -0.601476, 0.637464,
		-0.416023, -0.797037, -0.437787,
		37.510345, 38.171806, 23.048855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389919, 38.330185, 23.174580>,  <37.801559, 38.729733, 23.355307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389919, 38.330185, 23.174580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077473, 38.172070, 22.981251>,  <37.890003, 38.077198, 22.865253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077473, 38.172070, 22.981251>,  <38.389919, 38.330185, 23.174580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077473, 38.172070, 22.981251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557005, -0.091381, -0.825467,
		0.282135, -0.913998, 0.291560,
		-0.781118, -0.395293, -0.483320,
		37.843136, 38.053482, 22.836254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590195, 37.755878, 22.980083>,  <38.389919, 38.330185, 23.174580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590195, 37.755878, 22.980083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303802, 37.898727, 22.740139>,  <38.131966, 37.984436, 22.596172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303802, 37.898727, 22.740139>,  <38.590195, 37.755878, 22.980083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303802, 37.898727, 22.740139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660614, 0.068745, -0.747572,
		-0.225735, -0.931525, -0.285138,
		-0.715984, 0.357119, -0.599860,
		38.089008, 38.005863, 22.560181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822071, 37.521687, 22.266394>,  <38.590195, 37.755878, 22.980083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822071, 37.521687, 22.266394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595863, 37.850338, 22.237801>,  <38.460140, 38.047531, 22.220644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595863, 37.850338, 22.237801>,  <38.822071, 37.521687, 22.266394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595863, 37.850338, 22.237801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673459, 0.410019, -0.615091,
		-0.476070, -0.395985, -0.785209,
		-0.565518, 0.821632, -0.071482,
		38.426208, 38.096828, 22.216356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885231, 37.735580, 21.579155>,  <38.822071, 37.521687, 22.266394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885231, 37.735580, 21.579155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768723, 38.053715, 21.791798>,  <38.698818, 38.244595, 21.919384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768723, 38.053715, 21.791798>,  <38.885231, 37.735580, 21.579155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768723, 38.053715, 21.791798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669026, 0.566556, -0.481060,
		-0.683788, 0.215541, -0.697120,
		-0.291269, 0.795334, 0.531607,
		38.681343, 38.292316, 21.951281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131599, 38.365597, 21.058559>,  <38.885231, 37.735580, 21.579155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131599, 38.365597, 21.058559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034729, 38.552658, 21.398594>,  <38.976604, 38.664894, 21.602615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.034729, 38.552658, 21.398594>,  <39.131599, 38.365597, 21.058559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034729, 38.552658, 21.398594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510367, 0.806557, -0.298314,
		-0.825152, 0.361611, -0.434008,
		-0.242178, 0.467658, 0.850086,
		38.962074, 38.692955, 21.653620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117790, 39.078773, 20.899036>,  <39.131599, 38.365597, 21.058559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117790, 39.078773, 20.899036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148590, 39.103565, 21.297077>,  <39.167072, 39.118439, 21.535902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148590, 39.103565, 21.297077>,  <39.117790, 39.078773, 20.899036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148590, 39.103565, 21.297077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663748, 0.741568, -0.097547,
		-0.743982, 0.668009, 0.015967,
		0.077003, 0.061975, 0.995103,
		39.171692, 39.122158, 21.595608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882008, 39.717770, 21.228598>,  <39.117790, 39.078773, 20.899036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882008, 39.717770, 21.228598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147671, 39.563927, 21.485023>,  <39.307068, 39.471619, 21.638880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147671, 39.563927, 21.485023>,  <38.882008, 39.717770, 21.228598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147671, 39.563927, 21.485023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565616, 0.819238, -0.094484,
		-0.488846, 0.425350, 0.761647,
		0.664159, -0.384612, 0.641067,
		39.346920, 39.448544, 21.677343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059223, 40.211658, 21.724518>,  <38.882008, 39.717770, 21.228598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059223, 40.211658, 21.724518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384666, 39.979103, 21.726542>,  <39.579933, 39.839569, 21.727757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384666, 39.979103, 21.726542>,  <39.059223, 40.211658, 21.724518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384666, 39.979103, 21.726542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581062, 0.813394, 0.027520,
		-0.020115, -0.019451, 0.999608,
		0.813611, -0.581388, 0.005059,
		39.628750, 39.804688, 21.728060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577511, 40.586555, 22.122177>,  <39.059223, 40.211658, 21.724518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577511, 40.586555, 22.122177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787891, 40.336510, 21.891489>,  <39.914120, 40.186481, 21.753077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787891, 40.336510, 21.891489>,  <39.577511, 40.586555, 22.122177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787891, 40.336510, 21.891489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699674, 0.703533, -0.124489,
		0.483560, -0.338040, 0.807402,
		0.525952, -0.625116, -0.576718,
		39.945679, 40.148975, 21.718473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187195, 40.845951, 22.233063>,  <39.577511, 40.586555, 22.122177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187195, 40.845951, 22.233063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269306, 40.566559, 21.958839>,  <40.318573, 40.398922, 21.794306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269306, 40.566559, 21.958839>,  <40.187195, 40.845951, 22.233063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269306, 40.566559, 21.958839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742428, 0.567545, -0.355939,
		0.637701, -0.435911, 0.635074,
		0.205276, -0.698480, -0.685557,
		40.330891, 40.357014, 21.753172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910164, 40.681561, 22.272438>,  <40.187195, 40.845951, 22.233063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910164, 40.681561, 22.272438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805317, 40.582214, 21.899427>,  <40.742409, 40.522606, 21.675621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.805317, 40.582214, 21.899427>,  <40.910164, 40.681561, 22.272438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805317, 40.582214, 21.899427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747816, 0.558502, -0.358952,
		0.609971, -0.791446, 0.039341,
		-0.262119, -0.248370, -0.932527,
		40.726681, 40.507702, 21.619669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531124, 40.403316, 21.886683>,  <40.910164, 40.681561, 22.272438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531124, 40.403316, 21.886683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276905, 40.513153, 21.598051>,  <41.124374, 40.579056, 21.424873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276905, 40.513153, 21.598051>,  <41.531124, 40.403316, 21.886683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276905, 40.513153, 21.598051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732724, 0.509038, -0.451659,
		0.243289, -0.815769, -0.524720,
		-0.635552, 0.274591, -0.721577,
		41.086239, 40.595531, 21.381578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880077, 40.300743, 21.145269>,  <41.531124, 40.403316, 21.886683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880077, 40.300743, 21.145269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581680, 40.566082, 21.121731>,  <41.402641, 40.725285, 21.107607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581680, 40.566082, 21.121731>,  <41.880077, 40.300743, 21.145269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581680, 40.566082, 21.121731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612067, 0.648131, -0.453101,
		-0.262423, -0.374029, -0.889515,
		-0.745995, 0.663347, -0.058847,
		41.357883, 40.765087, 21.104076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923244, 40.457333, 20.437630>,  <41.880077, 40.300743, 21.145269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923244, 40.457333, 20.437630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742149, 40.747341, 20.645235>,  <41.633492, 40.921345, 20.769798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.742149, 40.747341, 20.645235>,  <41.923244, 40.457333, 20.437630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742149, 40.747341, 20.645235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577261, 0.681965, -0.449102,
		-0.679557, 0.096280, -0.727277,
		-0.452738, 0.725019, 0.519014,
		41.606327, 40.964848, 20.800940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891762, 40.985123, 20.031776>,  <41.923244, 40.457333, 20.437630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891762, 40.985123, 20.031776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815918, 41.203236, 20.358389>,  <41.770412, 41.334103, 20.554356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815918, 41.203236, 20.358389>,  <41.891762, 40.985123, 20.031776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815918, 41.203236, 20.358389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579393, 0.733526, -0.355308,
		-0.792688, 0.405723, -0.455011,
		-0.189606, 0.545278, 0.816530,
		41.759037, 41.366817, 20.603348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832924, 41.676113, 19.804241>,  <41.891762, 40.985123, 20.031776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832924, 41.676113, 19.804241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906284, 41.703224, 20.196522>,  <41.950298, 41.719490, 20.431890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906284, 41.703224, 20.196522>,  <41.832924, 41.676113, 19.804241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906284, 41.703224, 20.196522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594451, 0.786906, -0.165551,
		-0.782939, 0.613339, 0.104026,
		0.183398, 0.067778, 0.980699,
		41.961304, 41.723557, 20.490732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776382, 42.393764, 19.886957>,  <41.832924, 41.676113, 19.804241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776382, 42.393764, 19.886957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974018, 42.264526, 20.209814>,  <42.092602, 42.186985, 20.403528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.974018, 42.264526, 20.209814>,  <41.776382, 42.393764, 19.886957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974018, 42.264526, 20.209814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598755, 0.799584, -0.046459,
		-0.630368, 0.506236, 0.588525,
		0.494094, -0.323096, 0.807143,
		42.122246, 42.167599, 20.451958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775471, 42.919495, 20.368132>,  <41.776382, 42.393764, 19.886957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775471, 42.919495, 20.368132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090775, 42.684544, 20.441488>,  <42.279957, 42.543571, 20.485502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090775, 42.684544, 20.441488>,  <41.775471, 42.919495, 20.368132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090775, 42.684544, 20.441488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615324, 0.754669, -0.227709,
		-0.004647, 0.292339, 0.956304,
		0.788261, -0.587378, 0.183390,
		42.327251, 42.508331, 20.496506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151875, 43.171303, 20.853996>,  <41.775471, 42.919495, 20.368132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151875, 43.171303, 20.853996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434353, 42.947784, 20.680080>,  <42.603840, 42.813675, 20.575731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434353, 42.947784, 20.680080>,  <42.151875, 43.171303, 20.853996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434353, 42.947784, 20.680080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610191, 0.791810, -0.026548,
		0.359104, -0.246555, 0.900142,
		0.706195, -0.558792, -0.434787,
		42.646210, 42.780148, 20.549644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277653, 43.903004, 20.938190>,  <42.151875, 43.171303, 20.853996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277653, 43.903004, 20.938190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004158, 44.012478, 20.667606>,  <41.840061, 44.078163, 20.505257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004158, 44.012478, 20.667606>,  <42.277653, 43.903004, 20.938190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004158, 44.012478, 20.667606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680437, 0.095797, 0.726518,
		0.263644, 0.957035, 0.120729,
		-0.683738, 0.273690, -0.676459,
		41.799038, 44.094585, 20.464668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710583, 44.266304, 21.373276>,  <42.277653, 43.903004, 20.938190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710583, 44.266304, 21.373276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500938, 44.224415, 21.035200>,  <41.375153, 44.199284, 20.832355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500938, 44.224415, 21.035200>,  <41.710583, 44.266304, 21.373276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500938, 44.224415, 21.035200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848947, 0.143286, 0.508683,
		0.067835, 0.984125, -0.163999,
		-0.524107, -0.104720, -0.845190,
		41.343708, 44.192997, 20.781643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056286, 44.667191, 21.399855>,  <41.710583, 44.266304, 21.373276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056286, 44.667191, 21.399855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957760, 44.379055, 21.140490>,  <40.898643, 44.206173, 20.984871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957760, 44.379055, 21.140490>,  <41.056286, 44.667191, 21.399855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957760, 44.379055, 21.140490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882914, -0.109168, 0.456668,
		-0.399742, 0.684978, -0.609107,
		-0.246313, -0.720339, -0.648415,
		40.883865, 44.162952, 20.945965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423386, 44.829334, 21.125620>,  <41.056286, 44.667191, 21.399855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423386, 44.829334, 21.125620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455414, 44.437981, 21.049362>,  <40.474628, 44.203167, 21.003607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455414, 44.437981, 21.049362>,  <40.423386, 44.829334, 21.125620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455414, 44.437981, 21.049362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865362, -0.163150, 0.473848,
		-0.494710, 0.127036, -0.859723,
		0.080068, -0.978388, -0.190644,
		40.479435, 44.144463, 20.992168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661697, 44.563324, 20.966866>,  <40.423386, 44.829334, 21.125620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661697, 44.563324, 20.966866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885384, 44.241890, 21.048391>,  <40.019596, 44.049030, 21.097307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885384, 44.241890, 21.048391>,  <39.661697, 44.563324, 20.966866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885384, 44.241890, 21.048391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732521, -0.363832, 0.575360,
		-0.388197, -0.471041, -0.792101,
		0.559210, -0.803584, 0.203809,
		40.053146, 44.000816, 21.109535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215027, 44.090061, 20.801098>,  <39.661697, 44.563324, 20.966866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215027, 44.090061, 20.801098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483448, 43.908100, 21.035276>,  <39.644501, 43.798923, 21.175783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483448, 43.908100, 21.035276>,  <39.215027, 44.090061, 20.801098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483448, 43.908100, 21.035276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740906, -0.382421, 0.552098,
		-0.027262, -0.804251, -0.593664,
		0.671055, -0.454901, 0.585449,
		39.684765, 43.771629, 21.210911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064880, 43.354736, 20.736151>,  <39.215027, 44.090061, 20.801098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064880, 43.354736, 20.736151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274899, 43.399899, 21.073570>,  <39.400909, 43.426994, 21.276022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274899, 43.399899, 21.073570>,  <39.064880, 43.354736, 20.736151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274899, 43.399899, 21.073570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702293, -0.502390, 0.504370,
		0.480737, -0.857238, -0.184487,
		0.525049, 0.112905, 0.843549,
		39.432415, 43.433769, 21.326635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916924, 42.752598, 21.102129>,  <39.064880, 43.354736, 20.736151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916924, 42.752598, 21.102129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093063, 42.979912, 21.380161>,  <39.198750, 43.116302, 21.546982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093063, 42.979912, 21.380161>,  <38.916924, 42.752598, 21.102129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093063, 42.979912, 21.380161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585200, -0.405464, 0.702239,
		0.680904, -0.715995, 0.154014,
		0.440352, 0.568287, 0.695083,
		39.225170, 43.150398, 21.588686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180790, 42.291183, 21.624895>,  <38.916924, 42.752598, 21.102129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180790, 42.291183, 21.624895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122849, 42.655544, 21.779436>,  <39.088081, 42.874161, 21.872160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122849, 42.655544, 21.779436>,  <39.180790, 42.291183, 21.624895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122849, 42.655544, 21.779436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432010, -0.409513, 0.803534,
		0.890159, -0.050510, 0.452841,
		-0.144857, 0.910905, 0.386352,
		39.079391, 42.928818, 21.895342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028912, 42.146160, 22.344694>,  <39.180790, 42.291183, 21.624895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028912, 42.146160, 22.344694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918373, 42.530483, 22.335989>,  <38.852051, 42.761078, 22.330767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918373, 42.530483, 22.335989>,  <39.028912, 42.146160, 22.344694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918373, 42.530483, 22.335989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828664, -0.226751, 0.511761,
		0.486771, 0.159459, 0.858852,
		-0.276350, 0.960810, -0.021763,
		38.835468, 42.818726, 22.329460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858326, 42.198296, 22.962278>,  <39.028912, 42.146160, 22.344694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858326, 42.198296, 22.962278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675110, 42.482441, 22.748518>,  <38.565182, 42.652927, 22.620262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675110, 42.482441, 22.748518>,  <38.858326, 42.198296, 22.962278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675110, 42.482441, 22.748518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855327, -0.188460, 0.482596,
		0.242105, 0.678135, 0.693915,
		-0.458040, 0.710363, -0.534400,
		38.537697, 42.695549, 22.588198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720318, 42.628944, 23.457376>,  <38.858326, 42.198296, 22.962278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720318, 42.628944, 23.457376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468334, 42.751640, 23.171980>,  <38.317146, 42.825256, 23.000742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.468334, 42.751640, 23.171980>,  <38.720318, 42.628944, 23.457376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468334, 42.751640, 23.171980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772625, -0.340702, 0.535698,
		-0.078769, 0.888727, 0.451620,
		-0.629957, 0.306736, -0.713490,
		38.279346, 42.843662, 22.957933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256031, 43.075760, 23.797892>,  <38.720318, 42.628944, 23.457376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256031, 43.075760, 23.797892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080074, 42.934925, 23.467430>,  <37.974503, 42.850426, 23.269154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.080074, 42.934925, 23.467430>,  <38.256031, 43.075760, 23.797892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080074, 42.934925, 23.467430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841015, -0.161117, 0.516464,
		-0.314949, 0.921995, -0.225238,
		-0.439888, -0.352088, -0.826155,
		37.948109, 42.829300, 23.219584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626343, 43.447826, 23.721519>,  <38.256031, 43.075760, 23.797892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626343, 43.447826, 23.721519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583969, 43.095272, 23.537373>,  <37.558544, 42.883739, 23.426884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583969, 43.095272, 23.537373>,  <37.626343, 43.447826, 23.721519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583969, 43.095272, 23.537373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838137, -0.169983, 0.518297,
		-0.535074, 0.440756, -0.720715,
		-0.105933, -0.881385, -0.460367,
		37.552189, 42.830856, 23.399263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950470, 43.464775, 23.612514>,  <37.626343, 43.447826, 23.721519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950470, 43.464775, 23.612514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056377, 43.079121, 23.605204>,  <37.119923, 42.847729, 23.600817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056377, 43.079121, 23.605204>,  <36.950470, 43.464775, 23.612514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056377, 43.079121, 23.605204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638420, -0.189463, 0.746005,
		-0.722715, -0.185851, -0.665689,
		0.264769, -0.964139, -0.018277,
		37.135807, 42.789879, 23.599720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311195, 43.146191, 23.397778>,  <36.950470, 43.464775, 23.612514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311195, 43.146191, 23.397778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537838, 42.850166, 23.542700>,  <36.673824, 42.672550, 23.629654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537838, 42.850166, 23.542700>,  <36.311195, 43.146191, 23.397778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537838, 42.850166, 23.542700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790081, -0.363108, 0.493887,
		-0.233951, -0.566091, -0.790448,
		0.566603, -0.740063, 0.362309,
		36.707817, 42.628147, 23.651392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956459, 42.553333, 23.258856>,  <36.311195, 43.146191, 23.397778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956459, 42.553333, 23.258856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208229, 42.433094, 23.545483>,  <36.359291, 42.360950, 23.717459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208229, 42.433094, 23.545483>,  <35.956459, 42.553333, 23.258856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208229, 42.433094, 23.545483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742340, -0.505177, 0.440144,
		0.229689, -0.808974, -0.541113,
		0.629423, -0.300594, 0.716568,
		36.397057, 42.342915, 23.760452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042908, 41.851997, 23.211596>,  <35.956459, 42.553333, 23.258856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042908, 41.851997, 23.211596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111504, 41.948154, 23.593760>,  <36.152660, 42.005848, 23.823057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111504, 41.948154, 23.593760>,  <36.042908, 41.851997, 23.211596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111504, 41.948154, 23.593760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707588, -0.644724, 0.289225,
		0.685501, -0.725634, 0.059533,
		0.171489, 0.240389, 0.955408,
		36.162949, 42.020271, 23.880383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209373, 41.237076, 23.489983>,  <36.042908, 41.851997, 23.211596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209373, 41.237076, 23.489983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139771, 41.468567, 23.808680>,  <36.098011, 41.607460, 23.999897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139771, 41.468567, 23.808680>,  <36.209373, 41.237076, 23.489983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139771, 41.468567, 23.808680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590208, -0.708951, 0.386062,
		0.788275, -0.403067, 0.464930,
		-0.174003, 0.578728, 0.796741,
		36.087570, 41.642185, 24.047703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476074, 40.929867, 24.148510>,  <36.209373, 41.237076, 23.489983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476074, 40.929867, 24.148510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174934, 41.173103, 24.249262>,  <35.994251, 41.319046, 24.309713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174934, 41.173103, 24.249262>,  <36.476074, 40.929867, 24.148510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174934, 41.173103, 24.249262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395748, -0.723989, 0.564999,
		0.525927, 0.325679, 0.785706,
		-0.752851, 0.608090, 0.251879,
		35.949078, 41.355530, 24.324825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327576, 40.760262, 24.810152>,  <36.476074, 40.929867, 24.148510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327576, 40.760262, 24.810152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995758, 40.974945, 24.748434>,  <35.796669, 41.103756, 24.711403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995758, 40.974945, 24.748434>,  <36.327576, 40.760262, 24.810152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995758, 40.974945, 24.748434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527917, -0.663577, 0.530065,
		0.182103, 0.521166, 0.833801,
		-0.829543, 0.536705, -0.154293,
		35.746895, 41.135956, 24.702147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861023, 40.527477, 25.329592>,  <36.327576, 40.760262, 24.810152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861023, 40.527477, 25.329592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636955, 40.705032, 25.049828>,  <35.502514, 40.811565, 24.881969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636955, 40.705032, 25.049828>,  <35.861023, 40.527477, 25.329592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636955, 40.705032, 25.049828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765827, -0.599363, 0.232965,
		-0.315789, 0.666126, 0.675687,
		-0.560166, 0.443892, -0.699409,
		35.468906, 40.838200, 24.840004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284920, 40.696548, 25.666592>,  <35.861023, 40.527477, 25.329592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284920, 40.696548, 25.666592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171509, 40.678131, 25.283449>,  <35.103462, 40.667080, 25.053564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171509, 40.678131, 25.283449>,  <35.284920, 40.696548, 25.666592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171509, 40.678131, 25.283449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731840, -0.635077, 0.247158,
		-0.619693, 0.771075, 0.146365,
		-0.283531, -0.046046, -0.957857,
		35.086449, 40.664318, 24.996092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580761, 40.785820, 25.646835>,  <35.284920, 40.696548, 25.666592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580761, 40.785820, 25.646835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673645, 40.598206, 25.305994>,  <34.729378, 40.485638, 25.101490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673645, 40.598206, 25.305994>,  <34.580761, 40.785820, 25.646835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673645, 40.598206, 25.305994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900398, -0.435028, -0.005915,
		-0.367914, 0.768605, -0.523341,
		0.232214, -0.469038, -0.852103,
		34.743309, 40.457493, 25.050364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960949, 40.699821, 25.398903>,  <34.580761, 40.785820, 25.646835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960949, 40.699821, 25.398903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157333, 40.461983, 25.144217>,  <34.275166, 40.319279, 24.991405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157333, 40.461983, 25.144217>,  <33.960949, 40.699821, 25.398903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157333, 40.461983, 25.144217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728511, -0.681002, 0.074212,
		-0.477732, 0.427419, -0.767519,
		0.490962, -0.594600, -0.636716,
		34.304623, 40.283604, 24.953201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608368, 40.566936, 24.847071>,  <33.960949, 40.699821, 25.398903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608368, 40.566936, 24.847071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829643, 40.233719, 24.848795>,  <33.962406, 40.033787, 24.849831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829643, 40.233719, 24.848795>,  <33.608368, 40.566936, 24.847071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829643, 40.233719, 24.848795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802744, -0.531666, 0.270062,
		-0.222681, -0.152857, -0.962833,
		0.553187, -0.833047, 0.004313,
		33.995598, 39.983807, 24.850088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274487, 40.164654, 24.468473>,  <33.608368, 40.566936, 24.847071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274487, 40.164654, 24.468473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522289, 39.905582, 24.645887>,  <33.670971, 39.750137, 24.752337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522289, 39.905582, 24.645887>,  <33.274487, 40.164654, 24.468473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522289, 39.905582, 24.645887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779784, -0.572734, 0.252809,
		0.090289, -0.502479, -0.859862,
		0.619504, -0.647681, 0.443536,
		33.708141, 39.711277, 24.778948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071518, 39.513458, 24.197922>,  <33.274487, 40.164654, 24.468473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071518, 39.513458, 24.197922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256203, 39.450020, 24.547018>,  <33.367012, 39.411957, 24.756475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256203, 39.450020, 24.547018>,  <33.071518, 39.513458, 24.197922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256203, 39.450020, 24.547018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723019, -0.637272, 0.266697,
		0.513876, -0.754143, -0.408900,
		0.461709, -0.158593, 0.872739,
		33.394714, 39.402443, 24.808840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959671, 38.805592, 24.285715>,  <33.071518, 39.513458, 24.197922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959671, 38.805592, 24.285715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072144, 38.932617, 24.647951>,  <33.139626, 39.008831, 24.865294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072144, 38.932617, 24.647951>,  <32.959671, 38.805592, 24.285715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072144, 38.932617, 24.647951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741702, -0.526885, 0.415055,
		0.608947, -0.788383, 0.087386,
		0.281179, 0.317561, 0.905590,
		33.156498, 39.027885, 24.919628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889549, 38.264240, 24.692823>,  <32.959671, 38.805592, 24.285715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889549, 38.264240, 24.692823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896957, 38.532211, 24.989702>,  <32.901402, 38.692993, 25.167830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896957, 38.532211, 24.989702>,  <32.889549, 38.264240, 24.692823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896957, 38.532211, 24.989702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669427, -0.543073, 0.506892,
		0.742647, -0.506235, 0.438408,
		0.018519, 0.669924, 0.742199,
		32.902512, 38.733189, 25.212362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857780, 37.857658, 25.316580>,  <32.889549, 38.264240, 24.692823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857780, 37.857658, 25.316580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738964, 38.225399, 25.419771>,  <32.667675, 38.446045, 25.481686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738964, 38.225399, 25.419771>,  <32.857780, 37.857658, 25.316580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738964, 38.225399, 25.419771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693196, -0.393429, 0.603899,
		0.656693, 0.000552, 0.754158,
		-0.297041, 0.919355, 0.257979,
		32.649853, 38.501205, 25.497166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942543, 37.818295, 26.054384>,  <32.857780, 37.857658, 25.316580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942543, 37.818295, 26.054384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676876, 38.099945, 25.953918>,  <32.517475, 38.268936, 25.893639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676876, 38.099945, 25.953918>,  <32.942543, 37.818295, 26.054384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676876, 38.099945, 25.953918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626662, -0.341182, 0.700635,
		0.407642, 0.622736, 0.667853,
		-0.664170, 0.704127, -0.251165,
		32.477627, 38.311184, 25.878569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833229, 38.149017, 26.672104>,  <32.942543, 37.818295, 26.054384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833229, 38.149017, 26.672104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528214, 38.267105, 26.441843>,  <32.345203, 38.337959, 26.303686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528214, 38.267105, 26.441843>,  <32.833229, 38.149017, 26.672104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528214, 38.267105, 26.441843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645627, -0.290607, 0.706196,
		0.041195, 0.910161, 0.412202,
		-0.762541, 0.295220, -0.575653,
		32.299450, 38.355671, 26.269148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281410, 38.582005, 27.103344>,  <32.833229, 38.149017, 26.672104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281410, 38.582005, 27.103344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052120, 38.466446, 26.796635>,  <31.914545, 38.397110, 26.612608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052120, 38.466446, 26.796635>,  <32.281410, 38.582005, 27.103344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052120, 38.466446, 26.796635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694077, -0.326168, 0.641772,
		-0.435506, 0.900084, -0.013550,
		-0.573229, -0.288900, -0.766776,
		31.880152, 38.379776, 26.566603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661985, 38.805080, 27.201637>,  <32.281410, 38.582005, 27.103344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661985, 38.805080, 27.201637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578211, 38.512913, 26.941599>,  <31.527946, 38.337612, 26.785576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578211, 38.512913, 26.941599>,  <31.661985, 38.805080, 27.201637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578211, 38.512913, 26.941599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728306, -0.327098, 0.602144,
		-0.652462, 0.599579, -0.463463,
		-0.209435, -0.730419, -0.650097,
		31.515381, 38.293789, 26.746571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958380, 39.005527, 27.099686>,  <31.661985, 38.805080, 27.201637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958380, 39.005527, 27.099686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056202, 38.639362, 26.971802>,  <31.114895, 38.419662, 26.895071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056202, 38.639362, 26.971802>,  <30.958380, 39.005527, 27.099686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056202, 38.639362, 26.971802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828172, -0.368685, 0.422141,
		-0.504305, 0.161539, -0.848282,
		0.244556, -0.915411, -0.319711,
		31.129568, 38.364738, 26.875889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344709, 38.705288, 26.749081>,  <30.958380, 39.005527, 27.099686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344709, 38.705288, 26.749081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575451, 38.399937, 26.865351>,  <30.713896, 38.216724, 26.935112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575451, 38.399937, 26.865351>,  <30.344709, 38.705288, 26.749081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575451, 38.399937, 26.865351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680681, -0.252511, 0.687686,
		-0.451567, -0.594550, -0.665280,
		0.576854, -0.763380, 0.290673,
		30.748507, 38.170921, 26.952553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921545, 38.103939, 26.869316>,  <30.344709, 38.705288, 26.749081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921545, 38.103939, 26.869316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255812, 38.026844, 27.075039>,  <30.456371, 37.980587, 27.198473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.255812, 38.026844, 27.075039>,  <29.921545, 38.103939, 26.869316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255812, 38.026844, 27.075039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544422, -0.166968, 0.822026,
		-0.072557, -0.966942, -0.244457,
		0.835667, -0.192731, 0.514310,
		30.506512, 37.969025, 27.229332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732229, 37.582890, 27.412565>,  <29.921545, 38.103939, 26.869316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732229, 37.582890, 27.412565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081074, 37.721443, 27.550804>,  <30.290380, 37.804577, 27.633747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081074, 37.721443, 27.550804>,  <29.732229, 37.582890, 27.412565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081074, 37.721443, 27.550804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302803, -0.172751, 0.937266,
		0.384360, -0.922048, -0.045770,
		0.872111, 0.346388, 0.345598,
		30.342707, 37.825359, 27.654484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911579, 37.119888, 27.839720>,  <29.732229, 37.582890, 27.412565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911579, 37.119888, 27.839720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106604, 37.444118, 27.969494>,  <30.223619, 37.638657, 28.047358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106604, 37.444118, 27.969494>,  <29.911579, 37.119888, 27.839720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106604, 37.444118, 27.969494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225850, -0.241855, 0.943662,
		0.843371, -0.533367, 0.065148,
		0.487562, 0.810571, 0.324434,
		30.252872, 37.687290, 28.066824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504448, 37.017456, 28.337294>,  <29.911579, 37.119888, 27.839720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504448, 37.017456, 28.337294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317259, 37.364258, 28.405773>,  <30.204945, 37.572338, 28.446861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317259, 37.364258, 28.405773>,  <30.504448, 37.017456, 28.337294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317259, 37.364258, 28.405773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199169, -0.292208, 0.935386,
		0.861007, 0.403638, 0.309425,
		-0.467974, 0.867001, 0.171201,
		30.176867, 37.624359, 28.457134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617653, 37.327538, 29.088020>,  <30.504448, 37.017456, 28.337294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617653, 37.327538, 29.088020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270658, 37.468727, 28.947803>,  <30.062462, 37.553440, 28.863674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270658, 37.468727, 28.947803>,  <30.617653, 37.327538, 29.088020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270658, 37.468727, 28.947803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455627, -0.280904, 0.844687,
		0.199686, 0.892469, 0.404506,
		-0.867484, 0.352976, -0.350541,
		30.010414, 37.574619, 28.842642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199076, 37.822132, 29.453272>,  <30.617653, 37.327538, 29.088020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199076, 37.822132, 29.453272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934057, 37.563461, 29.302095>,  <29.775045, 37.408260, 29.211390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934057, 37.563461, 29.302095>,  <30.199076, 37.822132, 29.453272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934057, 37.563461, 29.302095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286599, -0.247312, 0.925580,
		-0.692022, 0.721557, -0.021481,
		-0.662546, -0.646678, -0.377943,
		29.735294, 37.369457, 29.188713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709818, 38.070633, 29.926527>,  <30.199076, 37.822132, 29.453272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709818, 38.070633, 29.926527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809126, 38.051731, 30.313541>,  <29.868711, 38.040390, 30.545750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809126, 38.051731, 30.313541>,  <29.709818, 38.070633, 29.926527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809126, 38.051731, 30.313541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575475, 0.796256, 0.186559,
		-0.779224, -0.603111, 0.170491,
		0.248270, -0.047258, 0.967537,
		29.883608, 38.037556, 30.603802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665077, 38.530334, 30.538588>,  <29.709818, 38.070633, 29.926527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665077, 38.530334, 30.538588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303619, 38.654335, 30.420383>,  <29.086744, 38.728737, 30.349461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303619, 38.654335, 30.420383>,  <29.665077, 38.530334, 30.538588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303619, 38.654335, 30.420383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167881, 0.891153, 0.421500,
		0.394012, 0.331275, -0.857328,
		-0.903643, 0.310005, -0.295510,
		29.032526, 38.747337, 30.331730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701664, 39.024704, 29.935753>,  <29.665077, 38.530334, 30.538588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701664, 39.024704, 29.935753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388147, 39.062492, 30.181273>,  <29.200037, 39.085167, 30.328585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388147, 39.062492, 30.181273>,  <29.701664, 39.024704, 29.935753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388147, 39.062492, 30.181273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347378, 0.885969, 0.307226,
		-0.514782, 0.454021, -0.727231,
		-0.783791, 0.094470, 0.613798,
		29.153009, 39.090832, 30.365412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198483, 39.549870, 29.787001>,  <29.701664, 39.024704, 29.935753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198483, 39.549870, 29.787001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265245, 39.464405, 30.172018>,  <29.305304, 39.413128, 30.403028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265245, 39.464405, 30.172018>,  <29.198483, 39.549870, 29.787001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265245, 39.464405, 30.172018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365631, 0.920045, 0.140826,
		-0.915672, 0.328431, 0.231685,
		0.166909, -0.213661, 0.962543,
		29.315319, 39.400307, 30.460781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860922, 40.010052, 30.268488>,  <29.198483, 39.549870, 29.787001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860922, 40.010052, 30.268488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215439, 39.875950, 30.396294>,  <29.428148, 39.795490, 30.472977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215439, 39.875950, 30.396294>,  <28.860922, 40.010052, 30.268488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215439, 39.875950, 30.396294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331060, 0.941075, 0.069120,
		-0.323862, 0.044519, 0.945056,
		0.886292, -0.335256, 0.319516,
		29.481327, 39.775372, 30.492149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129427, 40.207222, 30.883690>,  <28.860922, 40.010052, 30.268488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129427, 40.207222, 30.883690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450682, 40.183170, 30.646587>,  <29.643435, 40.168739, 30.504326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450682, 40.183170, 30.646587>,  <29.129427, 40.207222, 30.883690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450682, 40.183170, 30.646587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108599, 0.993002, 0.046405,
		0.585815, -0.101642, 0.804046,
		0.803136, -0.060134, -0.592754,
		29.691622, 40.165131, 30.468761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779905, 40.329235, 31.213737>,  <29.129427, 40.207222, 30.883690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779905, 40.329235, 31.213737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801722, 40.433533, 30.828190>,  <29.814812, 40.496109, 30.596861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801722, 40.433533, 30.828190>,  <29.779905, 40.329235, 31.213737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801722, 40.433533, 30.828190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234137, 0.935051, 0.266194,
		0.970673, -0.240195, -0.010050,
		0.054541, 0.260740, -0.963867,
		29.818085, 40.511753, 30.539030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561529, 40.026165, 31.920406>,  <29.779905, 40.329235, 31.213737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561529, 40.026165, 31.920406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433290, 39.660816, 31.820038>,  <29.356346, 39.441605, 31.759817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433290, 39.660816, 31.820038>,  <29.561529, 40.026165, 31.920406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433290, 39.660816, 31.820038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671155, -0.405976, 0.620269,
		-0.668406, 0.030452, 0.743173,
		-0.320599, -0.913376, -0.250919,
		29.337111, 39.386803, 31.744762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536860, 39.756592, 32.570686>,  <29.561529, 40.026165, 31.920406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536860, 39.756592, 32.570686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583044, 39.488358, 32.277569>,  <29.610754, 39.327419, 32.101700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583044, 39.488358, 32.277569>,  <29.536860, 39.756592, 32.570686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583044, 39.488358, 32.277569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694440, -0.472989, 0.542250,
		-0.710227, -0.571490, 0.411067,
		0.115460, -0.670582, -0.732795,
		29.617682, 39.287182, 32.057732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298485, 38.978939, 32.619007>,  <29.536860, 39.756592, 32.570686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298485, 38.978939, 32.619007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633457, 39.042999, 32.409985>,  <29.834440, 39.081436, 32.284573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633457, 39.042999, 32.409985>,  <29.298485, 38.978939, 32.619007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633457, 39.042999, 32.409985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540338, -0.386279, 0.747545,
		-0.082134, -0.908373, -0.410016,
		0.837430, 0.160148, -0.522555,
		29.884686, 39.091045, 32.253220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732763, 38.375256, 32.702251>,  <29.298485, 38.978939, 32.619007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732763, 38.375256, 32.702251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929331, 38.719490, 32.648743>,  <30.047272, 38.926033, 32.616638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929331, 38.719490, 32.648743>,  <29.732763, 38.375256, 32.702251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929331, 38.719490, 32.648743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656123, -0.264820, 0.706663,
		0.572722, -0.435037, -0.694790,
		0.491418, 0.860589, -0.133770,
		30.076756, 38.977665, 32.608612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462776, 38.304340, 32.858780>,  <29.732763, 38.375256, 32.702251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462776, 38.304340, 32.858780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224936, 38.069496, 32.639053>,  <30.082232, 37.928589, 32.507217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224936, 38.069496, 32.639053>,  <30.462776, 38.304340, 32.858780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224936, 38.069496, 32.639053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278595, -0.791339, 0.544213,
		-0.754209, 0.170553, 0.634098,
		-0.594604, -0.587107, -0.549320,
		30.046555, 37.893364, 32.474258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467243, 37.729721, 33.332237>,  <30.462776, 38.304340, 32.858780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467243, 37.729721, 33.332237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235046, 37.585670, 33.040119>,  <30.095728, 37.499241, 32.864849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235046, 37.585670, 33.040119>,  <30.467243, 37.729721, 33.332237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235046, 37.585670, 33.040119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115421, -0.924215, 0.364012,
		-0.806045, 0.127013, 0.578064,
		-0.580490, -0.360131, -0.730299,
		30.060900, 37.477631, 32.821030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797926, 37.226669, 33.531570>,  <30.467243, 37.729721, 33.332237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797926, 37.226669, 33.531570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966618, 37.094151, 33.193958>,  <30.067833, 37.014641, 32.991390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966618, 37.094151, 33.193958>,  <29.797926, 37.226669, 33.531570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966618, 37.094151, 33.193958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356123, -0.795537, 0.490201,
		-0.833859, -0.507311, -0.217521,
		0.421730, -0.331294, -0.844030,
		30.093138, 36.994762, 32.940750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504530, 36.673977, 33.283390>,  <29.797926, 37.226669, 33.531570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504530, 36.673977, 33.283390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893227, 36.679001, 33.189102>,  <30.126444, 36.682014, 33.132530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893227, 36.679001, 33.189102>,  <29.504530, 36.673977, 33.283390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893227, 36.679001, 33.189102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168523, -0.736145, 0.655508,
		-0.165293, -0.676708, -0.717457,
		0.971740, 0.012557, -0.235720,
		30.184748, 36.682770, 33.118385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794769, 36.022717, 33.149261>,  <29.504530, 36.673977, 33.283390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794769, 36.022717, 33.149261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092915, 36.219173, 33.329578>,  <30.271801, 36.337048, 33.437767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.092915, 36.219173, 33.329578>,  <29.794769, 36.022717, 33.149261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092915, 36.219173, 33.329578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133102, -0.772217, 0.621261,
		0.653238, -0.403062, -0.640953,
		0.745361, 0.491143, 0.450794,
		30.316523, 36.366516, 33.464817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182880, 35.442986, 32.960182>,  <29.794769, 36.022717, 33.149261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182880, 35.442986, 32.960182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550802, 35.499584, 32.813793>,  <30.771555, 35.533543, 32.725960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550802, 35.499584, 32.813793>,  <30.182880, 35.442986, 32.960182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550802, 35.499584, 32.813793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007910, 0.939210, 0.343252,
		0.392293, -0.312831, 0.865010,
		0.919806, 0.141498, -0.365971,
		30.826744, 35.542034, 32.704002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839401, 34.636276, 33.039654>,  <30.182880, 35.442986, 32.960182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839401, 34.636276, 33.039654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220293, 34.527199, 32.984669>,  <30.448828, 34.461750, 32.951675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220293, 34.527199, 32.984669>,  <29.839401, 34.636276, 33.039654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220293, 34.527199, 32.984669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132067, -0.038151, 0.990506,
		-0.275354, -0.961343, -0.000314,
		0.952228, -0.272699, -0.137467,
		30.505962, 34.445389, 32.943428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080338, 34.115120, 33.532139>,  <29.839401, 34.636276, 33.039654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080338, 34.115120, 33.532139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408550, 34.312477, 33.416698>,  <30.605478, 34.430893, 33.347435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.408550, 34.312477, 33.416698>,  <30.080338, 34.115120, 33.532139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408550, 34.312477, 33.416698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345939, -0.026723, 0.937877,
		0.455034, -0.869393, -0.192613,
		0.820531, 0.493398, -0.288597,
		30.654709, 34.460495, 33.330120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615658, 33.815884, 33.952736>,  <30.080338, 34.115120, 33.532139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615658, 33.815884, 33.952736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782618, 34.150761, 33.811382>,  <30.882793, 34.351688, 33.726570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782618, 34.150761, 33.811382>,  <30.615658, 33.815884, 33.952736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782618, 34.150761, 33.811382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534185, 0.088541, 0.840718,
		0.735136, -0.539686, -0.410261,
		0.417399, 0.837197, -0.353382,
		30.907837, 34.401920, 33.705368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349983, 33.747307, 33.950146>,  <30.615658, 33.815884, 33.952736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349983, 33.747307, 33.950146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242283, 34.131092, 33.983437>,  <31.177662, 34.361362, 34.003410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242283, 34.131092, 33.983437>,  <31.349983, 33.747307, 33.950146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242283, 34.131092, 33.983437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657367, 0.119938, 0.743965,
		0.703827, 0.255027, -0.663015,
		-0.269252, 0.959467, 0.083231,
		31.161507, 34.418934, 34.008408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111649, 33.602470, 33.829323>,  <31.349983, 33.747307, 33.950146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111649, 33.602470, 33.829323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956314, 33.241318, 33.755569>,  <31.863113, 33.024624, 33.711319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956314, 33.241318, 33.755569>,  <32.111649, 33.602470, 33.829323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956314, 33.241318, 33.755569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677196, 0.415304, -0.607394,
		0.624981, -0.111009, -0.772707,
		-0.388335, -0.902884, -0.184383,
		31.839813, 32.970451, 33.700256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705910, 33.897903, 33.323742>,  <32.111649, 33.602470, 33.829323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705910, 33.897903, 33.323742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976662, 34.183113, 33.396877>,  <33.139114, 34.354237, 33.440758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976662, 34.183113, 33.396877>,  <32.705910, 33.897903, 33.323742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976662, 34.183113, 33.396877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286949, 0.026857, 0.957569,
		0.677857, -0.700627, 0.222780,
		0.676882, 0.713022, 0.182839,
		33.179726, 34.397018, 33.451729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752697, 33.213398, 33.009338>,  <32.705910, 33.897903, 33.323742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752697, 33.213398, 33.009338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640110, 32.957462, 32.723293>,  <32.572556, 32.803902, 32.551666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.640110, 32.957462, 32.723293>,  <32.752697, 33.213398, 33.009338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640110, 32.957462, 32.723293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748289, -0.612885, 0.253840,
		-0.600697, -0.463663, 0.651291,
		-0.281470, -0.639835, -0.715112,
		32.555668, 32.765511, 32.508759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651478, 32.498028, 33.182240>,  <32.752697, 33.213398, 33.009338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651478, 32.498028, 33.182240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705715, 32.450592, 32.788784>,  <32.738258, 32.422131, 32.552711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705715, 32.450592, 32.788784>,  <32.651478, 32.498028, 33.182240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705715, 32.450592, 32.788784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781554, -0.597378, 0.179757,
		-0.608923, -0.793143, 0.011678,
		0.135597, -0.118585, -0.983642,
		32.746395, 32.415016, 32.493690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204494, 32.397350, 33.729725>,  <32.651478, 32.498028, 33.182240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204494, 32.397350, 33.729725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429855, 32.508041, 33.418339>,  <33.565071, 32.574455, 33.231506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429855, 32.508041, 33.418339>,  <33.204494, 32.397350, 33.729725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429855, 32.508041, 33.418339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755417, -0.554097, 0.349746,
		-0.334557, -0.785109, -0.521225,
		0.563398, 0.276732, -0.778461,
		33.598873, 32.591061, 33.184799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368164, 31.805809, 33.139263>,  <33.204494, 32.397350, 33.729725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368164, 31.805809, 33.139263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633469, 32.099651, 33.196442>,  <33.792652, 32.275955, 33.230747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633469, 32.099651, 33.196442>,  <33.368164, 31.805809, 33.139263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633469, 32.099651, 33.196442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740300, -0.672020, 0.018571,
		0.109703, 0.093503, -0.989557,
		0.663265, 0.734606, 0.142943,
		33.832447, 32.320034, 33.239323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861118, 31.846680, 32.529552>,  <33.368164, 31.805809, 33.139263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861118, 31.846680, 32.529552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058414, 31.965178, 32.856709>,  <34.176792, 32.036278, 33.053001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058414, 31.965178, 32.856709>,  <33.861118, 31.846680, 32.529552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058414, 31.965178, 32.856709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643137, -0.757283, -0.113562,
		0.585736, 0.582032, -0.564049,
		0.493242, 0.296244, 0.817895,
		34.206387, 32.054050, 33.102077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387310, 31.488895, 32.407890>,  <33.861118, 31.846680, 32.529552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387310, 31.488895, 32.407890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483536, 31.658031, 32.757366>,  <34.541271, 31.759514, 32.967052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483536, 31.658031, 32.757366>,  <34.387310, 31.488895, 32.407890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483536, 31.658031, 32.757366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729985, -0.672071, 0.124268,
		0.639727, 0.607886, -0.470344,
		0.240564, 0.422841, 0.873690,
		34.555706, 31.784883, 33.019474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069481, 31.768005, 32.329906>,  <34.387310, 31.488895, 32.407890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069481, 31.768005, 32.329906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967403, 31.685225, 32.707699>,  <34.906155, 31.635555, 32.934376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967403, 31.685225, 32.707699>,  <35.069481, 31.768005, 32.329906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967403, 31.685225, 32.707699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809133, -0.580469, 0.091434,
		0.529319, 0.787544, 0.315587,
		-0.255196, -0.206954, 0.944481,
		34.890846, 31.623138, 32.991043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683308, 31.925539, 32.844566>,  <35.069481, 31.768005, 32.329906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683308, 31.925539, 32.844566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412495, 31.643209, 32.927933>,  <35.250008, 31.473812, 32.977951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412495, 31.643209, 32.927933>,  <35.683308, 31.925539, 32.844566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412495, 31.643209, 32.927933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723008, -0.690778, 0.009269,
		0.137427, 0.156963, 0.977996,
		-0.677033, -0.705825, 0.208417,
		35.209385, 31.431461, 32.990459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132641, 31.524847, 33.173019>,  <35.683308, 31.925539, 32.844566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132641, 31.524847, 33.173019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814289, 31.282816, 33.164406>,  <35.623280, 31.137598, 33.159237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814289, 31.282816, 33.164406>,  <36.132641, 31.524847, 33.173019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814289, 31.282816, 33.164406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605138, -0.793791, -0.060847,
		0.019725, -0.061457, 0.997915,
		-0.795876, -0.605077, -0.021533,
		35.575527, 31.101294, 33.157948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413120, 31.831207, 33.754620>,  <36.132641, 31.524847, 33.173019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413120, 31.831207, 33.754620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140316, 31.557053, 33.856682>,  <35.976631, 31.392561, 33.917919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140316, 31.557053, 33.856682>,  <36.413120, 31.831207, 33.754620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140316, 31.557053, 33.856682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625963, -0.366650, 0.688287,
		-0.378189, 0.629139, 0.679086,
		-0.682015, -0.685385, 0.255154,
		35.935711, 31.351437, 33.933228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431095, 31.793928, 34.472019>,  <36.413120, 31.831207, 33.754620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431095, 31.793928, 34.472019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351128, 31.433741, 34.317520>,  <36.303146, 31.217628, 34.224819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351128, 31.433741, 34.317520>,  <36.431095, 31.793928, 34.472019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351128, 31.433741, 34.317520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827248, -0.366369, 0.425952,
		-0.525066, -0.234368, 0.818155,
		-0.199917, -0.900469, -0.386248,
		36.291153, 31.163599, 34.201645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514027, 31.178997, 34.764397>,  <36.431095, 31.793928, 34.472019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514027, 31.178997, 34.764397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632034, 30.949503, 34.458771>,  <36.702839, 30.811808, 34.275394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632034, 30.949503, 34.458771>,  <36.514027, 31.178997, 34.764397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632034, 30.949503, 34.458771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943566, 0.049003, 0.327539,
		-0.150479, -0.817575, 0.555812,
		0.295024, -0.573733, -0.764062,
		36.720543, 30.777384, 34.229553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001347, 30.775045, 35.042004>,  <36.514027, 31.178997, 34.764397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001347, 30.775045, 35.042004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078960, 30.778637, 34.649624>,  <37.125530, 30.780792, 34.414196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078960, 30.778637, 34.649624>,  <37.001347, 30.775045, 35.042004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078960, 30.778637, 34.649624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979283, -0.060815, 0.193147,
		-0.057921, -0.998109, -0.020597,
		0.194035, 0.008983, -0.980954,
		37.137169, 30.781330, 34.355339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505932, 30.400963, 35.147720>,  <37.001347, 30.775045, 35.042004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505932, 30.400963, 35.147720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531132, 30.573515, 34.787735>,  <37.546253, 30.677046, 34.571743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531132, 30.573515, 34.787735>,  <37.505932, 30.400963, 35.147720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531132, 30.573515, 34.787735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996093, -0.083087, 0.029908,
		-0.061874, -0.898336, -0.434930,
		0.063004, 0.431380, -0.899967,
		37.550034, 30.702929, 34.517746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738544, 30.071053, 34.565754>,  <37.505932, 30.400963, 35.147720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738544, 30.071053, 34.565754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870422, 30.446104, 34.521648>,  <37.949551, 30.671135, 34.495186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870422, 30.446104, 34.521648>,  <37.738544, 30.071053, 34.565754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870422, 30.446104, 34.521648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940578, -0.336282, -0.047192,
		-0.081329, -0.088156, -0.992781,
		0.329694, 0.937626, -0.110267,
		37.969330, 30.727392, 34.488567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316734, 30.177008, 34.076607>,  <37.738544, 30.071053, 34.565754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316734, 30.177008, 34.076607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373173, 30.443569, 34.369453>,  <38.407036, 30.603506, 34.545162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373173, 30.443569, 34.369453>,  <38.316734, 30.177008, 34.076607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373173, 30.443569, 34.369453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989198, -0.065233, -0.131270,
		-0.039720, 0.742732, -0.668410,
		0.141100, 0.666404, 0.732118,
		38.415504, 30.643490, 34.589088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641357, 30.839998, 33.825226>,  <38.316734, 30.177008, 34.076607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641357, 30.839998, 33.825226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731594, 30.708824, 34.192173>,  <38.785736, 30.630119, 34.412342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.731594, 30.708824, 34.192173>,  <38.641357, 30.839998, 33.825226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731594, 30.708824, 34.192173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943565, -0.160823, -0.289519,
		0.242477, 0.930911, 0.273148,
		0.225588, -0.327934, 0.917371,
		38.799271, 30.610443, 34.467384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103741, 31.374208, 34.192181>,  <38.641357, 30.839998, 33.825226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103741, 31.374208, 34.192181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173962, 30.996681, 34.304173>,  <39.216095, 30.770164, 34.371368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173962, 30.996681, 34.304173>,  <39.103741, 31.374208, 34.192181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173962, 30.996681, 34.304173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954469, 0.093497, -0.283280,
		0.241188, 0.316959, 0.917260,
		0.175549, -0.943819, 0.279978,
		39.226627, 30.713535, 34.388165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461189, 31.911688, 33.686958>,  <39.103741, 31.374208, 34.192181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461189, 31.911688, 33.686958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430344, 31.691984, 33.354122>,  <39.411839, 31.560162, 33.154423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430344, 31.691984, 33.354122>,  <39.461189, 31.911688, 33.686958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430344, 31.691984, 33.354122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068687, -0.835515, 0.545158,
		-0.994654, -0.015116, 0.102154,
		-0.077110, -0.549260, -0.832086,
		39.407211, 31.527206, 33.104496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843735, 32.363567, 33.205944>,  <39.461189, 31.911688, 33.686958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843735, 32.363567, 33.205944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778217, 32.654816, 33.472179>,  <39.738907, 32.829567, 33.631920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778217, 32.654816, 33.472179>,  <39.843735, 32.363567, 33.205944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778217, 32.654816, 33.472179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709487, 0.381836, -0.592308,
		-0.685419, -0.569243, 0.454051,
		-0.163795, 0.728123, 0.665588,
		39.729080, 32.873253, 33.671856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293968, 32.136124, 33.813412>,  <39.843735, 32.363567, 33.205944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293968, 32.136124, 33.813412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361992, 32.401344, 34.105011>,  <40.402805, 32.560478, 34.279968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361992, 32.401344, 34.105011>,  <40.293968, 32.136124, 33.813412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361992, 32.401344, 34.105011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843587, 0.480331, -0.240088,
		-0.509352, -0.574142, 0.641032,
		0.170063, 0.663056, 0.728996,
		40.413010, 32.600262, 34.323711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515411, 31.420567, 33.864574>,  <40.293968, 32.136124, 33.813412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515411, 31.420567, 33.864574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730259, 31.414900, 33.527218>,  <40.859169, 31.411501, 33.324806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730259, 31.414900, 33.527218>,  <40.515411, 31.420567, 33.864574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730259, 31.414900, 33.527218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708265, 0.550598, 0.441818,
		0.458109, -0.834650, 0.305769,
		0.537119, -0.014165, -0.843387,
		40.891396, 31.410650, 33.274200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193581, 31.179863, 34.008186>,  <40.515411, 31.420567, 33.864574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193581, 31.179863, 34.008186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178082, 31.442739, 33.707096>,  <41.168781, 31.600466, 33.526440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178082, 31.442739, 33.707096>,  <41.193581, 31.179863, 34.008186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178082, 31.442739, 33.707096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631619, 0.599830, 0.491184,
		0.774310, -0.456405, -0.438335,
		-0.038748, 0.657190, -0.752729,
		41.166458, 31.639896, 33.481277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811073, 31.598515, 33.967468>,  <41.193581, 31.179863, 34.008186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811073, 31.598515, 33.967468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592068, 31.849804, 33.746357>,  <41.460667, 32.000580, 33.613689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.592068, 31.849804, 33.746357>,  <41.811073, 31.598515, 33.967468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592068, 31.849804, 33.746357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677039, 0.720792, 0.148582,
		0.491781, -0.292902, -0.819976,
		-0.547512, 0.628225, -0.552778,
		41.427814, 32.038273, 33.580524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131172, 31.813208, 33.271812>,  <41.811073, 31.598515, 33.967468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131172, 31.813208, 33.271812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899094, 32.056931, 33.488007>,  <41.759846, 32.203163, 33.617722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.899094, 32.056931, 33.488007>,  <42.131172, 31.813208, 33.271812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899094, 32.056931, 33.488007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762600, 0.639441, 0.097760,
		-0.286040, 0.468890, -0.835657,
		-0.580192, 0.609309, 0.540481,
		41.725037, 32.239723, 33.650150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169086, 32.433258, 33.058098>,  <42.131172, 31.813208, 33.271812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169086, 32.433258, 33.058098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037666, 32.524494, 33.424709>,  <41.958817, 32.579235, 33.644676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037666, 32.524494, 33.424709>,  <42.169086, 32.433258, 33.058098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037666, 32.524494, 33.424709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771496, 0.624600, 0.121115,
		-0.544840, 0.746892, -0.381184,
		-0.328547, 0.228094, 0.916532,
		41.939102, 32.592922, 33.699669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086540, 33.222893, 33.167908>,  <42.169086, 32.433258, 33.058098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086540, 33.222893, 33.167908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183632, 33.006359, 33.489910>,  <42.241886, 32.876438, 33.683113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183632, 33.006359, 33.489910>,  <42.086540, 33.222893, 33.167908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183632, 33.006359, 33.489910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754503, 0.626942, 0.194084,
		-0.609758, 0.560272, 0.560616,
		0.242734, -0.541331, 0.805010,
		42.256451, 32.843960, 33.731415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261913, 33.726177, 33.762730>,  <42.086540, 33.222893, 33.167908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261913, 33.726177, 33.762730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424118, 33.367508, 33.833767>,  <42.521442, 33.152306, 33.876389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424118, 33.367508, 33.833767>,  <42.261913, 33.726177, 33.762730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424118, 33.367508, 33.833767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864866, 0.439261, 0.243015,
		-0.295913, 0.055046, 0.953628,
		0.405514, -0.896671, 0.177591,
		42.545773, 33.098507, 33.887043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610416, 33.607975, 34.464325>,  <42.261913, 33.726177, 33.762730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610416, 33.607975, 34.464325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792549, 33.429993, 34.155861>,  <42.901829, 33.323204, 33.970783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792549, 33.429993, 34.155861>,  <42.610416, 33.607975, 34.464325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792549, 33.429993, 34.155861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829023, 0.527725, 0.185003,
		0.324644, -0.723549, 0.609166,
		0.455331, -0.444953, -0.771162,
		42.929150, 33.296509, 33.924511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309860, 33.314411, 34.727364>,  <42.610416, 33.607975, 34.464325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309860, 33.314411, 34.727364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290218, 33.419209, 34.341835>,  <43.278435, 33.482086, 34.110519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.290218, 33.419209, 34.341835>,  <43.309860, 33.314411, 34.727364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290218, 33.419209, 34.341835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777725, 0.615499, 0.127688,
		0.626684, -0.743316, -0.233983,
		-0.049104, 0.261995, -0.963819,
		43.275486, 33.497807, 34.052689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006176, 33.325413, 34.488632>,  <43.309860, 33.314411, 34.727364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006176, 33.325413, 34.488632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778893, 33.584545, 34.285671>,  <43.642525, 33.740025, 34.163895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.778893, 33.584545, 34.285671>,  <44.006176, 33.325413, 34.488632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778893, 33.584545, 34.285671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699588, 0.704962, 0.116641,
		0.433264, -0.288699, -0.853777,
		-0.568206, 0.647829, -0.507405,
		43.608429, 33.778893, 34.133450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.405022, 33.491196, 33.984814>,  <44.006176, 33.325413, 34.488632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.405022, 33.491196, 33.984814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151295, 33.790302, 34.063286>,  <43.999058, 33.969769, 34.110371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151295, 33.790302, 34.063286>,  <44.405022, 33.491196, 33.984814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151295, 33.790302, 34.063286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768527, 0.637427, 0.055250,
		-0.083736, 0.185816, -0.979010,
		-0.634314, 0.747770, 0.196180,
		43.961002, 34.014633, 34.122139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506481, 33.922668, 33.477291>,  <44.405022, 33.491196, 33.984814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506481, 33.922668, 33.477291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358162, 34.126091, 33.788128>,  <44.269173, 34.248146, 33.974632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358162, 34.126091, 33.788128>,  <44.506481, 33.922668, 33.477291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358162, 34.126091, 33.788128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807597, 0.589735, -0.000597,
		-0.458585, 0.627359, -0.629381,
		-0.370794, 0.508560, 0.777096,
		44.246925, 34.278660, 34.021255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584221, 34.635410, 33.194889>,  <44.506481, 33.922668, 33.477291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584221, 34.635410, 33.194889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668072, 34.594646, 33.583870>,  <44.718384, 34.570187, 33.817261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668072, 34.594646, 33.583870>,  <44.584221, 34.635410, 33.194889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668072, 34.594646, 33.583870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872772, 0.467888, -0.139105,
		-0.440823, 0.877892, 0.187029,
		0.209628, -0.101913, 0.972456,
		44.730961, 34.564072, 33.875607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774757, 35.296288, 33.612442>,  <44.584221, 34.635410, 33.194889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774757, 35.296288, 33.612442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962887, 35.000893, 33.805702>,  <45.075764, 34.823654, 33.921658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962887, 35.000893, 33.805702>,  <44.774757, 35.296288, 33.612442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962887, 35.000893, 33.805702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850412, 0.525544, -0.024554,
		-0.235782, 0.422422, 0.875195,
		0.470326, -0.738487, 0.483146,
		45.103985, 34.779346, 33.950645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177601, 35.557480, 34.349583>,  <44.774757, 35.296288, 33.612442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177601, 35.557480, 34.349583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372993, 35.250893, 34.182770>,  <45.490231, 35.066940, 34.082684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372993, 35.250893, 34.182770>,  <45.177601, 35.557480, 34.349583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372993, 35.250893, 34.182770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838007, 0.545272, -0.020579,
		0.243169, -0.339423, 0.908659,
		0.488481, -0.766466, -0.417032,
		45.519539, 35.020954, 34.057659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.773113, 35.500225, 34.711403>,  <45.177601, 35.557480, 34.349583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.773113, 35.500225, 34.711403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857147, 35.333767, 34.357525>,  <45.907570, 35.233891, 34.145199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857147, 35.333767, 34.357525>,  <45.773113, 35.500225, 34.711403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857147, 35.333767, 34.357525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893265, 0.449531, 0.000672,
		0.397418, -0.790408, 0.466169,
		0.210089, -0.416145, -0.884695,
		45.920174, 35.208923, 34.092117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.465237, 35.229557, 34.806412>,  <45.773113, 35.500225, 34.711403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.465237, 35.229557, 34.806412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371738, 35.336742, 34.432552>,  <46.315639, 35.401054, 34.208237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371738, 35.336742, 34.432552>,  <46.465237, 35.229557, 34.806412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371738, 35.336742, 34.432552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773619, 0.633540, -0.011839,
		0.588963, -0.725826, -0.355387,
		-0.233745, 0.267962, -0.934644,
		46.301617, 35.417130, 34.152161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844456, 34.619972, 35.099735>,  <46.465237, 35.229557, 34.806412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844456, 34.619972, 35.099735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.936279, 34.387867, 35.412300>,  <46.991375, 34.248604, 35.599838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.936279, 34.387867, 35.412300>,  <46.844456, 34.619972, 35.099735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.936279, 34.387867, 35.412300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653316, -0.503236, -0.565625,
		0.721444, 0.640350, 0.263573,
		0.229558, -0.580263, 0.781407,
		47.005146, 34.213787, 35.646721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.651745, 34.599316, 35.288265>,  <46.844456, 34.619972, 35.099735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.651745, 34.599316, 35.288265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421055, 34.280521, 35.360043>,  <47.282642, 34.089245, 35.403107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421055, 34.280521, 35.360043>,  <47.651745, 34.599316, 35.288265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.421055, 34.280521, 35.360043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570129, -0.549971, -0.610315,
		0.585102, -0.249679, 0.771567,
		-0.576723, -0.796989, 0.179440,
		47.248039, 34.041424, 35.413876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.908344, 34.885025, 34.736515>,  <47.651745, 34.599316, 35.288265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.908344, 34.885025, 34.736515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735661, 35.061882, 35.051003>,  <47.632050, 35.167995, 35.239693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.735661, 35.061882, 35.051003>,  <47.908344, 34.885025, 34.736515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.735661, 35.061882, 35.051003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868608, 0.031233, -0.494515,
		-0.243202, -0.896400, 0.370566,
		-0.431710, 0.442144, 0.786216,
		47.606148, 35.194523, 35.286869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.305855, 44.004612, 27.349037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536449, 43.683773, 27.411390>,  <39.674809, 43.491268, 27.448801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536449, 43.683773, 27.411390>,  <39.305855, 44.004612, 27.349037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536449, 43.683773, 27.411390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750565, -0.444415, 0.489028,
		-0.322971, -0.398921, -0.858226,
		0.576492, -0.802096, 0.155883,
		39.709396, 43.443146, 27.458155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905052, 43.421860, 27.027554>,  <39.305855, 44.004612, 27.349037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905052, 43.421860, 27.027554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.166050, 43.275738, 27.293125>,  <39.322647, 43.188065, 27.452469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.166050, 43.275738, 27.293125>,  <38.905052, 43.421860, 27.027554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166050, 43.275738, 27.293125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744081, -0.474779, 0.470030,
		0.143515, -0.800709, -0.581608,
		0.652493, -0.365308, 0.663931,
		39.361797, 43.166145, 27.492304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689793, 42.692303, 27.120489>,  <38.905052, 43.421860, 27.027554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689793, 42.692303, 27.120489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914162, 42.757160, 27.445225>,  <39.048782, 42.796074, 27.640066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.914162, 42.757160, 27.445225>,  <38.689793, 42.692303, 27.120489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914162, 42.757160, 27.445225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541693, -0.669687, 0.508024,
		0.626051, -0.724726, -0.287806,
		0.560918, 0.162146, 0.811837,
		39.082436, 42.805805, 27.688776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904625, 42.019123, 27.248194>,  <38.689793, 42.692303, 27.120489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904625, 42.019123, 27.248194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932697, 42.261021, 27.565523>,  <38.949539, 42.406158, 27.755920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932697, 42.261021, 27.565523>,  <38.904625, 42.019123, 27.248194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932697, 42.261021, 27.565523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577601, -0.623766, 0.526587,
		0.813297, -0.495180, 0.305524,
		0.070180, 0.604742, 0.793323,
		38.953751, 42.442444, 27.803520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959675, 41.526279, 27.842367>,  <38.904625, 42.019123, 27.248194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959675, 41.526279, 27.842367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854126, 41.870026, 28.017572>,  <38.790794, 42.076275, 28.122696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.854126, 41.870026, 28.017572>,  <38.959675, 41.526279, 27.842367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854126, 41.870026, 28.017572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627444, -0.497828, 0.598733,
		0.732587, -0.116837, 0.670571,
		-0.263875, 0.859370, 0.438011,
		38.774963, 42.127838, 28.148975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184090, 41.550133, 28.569876>,  <38.959675, 41.526279, 27.842367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184090, 41.550133, 28.569876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862083, 41.784218, 28.530916>,  <38.668880, 41.924667, 28.507540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.862083, 41.784218, 28.530916>,  <39.184090, 41.550133, 28.569876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862083, 41.784218, 28.530916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504131, -0.588239, 0.632319,
		0.312745, 0.558126, 0.768561,
		-0.805011, 0.585210, -0.097400,
		38.620579, 41.959782, 28.501696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882996, 41.658550, 29.273628>,  <39.184090, 41.550133, 28.569876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882996, 41.658550, 29.273628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573647, 41.765541, 29.043724>,  <38.388039, 41.829735, 28.905781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.573647, 41.765541, 29.043724>,  <38.882996, 41.658550, 29.273628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573647, 41.765541, 29.043724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628618, -0.440918, 0.640648,
		-0.082062, 0.856765, 0.509136,
		-0.773372, 0.267480, -0.574761,
		38.341637, 41.845783, 28.871296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288639, 41.909344, 29.698389>,  <38.882996, 41.658550, 29.273628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288639, 41.909344, 29.698389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097515, 41.823719, 29.357595>,  <37.982841, 41.772343, 29.153120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097515, 41.823719, 29.357595>,  <38.288639, 41.909344, 29.698389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097515, 41.823719, 29.357595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727623, -0.446973, 0.520366,
		-0.492205, 0.868557, 0.057809,
		-0.477807, -0.214063, -0.851985,
		37.954174, 41.759499, 29.101999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602257, 42.037758, 29.891211>,  <38.288639, 41.909344, 29.698389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602257, 42.037758, 29.891211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608665, 41.798912, 29.570412>,  <37.612511, 41.655605, 29.377934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608665, 41.798912, 29.570412>,  <37.602257, 42.037758, 29.891211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608665, 41.798912, 29.570412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755609, -0.532535, 0.381396,
		-0.654827, 0.599883, -0.459718,
		0.016023, -0.597115, -0.801995,
		37.613472, 41.619778, 29.329813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946491, 42.146420, 29.583246>,  <37.602257, 42.037758, 29.891211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946491, 42.146420, 29.583246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073162, 41.789368, 29.454912>,  <37.149162, 41.575138, 29.377913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.073162, 41.789368, 29.454912>,  <36.946491, 42.146420, 29.583246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073162, 41.789368, 29.454912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895955, -0.392541, 0.207788,
		-0.311418, 0.221652, -0.924061,
		0.316675, -0.892627, -0.320834,
		37.168163, 41.521580, 29.358662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478981, 41.882000, 29.086155>,  <36.946491, 42.146420, 29.583246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478981, 41.882000, 29.086155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.679714, 41.556587, 29.203682>,  <36.800156, 41.361340, 29.274199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.679714, 41.556587, 29.203682>,  <36.478981, 41.882000, 29.086155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679714, 41.556587, 29.203682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861929, -0.441917, 0.248572,
		-0.072377, -0.377994, -0.922974,
		0.501836, -0.813529, 0.293820,
		36.830265, 41.312527, 29.291828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048077, 41.455025, 29.049358>,  <36.478981, 41.882000, 29.086155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048077, 41.455025, 29.049358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291508, 41.200024, 29.238344>,  <36.437565, 41.047024, 29.351736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.291508, 41.200024, 29.238344>,  <36.048077, 41.455025, 29.049358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291508, 41.200024, 29.238344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784991, -0.570644, 0.241154,
		0.115873, -0.517641, -0.847715,
		0.608575, -0.637506, 0.472465,
		36.474079, 41.008774, 29.380083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920189, 40.713150, 28.791975>,  <36.048077, 41.455025, 29.049358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920189, 40.713150, 28.791975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088497, 40.678207, 29.153156>,  <36.189484, 40.657242, 29.369865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088497, 40.678207, 29.153156>,  <35.920189, 40.713150, 28.791975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088497, 40.678207, 29.153156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671412, -0.699337, 0.245221,
		0.610047, -0.709434, -0.352911,
		0.420772, -0.087352, 0.902951,
		36.214729, 40.652000, 29.424042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039783, 39.985695, 28.909058>,  <35.920189, 40.713150, 28.791975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039783, 39.985695, 28.909058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056847, 40.120789, 29.285168>,  <36.067085, 40.201843, 29.510834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056847, 40.120789, 29.285168>,  <36.039783, 39.985695, 28.909058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056847, 40.120789, 29.285168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810838, -0.538148, 0.230082,
		0.583713, -0.772227, 0.250888,
		0.042660, 0.337731, 0.940275,
		36.069645, 40.222107, 29.567251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919682, 39.445423, 29.367287>,  <36.039783, 39.985695, 28.909058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919682, 39.445423, 29.367287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808678, 39.766365, 29.578650>,  <35.742073, 39.958931, 29.705467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808678, 39.766365, 29.578650>,  <35.919682, 39.445423, 29.367287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808678, 39.766365, 29.578650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857581, -0.454811, 0.240212,
		0.433061, -0.386492, 0.814299,
		-0.277512, 0.802353, 0.528409,
		35.725426, 40.007072, 29.737173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733269, 39.147896, 30.009251>,  <35.919682, 39.445423, 29.367287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733269, 39.147896, 30.009251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.550770, 39.500286, 29.959108>,  <35.441269, 39.711720, 29.929024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.550770, 39.500286, 29.959108>,  <35.733269, 39.147896, 30.009251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550770, 39.500286, 29.959108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822457, -0.363709, 0.437355,
		0.339708, 0.302641, 0.890509,
		-0.456248, 0.880979, -0.125354,
		35.413895, 39.764580, 29.921501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196358, 39.109512, 30.452269>,  <35.733269, 39.147896, 30.009251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196358, 39.109512, 30.452269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.068764, 39.432007, 30.252979>,  <34.992207, 39.625504, 30.133406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.068764, 39.432007, 30.252979>,  <35.196358, 39.109512, 30.452269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068764, 39.432007, 30.252979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918671, -0.133789, 0.371677,
		0.233003, 0.576265, 0.783344,
		-0.318987, 0.806237, -0.498225,
		34.973068, 39.673878, 30.103512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677113, 39.394932, 30.866798>,  <35.196358, 39.109512, 30.452269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677113, 39.394932, 30.866798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.601868, 39.603607, 30.533943>,  <34.556721, 39.728813, 30.334230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.601868, 39.603607, 30.533943>,  <34.677113, 39.394932, 30.866798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601868, 39.603607, 30.533943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948635, 0.122921, 0.291514,
		0.254367, 0.844235, 0.471767,
		-0.188117, 0.521687, -0.832139,
		34.545433, 39.760113, 30.284302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154716, 40.006847, 31.039061>,  <34.677113, 39.394932, 30.866798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154716, 40.006847, 31.039061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.154152, 39.909176, 30.651169>,  <34.153812, 39.850574, 30.418434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.154152, 39.909176, 30.651169>,  <34.154716, 40.006847, 31.039061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154152, 39.909176, 30.651169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994934, -0.097135, 0.025911,
		-0.100522, 0.964853, -0.242804,
		-0.001416, -0.244178, -0.969729,
		34.153728, 39.835922, 30.360250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606869, 40.424843, 30.730486>,  <34.154716, 40.006847, 31.039061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606869, 40.424843, 30.730486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694969, 40.105625, 30.506124>,  <33.747829, 39.914093, 30.371508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694969, 40.105625, 30.506124>,  <33.606869, 40.424843, 30.730486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694969, 40.105625, 30.506124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974198, -0.209012, -0.085158,
		-0.049276, 0.565187, -0.823490,
		0.220249, -0.798046, -0.560903,
		33.761044, 39.866211, 30.337854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011040, 40.410667, 30.226046>,  <33.606869, 40.424843, 30.730486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011040, 40.410667, 30.226046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.184929, 40.050491, 30.220060>,  <33.289261, 39.834385, 30.216469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.184929, 40.050491, 30.220060>,  <33.011040, 40.410667, 30.226046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184929, 40.050491, 30.220060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882085, -0.422390, -0.208597,
		0.181508, 0.103882, -0.977887,
		0.434719, -0.900442, -0.014965,
		33.315346, 39.780357, 30.215570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624115, 40.104580, 29.699295>,  <33.011040, 40.410667, 30.226046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624115, 40.104580, 29.699295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.805141, 39.804493, 29.892107>,  <32.913757, 39.624439, 30.007795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.805141, 39.804493, 29.892107>,  <32.624115, 40.104580, 29.699295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805141, 39.804493, 29.892107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872131, -0.485088, 0.063848,
		0.185928, -0.449290, -0.873825,
		0.452568, -0.750219, 0.482031,
		32.940910, 39.579426, 30.036716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647583, 39.635075, 29.083731>,  <32.624115, 40.104580, 29.699295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647583, 39.635075, 29.083731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.377541, 39.795353, 28.835966>,  <32.215515, 39.891521, 28.687307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.377541, 39.795353, 28.835966>,  <32.647583, 39.635075, 29.083731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377541, 39.795353, 28.835966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697898, 0.619025, -0.360203,
		0.239097, -0.675461, -0.697557,
		-0.675108, 0.400700, -0.619409,
		32.175007, 39.915562, 28.650143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935551, 39.730591, 28.357693>,  <32.647583, 39.635075, 29.083731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935551, 39.730591, 28.357693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.645779, 40.002205, 28.405220>,  <32.471916, 40.165173, 28.433737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.645779, 40.002205, 28.405220>,  <32.935551, 39.730591, 28.357693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645779, 40.002205, 28.405220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629514, 0.721889, -0.287382,
		-0.280914, -0.133392, -0.950418,
		-0.724431, 0.679031, 0.118816,
		32.428448, 40.205914, 28.440865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805538, 40.152462, 27.626215>,  <32.935551, 39.730591, 28.357693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805538, 40.152462, 27.626215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.621155, 40.376522, 27.901533>,  <32.510525, 40.510960, 28.066725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.621155, 40.376522, 27.901533>,  <32.805538, 40.152462, 27.626215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621155, 40.376522, 27.901533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460825, 0.813931, -0.353776,
		-0.758392, 0.154107, -0.633319,
		-0.460959, 0.560149, 0.688295,
		32.482868, 40.544567, 28.108021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721020, 40.735027, 27.285763>,  <32.805538, 40.152462, 27.626215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721020, 40.735027, 27.285763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.674374, 40.852333, 27.665319>,  <32.646385, 40.922718, 27.893053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.674374, 40.852333, 27.665319>,  <32.721020, 40.735027, 27.285763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674374, 40.852333, 27.665319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488536, 0.848771, -0.202285,
		-0.864716, 0.439979, -0.242249,
		-0.116613, 0.293266, 0.948892,
		32.639389, 40.940311, 27.949987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495525, 41.375294, 27.229500>,  <32.721020, 40.735027, 27.285763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495525, 41.375294, 27.229500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.677544, 41.334930, 27.583393>,  <32.786755, 41.310715, 27.795729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.677544, 41.334930, 27.583393>,  <32.495525, 41.375294, 27.229500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677544, 41.334930, 27.583393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583942, 0.783912, -0.210935,
		-0.672267, 0.612617, 0.415641,
		0.455048, -0.100906, 0.884731,
		32.814056, 41.304657, 27.848812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523975, 42.066799, 27.479385>,  <32.495525, 41.375294, 27.229500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523975, 42.066799, 27.479385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.807964, 41.863201, 27.674061>,  <32.978359, 41.741043, 27.790865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.807964, 41.863201, 27.674061>,  <32.523975, 42.066799, 27.479385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807964, 41.863201, 27.674061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673821, 0.691873, -0.259378,
		-0.204704, 0.512091, 0.834182,
		0.709973, -0.508993, 0.486687,
		33.020958, 41.710503, 27.820066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908703, 42.590168, 27.825058>,  <32.523975, 42.066799, 27.479385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908703, 42.590168, 27.825058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.147926, 42.270653, 27.798948>,  <33.291462, 42.078945, 27.783281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.147926, 42.270653, 27.798948>,  <32.908703, 42.590168, 27.825058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147926, 42.270653, 27.798948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782165, 0.599493, -0.169779,
		0.174750, 0.050482, 0.983318,
		0.598063, -0.798786, -0.065276,
		33.327347, 42.031017, 27.779366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590729, 42.799286, 28.212536>,  <32.908703, 42.590168, 27.825058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590729, 42.799286, 28.212536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.648956, 42.499046, 27.954725>,  <33.683891, 42.318905, 27.800039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.648956, 42.499046, 27.954725>,  <33.590729, 42.799286, 28.212536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648956, 42.499046, 27.954725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682409, 0.547864, -0.483904,
		0.716330, -0.369393, 0.591963,
		0.145565, -0.750596, -0.644528,
		33.692627, 42.273869, 27.761366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314133, 42.666946, 28.215729>,  <33.590729, 42.799286, 28.212536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314133, 42.666946, 28.215729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214035, 42.522133, 27.856550>,  <34.153976, 42.435246, 27.641043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.214035, 42.522133, 27.856550>,  <34.314133, 42.666946, 28.215729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214035, 42.522133, 27.856550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730647, 0.537904, -0.420493,
		0.635241, -0.761309, 0.129910,
		-0.250246, -0.362033, -0.897947,
		34.138962, 42.413525, 27.587166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880280, 42.569267, 27.941364>,  <34.314133, 42.666946, 28.215729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880280, 42.569267, 27.941364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657631, 42.517757, 27.613075>,  <34.524040, 42.486851, 27.416101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657631, 42.517757, 27.613075>,  <34.880280, 42.569267, 27.941364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657631, 42.517757, 27.613075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609523, 0.607970, -0.508777,
		0.564491, -0.783448, -0.259923,
		-0.556625, -0.128771, -0.820723,
		34.490643, 42.479126, 27.366858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319847, 42.165134, 27.507511>,  <34.880280, 42.569267, 27.941364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319847, 42.165134, 27.507511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054996, 42.397186, 27.317760>,  <34.896084, 42.536419, 27.203909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.054996, 42.397186, 27.317760>,  <35.319847, 42.165134, 27.507511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054996, 42.397186, 27.317760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747986, 0.472915, -0.465691,
		-0.045820, -0.663176, -0.747059,
		-0.662131, 0.580128, -0.474377,
		34.856358, 42.571224, 27.175447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578522, 42.203430, 26.891710>,  <35.319847, 42.165134, 27.507511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578522, 42.203430, 26.891710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.332970, 42.518654, 26.873322>,  <35.185638, 42.707787, 26.862289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.332970, 42.518654, 26.873322>,  <35.578522, 42.203430, 26.891710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332970, 42.518654, 26.873322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667155, 0.486812, -0.563842,
		-0.421961, -0.376802, -0.824602,
		-0.613883, 0.788057, -0.045970,
		35.148804, 42.755070, 26.859531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618362, 42.379360, 26.193197>,  <35.578522, 42.203430, 26.891710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618362, 42.379360, 26.193197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.472305, 42.714058, 26.356426>,  <35.384670, 42.914879, 26.454365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.472305, 42.714058, 26.356426>,  <35.618362, 42.379360, 26.193197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472305, 42.714058, 26.356426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729452, 0.529510, -0.433035,
		-0.578420, 0.139550, -0.803714,
		-0.365144, 0.836747, 0.408074,
		35.362762, 42.965080, 26.478849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357128, 42.828674, 25.647768>,  <35.618362, 42.379360, 26.193197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357128, 42.828674, 25.647768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497601, 43.040466, 25.956657>,  <35.581882, 43.167542, 26.141991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497601, 43.040466, 25.956657>,  <35.357128, 42.828674, 25.647768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497601, 43.040466, 25.956657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635979, 0.470408, -0.611757,
		-0.687172, 0.705953, -0.171540,
		0.351177, 0.529478, 0.772223,
		35.602955, 43.199310, 26.188324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457405, 43.553143, 25.406902>,  <35.357128, 42.828674, 25.647768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457405, 43.553143, 25.406902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.680347, 43.508011, 25.735931>,  <35.814114, 43.480934, 25.933350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.680347, 43.508011, 25.735931>,  <35.457405, 43.553143, 25.406902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680347, 43.508011, 25.735931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691500, 0.611435, -0.384675,
		-0.459550, 0.783210, 0.418803,
		0.557352, -0.112825, 0.822575,
		35.847553, 43.474163, 25.982704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753910, 44.243950, 25.557020>,  <35.457405, 43.553143, 25.406902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753910, 44.243950, 25.557020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970798, 43.983662, 25.769646>,  <36.100929, 43.827488, 25.897221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970798, 43.983662, 25.769646>,  <35.753910, 44.243950, 25.557020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970798, 43.983662, 25.769646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833519, 0.496413, -0.242530,
		-0.106054, 0.574571, 0.811555,
		0.542217, -0.650725, 0.531562,
		36.133465, 43.788445, 25.929113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108105, 44.659069, 25.950401>,  <35.753910, 44.243950, 25.557020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108105, 44.659069, 25.950401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329033, 44.325676, 25.956820>,  <36.461590, 44.125641, 25.960670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329033, 44.325676, 25.956820>,  <36.108105, 44.659069, 25.950401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329033, 44.325676, 25.956820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832774, 0.550775, -0.055980,
		0.037821, 0.044280, 0.998303,
		0.552319, -0.833478, 0.016044,
		36.494728, 44.075634, 25.961634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630394, 44.845444, 26.295126>,  <36.108105, 44.659069, 25.950401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630394, 44.845444, 26.295126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749886, 44.519436, 26.096531>,  <36.821579, 44.323830, 25.977373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.749886, 44.519436, 26.096531>,  <36.630394, 44.845444, 26.295126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749886, 44.519436, 26.096531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890032, 0.425668, -0.163249,
		0.344391, -0.393124, 0.852554,
		0.298728, -0.815021, -0.496489,
		36.839504, 44.274929, 25.947584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.446754, 44.572372, 26.681671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407818, 44.377922, 26.334291>,  <37.384457, 44.261253, 26.125864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407818, 44.377922, 26.334291>,  <37.446754, 44.572372, 26.681671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407818, 44.377922, 26.334291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903621, 0.322548, -0.281836,
		0.417124, -0.812185, 0.407876,
		-0.097343, -0.486126, -0.868450,
		37.378616, 44.232082, 26.073757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059082, 44.317783, 26.580536>,  <37.446754, 44.572372, 26.681671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059082, 44.317783, 26.580536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906265, 44.302197, 26.211208>,  <37.814575, 44.292843, 25.989611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906265, 44.302197, 26.211208>,  <38.059082, 44.317783, 26.580536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906265, 44.302197, 26.211208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904808, 0.187535, -0.382300,
		0.188080, -0.981482, -0.036322,
		-0.382032, -0.039038, -0.923324,
		37.791653, 44.290504, 25.934212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590134, 44.029301, 26.264343>,  <38.059082, 44.317783, 26.580536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590134, 44.029301, 26.264343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367249, 44.173222, 25.964996>,  <38.233517, 44.259575, 25.785387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.367249, 44.173222, 25.964996>,  <38.590134, 44.029301, 26.264343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367249, 44.173222, 25.964996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830325, 0.232002, -0.506691,
		-0.008687, -0.903723, -0.428030,
		-0.557212, 0.359806, -0.748368,
		38.200085, 44.281162, 25.740486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803600, 43.782520, 25.573463>,  <38.590134, 44.029301, 26.264343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803600, 43.782520, 25.573463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619076, 44.131020, 25.506384>,  <38.508362, 44.340118, 25.466135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.619076, 44.131020, 25.506384>,  <38.803600, 43.782520, 25.573463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619076, 44.131020, 25.506384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748418, 0.280602, -0.600944,
		-0.476513, -0.402731, -0.781501,
		-0.461309, 0.871246, -0.167701,
		38.480682, 44.392395, 25.456074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534870, 43.867310, 24.894178>,  <38.803600, 43.782520, 25.573463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534870, 43.867310, 24.894178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600925, 44.229488, 25.050585>,  <38.640556, 44.446796, 25.144428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.600925, 44.229488, 25.050585>,  <38.534870, 43.867310, 24.894178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600925, 44.229488, 25.050585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733404, 0.152344, -0.662503,
		-0.659431, 0.396176, -0.638902,
		0.165134, 0.905448, 0.391017,
		38.650467, 44.501122, 25.167891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053108, 44.129383, 24.397978>,  <38.534870, 43.867310, 24.894178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053108, 44.129383, 24.397978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046593, 44.420486, 24.672235>,  <39.042683, 44.595146, 24.836790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046593, 44.420486, 24.672235>,  <39.053108, 44.129383, 24.397978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046593, 44.420486, 24.672235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715669, 0.487362, -0.500295,
		-0.698249, 0.482545, -0.528771,
		-0.016288, 0.727756, 0.685643,
		39.041706, 44.638813, 24.877928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194603, 44.734974, 24.106972>,  <39.053108, 44.129383, 24.397978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194603, 44.734974, 24.106972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.283081, 44.860451, 24.476332>,  <39.336166, 44.935738, 24.697948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.283081, 44.860451, 24.476332>,  <39.194603, 44.734974, 24.106972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283081, 44.860451, 24.476332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703347, 0.604586, -0.373869,
		-0.675555, 0.732170, -0.086903,
		0.221195, 0.313692, 0.923401,
		39.349438, 44.954559, 24.753351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204292, 45.445148, 24.022686>,  <39.194603, 44.734974, 24.106972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204292, 45.445148, 24.022686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.422829, 45.336987, 24.339769>,  <39.553951, 45.272091, 24.530020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.422829, 45.336987, 24.339769>,  <39.204292, 45.445148, 24.022686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422829, 45.336987, 24.339769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767885, 0.539649, -0.345153,
		-0.334454, 0.797283, 0.502474,
		0.546345, -0.270404, 0.792710,
		39.586731, 45.255867, 24.577583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657417, 45.975887, 24.184345>,  <39.204292, 45.445148, 24.022686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657417, 45.975887, 24.184345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886307, 45.709789, 24.376184>,  <40.023640, 45.550129, 24.491287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886307, 45.709789, 24.376184>,  <39.657417, 45.975887, 24.184345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886307, 45.709789, 24.376184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818883, 0.431628, -0.378321,
		0.044670, 0.609216, 0.791745,
		0.572219, -0.665246, 0.479596,
		40.057972, 45.510216, 24.520063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282032, 46.314453, 24.254488>,  <39.657417, 45.975887, 24.184345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282032, 46.314453, 24.254488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.384300, 45.934776, 24.327877>,  <40.445663, 45.706970, 24.371910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.384300, 45.934776, 24.327877>,  <40.282032, 46.314453, 24.254488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384300, 45.934776, 24.327877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760429, 0.080262, -0.644443,
		0.596975, 0.304285, 0.742315,
		0.255674, -0.949194, 0.183473,
		40.461002, 45.650017, 24.382919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949154, 46.194523, 24.579855>,  <40.282032, 46.314453, 24.254488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949154, 46.194523, 24.579855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.858082, 45.878700, 24.351904>,  <40.803440, 45.689205, 24.215134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.858082, 45.878700, 24.351904>,  <40.949154, 46.194523, 24.579855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858082, 45.878700, 24.351904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741982, 0.238325, -0.626629,
		0.630576, -0.565508, 0.531577,
		-0.227676, -0.789558, -0.569879,
		40.789780, 45.641834, 24.180941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640820, 45.923622, 24.348293>,  <40.949154, 46.194523, 24.579855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640820, 45.923622, 24.348293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.357681, 45.768635, 24.112049>,  <41.187798, 45.675640, 23.970303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.357681, 45.768635, 24.112049>,  <41.640820, 45.923622, 24.348293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357681, 45.768635, 24.112049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641619, -0.002984, -0.767018,
		0.295435, -0.921877, 0.250721,
		-0.707844, -0.387471, -0.590612,
		41.145329, 45.652393, 23.934866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945335, 45.398567, 23.910748>,  <41.640820, 45.923622, 24.348293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945335, 45.398567, 23.910748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.628796, 45.499390, 23.687952>,  <41.438873, 45.559883, 23.554276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.628796, 45.499390, 23.687952>,  <41.945335, 45.398567, 23.910748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628796, 45.499390, 23.687952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541099, -0.135302, -0.830003,
		-0.284572, -0.958207, -0.029318,
		-0.791348, 0.252060, -0.556987,
		41.391392, 45.575008, 23.520855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948280, 44.959995, 23.360456>,  <41.945335, 45.398567, 23.910748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948280, 44.959995, 23.360456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.722485, 45.266674, 23.238129>,  <41.587009, 45.450684, 23.164732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.722485, 45.266674, 23.238129>,  <41.948280, 44.959995, 23.360456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722485, 45.266674, 23.238129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524457, 0.047034, -0.850137,
		-0.637417, -0.640279, -0.428652,
		-0.564486, 0.766701, -0.305819,
		41.553139, 45.496685, 23.146383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896309, 44.812565, 22.700142>,  <41.948280, 44.959995, 23.360456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896309, 44.812565, 22.700142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.755024, 45.185867, 22.674011>,  <41.670254, 45.409851, 22.658333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.755024, 45.185867, 22.674011>,  <41.896309, 44.812565, 22.700142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755024, 45.185867, 22.674011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332466, 0.059945, -0.941208,
		-0.874476, -0.354164, -0.331451,
		-0.353211, 0.933260, -0.065326,
		41.649059, 45.465847, 22.654413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498264, 44.878494, 22.080185>,  <41.896309, 44.812565, 22.700142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498264, 44.878494, 22.080185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.608944, 45.250038, 22.178694>,  <41.675350, 45.472965, 22.237799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.608944, 45.250038, 22.178694>,  <41.498264, 44.878494, 22.080185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608944, 45.250038, 22.178694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300065, 0.159949, -0.940413,
		-0.912907, 0.334110, -0.234461,
		0.276699, 0.928863, 0.246273,
		41.691956, 45.528698, 22.252575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546707, 45.238171, 21.397589>,  <41.498264, 44.878494, 22.080185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546707, 45.238171, 21.397589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.746624, 45.479813, 21.645868>,  <41.866573, 45.624798, 21.794836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.746624, 45.479813, 21.645868>,  <41.546707, 45.238171, 21.397589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746624, 45.479813, 21.645868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489036, 0.394651, -0.777878,
		-0.714881, 0.692318, -0.098189,
		0.499789, 0.604108, 0.620697,
		41.896561, 45.661045, 21.832077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530712, 45.814236, 21.030384>,  <41.546707, 45.238171, 21.397589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530712, 45.814236, 21.030384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.832607, 45.873665, 21.285976>,  <42.013744, 45.909321, 21.439331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.832607, 45.873665, 21.285976>,  <41.530712, 45.814236, 21.030384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832607, 45.873665, 21.285976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492870, 0.514401, -0.701762,
		-0.432954, 0.844582, 0.315012,
		0.754738, 0.148571, 0.638981,
		42.059029, 45.918236, 21.477671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785591, 46.532864, 20.904675>,  <41.530712, 45.814236, 21.030384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785591, 46.532864, 20.904675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078663, 46.385212, 21.133387>,  <42.254505, 46.296623, 21.270615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.078663, 46.385212, 21.133387>,  <41.785591, 46.532864, 20.904675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078663, 46.385212, 21.133387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673136, 0.516942, -0.528828,
		-0.100374, 0.772345, 0.627222,
		0.732675, -0.369126, 0.571781,
		42.298466, 46.274475, 21.304920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311016, 47.182392, 20.994493>,  <41.785591, 46.532864, 20.904675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311016, 47.182392, 20.994493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.456863, 46.811977, 21.033497>,  <42.544373, 46.589729, 21.056898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.456863, 46.811977, 21.033497>,  <42.311016, 47.182392, 20.994493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456863, 46.811977, 21.033497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666571, 0.186456, -0.721746,
		0.650184, 0.328154, 0.685256,
		0.364614, -0.926039, 0.097507,
		42.566246, 46.534164, 21.062750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056980, 47.215801, 21.053459>,  <42.311016, 47.182392, 20.994493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056980, 47.215801, 21.053459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.989212, 46.837200, 20.943604>,  <42.948551, 46.610039, 20.877691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.989212, 46.837200, 20.943604>,  <43.056980, 47.215801, 21.053459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989212, 46.837200, 20.943604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767131, 0.048292, -0.639670,
		0.618714, -0.319057, 0.717911,
		-0.169422, -0.946504, -0.274638,
		42.938385, 46.553249, 20.861212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.700996, 46.905880, 21.107725>,  <43.056980, 47.215801, 21.053459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.700996, 46.905880, 21.107725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.483494, 46.712208, 20.833529>,  <43.352993, 46.596004, 20.669010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.483494, 46.712208, 20.833529>,  <43.700996, 46.905880, 21.107725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483494, 46.712208, 20.833529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801421, -0.057125, -0.595367,
		0.249106, -0.873102, 0.419094,
		-0.543757, -0.484180, -0.685492,
		43.320366, 46.566956, 20.627880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049675, 46.205814, 20.889826>,  <43.700996, 46.905880, 21.107725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049675, 46.205814, 20.889826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.812439, 46.358292, 20.606153>,  <43.670097, 46.449780, 20.435951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.812439, 46.358292, 20.606153>,  <44.049675, 46.205814, 20.889826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812439, 46.358292, 20.606153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747532, -0.066471, -0.660892,
		-0.299070, -0.922101, -0.245534,
		-0.593088, 0.381197, -0.709180,
		43.634514, 46.472652, 20.393400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.535534, 45.591976, 21.056149>,  <44.049675, 46.205814, 20.889826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.535534, 45.591976, 21.056149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.612755, 45.205898, 20.985575>,  <44.659088, 44.974251, 20.943230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.612755, 45.205898, 20.985575>,  <44.535534, 45.591976, 21.056149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.612755, 45.205898, 20.985575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446145, -0.246503, 0.860343,
		-0.873891, -0.087375, -0.478205,
		0.193052, -0.965195, -0.176435,
		44.670670, 44.916340, 20.932644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925262, 45.186718, 21.192984>,  <44.535534, 45.591976, 21.056149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925262, 45.186718, 21.192984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.243889, 44.945278, 21.206560>,  <44.435062, 44.800415, 21.214706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.243889, 44.945278, 21.206560>,  <43.925262, 45.186718, 21.192984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243889, 44.945278, 21.206560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220693, -0.238058, 0.945845,
		-0.562835, -0.760915, -0.322839,
		0.796562, -0.603604, 0.033941,
		44.482857, 44.764198, 21.216743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589554, 44.616062, 21.464409>,  <43.925262, 45.186718, 21.192984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589554, 44.616062, 21.464409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.976513, 44.581753, 21.559732>,  <44.208687, 44.561169, 21.616926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.976513, 44.581753, 21.559732>,  <43.589554, 44.616062, 21.464409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976513, 44.581753, 21.559732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253125, -0.294986, 0.921364,
		-0.008727, -0.951644, -0.307078,
		0.967394, -0.085770, 0.238311,
		44.266731, 44.556023, 21.631226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782169, 43.957973, 21.713032>,  <43.589554, 44.616062, 21.464409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782169, 43.957973, 21.713032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.088104, 44.165611, 21.865646>,  <44.271664, 44.290195, 21.957214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.088104, 44.165611, 21.865646>,  <43.782169, 43.957973, 21.713032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.088104, 44.165611, 21.865646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198961, -0.372956, 0.906266,
		0.612736, -0.769052, -0.181969,
		0.764832, 0.519097, 0.381535,
		44.317554, 44.321339, 21.980106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969452, 43.543900, 22.235975>,  <43.782169, 43.957973, 21.713032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969452, 43.543900, 22.235975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.111477, 43.910004, 22.312113>,  <44.196690, 44.129665, 22.357796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.111477, 43.910004, 22.312113>,  <43.969452, 43.543900, 22.235975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111477, 43.910004, 22.312113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124876, -0.155352, 0.979935,
		0.926466, -0.371705, 0.059135,
		0.355060, 0.915260, 0.190345,
		44.217995, 44.184582, 22.369217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.481937, 43.495827, 22.838488>,  <43.969452, 43.543900, 22.235975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.481937, 43.495827, 22.838488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.361343, 43.877201, 22.835091>,  <44.288986, 44.106026, 22.833052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.361343, 43.877201, 22.835091>,  <44.481937, 43.495827, 22.838488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361343, 43.877201, 22.835091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241022, -0.067589, 0.968163,
		0.922505, 0.293934, 0.250176,
		-0.301485, 0.953433, -0.008494,
		44.270897, 44.163231, 22.832542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695599, 43.811359, 23.503647>,  <44.481937, 43.495827, 22.838488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695599, 43.811359, 23.503647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.406883, 44.055649, 23.373396>,  <44.233654, 44.202221, 23.295244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.406883, 44.055649, 23.373396>,  <44.695599, 43.811359, 23.503647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406883, 44.055649, 23.373396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390565, 0.029000, 0.920118,
		0.571382, 0.791313, 0.217595,
		-0.721791, 0.610724, -0.325629,
		44.190346, 44.238865, 23.275707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644997, 44.195309, 24.052261>,  <44.695599, 43.811359, 23.503647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644997, 44.195309, 24.052261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.314346, 44.273544, 23.841192>,  <44.115955, 44.320484, 23.714550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.314346, 44.273544, 23.841192>,  <44.644997, 44.195309, 24.052261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.314346, 44.273544, 23.841192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547126, -0.059852, 0.834908,
		0.131715, 0.978858, 0.156486,
		-0.826622, 0.195588, -0.527675,
		44.066360, 44.332222, 23.682890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313236, 44.815506, 24.334930>,  <44.644997, 44.195309, 24.052261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313236, 44.815506, 24.334930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.041889, 44.588394, 24.148411>,  <43.879082, 44.452126, 24.036499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.041889, 44.588394, 24.148411>,  <44.313236, 44.815506, 24.334930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041889, 44.588394, 24.148411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386523, -0.263944, 0.883704,
		-0.624829, 0.779715, -0.040410,
		-0.678372, -0.567783, -0.466298,
		43.838379, 44.418060, 24.008522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704437, 44.913246, 24.619932>,  <44.313236, 44.815506, 24.334930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704437, 44.913246, 24.619932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.574528, 44.573582, 24.453342>,  <43.496582, 44.369781, 24.353388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.574528, 44.573582, 24.453342>,  <43.704437, 44.913246, 24.619932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574528, 44.573582, 24.453342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647739, -0.121167, 0.752165,
		-0.689171, 0.514049, -0.510683,
		-0.324771, -0.849160, -0.416475,
		43.477097, 44.318832, 24.328400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997013, 44.953266, 24.726622>,  <43.704437, 44.913246, 24.619932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997013, 44.953266, 24.726622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.073948, 44.567905, 24.651934>,  <43.120110, 44.336689, 24.607121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.073948, 44.567905, 24.651934>,  <42.997013, 44.953266, 24.726622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073948, 44.567905, 24.651934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773152, -0.265943, 0.575769,
		-0.604353, 0.033624, -0.796007,
		0.192333, -0.963402, -0.186720,
		43.131649, 44.278885, 24.595919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294861, 44.664257, 24.724972>,  <42.997013, 44.953266, 24.726622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294861, 44.664257, 24.724972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.532925, 44.346859, 24.775799>,  <42.675762, 44.156422, 24.806295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.532925, 44.346859, 24.775799>,  <42.294861, 44.664257, 24.724972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532925, 44.346859, 24.775799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632303, -0.364812, 0.683451,
		-0.495961, -0.487108, -0.718852,
		0.595161, -0.793497, 0.127068,
		42.711472, 44.108810, 24.813919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803185, 44.053661, 24.662260>,  <42.294861, 44.664257, 24.724972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803185, 44.053661, 24.662260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124893, 43.937443, 24.869614>,  <42.317921, 43.867710, 24.994026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124893, 43.937443, 24.869614>,  <41.803185, 44.053661, 24.662260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124893, 43.937443, 24.869614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593250, -0.443303, 0.671965,
		0.034563, -0.847977, -0.528906,
		0.804276, -0.290548, 0.518384,
		42.366177, 43.850277, 25.025129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726124, 43.378483, 24.724962>,  <41.803185, 44.053661, 24.662260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726124, 43.378483, 24.724962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.966000, 43.506992, 25.018126>,  <42.109924, 43.584099, 25.194023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.966000, 43.506992, 25.018126>,  <41.726124, 43.378483, 24.724962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966000, 43.506992, 25.018126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579779, -0.456836, 0.674654,
		0.551566, -0.829509, -0.087694,
		0.599693, 0.321273, 0.732907,
		42.145908, 43.603374, 25.237997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719826, 42.847538, 25.158310>,  <41.726124, 43.378483, 24.724962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.719826, 42.847538, 25.158310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.872345, 43.148022, 25.373827>,  <41.963856, 43.328312, 25.503138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.872345, 43.148022, 25.373827>,  <41.719826, 42.847538, 25.158310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872345, 43.148022, 25.373827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703744, -0.142065, 0.696105,
		0.599463, -0.644597, 0.474488,
		0.381299, 0.751207, 0.538795,
		41.986736, 43.373383, 25.535465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784531, 42.646637, 25.843699>,  <41.719826, 42.847538, 25.158310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784531, 42.646637, 25.843699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.745174, 43.044090, 25.865629>,  <41.721561, 43.282562, 25.878788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.745174, 43.044090, 25.865629>,  <41.784531, 42.646637, 25.843699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745174, 43.044090, 25.865629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802630, -0.111806, 0.585905,
		0.588306, 0.013641, 0.808523,
		-0.098390, 0.993636, 0.054828,
		41.715656, 43.342182, 25.882078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427780, 42.667114, 26.403929>,  <41.784531, 42.646637, 25.843699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427780, 42.667114, 26.403929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.405441, 43.053200, 26.301762>,  <41.392040, 43.284851, 26.240461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.405441, 43.053200, 26.301762>,  <41.427780, 42.667114, 26.403929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405441, 43.053200, 26.301762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768254, 0.121852, 0.628440,
		0.637704, 0.231320, 0.734727,
		-0.055843, 0.965217, -0.255418,
		41.388687, 43.342766, 26.225136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643284, 43.066635, 27.019310>,  <41.427780, 42.667114, 26.403929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643284, 43.066635, 27.019310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.384567, 43.249237, 26.774927>,  <41.229340, 43.358799, 26.628298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.384567, 43.249237, 26.774927>,  <41.643284, 43.066635, 27.019310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384567, 43.249237, 26.774927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720273, -0.102252, 0.686113,
		0.250740, 0.883827, 0.394941,
		-0.646789, 0.456502, -0.610958,
		41.190529, 43.386189, 26.591640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381428, 43.665520, 27.389719>,  <41.643284, 43.066635, 27.019310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381428, 43.665520, 27.389719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.138191, 43.551228, 27.093454>,  <40.992249, 43.482655, 26.915695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.138191, 43.551228, 27.093454>,  <41.381428, 43.665520, 27.389719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138191, 43.551228, 27.093454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749623, -0.100444, 0.654198,
		-0.261318, 0.953032, -0.153109,
		-0.608094, -0.285728, -0.740663,
		40.955765, 43.465508, 26.871256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814220, 44.211658, 27.554544>,  <41.381428, 43.665520, 27.389719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814220, 44.211658, 27.554544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.683777, 43.896854, 27.345060>,  <40.605511, 43.707973, 27.219370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.683777, 43.896854, 27.345060>,  <40.814220, 44.211658, 27.554544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683777, 43.896854, 27.345060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757335, -0.114063, 0.642987,
		-0.565773, 0.606305, -0.558833,
		-0.326105, -0.787009, -0.523711,
		40.585945, 43.660751, 27.187946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174152, 44.290665, 27.524462>,  <40.814220, 44.211658, 27.554544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174152, 44.290665, 27.524462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.184818, 43.898239, 27.447718>,  <40.191216, 43.662785, 27.401672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.184818, 43.898239, 27.447718>,  <40.174152, 44.290665, 27.524462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184818, 43.898239, 27.447718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712831, -0.153215, 0.684395,
		-0.700828, 0.118516, -0.703416,
		0.026662, -0.981060, -0.191859,
		40.192818, 43.603920, 27.390160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.417149, 43.796444, 26.736012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.629684, 43.457607, 26.740313>,  <34.757206, 43.254307, 26.742893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.629684, 43.457607, 26.740313>,  <34.417149, 43.796444, 26.736012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629684, 43.457607, 26.740313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837471, -0.523312, 0.157439,
		-0.127738, -0.092659, -0.987470,
		0.531343, -0.847089, 0.010752,
		34.789089, 43.203480, 26.743538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949989, 43.162846, 26.459005>,  <34.417149, 43.796444, 26.736012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949989, 43.162846, 26.459005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.238880, 42.970203, 26.657579>,  <34.412216, 42.854618, 26.776724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.238880, 42.970203, 26.657579>,  <33.949989, 43.162846, 26.459005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238880, 42.970203, 26.657579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647579, -0.722969, 0.240743,
		0.242964, -0.495352, -0.834024,
		0.722226, -0.481605, 0.496435,
		34.455547, 42.825722, 26.806509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719753, 42.435703, 26.356237>,  <33.949989, 43.162846, 26.459005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719753, 42.435703, 26.356237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.984051, 42.443764, 26.656376>,  <34.142628, 42.448601, 26.836458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.984051, 42.443764, 26.656376>,  <33.719753, 42.435703, 26.356237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984051, 42.443764, 26.656376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582889, -0.616056, 0.529825,
		0.472929, -0.787444, -0.395309,
		0.660740, 0.020148, 0.750344,
		34.182274, 42.449810, 26.881479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931438, 41.740997, 26.518034>,  <33.719753, 42.435703, 26.356237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931438, 41.740997, 26.518034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.980038, 41.960144, 26.849113>,  <34.009197, 42.091633, 27.047762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.980038, 41.960144, 26.849113>,  <33.931438, 41.740997, 26.518034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980038, 41.960144, 26.849113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628444, -0.602996, 0.491379,
		0.768307, -0.579865, 0.271038,
		0.121499, 0.547862, 0.827698,
		34.016487, 42.124504, 27.097424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024803, 41.264030, 26.971123>,  <33.931438, 41.740997, 26.518034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024803, 41.264030, 26.971123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.905563, 41.572083, 27.196703>,  <33.834019, 41.756912, 27.332050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.905563, 41.572083, 27.196703>,  <34.024803, 41.264030, 26.971123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905563, 41.572083, 27.196703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554584, -0.620599, 0.554341,
		0.776900, -0.147508, 0.612101,
		-0.298099, 0.770129, 0.563949,
		33.816135, 41.803120, 27.365887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188869, 41.080566, 27.790661>,  <34.024803, 41.264030, 26.971123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188869, 41.080566, 27.790661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.919773, 41.376305, 27.779451>,  <33.758316, 41.553749, 27.772726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.919773, 41.376305, 27.779451>,  <34.188869, 41.080566, 27.790661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919773, 41.376305, 27.779451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627287, -0.549869, 0.551502,
		0.392341, 0.388598, 0.833703,
		-0.672740, 0.739348, -0.028026,
		33.717953, 41.598110, 27.771044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894276, 40.995876, 28.486763>,  <34.188869, 41.080566, 27.790661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894276, 40.995876, 28.486763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.642811, 41.228497, 28.280233>,  <33.491932, 41.368069, 28.156315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.642811, 41.228497, 28.280233>,  <33.894276, 40.995876, 28.486763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642811, 41.228497, 28.280233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771176, -0.380485, 0.510410,
		0.100375, 0.719050, 0.687671,
		-0.628659, 0.581548, -0.516323,
		33.454212, 41.402962, 28.125336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322021, 41.212639, 29.007694>,  <33.894276, 40.995876, 28.486763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322021, 41.212639, 29.007694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.173187, 41.234241, 28.637043>,  <33.083885, 41.247204, 28.414652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.173187, 41.234241, 28.637043>,  <33.322021, 41.212639, 29.007694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173187, 41.234241, 28.637043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862185, -0.389864, 0.323485,
		-0.343788, 0.919287, 0.191627,
		-0.372084, 0.054007, -0.926626,
		33.061562, 41.250443, 28.359055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644096, 41.460907, 29.114620>,  <33.322021, 41.212639, 29.007694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644096, 41.460907, 29.114620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.619003, 41.291401, 28.753181>,  <32.603947, 41.189697, 28.536318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.619003, 41.291401, 28.753181>,  <32.644096, 41.460907, 29.114620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619003, 41.291401, 28.753181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845032, -0.459175, 0.274008,
		-0.531024, 0.780757, -0.329291,
		-0.062732, -0.423766, -0.903597,
		32.600185, 41.164272, 28.482101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897306, 41.330643, 29.017231>,  <32.644096, 41.460907, 29.114620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897306, 41.330643, 29.017231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.082581, 41.094959, 28.752417>,  <32.193745, 40.953548, 28.593529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.082581, 41.094959, 28.752417>,  <31.897306, 41.330643, 29.017231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082581, 41.094959, 28.752417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668278, -0.722847, 0.175777,
		-0.582120, 0.361006, -0.728568,
		0.463186, -0.589209, -0.662036,
		32.221535, 40.918198, 28.553806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414003, 41.019817, 28.572014>,  <31.897306, 41.330643, 29.017231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414003, 41.019817, 28.572014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.713823, 40.758701, 28.528124>,  <31.893715, 40.602032, 28.501789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.713823, 40.758701, 28.528124>,  <31.414003, 41.019817, 28.572014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713823, 40.758701, 28.528124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652645, -0.756486, 0.042233,
		-0.110574, 0.039955, -0.993064,
		0.749552, -0.652788, -0.109725,
		31.938688, 40.562866, 28.495207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409132, 40.636707, 27.974123>,  <31.414003, 41.019817, 28.572014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409132, 40.636707, 27.974123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.612173, 40.407116, 28.231148>,  <31.733997, 40.269360, 28.385363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.612173, 40.407116, 28.231148>,  <31.409132, 40.636707, 27.974123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612173, 40.407116, 28.231148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725230, -0.687283, -0.041024,
		0.465170, -0.445182, -0.765134,
		0.507601, -0.573981, 0.642563,
		31.764454, 40.234921, 28.423916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368122, 39.909248, 27.684938>,  <31.409132, 40.636707, 27.974123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368122, 39.909248, 27.684938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.419098, 39.961746, 28.078188>,  <31.449684, 39.993244, 28.314138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.419098, 39.961746, 28.078188>,  <31.368122, 39.909248, 27.684938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419098, 39.961746, 28.078188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617838, -0.764904, 0.182205,
		0.775909, -0.630632, -0.016391,
		0.127442, 0.131247, 0.983124,
		31.457331, 40.001122, 28.373125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339302, 39.300526, 28.036282>,  <31.368122, 39.909248, 27.684938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339302, 39.300526, 28.036282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.282833, 39.544048, 28.348545>,  <31.248951, 39.690163, 28.535904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.282833, 39.544048, 28.348545>,  <31.339302, 39.300526, 28.036282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282833, 39.544048, 28.348545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762161, -0.570093, 0.306764,
		0.631807, -0.551681, 0.544489,
		-0.141173, 0.608804, 0.780659,
		31.240480, 39.726688, 28.582743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862272, 38.809261, 28.428907>,  <31.339302, 39.300526, 28.036282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862272, 38.809261, 28.428907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.694086, 38.463066, 28.320000>,  <30.593174, 38.255348, 28.254656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.694086, 38.463066, 28.320000>,  <30.862272, 38.809261, 28.428907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694086, 38.463066, 28.320000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516214, 0.018579, -0.856258,
		0.746144, -0.500577, 0.438967,
		-0.420468, -0.865492, -0.272268,
		30.567945, 38.203419, 28.238319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392330, 38.335838, 28.199450>,  <30.862272, 38.809261, 28.428907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392330, 38.335838, 28.199450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.069386, 38.184624, 28.018230>,  <30.875618, 38.093895, 27.909498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.069386, 38.184624, 28.018230>,  <31.392330, 38.335838, 28.199450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069386, 38.184624, 28.018230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497062, -0.022005, -0.867436,
		0.317953, -0.925529, 0.205673,
		-0.807363, -0.378037, -0.453049,
		30.827177, 38.071213, 27.882317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585377, 37.789677, 27.839762>,  <31.392330, 38.335838, 28.199450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585377, 37.789677, 27.839762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.237379, 37.861664, 27.656145>,  <31.028580, 37.904854, 27.545975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.237379, 37.861664, 27.656145>,  <31.585377, 37.789677, 27.839762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237379, 37.861664, 27.656145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445335, -0.112779, -0.888233,
		-0.211621, -0.977186, 0.017972,
		-0.869996, 0.179966, -0.459041,
		30.976379, 37.915653, 27.518433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385178, 37.144253, 27.417654>,  <31.585377, 37.789677, 27.839762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385178, 37.144253, 27.417654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.221075, 37.487663, 27.294607>,  <31.122614, 37.693710, 27.220779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.221075, 37.487663, 27.294607>,  <31.385178, 37.144253, 27.417654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221075, 37.487663, 27.294607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556207, -0.031762, -0.830437,
		-0.722720, -0.511790, -0.464486,
		-0.410256, 0.858523, -0.307616,
		31.097998, 37.745220, 27.202322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324018, 37.105347, 26.667433>,  <31.385178, 37.144253, 27.417654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324018, 37.105347, 26.667433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.278765, 37.499424, 26.718971>,  <31.251612, 37.735870, 26.749895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.278765, 37.499424, 26.718971>,  <31.324018, 37.105347, 26.667433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278765, 37.499424, 26.718971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602274, 0.171140, -0.779729,
		-0.790232, -0.010614, -0.612716,
		-0.113136, 0.985190, 0.128847,
		31.244823, 37.794979, 26.757626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236715, 37.387676, 25.911701>,  <31.324018, 37.105347, 26.667433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236715, 37.387676, 25.911701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.317343, 37.692505, 26.157827>,  <31.365719, 37.875404, 26.305502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.317343, 37.692505, 26.157827>,  <31.236715, 37.387676, 25.911701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317343, 37.692505, 26.157827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569889, 0.419679, -0.706467,
		-0.796616, 0.493061, -0.349705,
		0.201568, 0.762076, 0.615313,
		31.377813, 37.921127, 26.342421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249001, 37.930489, 25.524187>,  <31.236715, 37.387676, 25.911701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249001, 37.930489, 25.524187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.443727, 38.053680, 25.851151>,  <31.560564, 38.127594, 26.047329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.443727, 38.053680, 25.851151>,  <31.249001, 37.930489, 25.524187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443727, 38.053680, 25.851151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611054, 0.548632, -0.570628,
		-0.624199, 0.777272, 0.078891,
		0.486815, 0.307979, 0.817410,
		31.589771, 38.146072, 26.096375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287912, 38.688625, 25.507524>,  <31.249001, 37.930489, 25.524187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287912, 38.688625, 25.507524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.600958, 38.598988, 25.739834>,  <31.788786, 38.545204, 25.879219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.600958, 38.598988, 25.739834>,  <31.287912, 38.688625, 25.507524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600958, 38.598988, 25.739834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594638, 0.545147, -0.590949,
		-0.184176, 0.807834, 0.559896,
		0.782614, -0.224097, 0.580772,
		31.835743, 38.531757, 25.914064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627562, 39.332584, 25.634699>,  <31.287912, 38.688625, 25.507524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627562, 39.332584, 25.634699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.882683, 39.030499, 25.695171>,  <32.035755, 38.849247, 25.731455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.882683, 39.030499, 25.695171>,  <31.627562, 39.332584, 25.634699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882683, 39.030499, 25.695171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727273, 0.525923, -0.440998,
		0.253538, 0.391222, 0.884683,
		0.637803, -0.755216, 0.151184,
		32.074024, 38.803932, 25.740526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174953, 39.681992, 25.712852>,  <31.627562, 39.332584, 25.634699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174953, 39.681992, 25.712852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.325859, 39.315430, 25.659391>,  <32.416405, 39.095490, 25.627316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.325859, 39.315430, 25.659391>,  <32.174953, 39.681992, 25.712852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325859, 39.315430, 25.659391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842950, 0.399566, -0.360253,
		0.383542, 0.023251, 0.923231,
		0.377268, -0.916409, -0.133651,
		32.439041, 39.040508, 25.619295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848656, 39.675781, 26.100380>,  <32.174953, 39.681992, 25.712852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848656, 39.675781, 26.100380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.853889, 39.399601, 25.811073>,  <32.857029, 39.233894, 25.637489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.853889, 39.399601, 25.811073>,  <32.848656, 39.675781, 26.100380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853889, 39.399601, 25.811073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865511, 0.370034, -0.337587,
		0.500719, -0.621576, 0.602431,
		0.013084, -0.690447, -0.723264,
		32.857815, 39.192467, 25.594093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578529, 39.519325, 26.099369>,  <32.848656, 39.675781, 26.100380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578529, 39.519325, 26.099369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.457760, 39.358929, 25.753410>,  <33.385300, 39.262691, 25.545835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.457760, 39.358929, 25.753410>,  <33.578529, 39.519325, 26.099369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457760, 39.358929, 25.753410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853501, 0.290480, -0.432617,
		0.424711, -0.868809, 0.254544,
		-0.301922, -0.400990, -0.864899,
		33.367184, 39.238632, 25.493940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076603, 39.062943, 25.832340>,  <33.578529, 39.519325, 26.099369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076603, 39.062943, 25.832340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.860619, 39.181438, 25.517206>,  <33.731030, 39.252537, 25.328125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.860619, 39.181438, 25.517206>,  <34.076603, 39.062943, 25.832340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860619, 39.181438, 25.517206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841181, 0.157341, -0.517356,
		-0.029302, -0.942065, -0.334148,
		-0.539959, 0.296238, -0.787838,
		33.698631, 39.270309, 25.280855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432068, 38.736012, 25.246790>,  <34.076603, 39.062943, 25.832340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432068, 38.736012, 25.246790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.208878, 39.038315, 25.109682>,  <34.074963, 39.219696, 25.027418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.208878, 39.038315, 25.109682>,  <34.432068, 38.736012, 25.246790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208878, 39.038315, 25.109682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820471, 0.440446, -0.364465,
		-0.124478, -0.484592, -0.865838,
		-0.557972, 0.755762, -0.342768,
		34.041485, 39.265045, 25.006851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579758, 38.281845, 24.673733>,  <34.432068, 38.736012, 25.246790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579758, 38.281845, 24.673733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.856647, 37.993874, 24.693872>,  <35.022781, 37.821091, 24.705956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.856647, 37.993874, 24.693872>,  <34.579758, 38.281845, 24.673733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856647, 37.993874, 24.693872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618856, -0.556258, 0.554612,
		-0.371271, -0.415075, -0.830584,
		0.692225, -0.719924, 0.050349,
		35.064316, 37.777897, 24.708977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221184, 37.653912, 24.496380>,  <34.579758, 38.281845, 24.673733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221184, 37.653912, 24.496380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.540039, 37.556259, 24.717276>,  <34.731354, 37.497665, 24.849813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.540039, 37.556259, 24.717276>,  <34.221184, 37.653912, 24.496380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540039, 37.556259, 24.717276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563356, -0.629817, 0.534753,
		0.217257, -0.737379, -0.639587,
		0.797138, -0.244136, 0.552239,
		34.779182, 37.483017, 24.882948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157761, 36.974537, 24.587887>,  <34.221184, 37.653912, 24.496380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157761, 36.974537, 24.587887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.440006, 37.055859, 24.859409>,  <34.609352, 37.104652, 25.022324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.440006, 37.055859, 24.859409>,  <34.157761, 36.974537, 24.587887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440006, 37.055859, 24.859409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320570, -0.762732, 0.561671,
		0.631939, -0.613927, -0.473019,
		0.705612, 0.203306, 0.678807,
		34.651691, 37.116852, 25.063051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474773, 36.382175, 24.729225>,  <34.157761, 36.974537, 24.587887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474773, 36.382175, 24.729225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532761, 36.601730, 25.058517>,  <34.567554, 36.733463, 25.256092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.532761, 36.601730, 25.058517>,  <34.474773, 36.382175, 24.729225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532761, 36.601730, 25.058517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215324, -0.794575, 0.567702,
		0.965722, -0.259560, 0.003000,
		0.144969, 0.548888, 0.823229,
		34.576252, 36.766396, 25.305487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822750, 35.859142, 25.205492>,  <34.474773, 36.382175, 24.729225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822750, 35.859142, 25.205492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.716835, 36.170944, 25.432562>,  <34.653286, 36.358025, 25.568804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.716835, 36.170944, 25.432562>,  <34.822750, 35.859142, 25.205492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716835, 36.170944, 25.432562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198663, -0.620156, 0.758907,
		0.943620, 0.088175, 0.319071,
		-0.264790, 0.779507, 0.567674,
		34.637398, 36.404797, 25.602863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937092, 35.599930, 25.783005>,  <34.822750, 35.859142, 25.205492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937092, 35.599930, 25.783005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.690624, 35.897358, 25.886875>,  <34.542744, 36.075817, 25.949198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.690624, 35.897358, 25.886875>,  <34.937092, 35.599930, 25.783005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690624, 35.897358, 25.886875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456397, -0.605792, 0.651704,
		0.641899, 0.283046, 0.712636,
		-0.616171, 0.743573, 0.259675,
		34.505772, 36.120430, 25.964777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796856, 35.486710, 26.481888>,  <34.937092, 35.599930, 25.783005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796856, 35.486710, 26.481888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.494930, 35.735889, 26.399731>,  <34.313774, 35.885399, 26.350437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.494930, 35.735889, 26.399731>,  <34.796856, 35.486710, 26.481888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494930, 35.735889, 26.399731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531626, -0.397586, 0.747863,
		0.384219, 0.673692, 0.631281,
		-0.754817, 0.622948, -0.205392,
		34.268486, 35.922775, 26.338114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552807, 35.855034, 27.027264>,  <34.796856, 35.486710, 26.481888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552807, 35.855034, 27.027264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.235092, 35.834789, 26.785091>,  <34.044464, 35.822643, 26.639788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.235092, 35.834789, 26.785091>,  <34.552807, 35.855034, 27.027264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235092, 35.834789, 26.785091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483767, -0.550148, 0.680666,
		-0.367526, 0.833532, 0.412492,
		-0.794288, -0.050612, -0.605429,
		33.996807, 35.819607, 26.603462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962486, 35.987099, 27.416578>,  <34.552807, 35.855034, 27.027264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962486, 35.987099, 27.416578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.819023, 35.783546, 27.103554>,  <33.732944, 35.661415, 26.915739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.819023, 35.783546, 27.103554>,  <33.962486, 35.987099, 27.416578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819023, 35.783546, 27.103554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644247, -0.471721, 0.602017,
		-0.675508, 0.720080, -0.158662,
		-0.358656, -0.508885, -0.782561,
		33.711426, 35.630882, 26.868786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151714, 36.027351, 27.427147>,  <33.962486, 35.987099, 27.416578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151714, 36.027351, 27.427147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.269054, 35.706757, 27.218702>,  <33.339458, 35.514400, 27.093636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.269054, 35.706757, 27.218702>,  <33.151714, 36.027351, 27.427147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269054, 35.706757, 27.218702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580104, -0.582505, 0.569357,
		-0.759884, 0.135277, -0.635827,
		0.293352, -0.801491, -0.521111,
		33.357059, 35.466309, 27.062368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529823, 35.568413, 27.155439>,  <33.151714, 36.027351, 27.427147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529823, 35.568413, 27.155439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.843689, 35.320534, 27.148863>,  <33.032009, 35.171806, 27.144917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.843689, 35.320534, 27.148863>,  <32.529823, 35.568413, 27.155439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843689, 35.320534, 27.148863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586759, -0.750993, 0.302858,
		-0.200028, -0.227996, -0.952894,
		0.784667, -0.619699, -0.016441,
		33.079090, 35.134624, 27.143930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368008, 35.128529, 26.619923>,  <32.529823, 35.568413, 27.155439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368008, 35.128529, 26.619923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.609657, 34.986248, 26.905165>,  <32.754646, 34.900879, 27.076309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.609657, 34.986248, 26.905165>,  <32.368008, 35.128529, 26.619923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609657, 34.986248, 26.905165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777347, -0.460012, 0.429092,
		0.175409, -0.813552, -0.554404,
		0.604122, -0.355698, 0.713103,
		32.790894, 34.879539, 27.119095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.144604, 38.562031, 21.873693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434364, 38.372162, 22.073668>,  <37.608219, 38.258240, 22.193651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434364, 38.372162, 22.073668>,  <37.144604, 38.562031, 21.873693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434364, 38.372162, 22.073668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684348, -0.407659, 0.604551,
		-0.083162, -0.780064, -0.620148,
		0.724398, -0.474673, 0.499934,
		37.651684, 38.229759, 22.223648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876507, 37.952415, 21.985424>,  <37.144604, 38.562031, 21.873693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876507, 37.952415, 21.985424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176636, 37.972103, 22.249117>,  <37.356712, 37.983913, 22.407333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176636, 37.972103, 22.249117>,  <36.876507, 37.952415, 21.985424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176636, 37.972103, 22.249117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592396, -0.392523, 0.703557,
		0.293391, -0.918424, -0.265364,
		0.750326, 0.049216, 0.659233,
		37.401733, 37.986866, 22.446886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773350, 37.407310, 22.383825>,  <36.876507, 37.952415, 21.985424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773350, 37.407310, 22.383825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019516, 37.634663, 22.602262>,  <37.167213, 37.771072, 22.733324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019516, 37.634663, 22.602262>,  <36.773350, 37.407310, 22.383825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019516, 37.634663, 22.602262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524622, -0.221700, 0.821962,
		0.588253, -0.792336, 0.161746,
		0.615411, 0.568377, 0.546093,
		37.204140, 37.805176, 22.766090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879982, 37.005405, 22.977715>,  <36.773350, 37.407310, 22.383825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879982, 37.005405, 22.977715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955437, 37.383896, 23.082836>,  <37.000710, 37.610992, 23.145908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955437, 37.383896, 23.082836>,  <36.879982, 37.005405, 22.977715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955437, 37.383896, 23.082836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474107, -0.146610, 0.868175,
		0.860023, -0.288366, 0.420959,
		0.188635, 0.946230, 0.262805,
		37.012028, 37.667767, 23.161678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128456, 37.015823, 23.744761>,  <36.879982, 37.005405, 22.977715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128456, 37.015823, 23.744761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996655, 37.382866, 23.655827>,  <36.917572, 37.603092, 23.602467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996655, 37.382866, 23.655827>,  <37.128456, 37.015823, 23.744761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996655, 37.382866, 23.655827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622653, -0.034172, 0.781752,
		0.709741, 0.396026, 0.582608,
		-0.329503, 0.917603, -0.222333,
		36.897804, 37.658146, 23.589127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157036, 37.509602, 24.398964>,  <37.128456, 37.015823, 23.744761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157036, 37.509602, 24.398964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880459, 37.642193, 24.142206>,  <36.714512, 37.721748, 23.988152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880459, 37.642193, 24.142206>,  <37.157036, 37.509602, 24.398964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880459, 37.642193, 24.142206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666759, 0.049219, 0.743647,
		0.278093, 0.942180, 0.186981,
		-0.691446, 0.331474, -0.641894,
		36.673027, 37.741634, 23.949638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769665, 38.064556, 24.722189>,  <37.157036, 37.509602, 24.398964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769665, 38.064556, 24.722189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523170, 37.965580, 24.423117>,  <36.375275, 37.906193, 24.243673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523170, 37.965580, 24.423117>,  <36.769665, 38.064556, 24.722189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523170, 37.965580, 24.423117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787325, 0.170296, 0.592553,
		-0.019295, 0.953820, -0.299759,
		-0.616237, -0.247441, -0.747680,
		36.338299, 37.891346, 24.198812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234119, 38.544716, 24.796820>,  <36.769665, 38.064556, 24.722189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234119, 38.544716, 24.796820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083450, 38.243645, 24.580820>,  <35.993050, 38.063004, 24.451220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083450, 38.243645, 24.580820>,  <36.234119, 38.544716, 24.796820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083450, 38.243645, 24.580820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851225, 0.051284, 0.522289,
		-0.365420, 0.656394, -0.660012,
		-0.376676, -0.752673, -0.539999,
		35.970448, 38.017841, 24.418821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515114, 38.654686, 24.851580>,  <36.234119, 38.544716, 24.796820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515114, 38.654686, 24.851580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548538, 38.273045, 24.736544>,  <35.568592, 38.044060, 24.667522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548538, 38.273045, 24.736544>,  <35.515114, 38.654686, 24.851580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548538, 38.273045, 24.736544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721813, -0.256924, 0.642632,
		-0.687025, 0.153884, -0.710152,
		0.083565, -0.954102, -0.287589,
		35.573608, 37.986813, 24.650267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988937, 39.106552, 24.846189>,  <35.515114, 38.654686, 24.851580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988937, 39.106552, 24.846189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678997, 39.359165, 24.857229>,  <34.493031, 39.510735, 24.863853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678997, 39.359165, 24.857229>,  <34.988937, 39.106552, 24.846189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678997, 39.359165, 24.857229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531383, 0.674380, -0.512683,
		-0.342392, -0.382587, -0.858134,
		-0.774854, 0.631537, 0.027601,
		34.446541, 39.548626, 24.865509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995365, 39.481079, 24.282972>,  <34.988937, 39.106552, 24.846189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995365, 39.481079, 24.282972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786835, 39.729046, 24.517555>,  <34.661716, 39.877827, 24.658304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786835, 39.729046, 24.517555>,  <34.995365, 39.481079, 24.282972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786835, 39.729046, 24.517555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537366, 0.772339, -0.338717,
		-0.662919, 0.138561, -0.735758,
		-0.521321, 0.619913, 0.586456,
		34.630440, 39.915020, 24.693493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852104, 40.046295, 23.880266>,  <34.995365, 39.481079, 24.282972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852104, 40.046295, 23.880266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810867, 40.193359, 24.249958>,  <34.786125, 40.281597, 24.471773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810867, 40.193359, 24.249958>,  <34.852104, 40.046295, 23.880266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810867, 40.193359, 24.249958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532489, 0.805217, -0.260925,
		-0.840136, 0.465243, -0.278785,
		-0.103089, 0.367662, 0.924228,
		34.779942, 40.303658, 24.527227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600613, 40.762020, 23.796242>,  <34.852104, 40.046295, 23.880266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600613, 40.762020, 23.796242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771835, 40.716141, 24.154819>,  <34.874569, 40.688614, 24.369967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771835, 40.716141, 24.154819>,  <34.600613, 40.762020, 23.796242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771835, 40.716141, 24.154819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526861, 0.837593, -0.144413,
		-0.734292, 0.534118, 0.418966,
		0.428057, -0.114695, 0.896444,
		34.900253, 40.681732, 24.423752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623837, 41.491283, 24.082649>,  <34.600613, 40.762020, 23.796242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623837, 41.491283, 24.082649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892639, 41.299362, 24.308283>,  <35.053921, 41.184208, 24.443663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892639, 41.299362, 24.308283>,  <34.623837, 41.491283, 24.082649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892639, 41.299362, 24.308283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542659, 0.837373, 0.065782,
		-0.503910, 0.261899, 0.823094,
		0.672009, -0.479807, 0.564083,
		35.094242, 41.155418, 24.477509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702656, 41.944748, 24.564926>,  <34.623837, 41.491283, 24.082649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702656, 41.944748, 24.564926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019810, 41.705585, 24.611998>,  <35.210102, 41.562088, 24.640242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019810, 41.705585, 24.611998>,  <34.702656, 41.944748, 24.564926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019810, 41.705585, 24.611998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604432, 0.796194, -0.027138,
		-0.077470, 0.092646, 0.992681,
		0.792881, -0.597906, 0.117680,
		35.257675, 41.526215, 24.647301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198792, 42.306210, 24.946711>,  <34.702656, 41.944748, 24.564926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198792, 42.306210, 24.946711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410751, 42.016979, 24.769457>,  <35.537926, 41.843441, 24.663105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410751, 42.016979, 24.769457>,  <35.198792, 42.306210, 24.946711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410751, 42.016979, 24.769457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714316, 0.662200, -0.226370,
		0.457126, -0.196584, 0.867405,
		0.529895, -0.723081, -0.443132,
		35.569721, 41.800056, 24.636517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886963, 42.440109, 25.024811>,  <35.198792, 42.306210, 24.946711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886963, 42.440109, 25.024811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944023, 42.180355, 24.726028>,  <35.978260, 42.024502, 24.546759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944023, 42.180355, 24.726028>,  <35.886963, 42.440109, 25.024811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944023, 42.180355, 24.726028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841248, 0.477171, -0.254184,
		0.521490, -0.592116, 0.614367,
		0.142651, -0.649390, -0.746956,
		35.986820, 41.985538, 24.501942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595089, 42.304447, 25.058632>,  <35.886963, 42.440109, 25.024811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595089, 42.304447, 25.058632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468681, 42.188236, 24.697361>,  <36.392838, 42.118511, 24.480598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468681, 42.188236, 24.697361>,  <36.595089, 42.304447, 25.058632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468681, 42.188236, 24.697361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829669, 0.377128, -0.411611,
		0.460196, -0.879415, 0.121859,
		-0.316021, -0.290524, -0.903176,
		36.373875, 42.101078, 24.426409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173485, 42.107906, 24.790634>,  <36.595089, 42.304447, 25.058632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173485, 42.107906, 24.790634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929249, 42.148659, 24.476488>,  <36.782707, 42.173111, 24.288000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929249, 42.148659, 24.476488>,  <37.173485, 42.107906, 24.790634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929249, 42.148659, 24.476488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786630, 0.192733, -0.586573,
		0.091602, -0.975947, -0.197827,
		-0.610592, 0.101885, -0.785364,
		36.746071, 42.179222, 24.240879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500080, 41.753311, 24.179314>,  <37.173485, 42.107906, 24.790634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500080, 41.753311, 24.179314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233356, 42.011662, 24.030603>,  <37.073322, 42.166672, 23.941378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233356, 42.011662, 24.030603>,  <37.500080, 41.753311, 24.179314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233356, 42.011662, 24.030603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647376, 0.254902, -0.718282,
		-0.369154, -0.719632, -0.588095,
		-0.666805, 0.645875, -0.371774,
		37.033314, 42.205425, 23.919071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411583, 41.501938, 23.544323>,  <37.500080, 41.753311, 24.179314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411583, 41.501938, 23.544323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326588, 41.892601, 23.556860>,  <37.275593, 42.126999, 23.564383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326588, 41.892601, 23.556860>,  <37.411583, 41.501938, 23.544323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326588, 41.892601, 23.556860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725080, 0.179091, -0.664970,
		-0.655064, -0.118570, -0.746212,
		-0.212486, 0.976662, 0.031343,
		37.262840, 42.185600, 23.566263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471298, 41.652153, 22.872370>,  <37.411583, 41.501938, 23.544323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471298, 41.652153, 22.872370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500877, 42.022396, 23.020851>,  <37.518623, 42.244541, 23.109940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500877, 42.022396, 23.020851>,  <37.471298, 41.652153, 22.872370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500877, 42.022396, 23.020851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603967, 0.254628, -0.755240,
		-0.793571, 0.280041, -0.540205,
		0.073947, 0.925603, 0.371201,
		37.523060, 42.300076, 23.132212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451164, 42.118759, 22.291784>,  <37.471298, 41.652153, 22.872370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451164, 42.118759, 22.291784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587933, 42.377789, 22.564178>,  <37.669994, 42.533207, 22.727615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587933, 42.377789, 22.564178>,  <37.451164, 42.118759, 22.291784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587933, 42.377789, 22.564178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595507, 0.411270, -0.690093,
		-0.726953, 0.641490, -0.245010,
		0.341923, 0.647571, 0.680985,
		37.690510, 42.572060, 22.768475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.038677, 41.223232, 27.152857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.816376, 41.098629, 26.844545>,  <42.682995, 41.023865, 26.659559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.816376, 41.098629, 26.844545>,  <43.038677, 41.223232, 27.152857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816376, 41.098629, 26.844545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636681, -0.436694, 0.635559,
		-0.534578, 0.843954, 0.044362,
		-0.555755, -0.311511, -0.770777,
		42.649651, 41.005177, 26.613312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226810, 41.238300, 27.408560>,  <43.038677, 41.223232, 27.152857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226810, 41.238300, 27.408560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.229862, 41.012867, 27.078150>,  <42.231693, 40.877605, 26.879904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.229862, 41.012867, 27.078150>,  <42.226810, 41.238300, 27.408560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229862, 41.012867, 27.078150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831041, -0.463000, 0.308225,
		-0.556159, 0.684108, -0.471893,
		0.007627, -0.563584, -0.826023,
		42.232151, 40.843792, 26.830343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658051, 41.385151, 27.064373>,  <42.226810, 41.238300, 27.408560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658051, 41.385151, 27.064373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.767117, 41.021400, 26.938709>,  <41.832558, 40.803150, 26.863312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.767117, 41.021400, 26.938709>,  <41.658051, 41.385151, 27.064373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767117, 41.021400, 26.938709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949388, -0.307235, 0.065337,
		-0.155937, 0.280443, -0.947120,
		0.272665, -0.909373, -0.314158,
		41.848915, 40.748589, 26.844461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100914, 41.216297, 26.656473>,  <41.658051, 41.385151, 27.064373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100914, 41.216297, 26.656473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.303844, 40.875420, 26.707678>,  <41.425602, 40.670895, 26.738400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.303844, 40.875420, 26.707678>,  <41.100914, 41.216297, 26.656473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303844, 40.875420, 26.707678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850228, -0.470776, 0.235546,
		-0.140466, -0.228337, -0.963396,
		0.507327, -0.852192, 0.128010,
		41.456043, 40.619762, 26.746080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711754, 40.676105, 26.359524>,  <41.100914, 41.216297, 26.656473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711754, 40.676105, 26.359524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.950893, 40.496323, 26.625023>,  <41.094379, 40.388454, 26.784323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.950893, 40.496323, 26.625023>,  <40.711754, 40.676105, 26.359524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950893, 40.496323, 26.625023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795712, -0.432985, 0.423518,
		0.097041, -0.781354, -0.616497,
		0.597851, -0.449455, 0.663750,
		41.130249, 40.361485, 26.824148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397457, 39.985638, 26.439796>,  <40.711754, 40.676105, 26.359524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397457, 39.985638, 26.439796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.616554, 40.081383, 26.760466>,  <40.748013, 40.138828, 26.952868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.616554, 40.081383, 26.760466>,  <40.397457, 39.985638, 26.439796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616554, 40.081383, 26.760466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761126, -0.255270, 0.596259,
		0.347365, -0.936773, 0.042361,
		0.547746, 0.239362, 0.801674,
		40.780876, 40.153191, 27.000967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308037, 39.408604, 26.885695>,  <40.397457, 39.985638, 26.439796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308037, 39.408604, 26.885695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.420761, 39.726002, 27.101452>,  <40.488396, 39.916443, 27.230906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.420761, 39.726002, 27.101452>,  <40.308037, 39.408604, 26.885695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420761, 39.726002, 27.101452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623806, -0.275614, 0.731371,
		0.729005, -0.542585, 0.417317,
		0.281812, 0.793498, 0.539392,
		40.505306, 39.964050, 27.263269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307346, 39.045437, 27.505613>,  <40.308037, 39.408604, 26.885695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307346, 39.045437, 27.505613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.292053, 39.440159, 27.568541>,  <40.282879, 39.676994, 27.606297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.292053, 39.440159, 27.568541>,  <40.307346, 39.045437, 27.505613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292053, 39.440159, 27.568541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644890, -0.144623, 0.750467,
		0.763318, -0.072763, 0.641912,
		-0.038229, 0.986808, 0.157317,
		40.280586, 39.736202, 27.615736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462528, 39.205715, 28.222435>,  <40.307346, 39.045437, 27.505613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462528, 39.205715, 28.222435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.248569, 39.522812, 28.105515>,  <40.120193, 39.713070, 28.035362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.248569, 39.522812, 28.105515>,  <40.462528, 39.205715, 28.222435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248569, 39.522812, 28.105515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579772, -0.092723, 0.809485,
		0.614610, 0.602464, 0.509207,
		-0.534901, 0.792742, -0.292303,
		40.088100, 39.760635, 28.017824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359093, 39.517113, 28.801247>,  <40.462528, 39.205715, 28.222435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359093, 39.517113, 28.801247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.080246, 39.680264, 28.565392>,  <39.912937, 39.778152, 28.423880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.080246, 39.680264, 28.565392>,  <40.359093, 39.517113, 28.801247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080246, 39.680264, 28.565392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712671, -0.304370, 0.632027,
		0.078322, 0.860811, 0.502863,
		-0.697112, 0.407877, -0.589636,
		39.871113, 39.802628, 28.388500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965916, 39.848862, 29.224195>,  <40.359093, 39.517113, 28.801247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965916, 39.848862, 29.224195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726727, 39.829067, 28.904202>,  <39.583214, 39.817192, 28.712206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726727, 39.829067, 28.904202>,  <39.965916, 39.848862, 29.224195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726727, 39.829067, 28.904202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743350, -0.339037, 0.576615,
		-0.299758, 0.939471, 0.165951,
		-0.597977, -0.049486, -0.799985,
		39.547333, 39.814220, 28.664206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435989, 40.040520, 29.499941>,  <39.965916, 39.848862, 29.224195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435989, 40.040520, 29.499941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291954, 39.891514, 29.157814>,  <39.205532, 39.802113, 28.952538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.291954, 39.891514, 29.157814>,  <39.435989, 40.040520, 29.499941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291954, 39.891514, 29.157814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761270, -0.412628, 0.500207,
		-0.539261, 0.831248, -0.134998,
		-0.360092, -0.372512, -0.855318,
		39.183926, 39.779758, 28.901218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693981, 40.258259, 29.495792>,  <39.435989, 40.040520, 29.499941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693981, 40.258259, 29.495792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.731167, 39.945366, 29.249386>,  <38.753479, 39.757629, 29.101542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.731167, 39.945366, 29.249386>,  <38.693981, 40.258259, 29.495792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731167, 39.945366, 29.249386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787089, -0.436650, 0.435692,
		-0.609794, 0.444356, -0.656277,
		0.092961, -0.782230, -0.616014,
		38.759056, 39.710697, 29.064581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098099, 40.046577, 29.296883>,  <38.693981, 40.258259, 29.495792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098099, 40.046577, 29.296883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296329, 39.709732, 29.211798>,  <38.415268, 39.507626, 29.160746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.296329, 39.709732, 29.211798>,  <38.098099, 40.046577, 29.296883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296329, 39.709732, 29.211798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762508, -0.539085, 0.357727,
		-0.415918, -0.015085, -0.909277,
		0.495574, -0.842116, -0.212713,
		38.445004, 39.457096, 29.147984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665333, 40.453800, 28.781195>,  <38.098099, 40.046577, 29.296883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665333, 40.453800, 28.781195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482010, 40.770775, 28.942186>,  <37.372017, 40.960960, 29.038782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.482010, 40.770775, 28.942186>,  <37.665333, 40.453800, 28.781195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482010, 40.770775, 28.942186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447763, 0.597034, -0.665626,
		-0.767763, -0.124847, -0.628452,
		-0.458309, 0.792441, 0.402479,
		37.344517, 41.008507, 29.062929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573009, 40.882141, 28.269592>,  <37.665333, 40.453800, 28.781195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573009, 40.882141, 28.269592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.571579, 41.127663, 28.585371>,  <37.570721, 41.274975, 28.774839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.571579, 41.127663, 28.585371>,  <37.573009, 40.882141, 28.269592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571579, 41.127663, 28.585371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607404, 0.628468, -0.485889,
		-0.794385, 0.477774, -0.375079,
		-0.003580, 0.613807, 0.789448,
		37.570503, 41.311806, 28.822205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233437, 41.570183, 28.073212>,  <37.573009, 40.882141, 28.269592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233437, 41.570183, 28.073212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462437, 41.643627, 28.392843>,  <37.599838, 41.687695, 28.584621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462437, 41.643627, 28.392843>,  <37.233437, 41.570183, 28.073212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462437, 41.643627, 28.392843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407367, 0.782095, -0.471571,
		-0.711541, 0.595495, 0.372955,
		0.572505, 0.183612, 0.799078,
		37.634190, 41.698711, 28.632566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332867, 42.350937, 28.134296>,  <37.233437, 41.570183, 28.073212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332867, 42.350937, 28.134296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.640049, 42.212284, 28.349733>,  <37.824360, 42.129093, 28.478996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.640049, 42.212284, 28.349733>,  <37.332867, 42.350937, 28.134296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640049, 42.212284, 28.349733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590569, 0.708713, -0.385946,
		-0.247927, 0.614468, 0.748974,
		0.767959, -0.346634, 0.538595,
		37.870438, 42.108295, 28.511312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768383, 42.926086, 28.288786>,  <37.332867, 42.350937, 28.134296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768383, 42.926086, 28.288786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025352, 42.633251, 28.379427>,  <38.179535, 42.457550, 28.433811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.025352, 42.633251, 28.379427>,  <37.768383, 42.926086, 28.288786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025352, 42.633251, 28.379427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738721, 0.512882, -0.437314,
		0.203932, 0.448334, 0.870292,
		0.642420, -0.732085, 0.226600,
		38.218079, 42.413624, 28.447407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368130, 43.252781, 28.642792>,  <37.768383, 42.926086, 28.288786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368130, 43.252781, 28.642792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.485867, 42.903179, 28.488140>,  <38.556507, 42.693417, 28.395350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.485867, 42.903179, 28.488140>,  <38.368130, 43.252781, 28.642792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485867, 42.903179, 28.488140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789920, 0.450201, -0.416348,
		0.537951, -0.182860, 0.822904,
		0.294338, -0.874003, -0.386631,
		38.574169, 42.640980, 28.372150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073624, 43.126133, 28.915689>,  <38.368130, 43.252781, 28.642792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073624, 43.126133, 28.915689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014545, 42.910294, 28.584145>,  <38.979099, 42.780788, 28.385218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.014545, 42.910294, 28.584145>,  <39.073624, 43.126133, 28.915689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014545, 42.910294, 28.584145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899350, 0.275430, -0.339569,
		0.411526, -0.795593, 0.444610,
		-0.147700, -0.539602, -0.828863,
		38.970234, 42.748413, 28.335485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781651, 42.991859, 28.738457>,  <39.073624, 43.126133, 28.915689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781651, 42.991859, 28.738457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.571136, 42.923267, 28.405323>,  <39.444828, 42.882114, 28.205442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.571136, 42.923267, 28.405323>,  <39.781651, 42.991859, 28.738457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571136, 42.923267, 28.405323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810435, 0.195249, -0.552334,
		0.257322, -0.965647, 0.036213,
		-0.526289, -0.171476, -0.832836,
		39.413250, 42.871826, 28.155472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310848, 42.660286, 28.272635>,  <39.781651, 42.991859, 28.738457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310848, 42.660286, 28.272635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.012852, 42.810608, 28.052176>,  <39.834053, 42.900803, 27.919901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.012852, 42.810608, 28.052176>,  <40.310848, 42.660286, 28.272635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012852, 42.810608, 28.052176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655430, 0.258643, -0.709588,
		-0.124119, -0.889872, -0.439002,
		-0.744987, 0.375809, -0.551146,
		39.789356, 42.923351, 27.886831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487923, 42.407379, 27.637259>,  <40.310848, 42.660286, 28.272635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487923, 42.407379, 27.637259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.245827, 42.717350, 27.564404>,  <40.100567, 42.903332, 27.520691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.245827, 42.717350, 27.564404>,  <40.487923, 42.407379, 27.637259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245827, 42.717350, 27.564404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603229, 0.297182, -0.740134,
		-0.519418, -0.557832, -0.647324,
		-0.605244, 0.774923, -0.182139,
		40.064255, 42.949825, 27.509762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372456, 42.386539, 26.952812>,  <40.487923, 42.407379, 27.637259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372456, 42.386539, 26.952812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300728, 42.758087, 27.082451>,  <40.257690, 42.981018, 27.160234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300728, 42.758087, 27.082451>,  <40.372456, 42.386539, 26.952812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300728, 42.758087, 27.082451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530506, 0.368737, -0.763280,
		-0.828497, 0.035063, -0.558895,
		-0.179322, 0.928872, 0.324099,
		40.246933, 43.036747, 27.179680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164055, 42.737411, 26.372164>,  <40.372456, 42.386539, 26.952812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164055, 42.737411, 26.372164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.306484, 43.004097, 26.634064>,  <40.391941, 43.164108, 26.791204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.306484, 43.004097, 26.634064>,  <40.164055, 42.737411, 26.372164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306484, 43.004097, 26.634064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485453, 0.466723, -0.739259,
		-0.798464, 0.581084, -0.157470,
		0.356077, 0.666716, 0.654751,
		40.413307, 43.204113, 26.830488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099297, 43.351589, 25.913214>,  <40.164055, 42.737411, 26.372164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099297, 43.351589, 25.913214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.355915, 43.406311, 26.215130>,  <40.509884, 43.439144, 26.396278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.355915, 43.406311, 26.215130>,  <40.099297, 43.351589, 25.913214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355915, 43.406311, 26.215130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533518, 0.627418, -0.567191,
		-0.551162, 0.766571, 0.329528,
		0.641544, 0.136805, 0.754789,
		40.548378, 43.447353, 26.441566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359230, 44.113407, 25.876926>,  <40.099297, 43.351589, 25.913214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359230, 44.113407, 25.876926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.611607, 43.886353, 26.088472>,  <40.763031, 43.750118, 26.215401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.611607, 43.886353, 26.088472>,  <40.359230, 44.113407, 25.876926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611607, 43.886353, 26.088472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760547, 0.317889, -0.566141,
		0.153243, 0.759429, 0.632285,
		0.630940, -0.567639, 0.528867,
		40.800888, 43.716061, 26.247133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305954, 44.943691, 25.671289>,  <40.359230, 44.113407, 25.876926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305954, 44.943691, 25.671289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.100658, 45.036964, 25.340904>,  <39.977482, 45.092926, 25.142673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.100658, 45.036964, 25.340904>,  <40.305954, 44.943691, 25.671289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100658, 45.036964, 25.340904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855709, -0.212997, 0.471587,
		-0.065962, 0.948820, 0.308853,
		-0.513236, 0.233181, -0.825963,
		39.946686, 45.106918, 25.093115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706539, 45.418507, 25.891012>,  <40.305954, 44.943691, 25.671289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706539, 45.418507, 25.891012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600601, 45.248993, 25.544542>,  <39.537037, 45.147285, 25.336660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600601, 45.248993, 25.544542>,  <39.706539, 45.418507, 25.891012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600601, 45.248993, 25.544542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949460, -0.042330, 0.311022,
		-0.168472, 0.904773, -0.391156,
		-0.264846, -0.423786, -0.866177,
		39.521149, 45.121857, 25.284689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074715, 45.461548, 25.892328>,  <39.706539, 45.418507, 25.891012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074715, 45.461548, 25.892328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062435, 45.235626, 25.562466>,  <39.055069, 45.100075, 25.364548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.062435, 45.235626, 25.562466>,  <39.074715, 45.461548, 25.892328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062435, 45.235626, 25.562466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987557, -0.110172, 0.112215,
		-0.154233, 0.817838, -0.554394,
		-0.030695, -0.564803, -0.824655,
		39.053226, 45.066185, 25.315069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627838, 45.768227, 25.390457>,  <39.074715, 45.461548, 25.892328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627838, 45.768227, 25.390457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.636177, 45.371902, 25.336996>,  <38.641178, 45.134109, 25.304920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.636177, 45.371902, 25.336996>,  <38.627838, 45.768227, 25.390457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636177, 45.371902, 25.336996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975332, -0.049537, 0.215114,
		-0.219757, 0.125872, -0.967400,
		0.020845, -0.990809, -0.133653,
		38.642429, 45.074661, 25.296900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965717, 45.585739, 25.352036>,  <38.627838, 45.768227, 25.390457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965717, 45.585739, 25.352036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117954, 45.216141, 25.366890>,  <38.209297, 44.994381, 25.375803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117954, 45.216141, 25.366890>,  <37.965717, 45.585739, 25.352036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117954, 45.216141, 25.366890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883542, -0.351492, 0.309528,
		-0.272949, -0.150617, -0.950165,
		0.380595, -0.923995, 0.037137,
		38.232132, 44.938942, 25.378031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587730, 45.134998, 24.913458>,  <37.965717, 45.585739, 25.352036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587730, 45.134998, 24.913458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762589, 44.878860, 25.166080>,  <37.867504, 44.725178, 25.317654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.762589, 44.878860, 25.166080>,  <37.587730, 45.134998, 24.913458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762589, 44.878860, 25.166080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870712, -0.477222, 0.118826,
		0.225304, -0.601850, -0.766169,
		0.437148, -0.640340, 0.631558,
		37.893734, 44.686760, 25.355549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306126, 44.502926, 24.724964>,  <37.587730, 45.134998, 24.913458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306126, 44.502926, 24.724964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446609, 44.415314, 25.089092>,  <37.530899, 44.362747, 25.307570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.446609, 44.415314, 25.089092>,  <37.306126, 44.502926, 24.724964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446609, 44.415314, 25.089092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828996, -0.524679, 0.193591,
		0.435223, -0.822641, -0.365845,
		0.351207, -0.219028, 0.910318,
		37.551971, 44.349606, 25.362188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289078, 43.741131, 24.866308>,  <37.306126, 44.502926, 24.724964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289078, 43.741131, 24.866308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325443, 43.891552, 25.235159>,  <37.347263, 43.981804, 25.456470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325443, 43.891552, 25.235159>,  <37.289078, 43.741131, 24.866308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325443, 43.891552, 25.235159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837548, -0.472062, 0.275085,
		0.538747, -0.797336, 0.272043,
		0.090914, 0.376050, 0.922129,
		37.352718, 44.004368, 25.511797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149570, 43.147549, 25.375042>,  <37.289078, 43.741131, 24.866308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149570, 43.147549, 25.375042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.072792, 43.496552, 25.554770>,  <37.026726, 43.705952, 25.662605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.072792, 43.496552, 25.554770>,  <37.149570, 43.147549, 25.375042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072792, 43.496552, 25.554770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832050, -0.387465, 0.396943,
		0.520431, -0.297660, 0.800344,
		-0.191951, 0.872508, 0.449317,
		37.015205, 43.758305, 25.689564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991779, 42.949585, 25.961840>,  <37.149570, 43.147549, 25.375042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991779, 42.949585, 25.961840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860691, 43.327053, 25.980146>,  <36.782040, 43.553532, 25.991131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.860691, 43.327053, 25.980146>,  <36.991779, 42.949585, 25.961840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860691, 43.327053, 25.980146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811868, -0.306060, 0.497190,
		0.483189, 0.125782, 0.866434,
		-0.327718, 0.943666, 0.045767,
		36.762375, 43.610153, 25.993876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906197, 43.063702, 26.693733>,  <36.991779, 42.949585, 25.961840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906197, 43.063702, 26.693733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676434, 43.300560, 26.467663>,  <36.538578, 43.442673, 26.332020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.676434, 43.300560, 26.467663>,  <36.906197, 43.063702, 26.693733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676434, 43.300560, 26.467663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804348, -0.280150, 0.523966,
		0.151927, 0.755569, 0.637207,
		-0.574406, 0.592141, -0.565178,
		36.504112, 43.478203, 26.298109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491001, 43.483009, 27.101948>,  <36.906197, 43.063702, 26.693733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491001, 43.483009, 27.101948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.306408, 43.476070, 26.747156>,  <36.195652, 43.471905, 26.534281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.306408, 43.476070, 26.747156>,  <36.491001, 43.483009, 27.101948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306408, 43.476070, 26.747156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872532, -0.171867, 0.457328,
		-0.160377, 0.984967, 0.064176,
		-0.461483, -0.017349, -0.886979,
		36.167961, 43.470867, 26.481062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875114, 43.762928, 27.285280>,  <36.491001, 43.483009, 27.101948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875114, 43.762928, 27.285280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785236, 43.602322, 26.930136>,  <35.731308, 43.505959, 26.717049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785236, 43.602322, 26.930136>,  <35.875114, 43.762928, 27.285280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785236, 43.602322, 26.930136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860865, -0.345096, 0.373925,
		-0.456534, 0.848349, -0.268106,
		-0.224696, -0.401513, -0.887862,
		35.717827, 43.481869, 26.663776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101921, 43.984711, 27.145811>,  <35.875114, 43.762928, 27.285280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101921, 43.984711, 27.145811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.166794, 43.651276, 26.934593>,  <35.205715, 43.451214, 26.807863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.166794, 43.651276, 26.934593>,  <35.101921, 43.984711, 27.145811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166794, 43.651276, 26.934593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828716, -0.405550, 0.385692,
		-0.535656, 0.375046, -0.756579,
		0.162179, -0.833588, -0.528043,
		35.215446, 43.401199, 26.776180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.457462, 42.801270, 21.990292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.718983, 42.857197, 22.287746>,  <37.875896, 42.890751, 22.466219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.718983, 42.857197, 22.287746>,  <37.457462, 42.801270, 21.990292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718983, 42.857197, 22.287746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629825, 0.444125, -0.637239,
		-0.419363, 0.884989, 0.202312,
		0.653801, 0.139813, 0.743637,
		37.915123, 42.899139, 22.510838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925175, 43.266281, 21.709795>,  <37.457462, 42.801270, 21.990292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925175, 43.266281, 21.709795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.085186, 43.242710, 22.075638>,  <38.181194, 43.228569, 22.295143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.085186, 43.242710, 22.075638>,  <37.925175, 43.266281, 21.709795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085186, 43.242710, 22.075638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860235, 0.368419, -0.352510,
		-0.316185, 0.927790, 0.198070,
		0.400028, -0.058928, 0.914606,
		38.205196, 43.225033, 22.350019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240864, 43.899529, 21.955231>,  <37.925175, 43.266281, 21.709795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240864, 43.899529, 21.955231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.443073, 43.590832, 22.109558>,  <38.564400, 43.405613, 22.202154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.443073, 43.590832, 22.109558>,  <38.240864, 43.899529, 21.955231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443073, 43.590832, 22.109558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799351, 0.250586, -0.546118,
		0.324782, 0.584482, 0.743571,
		0.505525, -0.771743, 0.385820,
		38.594730, 43.359310, 22.225304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849064, 44.169346, 22.361897>,  <38.240864, 43.899529, 21.955231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849064, 44.169346, 22.361897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.920269, 43.794464, 22.241922>,  <38.962990, 43.569534, 22.169939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.920269, 43.794464, 22.241922>,  <38.849064, 44.169346, 22.361897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920269, 43.794464, 22.241922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838356, 0.304037, -0.452461,
		0.515239, -0.170908, 0.839833,
		0.178011, -0.937204, -0.299933,
		38.973671, 43.513302, 22.151943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569538, 44.086857, 22.363676>,  <38.849064, 44.169346, 22.361897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569538, 44.086857, 22.363676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.493034, 43.758541, 22.148375>,  <39.447132, 43.561550, 22.019194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.493034, 43.758541, 22.148375>,  <39.569538, 44.086857, 22.363676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493034, 43.758541, 22.148375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861719, 0.122144, -0.492464,
		0.469955, -0.558013, 0.683932,
		-0.191263, -0.820794, -0.538253,
		39.435654, 43.512302, 21.986898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160641, 43.580734, 22.386127>,  <39.569538, 44.086857, 22.363676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160641, 43.580734, 22.386127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940811, 43.541920, 22.054211>,  <39.808914, 43.518631, 21.855061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940811, 43.541920, 22.054211>,  <40.160641, 43.580734, 22.386127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940811, 43.541920, 22.054211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816597, 0.147389, -0.558073,
		0.176456, -0.984307, -0.001760,
		-0.549574, -0.097038, -0.829790,
		39.775940, 43.512806, 21.805273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614117, 43.251526, 21.937180>,  <40.160641, 43.580734, 22.386127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614117, 43.251526, 21.937180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.326653, 43.401489, 21.702923>,  <40.154175, 43.491467, 21.562368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.326653, 43.401489, 21.702923>,  <40.614117, 43.251526, 21.937180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326653, 43.401489, 21.702923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683227, 0.224025, -0.694992,
		-0.129360, -0.899587, -0.417144,
		-0.718656, 0.374908, -0.585642,
		40.111057, 43.513962, 21.527229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787231, 42.940319, 21.319906>,  <40.614117, 43.251526, 21.937180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787231, 42.940319, 21.319906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.550186, 43.254238, 21.247343>,  <40.407959, 43.442589, 21.203804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.550186, 43.254238, 21.247343>,  <40.787231, 42.940319, 21.319906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550186, 43.254238, 21.247343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522922, 0.203536, -0.827723,
		-0.612669, -0.585382, -0.531004,
		-0.592613, 0.784793, -0.181409,
		40.372402, 43.489677, 21.192921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594131, 42.906178, 20.636478>,  <40.787231, 42.940319, 21.319906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594131, 42.906178, 20.636478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.548588, 43.294151, 20.722507>,  <40.521263, 43.526936, 20.774124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.548588, 43.294151, 20.722507>,  <40.594131, 42.906178, 20.636478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548588, 43.294151, 20.722507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638301, 0.237308, -0.732296,
		-0.761320, 0.053903, -0.646132,
		-0.113859, 0.969938, 0.215073,
		40.514431, 43.585133, 20.787029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553173, 43.356972, 19.985857>,  <40.594131, 42.906178, 20.636478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553173, 43.356972, 19.985857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.679462, 43.587002, 20.287748>,  <40.755234, 43.725018, 20.468884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.679462, 43.587002, 20.287748>,  <40.553173, 43.356972, 19.985857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679462, 43.587002, 20.287748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758408, 0.325055, -0.564939,
		-0.570208, 0.750755, -0.333511,
		0.315721, 0.575071, 0.754728,
		40.774178, 43.759521, 20.514166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621788, 44.001778, 19.738943>,  <40.553173, 43.356972, 19.985857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621788, 44.001778, 19.738943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.849834, 44.047966, 20.064308>,  <40.986660, 44.075680, 20.259527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.849834, 44.047966, 20.064308>,  <40.621788, 44.001778, 19.738943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849834, 44.047966, 20.064308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693673, 0.462849, -0.551895,
		-0.440214, 0.878884, 0.183779,
		0.570114, 0.115469, 0.813411,
		41.020870, 44.082607, 20.308331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994053, 44.631336, 19.651331>,  <40.621788, 44.001778, 19.738943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994053, 44.631336, 19.651331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.254124, 44.456913, 19.900206>,  <41.410168, 44.352261, 20.049530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.254124, 44.456913, 19.900206>,  <40.994053, 44.631336, 19.651331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254124, 44.456913, 19.900206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730431, 0.133338, -0.669844,
		0.209130, 0.889985, 0.405205,
		0.650180, -0.436059, 0.622188,
		41.449177, 44.326096, 20.086863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476856, 45.138401, 19.801399>,  <40.994053, 44.631336, 19.651331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476856, 45.138401, 19.801399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.631996, 44.774544, 19.860882>,  <41.725082, 44.556229, 19.896570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.631996, 44.774544, 19.860882>,  <41.476856, 45.138401, 19.801399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631996, 44.774544, 19.860882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774643, 0.234263, -0.587409,
		0.499499, 0.343021, 0.795511,
		0.387852, -0.909647, 0.148705,
		41.748352, 44.501648, 19.905493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190506, 45.177296, 19.963154>,  <41.476856, 45.138401, 19.801399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190506, 45.177296, 19.963154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.145432, 44.800228, 19.837500>,  <42.118385, 44.573990, 19.762108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.145432, 44.800228, 19.837500>,  <42.190506, 45.177296, 19.963154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145432, 44.800228, 19.837500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633471, 0.175413, -0.753621,
		0.765517, -0.283919, 0.577385,
		-0.112687, -0.942667, -0.314136,
		42.111626, 44.517429, 19.743259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.602310, 45.744278, 19.872223>,  <42.190506, 45.177296, 19.963154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.602310, 45.744278, 19.872223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.829277, 45.960796, 20.120428>,  <42.965458, 46.090706, 20.269352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.829277, 45.960796, 20.120428>,  <42.602310, 45.744278, 19.872223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829277, 45.960796, 20.120428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639097, -0.185673, 0.746378,
		0.519222, -0.820078, 0.240584,
		0.567418, 0.541293, 0.620515,
		42.999504, 46.123184, 20.306583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799191, 45.301628, 20.474976>,  <42.602310, 45.744278, 19.872223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799191, 45.301628, 20.474976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.829845, 45.681538, 20.596333>,  <42.848240, 45.909485, 20.669147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.829845, 45.681538, 20.596333>,  <42.799191, 45.301628, 20.474976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829845, 45.681538, 20.596333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457535, -0.236857, 0.857065,
		0.885882, -0.204500, 0.416404,
		0.076642, 0.949778, 0.303394,
		42.852837, 45.966473, 20.687351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078430, 45.315125, 21.107010>,  <42.799191, 45.301628, 20.474976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078430, 45.315125, 21.107010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.894333, 45.669609, 21.085852>,  <42.783875, 45.882301, 21.073156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.894333, 45.669609, 21.085852>,  <43.078430, 45.315125, 21.107010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894333, 45.669609, 21.085852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426385, -0.168390, 0.888730,
		0.778699, 0.431587, 0.455370,
		-0.460244, 0.886215, -0.052897,
		42.756260, 45.935474, 21.069983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313843, 45.640842, 21.694361>,  <43.078430, 45.315125, 21.107010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313843, 45.640842, 21.694361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.975231, 45.820694, 21.580362>,  <42.772064, 45.928604, 21.511963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.975231, 45.820694, 21.580362>,  <43.313843, 45.640842, 21.694361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975231, 45.820694, 21.580362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383279, -0.143253, 0.912456,
		0.369440, 0.881653, 0.293601,
		-0.846528, 0.449629, -0.284996,
		42.721272, 45.955582, 21.494864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071133, 46.090015, 22.251245>,  <43.313843, 45.640842, 21.694361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071133, 46.090015, 22.251245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.741348, 46.039898, 22.030499>,  <42.543476, 46.009827, 21.898050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.741348, 46.039898, 22.030499>,  <43.071133, 46.090015, 22.251245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741348, 46.039898, 22.030499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521569, -0.210171, 0.826918,
		-0.219596, 0.969602, 0.107928,
		-0.824465, -0.125296, -0.551868,
		42.494007, 46.002308, 21.864939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605476, 46.482410, 22.510395>,  <43.071133, 46.090015, 22.251245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605476, 46.482410, 22.510395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.367588, 46.236839, 22.302780>,  <42.224854, 46.089497, 22.178211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.367588, 46.236839, 22.302780>,  <42.605476, 46.482410, 22.510395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367588, 46.236839, 22.302780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602106, -0.087660, 0.793590,
		-0.532704, 0.784481, -0.317515,
		-0.594723, -0.613926, -0.519038,
		42.189171, 46.052662, 22.147068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939331, 46.725765, 22.663456>,  <42.605476, 46.482410, 22.510395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939331, 46.725765, 22.663456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.851624, 46.355179, 22.541090>,  <41.799000, 46.132828, 22.467670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.851624, 46.355179, 22.541090>,  <41.939331, 46.725765, 22.663456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851624, 46.355179, 22.541090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676564, -0.081533, 0.731856,
		-0.702982, 0.367441, -0.608936,
		-0.219266, -0.926467, -0.305913,
		41.785843, 46.077240, 22.449316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246269, 46.713413, 22.776213>,  <41.939331, 46.725765, 22.663456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246269, 46.713413, 22.776213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371674, 46.336227, 22.731436>,  <41.446915, 46.109917, 22.704571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.371674, 46.336227, 22.731436>,  <41.246269, 46.713413, 22.776213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371674, 46.336227, 22.731436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684983, -0.306216, 0.661082,
		-0.657655, -0.130577, -0.741916,
		0.313509, -0.942964, -0.111942,
		41.465725, 46.053337, 22.697853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702847, 46.224445, 22.542965>,  <41.246269, 46.713413, 22.776213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702847, 46.224445, 22.542965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.967960, 46.000668, 22.742058>,  <41.127029, 45.866402, 22.861513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.967960, 46.000668, 22.742058>,  <40.702847, 46.224445, 22.542965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967960, 46.000668, 22.742058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690407, -0.199195, 0.695457,
		-0.289926, -0.804574, -0.518269,
		0.662783, -0.559448, 0.497732,
		41.166794, 45.832832, 22.891378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330917, 45.653820, 22.797146>,  <40.702847, 46.224445, 22.542965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330917, 45.653820, 22.797146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.648045, 45.644211, 23.040741>,  <40.838322, 45.638443, 23.186897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.648045, 45.644211, 23.040741>,  <40.330917, 45.653820, 22.797146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648045, 45.644211, 23.040741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582468, -0.323957, 0.745509,
		0.179375, -0.945767, -0.270832,
		0.792815, -0.024026, 0.608988,
		40.885891, 45.637001, 23.223438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351414, 45.041084, 23.141808>,  <40.330917, 45.653820, 22.797146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351414, 45.041084, 23.141808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.585842, 45.257057, 23.383469>,  <40.726498, 45.386639, 23.528465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.585842, 45.257057, 23.383469>,  <40.351414, 45.041084, 23.141808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585842, 45.257057, 23.383469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500838, -0.344730, 0.793929,
		0.636935, -0.767879, 0.068382,
		0.586068, 0.539929, 0.604153,
		40.761662, 45.419037, 23.564714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458775, 44.552467, 23.634850>,  <40.351414, 45.041084, 23.141808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458775, 44.552467, 23.634850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.547871, 44.915752, 23.776573>,  <40.601330, 45.133724, 23.861609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.547871, 44.915752, 23.776573>,  <40.458775, 44.552467, 23.634850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547871, 44.915752, 23.776573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509944, -0.201208, 0.836344,
		0.830869, -0.366968, 0.418320,
		0.222742, 0.908212, 0.354311,
		40.614693, 45.188217, 23.882866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693306, 44.380405, 24.353119>,  <40.458775, 44.552467, 23.634850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693306, 44.380405, 24.353119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571602, 44.761402, 24.347569>,  <40.498581, 44.989998, 24.344238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.571602, 44.761402, 24.347569>,  <40.693306, 44.380405, 24.353119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571602, 44.761402, 24.347569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329239, -0.091480, 0.939805,
		0.893885, 0.290509, 0.341430,
		-0.304256, 0.952489, -0.013874,
		40.480324, 45.047150, 24.343407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772678, 44.570602, 25.054953>,  <40.693306, 44.380405, 24.353119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772678, 44.570602, 25.054953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.543713, 44.860123, 24.900835>,  <40.406334, 45.033836, 24.808365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.543713, 44.860123, 24.900835>,  <40.772678, 44.570602, 25.054953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543713, 44.860123, 24.900835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447990, 0.117497, 0.886284,
		0.686767, 0.679929, 0.256999,
		-0.572413, 0.723803, -0.385294,
		40.371990, 45.077263, 24.785246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051010, 44.455349, 25.709230>,  <40.772678, 44.570602, 25.054953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051010, 44.455349, 25.709230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.177204, 44.124638, 25.895523>,  <41.252922, 43.926212, 26.007299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.177204, 44.124638, 25.895523>,  <41.051010, 44.455349, 25.709230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177204, 44.124638, 25.895523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910705, 0.125902, -0.393403,
		0.266621, 0.548257, 0.792671,
		0.315484, -0.826779, 0.465732,
		41.271851, 43.876602, 26.035242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706379, 44.568581, 26.143719>,  <41.051010, 44.455349, 25.709230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706379, 44.568581, 26.143719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.693359, 44.184624, 26.032331>,  <41.685547, 43.954250, 25.965498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.693359, 44.184624, 26.032331>,  <41.706379, 44.568581, 26.143719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693359, 44.184624, 26.032331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892305, 0.097611, -0.440753,
		0.450258, -0.262824, 0.853341,
		-0.032545, -0.959893, -0.278470,
		41.683598, 43.896656, 25.948790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421703, 44.422543, 26.189312>,  <41.706379, 44.568581, 26.143719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421703, 44.422543, 26.189312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.289131, 44.101955, 25.990194>,  <42.209587, 43.909603, 25.870724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.289131, 44.101955, 25.990194>,  <42.421703, 44.422543, 26.189312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289131, 44.101955, 25.990194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878513, -0.069754, -0.472598,
		0.344051, -0.593950, 0.727222,
		-0.331426, -0.801472, -0.497794,
		42.189705, 43.861515, 25.840857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041393, 43.966560, 26.169115>,  <42.421703, 44.422543, 26.189312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041393, 43.966560, 26.169115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.790615, 43.843182, 25.882954>,  <42.640148, 43.769154, 25.711256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.790615, 43.843182, 25.882954>,  <43.041393, 43.966560, 26.169115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790615, 43.843182, 25.882954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745071, 0.030911, -0.666269,
		0.227625, -0.950738, 0.210438,
		-0.626942, -0.308451, -0.715403,
		42.602531, 43.750645, 25.668333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437920, 43.619156, 25.761719>,  <43.041393, 43.966560, 26.169115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437920, 43.619156, 25.761719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.117565, 43.659874, 25.525679>,  <42.925354, 43.684303, 25.384054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.117565, 43.659874, 25.525679>,  <43.437920, 43.619156, 25.761719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117565, 43.659874, 25.525679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597111, 0.210060, -0.774166,
		0.045152, -0.972375, -0.229017,
		-0.800887, 0.101794, -0.590100,
		42.877300, 43.690411, 25.348648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519249, 43.111126, 25.184566>,  <43.437920, 43.619156, 25.761719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519249, 43.111126, 25.184566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.298222, 43.426987, 25.077892>,  <43.165607, 43.616505, 25.013887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.298222, 43.426987, 25.077892>,  <43.519249, 43.111126, 25.184566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298222, 43.426987, 25.077892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592226, 0.146840, -0.792279,
		-0.586465, -0.595723, -0.548791,
		-0.552564, 0.789653, -0.266686,
		43.132454, 43.663883, 24.997887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176365, 42.996792, 24.506077>,  <43.519249, 43.111126, 25.184566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176365, 42.996792, 24.506077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.205608, 43.392097, 24.559723>,  <43.223156, 43.629280, 24.591911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.205608, 43.392097, 24.559723>,  <43.176365, 42.996792, 24.506077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205608, 43.392097, 24.559723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452310, 0.086994, -0.887608,
		-0.888859, 0.125555, -0.440642,
		0.073111, 0.988265, 0.134115,
		43.227543, 43.688576, 24.599957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056641, 42.414131, 23.961983>,  <43.176365, 42.996792, 24.506077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056641, 42.414131, 23.961983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.268070, 42.074612, 23.957134>,  <43.394928, 41.870899, 23.954226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.268070, 42.074612, 23.957134>,  <43.056641, 42.414131, 23.961983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268070, 42.074612, 23.957134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663480, -0.421987, 0.617836,
		-0.529537, -0.318526, -0.786213,
		0.528569, -0.848804, -0.012122,
		43.426640, 41.819969, 23.953499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596516, 41.773415, 23.848812>,  <43.056641, 42.414131, 23.961983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596516, 41.773415, 23.848812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.931133, 41.640968, 24.023420>,  <43.131905, 41.561501, 24.128185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.931133, 41.640968, 24.023420>,  <42.596516, 41.773415, 23.848812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931133, 41.640968, 24.023420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547371, -0.539946, 0.639409,
		0.023977, -0.773834, -0.632935,
		0.836547, -0.331119, 0.436520,
		43.182098, 41.541634, 24.154377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434563, 41.104794, 24.075039>,  <42.596516, 41.773415, 23.848812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434563, 41.104794, 24.075039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.753113, 41.232933, 24.280237>,  <42.944244, 41.309818, 24.403357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.753113, 41.232933, 24.280237>,  <42.434563, 41.104794, 24.075039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753113, 41.232933, 24.280237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403647, -0.350127, 0.845269,
		0.450396, -0.880219, -0.149524,
		0.796374, 0.320351, 0.512994,
		42.992023, 41.329037, 24.434135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618938, 40.567204, 24.598892>,  <42.434563, 41.104794, 24.075039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618938, 40.567204, 24.598892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.826733, 40.881920, 24.732216>,  <42.951408, 41.070747, 24.812210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.826733, 40.881920, 24.732216>,  <42.618938, 40.567204, 24.598892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826733, 40.881920, 24.732216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222608, -0.251986, 0.941780,
		0.824971, -0.563441, 0.044241,
		0.519489, 0.786789, 0.333307,
		42.982578, 41.117958, 24.832209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000641, 40.339619, 25.109959>,  <42.618938, 40.567204, 24.598892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000641, 40.339619, 25.109959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.996616, 40.724754, 25.217918>,  <42.994202, 40.955833, 25.282694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.996616, 40.724754, 25.217918>,  <43.000641, 40.339619, 25.109959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996616, 40.724754, 25.217918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238088, -0.264457, 0.934546,
		0.971191, -0.054852, 0.231902,
		-0.010066, 0.962836, 0.269898,
		42.993595, 41.013607, 25.298887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328705, 40.392368, 25.858927>,  <43.000641, 40.339619, 25.109959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328705, 40.392368, 25.858927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.110710, 40.725090, 25.816786>,  <42.979916, 40.924721, 25.791502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.110710, 40.725090, 25.816786>,  <43.328705, 40.392368, 25.858927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110710, 40.725090, 25.816786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365219, -0.122404, 0.922839,
		0.754723, 0.541410, 0.370498,
		-0.544985, 0.831801, -0.105352,
		42.947216, 40.974628, 25.785181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522034, 40.687828, 26.543478>,  <43.328705, 40.392368, 25.858927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522034, 40.687828, 26.543478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.194622, 40.867847, 26.400667>,  <42.998177, 40.975861, 26.314981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.194622, 40.867847, 26.400667>,  <43.522034, 40.687828, 26.543478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194622, 40.867847, 26.400667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494156, -0.234667, 0.837103,
		0.292956, 0.861619, 0.414477,
		-0.818527, 0.450050, -0.357027,
		42.949062, 41.002861, 26.293558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.462715, 41.997860, 20.043640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.230526, 42.258549, 20.238909>,  <43.091213, 42.414963, 20.356070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.230526, 42.258549, 20.238909>,  <43.462715, 41.997860, 20.043640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230526, 42.258549, 20.238909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579829, -0.751742, 0.314137,
		0.571710, -0.100709, 0.814251,
		-0.580470, 0.651722, 0.488173,
		43.056385, 42.454063, 20.385361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330891, 41.720249, 20.813513>,  <43.462715, 41.997860, 20.043640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330891, 41.720249, 20.813513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.027534, 41.962753, 20.717766>,  <42.845520, 42.108253, 20.660318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.027534, 41.962753, 20.717766>,  <43.330891, 41.720249, 20.813513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027534, 41.962753, 20.717766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650962, -0.685870, 0.325316,
		0.033052, 0.402535, 0.914808,
		-0.758391, 0.606257, -0.239366,
		42.800018, 42.144630, 20.645956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907761, 41.609203, 21.371450>,  <43.330891, 41.720249, 20.813513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907761, 41.609203, 21.371450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.661125, 41.792770, 21.115570>,  <42.513145, 41.902908, 20.962042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.661125, 41.792770, 21.115570>,  <42.907761, 41.609203, 21.371450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661125, 41.792770, 21.115570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767993, -0.529384, 0.360472,
		-0.173221, 0.713548, 0.678855,
		-0.616589, 0.458914, -0.639700,
		42.476147, 41.930443, 20.923660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275246, 41.735256, 21.727812>,  <42.907761, 41.609203, 21.371450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275246, 41.735256, 21.727812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.177277, 41.733685, 21.339998>,  <42.118496, 41.732742, 21.107309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.177277, 41.733685, 21.339998>,  <42.275246, 41.735256, 21.727812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177277, 41.733685, 21.339998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821278, -0.530626, 0.209617,
		-0.515283, 0.847597, 0.126736,
		-0.244920, -0.003926, -0.969535,
		42.103802, 41.732506, 21.049137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549019, 41.903740, 21.770329>,  <42.275246, 41.735256, 21.727812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549019, 41.903740, 21.770329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.597546, 41.767754, 21.397297>,  <41.626659, 41.686161, 21.173477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.597546, 41.767754, 21.397297>,  <41.549019, 41.903740, 21.770329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597546, 41.767754, 21.397297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788066, -0.604224, 0.117753,
		-0.603520, 0.720653, -0.341207,
		0.121307, -0.339960, -0.932583,
		41.633938, 41.665764, 21.117523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960400, 41.915195, 21.431828>,  <41.549019, 41.903740, 21.770329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960400, 41.915195, 21.431828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.146202, 41.619373, 21.236979>,  <41.257683, 41.441879, 21.120070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.146202, 41.619373, 21.236979>,  <40.960400, 41.915195, 21.431828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146202, 41.619373, 21.236979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795133, -0.590466, 0.138249,
		-0.389872, 0.323110, -0.862322,
		0.464503, -0.739560, -0.487122,
		41.285553, 41.397507, 21.090841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447437, 41.649513, 21.032423>,  <40.960400, 41.915195, 21.431828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447437, 41.649513, 21.032423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.721733, 41.358494, 21.040743>,  <40.886311, 41.183884, 21.045734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.721733, 41.358494, 21.040743>,  <40.447437, 41.649513, 21.032423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721733, 41.358494, 21.040743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723198, -0.677858, 0.132263,
		-0.082129, -0.105740, -0.990996,
		0.685740, -0.727549, 0.020799,
		40.927456, 41.140228, 21.046982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123703, 41.040474, 20.580221>,  <40.447437, 41.649513, 21.032423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123703, 41.040474, 20.580221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.423187, 40.893955, 20.801220>,  <40.602879, 40.806046, 20.933819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.423187, 40.893955, 20.801220>,  <40.123703, 41.040474, 20.580221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423187, 40.893955, 20.801220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558746, -0.797195, 0.228655,
		0.356692, -0.479902, -0.801539,
		0.748715, -0.366297, 0.552496,
		40.647800, 40.784065, 20.966969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260769, 40.306164, 20.434460>,  <40.123703, 41.040474, 20.580221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260769, 40.306164, 20.434460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.398415, 40.372440, 20.804136>,  <40.481003, 40.412209, 21.025942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.398415, 40.372440, 20.804136>,  <40.260769, 40.306164, 20.434460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398415, 40.372440, 20.804136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588209, -0.729169, 0.349745,
		0.731842, -0.663971, -0.153457,
		0.344117, 0.165693, 0.924191,
		40.501648, 40.422150, 21.081394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462769, 39.647232, 20.644545>,  <40.260769, 40.306164, 20.434460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462769, 39.647232, 20.644545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.446308, 39.874268, 20.973457>,  <40.436432, 40.010490, 21.170805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.446308, 39.874268, 20.973457>,  <40.462769, 39.647232, 20.644545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446308, 39.874268, 20.973457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445197, -0.747184, 0.493473,
		0.894486, -0.345772, 0.283435,
		-0.041149, 0.567590, 0.822282,
		40.433964, 40.044544, 21.220142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595837, 39.174511, 21.143270>,  <40.462769, 39.647232, 20.644545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595837, 39.174511, 21.143270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402889, 39.483929, 21.307688>,  <40.287121, 39.669579, 21.406338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.402889, 39.483929, 21.307688>,  <40.595837, 39.174511, 21.143270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402889, 39.483929, 21.307688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606428, -0.633505, 0.480538,
		0.632115, -0.017474, 0.774677,
		-0.482364, 0.773541, 0.411045,
		40.258179, 39.715992, 21.431002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660870, 39.008221, 21.848961>,  <40.595837, 39.174511, 21.143270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660870, 39.008221, 21.848961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.345070, 39.248894, 21.800507>,  <40.155590, 39.393295, 21.771435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.345070, 39.248894, 21.800507>,  <40.660870, 39.008221, 21.848961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345070, 39.248894, 21.800507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584618, -0.677136, 0.446889,
		0.186859, 0.423636, 0.886350,
		-0.789497, 0.601681, -0.121137,
		40.108219, 39.429398, 21.764166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840603, 39.112537, 22.615911>,  <40.660870, 39.008221, 21.848961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840603, 39.112537, 22.615911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.137012, 38.967571, 22.842022>,  <41.314857, 38.880592, 22.977688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.137012, 38.967571, 22.842022>,  <40.840603, 39.112537, 22.615911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137012, 38.967571, 22.842022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653531, 0.582596, -0.483197,
		-0.154208, 0.727486, 0.668569,
		0.741025, -0.362417, 0.565275,
		41.359322, 38.858845, 23.011604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244133, 39.662724, 22.741035>,  <40.840603, 39.112537, 22.615911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244133, 39.662724, 22.741035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.489967, 39.369553, 22.857731>,  <41.637466, 39.193649, 22.927748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.489967, 39.369553, 22.857731>,  <41.244133, 39.662724, 22.741035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489967, 39.369553, 22.857731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762122, 0.456205, -0.459399,
		0.203611, 0.504679, 0.838952,
		0.614583, -0.732923, 0.291738,
		41.674343, 39.149677, 22.945251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846512, 39.963341, 23.004488>,  <41.244133, 39.662724, 22.741035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846512, 39.963341, 23.004488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.992893, 39.603317, 22.909853>,  <42.080723, 39.387302, 22.853073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.992893, 39.603317, 22.909853>,  <41.846512, 39.963341, 23.004488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992893, 39.603317, 22.909853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819697, 0.432115, -0.375997,
		0.440651, -0.056330, 0.895909,
		0.365955, -0.900058, -0.236586,
		42.102680, 39.333302, 22.838877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497322, 39.953945, 23.285978>,  <41.846512, 39.963341, 23.004488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497322, 39.953945, 23.285978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.511055, 39.675182, 22.999443>,  <42.519295, 39.507923, 22.827522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.511055, 39.675182, 22.999443>,  <42.497322, 39.953945, 23.285978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511055, 39.675182, 22.999443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942468, 0.261062, -0.208809,
		0.332530, -0.667954, 0.665779,
		0.034335, -0.696910, -0.716336,
		42.521355, 39.466110, 22.784542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197540, 39.791939, 23.345282>,  <42.497322, 39.953945, 23.285978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197540, 39.791939, 23.345282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.103642, 39.631359, 22.991167>,  <43.047302, 39.535011, 22.778698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.103642, 39.631359, 22.991167>,  <43.197540, 39.791939, 23.345282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103642, 39.631359, 22.991167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964774, 0.015039, -0.262649,
		0.118754, -0.915758, 0.383777,
		-0.234751, -0.401448, -0.885286,
		43.033215, 39.510925, 22.725582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750706, 39.330486, 23.204227>,  <43.197540, 39.791939, 23.345282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750706, 39.330486, 23.204227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.568825, 39.440311, 22.865320>,  <43.459698, 39.506207, 22.661976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.568825, 39.440311, 22.865320>,  <43.750706, 39.330486, 23.204227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568825, 39.440311, 22.865320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883861, 0.021927, -0.467235,
		-0.109708, -0.961319, -0.252646,
		-0.454702, 0.274563, -0.847267,
		43.432415, 39.522678, 22.611139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001583, 38.870842, 22.658794>,  <43.750706, 39.330486, 23.204227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001583, 38.870842, 22.658794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.868488, 39.210617, 22.494970>,  <43.788631, 39.414482, 22.396677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.868488, 39.210617, 22.494970>,  <44.001583, 38.870842, 22.658794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868488, 39.210617, 22.494970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883535, 0.129009, -0.450247,
		-0.329620, -0.511675, -0.793435,
		-0.332741, 0.849438, -0.409559,
		43.768665, 39.465450, 22.372103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266830, 38.804302, 22.008127>,  <44.001583, 38.870842, 22.658794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266830, 38.804302, 22.008127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.173546, 39.192375, 22.034515>,  <44.117573, 39.425220, 22.050348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.173546, 39.192375, 22.034515>,  <44.266830, 38.804302, 22.008127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173546, 39.192375, 22.034515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761039, 0.224330, -0.608683,
		-0.605334, -0.091748, -0.790666,
		-0.233215, 0.970185, 0.065971,
		44.103580, 39.483429, 22.054306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256954, 39.036972, 21.278595>,  <44.266830, 38.804302, 22.008127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256954, 39.036972, 21.278595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.322781, 39.362793, 21.501101>,  <44.362278, 39.558285, 21.634604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.322781, 39.362793, 21.501101>,  <44.256954, 39.036972, 21.278595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322781, 39.362793, 21.501101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680979, 0.314157, -0.661493,
		-0.713572, 0.487665, -0.502989,
		0.164569, 0.814548, 0.556263,
		44.372150, 39.607159, 21.667980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099945, 39.617123, 20.893230>,  <44.256954, 39.036972, 21.278595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099945, 39.617123, 20.893230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.340214, 39.769783, 21.174236>,  <44.484375, 39.861382, 21.342840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.340214, 39.769783, 21.174236>,  <44.099945, 39.617123, 20.893230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340214, 39.769783, 21.174236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491662, 0.516566, -0.701019,
		-0.630443, 0.766486, 0.122644,
		0.600675, 0.381653, 0.702517,
		44.520416, 39.884277, 21.384991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206112, 40.393353, 20.775854>,  <44.099945, 39.617123, 20.893230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206112, 40.393353, 20.775854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.503914, 40.330692, 21.035446>,  <44.682594, 40.293095, 21.191202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.503914, 40.330692, 21.035446>,  <44.206112, 40.393353, 20.775854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.503914, 40.330692, 21.035446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553988, 0.687449, -0.469586,
		-0.372578, 0.709136, 0.598592,
		0.744502, -0.156655, 0.648981,
		44.727264, 40.283695, 21.230141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497410, 41.124516, 20.929880>,  <44.206112, 40.393353, 20.775854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497410, 41.124516, 20.929880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.768291, 40.853451, 21.044542>,  <44.930820, 40.690811, 21.113340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.768291, 40.853451, 21.044542>,  <44.497410, 41.124516, 20.929880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768291, 40.853451, 21.044542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729663, 0.568289, -0.380316,
		0.094822, 0.466712, 0.879311,
		0.677201, -0.677663, 0.286656,
		44.971451, 40.650150, 21.130539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219604, 41.523460, 21.160566>,  <44.497410, 41.124516, 20.929880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219604, 41.523460, 21.160566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.317196, 41.144188, 21.079153>,  <45.375751, 40.916622, 21.030306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.317196, 41.144188, 21.079153>,  <45.219604, 41.523460, 21.160566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.317196, 41.144188, 21.079153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862510, 0.308101, -0.401435,
		0.443342, -0.077607, 0.892986,
		0.243976, -0.948183, -0.203531,
		45.390388, 40.859734, 21.018093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942478, 41.531487, 21.216963>,  <45.219604, 41.523460, 21.160566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942478, 41.531487, 21.216963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.870663, 41.201027, 21.003330>,  <45.827572, 41.002750, 20.875151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.870663, 41.201027, 21.003330>,  <45.942478, 41.531487, 21.216963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870663, 41.201027, 21.003330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842254, 0.151428, -0.517375,
		0.508304, -0.542723, 0.668639,
		-0.179541, -0.826148, -0.534083,
		45.816799, 40.953182, 20.843105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501381, 41.206295, 21.724743>,  <45.942478, 41.531487, 21.216963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501381, 41.206295, 21.724743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.584072, 41.533733, 21.939091>,  <45.633686, 41.730198, 22.067699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.584072, 41.533733, 21.939091>,  <45.501381, 41.206295, 21.724743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584072, 41.533733, 21.939091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897993, -0.058686, 0.436080,
		0.388423, -0.571358, 0.722965,
		0.206730, 0.818600, 0.535870,
		45.646091, 41.779312, 22.099852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.407333, 40.993267, 22.433256>,  <45.501381, 41.206295, 21.724743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.407333, 40.993267, 22.433256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.390095, 41.392868, 22.428484>,  <45.379753, 41.632629, 22.425621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.390095, 41.392868, 22.428484>,  <45.407333, 40.993267, 22.433256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390095, 41.392868, 22.428484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732045, -0.023448, 0.680853,
		0.679892, 0.038075, 0.732323,
		-0.043095, 0.999000, -0.011931,
		45.377167, 41.692570, 22.424904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556499, 41.238976, 23.119791>,  <45.407333, 40.993267, 22.433256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556499, 41.238976, 23.119791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.360847, 41.539886, 22.943235>,  <45.243458, 41.720432, 22.837301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.360847, 41.539886, 22.943235>,  <45.556499, 41.238976, 23.119791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360847, 41.539886, 22.943235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663775, 0.007236, 0.747897,
		0.565823, 0.658802, 0.495806,
		-0.489129, 0.752281, -0.441391,
		45.214108, 41.765572, 22.810818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212460, 41.598911, 23.737909>,  <45.556499, 41.238976, 23.119791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212460, 41.598911, 23.737909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.041451, 41.759392, 23.413870>,  <44.938847, 41.855679, 23.219446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.041451, 41.759392, 23.413870>,  <45.212460, 41.598911, 23.737909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041451, 41.759392, 23.413870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824810, 0.193679, 0.531204,
		0.370019, 0.895280, 0.248113,
		-0.427522, 0.401201, -0.810100,
		44.913193, 41.879753, 23.170839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992321, 42.161587, 23.991798>,  <45.212460, 41.598911, 23.737909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992321, 42.161587, 23.991798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.767864, 42.062954, 23.675743>,  <44.633190, 42.003773, 23.486111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.767864, 42.062954, 23.675743>,  <44.992321, 42.161587, 23.991798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767864, 42.062954, 23.675743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827719, 0.165149, 0.536290,
		-0.001748, 0.954947, -0.296771,
		-0.561140, -0.246581, -0.790139,
		44.599522, 41.988979, 23.438702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457855, 42.660625, 23.895014>,  <44.992321, 42.161587, 23.991798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457855, 42.660625, 23.895014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.333336, 42.320381, 23.725517>,  <44.258625, 42.116234, 23.623819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.333336, 42.320381, 23.725517>,  <44.457855, 42.660625, 23.895014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333336, 42.320381, 23.725517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854148, 0.054986, 0.517114,
		-0.416562, 0.522914, -0.743664,
		-0.311298, -0.850610, -0.423741,
		44.239948, 42.065197, 23.598394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716930, 42.716312, 23.895416>,  <44.457855, 42.660625, 23.895014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716930, 42.716312, 23.895416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.738476, 42.326824, 23.806898>,  <43.751404, 42.093132, 23.753786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.738476, 42.326824, 23.806898>,  <43.716930, 42.716312, 23.895416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738476, 42.326824, 23.806898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790716, -0.176937, 0.586056,
		-0.609808, 0.143414, -0.779465,
		0.053868, -0.973718, -0.221297,
		43.754635, 42.034710, 23.740509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074062, 43.231049, 23.806475>,  <43.716930, 42.716312, 23.895416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074062, 43.231049, 23.806475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.199028, 43.575550, 23.966795>,  <43.274006, 43.782249, 24.062988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.199028, 43.575550, 23.966795>,  <43.074062, 43.231049, 23.806475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199028, 43.575550, 23.966795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391372, 0.267754, -0.880418,
		-0.865579, 0.431916, -0.253421,
		0.312413, 0.861253, 0.400802,
		43.292751, 43.833927, 24.087036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831417, 43.805031, 23.410513>,  <43.074062, 43.231049, 23.806475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831417, 43.805031, 23.410513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.142162, 43.982227, 23.589504>,  <43.328609, 44.088547, 23.696899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.142162, 43.982227, 23.589504>,  <42.831417, 43.805031, 23.410513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142162, 43.982227, 23.589504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327223, 0.323133, -0.887981,
		-0.537967, 0.836265, 0.106072,
		0.776863, 0.442996, 0.447480,
		43.375221, 44.115128, 23.723749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940956, 44.447742, 22.979862>,  <42.831417, 43.805031, 23.410513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940956, 44.447742, 22.979862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.274590, 44.403164, 23.195969>,  <43.474770, 44.376419, 23.325632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.274590, 44.403164, 23.195969>,  <42.940956, 44.447742, 22.979862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274590, 44.403164, 23.195969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542255, 0.345523, -0.765880,
		-0.101323, 0.931769, 0.348625,
		0.834082, -0.111443, 0.540266,
		43.524815, 44.369732, 23.358049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266472, 45.046234, 22.789946>,  <42.940956, 44.447742, 22.979862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266472, 45.046234, 22.789946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.554077, 44.815147, 22.944483>,  <43.726643, 44.676495, 23.037205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.554077, 44.815147, 22.944483>,  <43.266472, 45.046234, 22.789946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554077, 44.815147, 22.944483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594297, 0.222887, -0.772744,
		0.360316, 0.785217, 0.503594,
		0.719016, -0.577716, 0.386342,
		43.769783, 44.641834, 23.060385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848358, 45.432064, 22.775848>,  <43.266472, 45.046234, 22.789946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848358, 45.432064, 22.775848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.964390, 45.049263, 22.776293>,  <44.034008, 44.819584, 22.776560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.964390, 45.049263, 22.776293>,  <43.848358, 45.432064, 22.775848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964390, 45.049263, 22.776293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754108, 0.227862, -0.615955,
		0.589216, 0.179514, 0.787781,
		0.290078, -0.957003, 0.001113,
		44.051414, 44.762161, 22.776627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560101, 45.273109, 22.933752>,  <43.848358, 45.432064, 22.775848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560101, 45.273109, 22.933752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.441132, 44.956612, 22.720036>,  <44.369751, 44.766712, 22.591806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.441132, 44.956612, 22.720036>,  <44.560101, 45.273109, 22.933752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441132, 44.956612, 22.720036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654468, 0.238480, -0.717495,
		0.695134, -0.563075, 0.446917,
		-0.297423, -0.791248, -0.534290,
		44.351906, 44.719238, 22.559748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246540, 44.978565, 22.587870>,  <44.560101, 45.273109, 22.933752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246540, 44.978565, 22.587870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.938866, 44.814034, 22.392252>,  <44.754261, 44.715317, 22.274881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.938866, 44.814034, 22.392252>,  <45.246540, 44.978565, 22.587870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938866, 44.814034, 22.392252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541415, -0.012957, -0.840656,
		0.339448, -0.911396, 0.232665,
		-0.769185, -0.411327, -0.489045,
		44.708111, 44.690636, 22.245539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480125, 44.515598, 22.067564>,  <45.246540, 44.978565, 22.587870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480125, 44.515598, 22.067564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.108002, 44.514759, 21.920853>,  <44.884727, 44.514256, 21.832827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.108002, 44.514759, 21.920853>,  <45.480125, 44.515598, 22.067564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108002, 44.514759, 21.920853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362229, -0.162366, -0.917839,
		-0.057627, -0.986728, 0.151810,
		-0.930306, -0.002098, -0.366778,
		44.828911, 44.514130, 21.810820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576805, 44.177071, 21.517750>,  <45.480125, 44.515598, 22.067564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576805, 44.177071, 21.517750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.227787, 44.345387, 21.418478>,  <45.018375, 44.446377, 21.358915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.227787, 44.345387, 21.418478>,  <45.576805, 44.177071, 21.517750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227787, 44.345387, 21.418478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386386, 0.283562, -0.877666,
		-0.298942, -0.861699, -0.410010,
		-0.872548, 0.420793, -0.248180,
		44.966022, 44.471626, 21.344025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.545033, 38.634331, 30.725027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377544, 38.940166, 30.529039>,  <33.277050, 39.123669, 30.411446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.377544, 38.940166, 30.529039>,  <33.545033, 38.634331, 30.725027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377544, 38.940166, 30.529039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907947, 0.342156, -0.241995,
		-0.017380, -0.546197, -0.837476,
		-0.418724, 0.764590, -0.489971,
		33.251926, 39.169544, 30.382048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945480, 38.588554, 30.150146>,  <33.545033, 38.634331, 30.725027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945480, 38.588554, 30.150146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747906, 38.935959, 30.166752>,  <33.629360, 39.144402, 30.176716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747906, 38.935959, 30.166752>,  <33.945480, 38.588554, 30.150146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747906, 38.935959, 30.166752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840055, 0.488981, -0.234960,
		-0.224364, -0.081180, -0.971118,
		-0.493932, 0.868509, 0.041514,
		33.599728, 39.196510, 30.179207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086601, 38.891075, 29.533531>,  <33.945480, 38.588554, 30.150146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086601, 38.891075, 29.533531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982643, 39.179405, 29.790550>,  <33.920269, 39.352402, 29.944761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982643, 39.179405, 29.790550>,  <34.086601, 38.891075, 29.533531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982643, 39.179405, 29.790550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817595, 0.518319, -0.250766,
		-0.513803, 0.460171, -0.724050,
		-0.259894, 0.720824, 0.642548,
		33.904675, 39.395653, 29.983315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226341, 39.522335, 29.100594>,  <34.086601, 38.891075, 29.533531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226341, 39.522335, 29.100594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.203156, 39.584915, 29.494987>,  <34.189243, 39.622463, 29.731623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.203156, 39.584915, 29.494987>,  <34.226341, 39.522335, 29.100594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203156, 39.584915, 29.494987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932978, 0.359926, -0.002265,
		-0.355235, 0.919770, -0.166828,
		-0.057962, 0.156452, 0.985983,
		34.185768, 39.631851, 29.790783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184208, 40.287445, 29.139965>,  <34.226341, 39.522335, 29.100594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184208, 40.287445, 29.139965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322170, 40.127930, 29.479849>,  <34.404949, 40.032219, 29.683779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322170, 40.127930, 29.479849>,  <34.184208, 40.287445, 29.139965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322170, 40.127930, 29.479849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857456, 0.502133, -0.112392,
		-0.381846, 0.767353, 0.515134,
		0.344910, -0.398788, 0.849709,
		34.425644, 40.008293, 29.734762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579498, 40.702507, 29.428303>,  <34.184208, 40.287445, 29.139965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579498, 40.702507, 29.428303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.707161, 40.386829, 29.638182>,  <34.783760, 40.197422, 29.764109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.707161, 40.386829, 29.638182>,  <34.579498, 40.702507, 29.428303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707161, 40.386829, 29.638182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922160, 0.386287, 0.020088,
		-0.218537, 0.477444, 0.851051,
		0.319159, -0.789195, 0.524698,
		34.802910, 40.150070, 29.795591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985516, 41.021931, 30.042419>,  <34.579498, 40.702507, 29.428303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985516, 41.021931, 30.042419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100391, 40.641224, 29.999231>,  <35.169315, 40.412800, 29.973318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100391, 40.641224, 29.999231>,  <34.985516, 41.021931, 30.042419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100391, 40.641224, 29.999231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957691, 0.287508, 0.012910,
		0.018755, -0.107111, 0.994070,
		0.287186, -0.951770, -0.107972,
		35.186546, 40.355694, 29.966841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568588, 41.102638, 30.427032>,  <34.985516, 41.021931, 30.042419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568588, 41.102638, 30.427032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629749, 40.751049, 30.246359>,  <35.666447, 40.540096, 30.137955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.629749, 40.751049, 30.246359>,  <35.568588, 41.102638, 30.427032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629749, 40.751049, 30.246359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981923, 0.186731, -0.030973,
		0.111568, -0.438785, 0.891639,
		0.152907, -0.878976, -0.451686,
		35.675621, 40.487358, 30.110853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063320, 40.873947, 30.775229>,  <35.568588, 41.102638, 30.427032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063320, 40.873947, 30.775229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.080444, 40.679314, 30.426195>,  <36.090721, 40.562534, 30.216774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.080444, 40.679314, 30.426195>,  <36.063320, 40.873947, 30.775229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080444, 40.679314, 30.426195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922860, 0.353855, -0.152041,
		0.382749, -0.798764, 0.464198,
		0.042814, -0.486583, -0.872584,
		36.093288, 40.533340, 30.164419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781372, 40.635609, 30.627827>,  <36.063320, 40.873947, 30.775229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781372, 40.635609, 30.627827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608856, 40.620396, 30.267262>,  <36.505348, 40.611267, 30.050922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608856, 40.620396, 30.267262>,  <36.781372, 40.635609, 30.627827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608856, 40.620396, 30.267262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808085, 0.428045, -0.404692,
		0.401235, -0.902957, -0.153881,
		-0.431287, -0.038028, -0.901413,
		36.479469, 40.608986, 29.996838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215916, 40.246601, 30.095465>,  <36.781372, 40.635609, 30.627827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215916, 40.246601, 30.095465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987289, 40.498077, 29.884539>,  <36.850113, 40.648964, 29.757984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.987289, 40.498077, 29.884539>,  <37.215916, 40.246601, 30.095465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987289, 40.498077, 29.884539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811409, 0.337346, -0.477299,
		-0.122187, -0.700674, -0.702942,
		-0.571565, 0.628692, -0.527313,
		36.815819, 40.686684, 29.726345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338528, 40.086128, 29.378954>,  <37.215916, 40.246601, 30.095465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338528, 40.086128, 29.378954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209492, 40.461567, 29.427896>,  <37.132072, 40.686829, 29.457262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.209492, 40.461567, 29.427896>,  <37.338528, 40.086128, 29.378954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209492, 40.461567, 29.427896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778630, 0.336640, -0.529536,
		-0.538213, -0.075549, -0.839416,
		-0.322587, 0.938598, 0.122359,
		37.112717, 40.743145, 29.464603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509956, 39.349659, 28.938538>,  <37.338528, 40.086128, 29.378954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509956, 39.349659, 28.938538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.844460, 39.190895, 29.089867>,  <38.045162, 39.095638, 29.180664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.844460, 39.190895, 29.089867>,  <37.509956, 39.349659, 28.938538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844460, 39.190895, 29.089867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532827, -0.751116, 0.389770,
		0.129462, -0.527531, -0.839613,
		0.836262, -0.396908, 0.378323,
		38.095337, 39.071823, 29.203363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412853, 38.582123, 28.869217>,  <37.509956, 39.349659, 28.938538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412853, 38.582123, 28.869217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.683369, 38.656876, 29.154232>,  <37.845676, 38.701729, 29.325241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.683369, 38.656876, 29.154232>,  <37.412853, 38.582123, 28.869217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683369, 38.656876, 29.154232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473243, -0.631043, 0.614675,
		0.564513, -0.752901, -0.338327,
		0.676288, 0.186881, 0.712537,
		37.886253, 38.712940, 29.367992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762215, 37.885452, 28.931917>,  <37.412853, 38.582123, 28.869217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762215, 37.885452, 28.931917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802719, 38.092804, 29.271570>,  <37.827023, 38.217216, 29.475363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802719, 38.092804, 29.271570>,  <37.762215, 37.885452, 28.931917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802719, 38.092804, 29.271570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586277, -0.658473, 0.471903,
		0.803756, -0.545615, 0.237234,
		0.101265, 0.518380, 0.849134,
		37.833099, 38.248318, 29.526310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826641, 37.344891, 29.288891>,  <37.762215, 37.885452, 28.931917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826641, 37.344891, 29.288891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762634, 37.649609, 29.539988>,  <37.724228, 37.832439, 29.690645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.762634, 37.649609, 29.539988>,  <37.826641, 37.344891, 29.288891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762634, 37.649609, 29.539988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675219, -0.548360, 0.493336,
		0.720050, -0.344920, 0.602128,
		-0.160021, 0.761795, 0.627743,
		37.714626, 37.878147, 29.728310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910553, 37.122265, 29.940538>,  <37.826641, 37.344891, 29.288891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910553, 37.122265, 29.940538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671604, 37.441578, 29.971254>,  <37.528236, 37.633163, 29.989683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.671604, 37.441578, 29.971254>,  <37.910553, 37.122265, 29.940538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671604, 37.441578, 29.971254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705812, -0.568792, 0.422262,
		0.380760, 0.198049, 0.903216,
		-0.597370, 0.798281, 0.076788,
		37.492393, 37.681061, 29.994291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611477, 37.054283, 30.632820>,  <37.910553, 37.122265, 29.940538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611477, 37.054283, 30.632820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393711, 37.318596, 30.426142>,  <37.263050, 37.477184, 30.302134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393711, 37.318596, 30.426142>,  <37.611477, 37.054283, 30.632820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393711, 37.318596, 30.426142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838795, -0.432956, 0.330110,
		-0.005576, 0.613121, 0.789970,
		-0.544419, 0.660782, -0.516697,
		37.230385, 37.516830, 30.271133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126431, 37.068077, 31.052124>,  <37.611477, 37.054283, 30.632820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126431, 37.068077, 31.052124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998234, 37.233635, 30.711308>,  <36.921318, 37.332970, 30.506817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998234, 37.233635, 30.711308>,  <37.126431, 37.068077, 31.052124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998234, 37.233635, 30.711308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886682, -0.447564, 0.116105,
		-0.333288, 0.792701, 0.510434,
		-0.320489, 0.413897, -0.852042,
		36.902088, 37.357803, 30.455694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586174, 37.522808, 31.195387>,  <37.126431, 37.068077, 31.052124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586174, 37.522808, 31.195387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.539051, 37.401592, 30.817120>,  <36.510777, 37.328861, 30.590160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.539051, 37.401592, 30.817120>,  <36.586174, 37.522808, 31.195387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539051, 37.401592, 30.817120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884152, -0.401548, 0.238820,
		-0.452104, 0.864248, -0.220632,
		-0.117805, -0.303043, -0.945667,
		36.503708, 37.310680, 30.533419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902065, 37.493755, 31.109070>,  <36.586174, 37.522808, 31.195387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902065, 37.493755, 31.109070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.021595, 37.263058, 30.804947>,  <36.093315, 37.124638, 30.622473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.021595, 37.263058, 30.804947>,  <35.902065, 37.493755, 31.109070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021595, 37.263058, 30.804947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811229, -0.573125, 0.115911,
		-0.502602, 0.582146, -0.639138,
		0.298829, -0.576745, -0.760307,
		36.111244, 37.090034, 30.576855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270851, 37.342960, 30.829889>,  <35.902065, 37.493755, 31.109070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270851, 37.342960, 30.829889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522854, 37.091637, 30.647320>,  <35.674053, 36.940842, 30.537777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.522854, 37.091637, 30.647320>,  <35.270851, 37.342960, 30.829889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522854, 37.091637, 30.647320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727101, -0.683682, -0.062467,
		-0.272801, 0.371222, -0.887566,
		0.630002, -0.628310, -0.456425,
		35.711853, 36.903145, 30.510391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919861, 37.073601, 30.231895>,  <35.270851, 37.342960, 30.829889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919861, 37.073601, 30.231895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199589, 36.801243, 30.318922>,  <35.367428, 36.637829, 30.371138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199589, 36.801243, 30.318922>,  <34.919861, 37.073601, 30.231895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199589, 36.801243, 30.318922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653002, -0.732349, -0.193013,
		0.290754, -0.007092, -0.956771,
		0.699321, -0.680893, 0.217564,
		35.409386, 36.596973, 30.384192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923069, 36.572029, 29.623611>,  <34.919861, 37.073601, 30.231895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923069, 36.572029, 29.623611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089256, 36.384113, 29.935171>,  <35.188969, 36.271362, 30.122107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089256, 36.384113, 29.935171>,  <34.923069, 36.572029, 29.623611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089256, 36.384113, 29.935171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578331, -0.797369, -0.172444,
		0.702081, -0.378816, -0.602976,
		0.415470, -0.469789, 0.778898,
		35.213898, 36.243176, 30.168840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844337, 35.894676, 29.403009>,  <34.923069, 36.572029, 29.623611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844337, 35.894676, 29.403009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898285, 35.858902, 29.797737>,  <34.930653, 35.837437, 30.034575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898285, 35.858902, 29.797737>,  <34.844337, 35.894676, 29.403009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898285, 35.858902, 29.797737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533813, -0.845595, -0.003681,
		0.834778, -0.526280, -0.161787,
		0.134869, -0.089437, 0.986819,
		34.938747, 35.832069, 30.093782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089863, 35.201054, 29.566427>,  <34.844337, 35.894676, 29.403009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089863, 35.201054, 29.566427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917042, 35.353996, 29.893141>,  <34.813351, 35.445763, 30.089169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.917042, 35.353996, 29.893141>,  <35.089863, 35.201054, 29.566427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917042, 35.353996, 29.893141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563976, -0.821286, 0.086143,
		0.703750, -0.423428, 0.570478,
		-0.432049, 0.382359, 0.816783,
		34.787426, 35.468704, 30.138176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868465, 34.641090, 30.055130>,  <35.089863, 35.201054, 29.566427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868465, 34.641090, 30.055130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645302, 34.947578, 30.182657>,  <34.511402, 35.131470, 30.259174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.645302, 34.947578, 30.182657>,  <34.868465, 34.641090, 30.055130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645302, 34.947578, 30.182657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678933, -0.642328, 0.355619,
		0.477268, -0.018053, 0.878572,
		-0.557912, 0.766217, 0.318819,
		34.477928, 35.177444, 30.278303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994583, 33.934814, 29.794107>,  <34.868465, 34.641090, 30.055130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994583, 33.934814, 29.794107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875721, 33.695885, 29.496141>,  <34.804405, 33.552525, 29.317362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875721, 33.695885, 29.496141>,  <34.994583, 33.934814, 29.794107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875721, 33.695885, 29.496141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780941, 0.296846, -0.549558,
		0.549391, -0.745038, 0.378269,
		-0.297154, -0.597328, -0.744915,
		34.786575, 33.516685, 29.272667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563595, 33.462009, 29.649931>,  <34.994583, 33.934814, 29.794107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563595, 33.462009, 29.649931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329941, 33.509808, 29.328808>,  <35.189747, 33.538486, 29.136133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329941, 33.509808, 29.328808>,  <35.563595, 33.462009, 29.649931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329941, 33.509808, 29.328808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792913, 0.295332, -0.532980,
		0.173408, -0.947893, -0.267262,
		-0.584139, 0.119493, -0.802809,
		35.154697, 33.545654, 29.087965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932419, 33.127041, 29.062809>,  <35.563595, 33.462009, 29.649931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932419, 33.127041, 29.062809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676014, 33.405895, 28.934368>,  <35.522171, 33.573208, 28.857304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.676014, 33.405895, 28.934368>,  <35.932419, 33.127041, 29.062809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676014, 33.405895, 28.934368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706091, 0.371603, -0.602782,
		-0.300897, -0.613120, -0.730442,
		-0.641012, 0.697134, -0.321104,
		35.483711, 33.615036, 28.838037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968220, 33.106651, 28.282450>,  <35.932419, 33.127041, 29.062809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968220, 33.106651, 28.282450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812424, 33.464722, 28.369122>,  <35.718945, 33.679565, 28.421124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.812424, 33.464722, 28.369122>,  <35.968220, 33.106651, 28.282450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812424, 33.464722, 28.369122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519415, 0.407768, -0.750955,
		-0.760594, -0.179946, -0.623792,
		-0.389494, 0.895179, 0.216679,
		35.695576, 33.733276, 28.434126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773602, 33.374180, 27.605143>,  <35.968220, 33.106651, 28.282450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773602, 33.374180, 27.605143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.762577, 33.688816, 27.851885>,  <35.755962, 33.877598, 27.999931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.762577, 33.688816, 27.851885>,  <35.773602, 33.374180, 27.605143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762577, 33.688816, 27.851885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396959, 0.574961, -0.715432,
		-0.917422, 0.225147, -0.328093,
		-0.027563, 0.786593, 0.616857,
		35.754307, 33.924793, 28.036942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632740, 33.916058, 27.227798>,  <35.773602, 33.374180, 27.605143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632740, 33.916058, 27.227798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.771622, 34.115021, 27.545801>,  <35.854950, 34.234398, 27.736603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.771622, 34.115021, 27.545801>,  <35.632740, 33.916058, 27.227798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771622, 34.115021, 27.545801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390653, 0.693972, -0.604808,
		-0.852548, 0.520564, 0.046637,
		0.347206, 0.497409, 0.795004,
		35.875782, 34.264244, 27.784302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412407, 34.538334, 27.101421>,  <35.632740, 33.916058, 27.227798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412407, 34.538334, 27.101421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728600, 34.544315, 27.346342>,  <35.918316, 34.547905, 27.493294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728600, 34.544315, 27.346342>,  <35.412407, 34.538334, 27.101421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728600, 34.544315, 27.346342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463528, 0.638850, -0.614013,
		-0.400348, 0.769186, 0.498070,
		0.790483, 0.014949, 0.612302,
		35.965744, 34.548801, 27.530033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630985, 35.214123, 27.148436>,  <35.412407, 34.538334, 27.101421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630985, 35.214123, 27.148436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946205, 34.998924, 27.268126>,  <36.135338, 34.869804, 27.339939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.946205, 34.998924, 27.268126>,  <35.630985, 35.214123, 27.148436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946205, 34.998924, 27.268126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597154, 0.549921, -0.583947,
		0.149612, 0.638862, 0.754633,
		0.788050, -0.537998, 0.299224,
		36.182621, 34.837524, 27.357893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153790, 35.747875, 27.174152>,  <35.630985, 35.214123, 27.148436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153790, 35.747875, 27.174152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328453, 35.388073, 27.180069>,  <36.433250, 35.172192, 27.183619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328453, 35.388073, 27.180069>,  <36.153790, 35.747875, 27.174152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328453, 35.388073, 27.180069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758795, 0.359415, -0.543186,
		0.483283, 0.248408, 0.839482,
		0.436654, -0.899508, 0.014792,
		36.459450, 35.118221, 27.184507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789219, 35.873055, 27.517378>,  <36.153790, 35.747875, 27.174152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789219, 35.873055, 27.517378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814892, 35.556152, 27.274658>,  <36.830296, 35.366009, 27.129026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814892, 35.556152, 27.274658>,  <36.789219, 35.873055, 27.517378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814892, 35.556152, 27.274658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717268, 0.459386, -0.523919,
		0.693835, -0.401610, 0.597748,
		0.064186, -0.792259, -0.606800,
		36.834148, 35.318474, 27.092619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499283, 35.754959, 27.411274>,  <36.789219, 35.873055, 27.517378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499283, 35.754959, 27.411274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345089, 35.556591, 27.100027>,  <37.252571, 35.437572, 26.913279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.345089, 35.556591, 27.100027>,  <37.499283, 35.754959, 27.411274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345089, 35.556591, 27.100027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670309, 0.429015, -0.605501,
		0.634102, -0.754992, 0.167037,
		-0.385488, -0.495916, -0.778117,
		37.229443, 35.407818, 26.866592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035622, 35.349854, 27.111916>,  <37.499283, 35.754959, 27.411274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035622, 35.349854, 27.111916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.768349, 35.372734, 26.815199>,  <37.607983, 35.386463, 26.637169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.768349, 35.372734, 26.815199>,  <38.035622, 35.349854, 27.111916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768349, 35.372734, 26.815199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701905, 0.379066, -0.603024,
		0.246692, -0.923600, -0.293439,
		-0.668186, 0.057205, -0.741792,
		37.567894, 35.389896, 26.592661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363113, 35.026066, 26.535172>,  <38.035622, 35.349854, 27.111916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363113, 35.026066, 26.535172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.082088, 35.265656, 26.381481>,  <37.913471, 35.409409, 26.289267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.082088, 35.265656, 26.381481>,  <38.363113, 35.026066, 26.535172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082088, 35.265656, 26.381481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692415, 0.450803, -0.563328,
		-0.164210, -0.661819, -0.731458,
		-0.702564, 0.598977, -0.384227,
		37.871319, 35.445347, 26.266212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596485, 35.064404, 25.760185>,  <38.363113, 35.026066, 26.535172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596485, 35.064404, 25.760185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346043, 35.372410, 25.809292>,  <38.195778, 35.557213, 25.838757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.346043, 35.372410, 25.809292>,  <38.596485, 35.064404, 25.760185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346043, 35.372410, 25.809292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643350, 0.599105, -0.476628,
		-0.440561, -0.219436, -0.870491,
		-0.626104, 0.770014, 0.122768,
		38.158211, 35.603413, 25.846123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496815, 35.492607, 25.024290>,  <38.596485, 35.064404, 25.760185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496815, 35.492607, 25.024290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.381012, 35.745834, 25.311459>,  <38.311531, 35.897770, 25.483759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.381012, 35.745834, 25.311459>,  <38.496815, 35.492607, 25.024290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381012, 35.745834, 25.311459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460617, 0.749627, -0.475280,
		-0.839057, 0.193088, -0.508626,
		-0.289509, 0.633069, 0.717919,
		38.294159, 35.935757, 25.526834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145710, 36.035042, 24.689308>,  <38.496815, 35.492607, 25.024290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145710, 36.035042, 24.689308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256695, 36.201191, 25.035830>,  <38.323284, 36.300880, 25.243742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.256695, 36.201191, 25.035830>,  <38.145710, 36.035042, 24.689308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256695, 36.201191, 25.035830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432258, 0.751312, -0.498681,
		-0.858004, 0.512829, 0.028908,
		0.277457, 0.415374, 0.866303,
		38.339931, 36.325802, 25.295721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902744, 36.639931, 24.661263>,  <38.145710, 36.035042, 24.689308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902744, 36.639931, 24.661263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175465, 36.671783, 24.952139>,  <38.339096, 36.690895, 25.126665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175465, 36.671783, 24.952139>,  <37.902744, 36.639931, 24.661263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175465, 36.671783, 24.952139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392646, 0.798894, -0.455628,
		-0.617231, 0.596176, 0.513419,
		0.681802, 0.079636, 0.727189,
		38.380005, 36.695675, 25.170296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125488, 37.262535, 24.505011>,  <37.902744, 36.639931, 24.661263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125488, 37.262535, 24.505011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407455, 37.154945, 24.767536>,  <38.576633, 37.090393, 24.925051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.407455, 37.154945, 24.767536>,  <38.125488, 37.262535, 24.505011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407455, 37.154945, 24.767536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644945, 0.628164, -0.435266,
		-0.295198, 0.730111, 0.616276,
		0.704915, -0.268974, 0.656314,
		38.618931, 37.074253, 24.964430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456440, 37.836739, 24.746294>,  <38.125488, 37.262535, 24.505011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456440, 37.836739, 24.746294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722748, 37.541435, 24.789608>,  <38.882534, 37.364254, 24.815596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722748, 37.541435, 24.789608>,  <38.456440, 37.836739, 24.746294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722748, 37.541435, 24.789608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716978, 0.592777, -0.366822,
		0.206620, 0.321858, 0.923967,
		0.665771, -0.738257, 0.108286,
		38.922478, 37.319958, 24.822094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130856, 38.204185, 24.830269>,  <38.456440, 37.836739, 24.746294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130856, 38.204185, 24.830269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.230717, 37.822460, 24.764597>,  <39.290634, 37.593426, 24.725193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.230717, 37.822460, 24.764597>,  <39.130856, 38.204185, 24.830269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230717, 37.822460, 24.764597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753961, 0.297964, -0.585458,
		0.607631, 0.022379, 0.793904,
		0.249656, -0.954315, -0.164179,
		39.305614, 37.536167, 24.715343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880596, 38.105412, 25.102749>,  <39.130856, 38.204185, 24.830269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880596, 38.105412, 25.102749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768692, 37.820526, 24.845226>,  <39.701550, 37.649593, 24.690712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768692, 37.820526, 24.845226>,  <39.880596, 38.105412, 25.102749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768692, 37.820526, 24.845226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796658, 0.202020, -0.569669,
		0.535788, -0.672265, 0.510873,
		-0.279762, -0.712213, -0.643806,
		39.684765, 37.606861, 24.652084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458099, 37.794380, 25.060741>,  <39.880596, 38.105412, 25.102749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458099, 37.794380, 25.060741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.260300, 37.663395, 24.738688>,  <40.141621, 37.584805, 24.545454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.260300, 37.663395, 24.738688>,  <40.458099, 37.794380, 25.060741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260300, 37.663395, 24.738688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773772, 0.256094, -0.579390,
		0.395918, -0.909497, 0.126742,
		-0.494496, -0.327460, -0.805136,
		40.111950, 37.565155, 24.497147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907410, 37.326103, 24.613497>,  <40.458099, 37.794380, 25.060741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907410, 37.326103, 24.613497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.616222, 37.475441, 24.383480>,  <40.441509, 37.565044, 24.245470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.616222, 37.475441, 24.383480>,  <40.907410, 37.326103, 24.613497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616222, 37.475441, 24.383480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683376, 0.327498, -0.652490,
		-0.055278, -0.867963, -0.493542,
		-0.727971, 0.373343, -0.575042,
		40.397831, 37.587444, 24.210968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101158, 37.053429, 23.930752>,  <40.907410, 37.326103, 24.613497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101158, 37.053429, 23.930752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.859913, 37.372456, 23.925861>,  <40.715168, 37.563869, 23.922926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.859913, 37.372456, 23.925861>,  <41.101158, 37.053429, 23.930752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859913, 37.372456, 23.925861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541933, 0.398460, -0.739958,
		-0.585292, -0.452902, -0.672542,
		-0.603110, 0.797565, -0.012227,
		40.678978, 37.611725, 23.922194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176018, 37.276100, 23.192198>,  <41.101158, 37.053429, 23.930752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176018, 37.276100, 23.192198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.038147, 37.580891, 23.411503>,  <40.955425, 37.763763, 23.543085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.038147, 37.580891, 23.411503>,  <41.176018, 37.276100, 23.192198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038147, 37.580891, 23.411503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598747, 0.628275, -0.496762,
		-0.722980, 0.157049, -0.672782,
		-0.344676, 0.761975, 0.548263,
		40.934746, 37.809483, 23.575981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916260, 37.728870, 22.765333>,  <41.176018, 37.276100, 23.192198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916260, 37.728870, 22.765333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.984875, 37.949421, 23.091904>,  <41.026043, 38.081753, 23.287846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.984875, 37.949421, 23.091904>,  <40.916260, 37.728870, 22.765333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984875, 37.949421, 23.091904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528318, 0.647987, -0.548628,
		-0.831537, 0.525446, -0.180147,
		0.171541, 0.551379, 0.816428,
		41.036335, 38.114834, 23.336832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743732, 38.313637, 22.564688>,  <40.916260, 37.728870, 22.765333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743732, 38.313637, 22.564688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.946163, 38.422710, 22.891987>,  <41.067623, 38.488155, 23.088366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.946163, 38.422710, 22.891987>,  <40.743732, 38.313637, 22.564688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946163, 38.422710, 22.891987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592732, 0.579216, -0.559622,
		-0.626540, 0.768215, 0.131503,
		0.506079, 0.272680, 0.818248,
		41.097988, 38.504513, 23.137461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146488, 38.812946, 22.468582>,  <40.743732, 38.313637, 22.564688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146488, 38.812946, 22.468582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914036, 39.013210, 22.211950>,  <39.774563, 39.133369, 22.057970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.914036, 39.013210, 22.211950>,  <40.146488, 38.812946, 22.468582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914036, 39.013210, 22.211950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730403, -0.668538, 0.139890,
		-0.358884, 0.549908, 0.754191,
		-0.581132, 0.500658, -0.641581,
		39.739697, 39.163406, 22.019476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500378, 38.892246, 22.856749>,  <40.146488, 38.812946, 22.468582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500378, 38.892246, 22.856749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.401173, 38.981857, 22.479750>,  <39.341652, 39.035625, 22.253550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.401173, 38.981857, 22.479750>,  <39.500378, 38.892246, 22.856749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401173, 38.981857, 22.479750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789877, -0.610037, 0.062844,
		-0.560879, 0.760043, 0.328251,
		-0.248009, 0.224030, -0.942497,
		39.326771, 39.049065, 22.197001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831772, 39.229336, 22.837034>,  <39.500378, 38.892246, 22.856749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831772, 39.229336, 22.837034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864315, 39.072300, 22.470591>,  <38.883842, 38.978081, 22.250725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.864315, 39.072300, 22.470591>,  <38.831772, 39.229336, 22.837034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864315, 39.072300, 22.470591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892520, -0.437800, 0.108350,
		-0.443609, 0.808830, -0.386012,
		0.081359, -0.392588, -0.916109,
		38.888721, 38.954525, 22.195759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249641, 39.405125, 22.452440>,  <38.831772, 39.229336, 22.837034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249641, 39.405125, 22.452440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.374401, 39.059193, 22.295069>,  <38.449257, 38.851631, 22.200645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.374401, 39.059193, 22.295069>,  <38.249641, 39.405125, 22.452440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374401, 39.059193, 22.295069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867058, -0.428399, 0.254332,
		-0.388499, 0.261799, -0.883476,
		0.311897, -0.864833, -0.393427,
		38.467972, 38.799744, 22.177040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679096, 39.154427, 22.108074>,  <38.249641, 39.405125, 22.452440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679096, 39.154427, 22.108074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918720, 38.838432, 22.160309>,  <38.062492, 38.648834, 22.191648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.918720, 38.838432, 22.160309>,  <37.679096, 39.154427, 22.108074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918720, 38.838432, 22.160309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792002, -0.560630, 0.241714,
		-0.117741, -0.248225, -0.961520,
		0.599057, -0.789986, 0.130585,
		38.098438, 38.601437, 22.199484>
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
